# typed: strong

module ModernTreasury
  module Models
    class LegalEntity < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::LegalEntity, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # A list of addresses for the entity.
      sig { returns(T::Array[ModernTreasury::LegalEntity::Address]) }
      attr_accessor :addresses

      sig { returns(T.nilable(ModernTreasury::LegalEntityBankSettings)) }
      attr_reader :bank_settings

      sig do
        params(
          bank_settings:
            T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash)
        ).void
      end
      attr_writer :bank_settings

      # The business's legal business name.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      # The country of citizenship for an individual.
      sig { returns(T.nilable(String)) }
      attr_accessor :citizenship_country

      sig { returns(T.nilable(ModernTreasury::LegalEntityComplianceDetail)) }
      attr_reader :compliance_details

      sig do
        params(
          compliance_details:
            T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash)
        ).void
      end
      attr_writer :compliance_details

      sig { returns(Time) }
      attr_accessor :created_at

      # A business's formation date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_formed

      # An individual's date of birth (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_birth

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Array[String]) }
      attr_accessor :doing_business_as_names

      # The entity's primary email.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # An individual's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      # A list of identifications for the legal entity.
      sig { returns(T::Array[ModernTreasury::LegalEntity::Identification]) }
      attr_accessor :identifications

      # A list of industry classifications for the legal entity.
      sig do
        returns(T::Array[ModernTreasury::LegalEntityIndustryClassification])
      end
      attr_accessor :industry_classifications

      # An individual's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # The legal entity associations and its child legal entities.
      sig do
        returns(T.nilable(T::Array[ModernTreasury::LegalEntityAssociation]))
      end
      attr_accessor :legal_entity_associations

      # The type of legal entity.
      sig do
        returns(ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol)
      end
      attr_accessor :legal_entity_type

      # The business's legal structure.
      sig do
        returns(
          T.nilable(ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol)
        )
      end
      attr_accessor :legal_structure

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # An individual's middle name.
      sig { returns(T.nilable(String)) }
      attr_accessor :middle_name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T::Array[ModernTreasury::LegalEntity::PhoneNumber]) }
      attr_accessor :phone_numbers

      # Whether the individual is a politically exposed person.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :politically_exposed_person

      # An individual's preferred name.
      sig { returns(T.nilable(String)) }
      attr_accessor :preferred_name

      # An individual's prefix.
      sig { returns(T.nilable(String)) }
      attr_accessor :prefix

      # The risk rating of the legal entity. One of low, medium, high.
      sig do
        returns(
          T.nilable(ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)
        )
      end
      attr_accessor :risk_rating

      # An individual's suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        returns(T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail))
      end
      attr_reader :wealth_and_employment_details

      sig do
        params(
          wealth_and_employment_details:
            T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash)
        ).void
      end
      attr_writer :wealth_and_employment_details

      # The entity's primary website URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :website

      sig do
        params(
          id: String,
          addresses: T::Array[ModernTreasury::LegalEntity::Address::OrHash],
          bank_settings:
            T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          compliance_details:
            T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
          created_at: Time,
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          discarded_at: T.nilable(Time),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          first_name: T.nilable(String),
          identifications:
            T::Array[ModernTreasury::LegalEntity::Identification::OrHash],
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash],
          last_name: T.nilable(String),
          legal_entity_associations:
            T.nilable(T::Array[ModernTreasury::LegalEntityAssociation::OrHash]),
          legal_entity_type:
            ModernTreasury::LegalEntity::LegalEntityType::OrSymbol,
          legal_structure:
            T.nilable(ModernTreasury::LegalEntity::LegalStructure::OrSymbol),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          object: String,
          phone_numbers:
            T::Array[ModernTreasury::LegalEntity::PhoneNumber::OrHash],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating:
            T.nilable(ModernTreasury::LegalEntity::RiskRating::OrSymbol),
          suffix: T.nilable(String),
          updated_at: Time,
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
            ),
          website: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A list of addresses for the entity.
        addresses:,
        bank_settings:,
        # The business's legal business name.
        business_name:,
        # The country of citizenship for an individual.
        citizenship_country:,
        compliance_details:,
        created_at:,
        # A business's formation date (YYYY-MM-DD).
        date_formed:,
        # An individual's date of birth (YYYY-MM-DD).
        date_of_birth:,
        discarded_at:,
        doing_business_as_names:,
        # The entity's primary email.
        email:,
        # An individual's first name.
        first_name:,
        # A list of identifications for the legal entity.
        identifications:,
        # A list of industry classifications for the legal entity.
        industry_classifications:,
        # An individual's last name.
        last_name:,
        # The legal entity associations and its child legal entities.
        legal_entity_associations:,
        # The type of legal entity.
        legal_entity_type:,
        # The business's legal structure.
        legal_structure:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # An individual's middle name.
        middle_name:,
        object:,
        phone_numbers:,
        # Whether the individual is a politically exposed person.
        politically_exposed_person:,
        # An individual's preferred name.
        preferred_name:,
        # An individual's prefix.
        prefix:,
        # The risk rating of the legal entity. One of low, medium, high.
        risk_rating:,
        # An individual's suffix.
        suffix:,
        updated_at:,
        wealth_and_employment_details:,
        # The entity's primary website URL.
        website:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            addresses: T::Array[ModernTreasury::LegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::LegalEntityBankSettings),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail),
            created_at: Time,
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            discarded_at: T.nilable(Time),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications:
              T::Array[ModernTreasury::LegalEntity::Identification],
            industry_classifications:
              T::Array[ModernTreasury::LegalEntityIndustryClassification],
            last_name: T.nilable(String),
            legal_entity_associations:
              T.nilable(T::Array[ModernTreasury::LegalEntityAssociation]),
            legal_entity_type:
              ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol,
            legal_structure:
              T.nilable(
                ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
              ),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            object: String,
            phone_numbers: T::Array[ModernTreasury::LegalEntity::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating:
              T.nilable(ModernTreasury::LegalEntity::RiskRating::TaggedSymbol),
            suffix: T.nilable(String),
            updated_at: Time,
            wealth_and_employment_details:
              T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail),
            website: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Address < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LegalEntity::Address,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The types of this address.
        sig do
          returns(
            T::Array[
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            ]
          )
        end
        attr_accessor :address_types

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Locality or City.
        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :object

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            address_types:
              T::Array[
                ModernTreasury::LegalEntity::Address::AddressType::OrSymbol
              ],
            country: T.nilable(String),
            created_at: Time,
            discarded_at: T.nilable(Time),
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The types of this address.
          address_types:,
          # Country code conforms to [ISO 3166-1 alpha-2]
          country:,
          created_at:,
          discarded_at:,
          line1:,
          line2:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          # Locality or City.
          locality:,
          object:,
          # The postal code of the address.
          postal_code:,
          # Region or State.
          region:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address_types:
                T::Array[
                  ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
                ],
              country: T.nilable(String),
              created_at: Time,
              discarded_at: T.nilable(Time),
              line1: T.nilable(String),
              line2: T.nilable(String),
              live_mode: T::Boolean,
              locality: T.nilable(String),
              object: String,
              postal_code: T.nilable(String),
              region: T.nilable(String),
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module AddressType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::LegalEntity::Address::AddressType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          MAILING =
            T.let(
              :mailing,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          PO_BOX =
            T.let(
              :po_box,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          RESIDENTIAL =
            T.let(
              :residential,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Identification < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LegalEntity::Identification,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # The date when the Identification is no longer considered valid by the issuing
        # authority.
        sig { returns(T.nilable(Date)) }
        attr_accessor :expiration_date

        # The type of ID number.
        sig do
          returns(
            ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
          )
        end
        attr_accessor :id_type

        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        sig { returns(T.nilable(String)) }
        attr_accessor :issuing_country

        # The region in which the identifcation was issued.
        sig { returns(T.nilable(String)) }
        attr_accessor :issuing_region

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            expiration_date: T.nilable(Date),
            id_type:
              ModernTreasury::LegalEntity::Identification::IDType::OrSymbol,
            issuing_country: T.nilable(String),
            issuing_region: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          discarded_at:,
          # The date when the Identification is no longer considered valid by the issuing
          # authority.
          expiration_date:,
          # The type of ID number.
          id_type:,
          # The ISO 3166-1 alpha-2 country code of the country that issued the
          # identification
          issuing_country:,
          # The region in which the identifcation was issued.
          issuing_region:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              expiration_date: T.nilable(Date),
              id_type:
                ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol,
              issuing_country: T.nilable(String),
              issuing_region: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
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
              T.all(Symbol, ModernTreasury::LegalEntity::Identification::IDType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AR_CUIL =
            T.let(
              :ar_cuil,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          AR_CUIT =
            T.let(
              :ar_cuit,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          BR_CNPJ =
            T.let(
              :br_cnpj,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          BR_CPF =
            T.let(
              :br_cpf,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CL_RUN =
            T.let(
              :cl_run,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CL_RUT =
            T.let(
              :cl_rut,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CO_CEDULAS =
            T.let(
              :co_cedulas,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CO_NIT =
            T.let(
              :co_nit,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          DRIVERS_LICENSE =
            T.let(
              :drivers_license,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          HN_ID =
            T.let(
              :hn_id,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          HN_RTN =
            T.let(
              :hn_rtn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          IN_LEI =
            T.let(
              :in_lei,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_BRN =
            T.let(
              :kr_brn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_CRN =
            T.let(
              :kr_crn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_RRN =
            T.let(
              :kr_rrn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          PASSPORT =
            T.let(
              :passport,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SA_TIN =
            T.let(
              :sa_tin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SA_VAT =
            T.let(
              :sa_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          US_EIN =
            T.let(
              :us_ein,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          US_ITIN =
            T.let(
              :us_itin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          US_SSN =
            T.let(
              :us_ssn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          VN_TIN =
            T.let(
              :vn_tin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The type of legal entity.
      module LegalEntityType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LegalEntity::LegalEntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol
          )
        JOINT =
          T.let(
            :joint,
            ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The business's legal structure.
      module LegalStructure
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LegalEntity::LegalStructure)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        LLC =
          T.let(:llc, ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol)
        NON_PROFIT =
          T.let(
            :non_profit,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        SOLE_PROPRIETORSHIP =
          T.let(
            :sole_proprietorship,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        TRUST =
          T.let(
            :trust,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LegalEntity::PhoneNumber,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # A list of phone numbers in E.164 format.
        sig { params(phone_number: String).returns(T.attached_class) }
        def self.new(phone_number: nil)
        end

        sig { override.returns({ phone_number: String }) }
        def to_hash
        end
      end

      # The risk rating of the legal entity. One of low, medium, high.
      module RiskRating
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LegalEntity::RiskRating)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW = T.let(:low, ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)
        MEDIUM =
          T.let(:medium, ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)
        HIGH =
          T.let(:high, ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::LegalEntity::RiskRating::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
