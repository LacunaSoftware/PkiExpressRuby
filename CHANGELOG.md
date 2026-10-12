## 1.3.3 (unreleased)
* Support Ruby 3.2+: use File.exist? instead of File.exists?, which Ruby 3.2 removed
* Raise InstallationNotFoundError and ValidationError from PKI Express's exit code (they were never raised)
* Fix Authentication#certificate_path= rejecting files that exist

## 1.3.2 (2023-03-30)
* Improve valdiation of PkiExpressConfig's contructor parameters

## 1.3.1 (2023-03-30)
* Fix pki express operator finalizer
* Improve pathname call with exists

## 1.3.0 (2021-08-04)
* Adds culture and time zone attributes to PkiExpressOperator

## 1.2.0 (2021-01-25)
* Adds PAdES Explorer

## 1.1.0 (2020-09-09)
* Adds PAdES Signer
* Adds support for Trust Services Management

## 1.0.0 (2018-04-11)
* First publicly available version
