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

      # A list of documents to attach to the identification.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::IdentificationCreateRequest::Document]
          )
        )
      end
      attr_reader :documents

      sig do
        params(
          documents:
            T::Array[
              ModernTreasury::IdentificationCreateRequest::Document::OrHash
            ]
        ).void
      end
      attr_writer :documents

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
          documents:
            T::Array[
              ModernTreasury::IdentificationCreateRequest::Document::OrHash
            ],
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
        # A list of documents to attach to the identification.
        documents: nil,
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
            documents:
              T::Array[ModernTreasury::IdentificationCreateRequest::Document],
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
        CA_SIN =
          T.let(
            :ca_sin,
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

      class Document < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::IdentificationCreateRequest::Document,
              ModernTreasury::Internal::AnyHash
            )
          end

        # A category given to the document, can be `null`.
        sig do
          returns(
            ModernTreasury::IdentificationCreateRequest::Document::DocumentType::OrSymbol
          )
        end
        attr_accessor :document_type

        # Base64-encoded file content for the document.
        sig { returns(String) }
        attr_accessor :file_data

        # The original filename of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        sig do
          params(
            document_type:
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::OrSymbol,
            file_data: String,
            filename: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A category given to the document, can be `null`.
          document_type:,
          # Base64-encoded file content for the document.
          file_data:,
          # The original filename of the document.
          filename: nil
        )
        end

        sig do
          override.returns(
            {
              document_type:
                ModernTreasury::IdentificationCreateRequest::Document::DocumentType::OrSymbol,
              file_data: String,
              filename: String
            }
          )
        end
        def to_hash
        end

        # A category given to the document, can be `null`.
        module DocumentType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::IdentificationCreateRequest::Document::DocumentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          CERTIFICATE_OF_GOOD_STANDING =
            T.let(
              :certificate_of_good_standing,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          IDENTIFICATION_BACK =
            T.let(
              :identification_back,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          IDENTIFICATION_FRONT =
            T.let(
              :identification_front,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          PROOF_OF_ADDRESS =
            T.let(
              :proof_of_address,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
