# typed: strong

module ModernTreasury
  module Models
    class IdentificationCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::IdentificationCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID number of identification document.
      sig { returns(String) }
      attr_accessor :id_number

      # The type of ID number.
      sig do
        returns(ModernTreasury::IdentificationCreateRequest::IDType::OrSymbol)
      end
      attr_accessor :id_type

      # The date when the Identification is no longer considered valid by the issuing
      # authority.
      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # The ISO 3166-1 alpha-2 country code of the country that issued the
      # identification
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_country

      # The region in which the identifcation was issued.
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_region

      sig do
        params(
          id_number: String,
          id_type:
            ModernTreasury::IdentificationCreateRequest::IDType::OrSymbol,
          expiration_date: T.nilable(Date),
          issuing_country: T.nilable(String),
          issuing_region: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID number of identification document.
        id_number:,
        # The type of ID number.
        id_type:,
        # The date when the Identification is no longer considered valid by the issuing
        # authority.
        expiration_date: nil,
        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        issuing_country: nil,
        # The region in which the identifcation was issued.
        issuing_region: nil
      )
      end

      sig do
        override.returns(
          {
            id_number: String,
            id_type:
              ModernTreasury::IdentificationCreateRequest::IDType::OrSymbol,
            expiration_date: T.nilable(Date),
            issuing_country: T.nilable(String),
            issuing_region: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The type of ID number.
      module IDType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::IdentificationCreateRequest::IDType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AR_CUIL =
          T.let(
            :ar_cuil,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AR_CUIT =
          T.let(
            :ar_cuit,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BR_CNPJ =
          T.let(
            :br_cnpj,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BR_CPF =
          T.let(
            :br_cpf,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CL_RUN =
          T.let(
            :cl_run,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CL_RUT =
          T.let(
            :cl_rut,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CO_CEDULAS =
          T.let(
            :co_cedulas,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CO_NIT =
          T.let(
            :co_nit,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DRIVERS_LICENSE =
          T.let(
            :drivers_license,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HN_ID =
          T.let(
            :hn_id,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HN_RTN =
          T.let(
            :hn_rtn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IN_LEI =
          T.let(
            :in_lei,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KR_BRN =
          T.let(
            :kr_brn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KR_CRN =
          T.let(
            :kr_crn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KR_RRN =
          T.let(
            :kr_rrn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PASSPORT =
          T.let(
            :passport,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SA_TIN =
          T.let(
            :sa_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SA_VAT =
          T.let(
            :sa_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        US_EIN =
          T.let(
            :us_ein,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        US_ITIN =
          T.let(
            :us_itin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        US_SSN =
          T.let(
            :us_ssn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        VN_TIN =
          T.let(
            :vn_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
