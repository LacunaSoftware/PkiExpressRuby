require_relative '../spec_helper'

module PkiExpress
    describe PkiExpressOperator do
        it "should remove files created by child classes when GC remove its instance" do
            operator = ChildOperator.new
            temp_files = []
            (1..3).each { 
                created_file = operator.create_temp_file
                temp_files.append(created_file)
                expect(File.exist?(created_file)).to equal(true)
            }
            operator = nil
            GC.start

            temp_files.each do |file|
                expect(File.exist?(file)).to equal(false)
            end
        end

        describe 'when PKI Express exits with an error code' do
            # Starts an authentication as if PKI Express had exited with the
            # given code. A real process provides the Process::Status.
            def start_auth_with_exit_code(code)
                status = Open3.capture3(RbConfig.ruby, '-e', "exit #{code}")[2]
                auth = Authentication.new
                allow(auth).to receive(:get_pki_express_invocation).and_return(['pkie'])
                allow(Open3).to receive(:capture3).and_return(['', '', status])
                auth.start
            end

            it 'should raise InstallationNotFoundError when the command is not found' do
                expect { start_auth_with_exit_code(ErrorCodes::COMMAND_NOT_FOUND) }
                    .to raise_error(InstallationNotFoundError)
            end

            it 'should raise ValidationError when the validation fails' do
                expect { start_auth_with_exit_code(ErrorCodes::VALIDATION_FAILED) }
                    .to raise_error(ValidationError)
            end

            it 'should raise CommandError with the version tip on bad syntax' do
                expect { start_auth_with_exit_code(ErrorCodes::BAD_SYNTAX) }
                    .to raise_error(CommandError, /requires PKI Express 1\.4/)
            end

            it 'should raise a plain CommandError on any other code' do
                expect { start_auth_with_exit_code(ErrorCodes::UNKNOWN_ERROR) }
                    .to raise_error { |e| expect(e).to be_an_instance_of(CommandError) }
            end
        end
    end

    class ChildOperator < PkiExpressOperator
        def initialize(config=PkiExpressConfig.new)
            super(config)
        end

        def create_temp_file
            super
        end
    end
end