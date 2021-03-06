module PkiExpress
  class ValidationItemTypes < Enum
    SUCCESS = 'Success'
    CERTIFICATE_NOT_YET_VALID = 'CertificateNotYetValid'
    CERTIFICATE_EXPIRED = 'CertificateExpired'
    CERTIFICATE_REVOKED = 'CertificateRevoked'
    CERTIFICATE_ISSUER_NOT_FOUND = 'CertificateIssuerNotFound'
    CERTIFICATE_REVOCATION_STATUS_UNKNOWN = 'CertificateRevocationStatusUnknown'
    CERTIFICATE_CHAIN_ROOT_NOT_TRUSTED = 'CertificateChainRootNotTrusted'
    INVALID_CERTIFICATE_SIGNATURE = 'InvalidCertificateSignature'
    DECODE_ERROR = 'DecodeError'
    REQUIRED_SIGNED_ATTRIBUTE_MISSING = 'RequiredSignedAttributeMissing'
    FORBIDDEN_SIGNED_ATTRIBUTE_PRESENT = 'ForbiddenSignedAttributePresent'
    REQUIRED_UNSIGNED_ATTRIBUTE_MISSING = 'RequiredUnsignedAttributeMissing'
    FORBIDDEN_UNSIGNED_ATTRIBUTE_PRESENT = 'ForbiddenUnsignedAttributePresent'
    CONTENT_TYPE_MISMATCH = 'ContentTypeMismatch'
    MESSAGE_DIGEST_MISMATCH = 'MessageDigestMismatch'
    SIGNING_CERTIFICATE_DIGEST_MISMATCH = 'SigningCertificateDigestMismatch'
    SIGNATURE_ALGORITHM_VALIDATION_FAILED = 'SignatureAlgorithmValidationFailed'
    REVOCATION_DATA_ISSUED_BEFORE_GRACE_PERIOD = 'RevocationDataIssuedBeforeGracePeriod'
    UNCERTIFIED_DATE_REFERENCE = 'UncertifiedDateReference'
    SIGNATURE_POLICY_MISMATCH = 'SignaturePolicyMismatch'
    SIGNING_TIME_OUT_OF_CERTIFICATE_VALIDITY = 'SigningTimeOutOfCertificateValidity'
    UNKNOWN_SIGNED_ATTRIBUTES_PRESENT = 'UnknownSignedAttributesPresent'
    UNKNOWN_UNSIGNED_ATTRIBUTES_PRESENT = 'UnknownUnsignedAttributesPresent'
    TIMESTAMP_WITH_MORE_THAN_ONE_SIGNED = 'TimestampWithMoreThanOneSigned'
    TIMESTAMP_MESSAGE_IMPRINT_MISMATCH = 'TimestampMessageImprintMismatch'
    TIMESTAMP_VALIDATION_EXCEPTION = 'TimestampValidationException'
    COMPLETE_REFERENCES_MISMATCH = 'CompleteReferencesMismatch'
    INVALID_SIGNATURE_TIMESTAMP = 'InvalidSignatureTimestamp'
    INVALID_REFERENCES_TIMESTAMP = 'InvalidReferencesTimestamp'
    INVALID_ARCHIVE_TIMESTAMP = 'InvalidArchiveTimestamp'
    INVALID_KEY_USAGE = 'InvalidKeyUsage'
    INVALID_OCSP_RESPONSE = 'InvalidOcspResponse'
    UNAUTHORIZED_ISSUER = 'UnauthorizedIssuer'
    UNKNOWN_ROOT_TRUST_STATUS = 'UnknownRootTrustStatus'
    INVALID_TSL = 'InvalidTsl'
    INVALID_CRL = 'InvalidCrl'
    CERTIFICATE_ISSUER_VALID = 'CertificateIssuerValid'
    CERTIFICATE_ISSUER_INVALID = 'CertificateIssuerInvalid'
    CERTIFICATE_VALIDATION_FAILED = 'CertificateValidationFailed'
    SIGNATURE_VULNERABLE_TO_SIGNER_SUBSTITUTION = 'SignatureVulnerableToSignerSubstitution'
    INVALID_XML_SIGNATURE_SCHEME = 'InvalidXmlSignatureScheme'
    XML_DSIG_CORE_VALIDATION_FAILED = 'XmlDSigCoreValidationFailed'
    SIGNATURE_TIMESTAMP_IGNORED = 'SignatureTimestampIgnored'
    INVALID_CERTIFICATION_PATH_LEN = 'InvalidCertificationPathLen'
    SIGNING_CERTIFICATE_NOT_FOUND = 'SigningCertificateNotFound'
    UNAUTHORIZED_AC_ISSUER = 'UnauthorizedACIssuer'
    ALGORITHM_NOT_ALLOWED = 'AlgorithmNotAllowed'
    UNACCEPTABLE_SIGNATURE_POLICY = 'UnacceptableSignaturePolicy'

    VALUES = [
        SUCCESS,
        CERTIFICATE_NOT_YET_VALID,
        CERTIFICATE_EXPIRED,
        CERTIFICATE_REVOKED,
        CERTIFICATE_ISSUER_NOT_FOUND,
        CERTIFICATE_REVOCATION_STATUS_UNKNOWN,
        CERTIFICATE_CHAIN_ROOT_NOT_TRUSTED,
        INVALID_CERTIFICATE_SIGNATURE,
        DECODE_ERROR,
        REQUIRED_SIGNED_ATTRIBUTE_MISSING,
        FORBIDDEN_SIGNED_ATTRIBUTE_PRESENT,
        REQUIRED_UNSIGNED_ATTRIBUTE_MISSING,
        FORBIDDEN_UNSIGNED_ATTRIBUTE_PRESENT,
        CONTENT_TYPE_MISMATCH,
        MESSAGE_DIGEST_MISMATCH,
        SIGNING_CERTIFICATE_DIGEST_MISMATCH,
        SIGNATURE_ALGORITHM_VALIDATION_FAILED,
        REVOCATION_DATA_ISSUED_BEFORE_GRACE_PERIOD,
        UNCERTIFIED_DATE_REFERENCE,
        SIGNATURE_POLICY_MISMATCH,
        SIGNING_TIME_OUT_OF_CERTIFICATE_VALIDITY,
        UNKNOWN_SIGNED_ATTRIBUTES_PRESENT,
        UNKNOWN_UNSIGNED_ATTRIBUTES_PRESENT,
        TIMESTAMP_WITH_MORE_THAN_ONE_SIGNED,
        TIMESTAMP_MESSAGE_IMPRINT_MISMATCH,
        TIMESTAMP_VALIDATION_EXCEPTION,
        COMPLETE_REFERENCES_MISMATCH,
        INVALID_SIGNATURE_TIMESTAMP,
        INVALID_REFERENCES_TIMESTAMP,
        INVALID_ARCHIVE_TIMESTAMP,
        INVALID_KEY_USAGE,
        INVALID_OCSP_RESPONSE,
        UNAUTHORIZED_ISSUER,
        UNKNOWN_ROOT_TRUST_STATUS,
        INVALID_TSL,
        INVALID_CRL,
        CERTIFICATE_ISSUER_VALID,
        CERTIFICATE_ISSUER_INVALID,
        CERTIFICATE_VALIDATION_FAILED,
        SIGNATURE_VULNERABLE_TO_SIGNER_SUBSTITUTION,
        INVALID_XML_SIGNATURE_SCHEME,
        XML_DSIG_CORE_VALIDATION_FAILED,
        SIGNATURE_TIMESTAMP_IGNORED,
        INVALID_CERTIFICATION_PATH_LEN,
        SIGNING_CERTIFICATE_NOT_FOUND,
        UNAUTHORIZED_AC_ISSUER,
        ALGORITHM_NOT_ALLOWED,
        UNACCEPTABLE_SIGNATURE_POLICY
    ]
  end
end
