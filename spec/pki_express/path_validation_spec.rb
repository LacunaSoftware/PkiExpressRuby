require 'securerandom'
require 'tmpdir'

require_relative '../spec_helper'

module PkiExpress
    describe 'path validation' do
        existing_path = __FILE__
        missing_path = File.join(Dir.tmpdir, "pkie-missing-#{SecureRandom.hex(8)}")

        # Every setter that checks that its file exists before keeping the path.
        setters = {
            'PadesSigner#pdf_to_sign_path=' => ->(path) { PadesSigner.new.pdf_to_sign_path = path },
            'PadesSigner#visual_representation_path=' => ->(path) { PadesSigner.new.visual_representation_path = path },
            'PadesSigner#pkcs12_path=' => ->(path) { PadesSigner.new.pkcs12_path = path },
            'PadesSignatureStarter#pdf_to_sign_path=' => ->(path) { PadesSignatureStarter.new.pdf_to_sign_path = path },
            'PadesSignatureStarter#visual_representation_path=' => ->(path) { PadesSignatureStarter.new.visual_representation_path = path },
            'PadesSignatureStarter#certificate_path=' => ->(path) { PadesSignatureStarter.new.certificate_path = path },
            'CadesSignatureStarter#file_to_sign_path=' => ->(path) { CadesSignatureStarter.new.file_to_sign_path = path },
            'CadesSignatureStarter#data_file_path=' => ->(path) { CadesSignatureStarter.new.data_file_path = path },
            'SignatureFinisher#file_to_sign_path=' => ->(path) { SignatureFinisher.new.file_to_sign_path = path },
            'SignatureFinisher#data_file_path=' => ->(path) { SignatureFinisher.new.data_file_path = path },
            'PadesSignatureExplorer#signature_file_path=' => ->(path) { PadesSignatureExplorer.new.signature_file_path = path },
            'Authentication#certificate_path=' => ->(path) { Authentication.new.certificate_path = path },
            'PkiExpressOperator#add_file_reference' => ->(path) { PadesSigner.new.add_file_reference('ref', path) },
            'PkiExpressOperator#add_trusted_root' => ->(path) { PadesSigner.new.add_trusted_root(path) }
        }

        setters.each do |name, set_path|
            it "#{name} should accept an existing file" do
                expect { set_path.call(existing_path) }.not_to raise_error
            end

            it "#{name} should reject a missing file" do
                expect { set_path.call(missing_path) }
                    .to raise_error(/does not exist|doesn't exist|was not found/)
            end
        end

        it 'should raise InstallationNotFoundError when pki_express_home has no PKI Express' do
            home = Dir.mktmpdir('pkie-home')
            auth = Authentication.new(PkiExpressConfig.new(home))
            expect { auth.start }.to raise_error(InstallationNotFoundError)
            Dir.rmdir(home)
        end
    end
end
