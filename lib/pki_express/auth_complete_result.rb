module PkiExpress
  class AuthCompleteResult

    attr_accessor :certificate, :validation_results

    def initialize(model)
      @certificate = nil
      @validation_results = nil

      if model
        certificate = model.fetch(:certificate)
        if certificate
          @certificate = PKCertificate.new(certificate)
        end
        validation_results = model.fetch(:validationResults)
        if validation_results
          @validation_results = ValidationResults.new(validation_results)
        end
      end
    end
  end
end