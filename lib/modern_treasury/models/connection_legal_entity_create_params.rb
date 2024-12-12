# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] connection_id
      #   The ID of the connection.
      #   @return [String]
      required :connection_id, String

      # @!attribute [rw] legal_entity
      #   The legal entity.
      #   @return [ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity]
      optional :legal_entity, -> { ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity }

      # @!attribute [rw] legal_entity_id
      #   The ID of the legal entity.
      #   @return [String]
      optional :legal_entity_id, String

      class LegalEntity < ModernTreasury::BaseModel
        # @!attribute [rw] addresses
        #   A list of addresses for the entity.
        #   @return [Array<ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address>]
        optional :addresses,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address
                   }
                 )

        # @!attribute [rw] bank_settings
        #   @return [ModernTreasury::Models::BankSettings]
        optional :bank_settings, -> { ModernTreasury::Models::BankSettings }

        # @!attribute [rw] business_name
        #   The business's legal business name.
        #   @return [String]
        optional :business_name, String

        # @!attribute [rw] citizenship_country
        #   The country of citizenship for an individual.
        #   @return [String]
        optional :citizenship_country, String

        # @!attribute [rw] date_formed
        #   A business's formation date (YYYY-MM-DD).
        #   @return [Date]
        optional :date_formed, Date

        # @!attribute [rw] date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #   @return [Date]
        optional :date_of_birth, Date

        # @!attribute [rw] doing_business_as_names
        #   @return [Array<String>]
        optional :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

        # @!attribute [rw] email
        #   The entity's primary email.
        #   @return [String]
        optional :email, String

        # @!attribute [rw] first_name
        #   An individual's first name.
        #   @return [String]
        optional :first_name, String

        # @!attribute [rw] identifications
        #   A list of identifications for the legal entity.
        #   @return [Array<ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification>]
        optional :identifications,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification
                   }
                 )

        # @!attribute [rw] last_name
        #   An individual's last name.
        #   @return [String]
        optional :last_name, String

        # @!attribute [rw] legal_entity_associations
        #   The legal entity associations and its child legal entities.
        #   @return [Array<ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation>]
        optional :legal_entity_associations,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation
                   }
                 )

        # @!attribute [rw] legal_entity_type
        #   The type of legal entity.
        #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType]
        optional :legal_entity_type,
                 enum: -> {
                   ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType
                 }

        # @!attribute [rw] legal_structure
        #   The business's legal structure.
        #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure]
        optional :legal_structure,
                 enum: -> {
                   ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure
                 }

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute [rw] middle_name
        #   An individual's middle name.
        #   @return [String]
        optional :middle_name, String

        # @!attribute [rw] phone_numbers
        #   @return [Array<ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber>]
        optional :phone_numbers,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber
                   }
                 )

        # @!attribute [rw] politically_exposed_person
        #   Whether the individual is a politically exposed person.
        #   @return [Boolean]
        optional :politically_exposed_person, ModernTreasury::BooleanModel

        # @!attribute [rw] preferred_name
        #   An individual's preferred name.
        #   @return [String]
        optional :preferred_name, String

        # @!attribute [rw] prefix
        #   An individual's prefix.
        #   @return [String]
        optional :prefix, String

        # @!attribute [rw] risk_rating
        #   The risk rating of the legal entity. One of low, medium, high.
        #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating]
        optional :risk_rating,
                 enum: -> {
                   ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating
                 }

        # @!attribute [rw] suffix
        #   An individual's suffix.
        #   @return [String]
        optional :suffix, String

        # @!attribute [rw] wealth_and_employment_details
        #   @return [ModernTreasury::Models::WealthAndEmploymentDetails]
        optional :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

        # @!attribute [rw] website
        #   The entity's primary website URL.
        #   @return [String]
        optional :website, String

        class Address < ModernTreasury::BaseModel
          # @!attribute [rw] country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #   @return [String]
          required :country, String

          # @!attribute [rw] line1
          #   @return [String]
          required :line1, String

          # @!attribute [rw] locality
          #   Locality or City.
          #   @return [String]
          required :locality, String

          # @!attribute [rw] postal_code
          #   The postal code of the address.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] region
          #   Region or State.
          #   @return [String]
          required :region, String

          # @!attribute [rw] address_types
          #   The types of this address.
          #   @return [Array<Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType>]
          optional :address_types,
                   ModernTreasury::ArrayOf.new(
                     enum: -> {
                       ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType
                     }
                   )

          # @!attribute [rw] line2
          #   @return [String]
          optional :line2, String

          class AddressType < ModernTreasury::Enum
            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential
          end

          # @!parse
          #   # Create a new instance of Address from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
          #   #   @option data [String] :line1
          #   #   @option data [String] :locality Locality or City.
          #   #   @option data [String] :postal_code The postal code of the address.
          #   #   @option data [String] :region Region or State.
          #   #   @option data [Array<String>, nil] :address_types The types of this address.
          #   #   @option data [String, nil] :line2
          #   def initialize(data = {}) = super
        end

        class Identification < ModernTreasury::BaseModel
          # @!attribute [rw] id_number
          #   The ID number of identification document.
          #   @return [String]
          required :id_number, String

          # @!attribute [rw] id_type
          #   The type of ID number.
          #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType]
          required :id_type,
                   enum: -> {
                     ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType
                   }

          # @!attribute [rw] issuing_country
          #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
          #   @return [String]
          optional :issuing_country, String

          # The type of ID number.
          class IDType < ModernTreasury::Enum
            AR_CUIL = :ar_cuil
            AR_CUIT = :ar_cuit
            BR_CNPJ = :br_cnpj
            BR_CPF = :br_cpf
            CL_RUN = :cl_run
            CL_RUT = :cl_rut
            CO_CEDULAS = :co_cedulas
            CO_NIT = :co_nit
            HN_ID = :hn_id
            HN_RTN = :hn_rtn
            IN_LEI = :in_lei
            KR_BRN = :kr_brn
            KR_CRN = :kr_crn
            KR_RRN = :kr_rrn
            PASSPORT = :passport
            SA_TIN = :sa_tin
            SA_VAT = :sa_vat
            US_EIN = :us_ein
            US_ITIN = :us_itin
            US_SSN = :us_ssn
            VN_TIN = :vn_tin
          end

          # @!parse
          #   # Create a new instance of Identification from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id_number The ID number of identification document.
          #   #   @option data [String] :id_type The type of ID number.
          #   #   @option data [String, nil] :issuing_country The ISO 3166-1 alpha-2 country code of the country that issued the
          #   #     identification
          #   def initialize(data = {}) = super
        end

        class LegalEntityAssociation < ModernTreasury::BaseModel
          # @!attribute [rw] relationship_types
          #   @return [Array<Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType>]
          required :relationship_types,
                   ModernTreasury::ArrayOf.new(
                     enum: -> {
                       ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType
                     }
                   )

          # @!attribute [rw] child_legal_entity
          #   The child legal entity.
          #   @return [ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity]
          optional :child_legal_entity,
                   -> { ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity }

          # @!attribute [rw] child_legal_entity_id
          #   The ID of the child legal entity.
          #   @return [String]
          optional :child_legal_entity_id, String

          # @!attribute [rw] ownership_percentage
          #   The child entity's ownership percentage iff they are a beneficial owner.
          #   @return [Integer]
          optional :ownership_percentage, Integer

          # @!attribute [rw] title
          #   The job title of the child entity at the parent entity.
          #   @return [String]
          optional :title, String

          # A list of relationship types for how the child entity relates to parent entity.
          class RelationshipType < ModernTreasury::Enum
            BENEFICIAL_OWNER = :beneficial_owner
            CONTROL_PERSON = :control_person
          end

          class ChildLegalEntity < ModernTreasury::BaseModel
            # @!attribute [rw] addresses
            #   A list of addresses for the entity.
            #   @return [Array<ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address>]
            optional :addresses,
                     ModernTreasury::ArrayOf.new(
                       -> {
                         ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                       }
                     )

            # @!attribute [rw] bank_settings
            #   @return [ModernTreasury::Models::BankSettings]
            optional :bank_settings, -> { ModernTreasury::Models::BankSettings }

            # @!attribute [rw] business_name
            #   The business's legal business name.
            #   @return [String]
            optional :business_name, String

            # @!attribute [rw] citizenship_country
            #   The country of citizenship for an individual.
            #   @return [String]
            optional :citizenship_country, String

            # @!attribute [rw] date_formed
            #   A business's formation date (YYYY-MM-DD).
            #   @return [Date]
            optional :date_formed, Date

            # @!attribute [rw] date_of_birth
            #   An individual's date of birth (YYYY-MM-DD).
            #   @return [Date]
            optional :date_of_birth, Date

            # @!attribute [rw] doing_business_as_names
            #   @return [Array<String>]
            optional :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

            # @!attribute [rw] email
            #   The entity's primary email.
            #   @return [String]
            optional :email, String

            # @!attribute [rw] first_name
            #   An individual's first name.
            #   @return [String]
            optional :first_name, String

            # @!attribute [rw] identifications
            #   A list of identifications for the legal entity.
            #   @return [Array<ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification>]
            optional :identifications,
                     ModernTreasury::ArrayOf.new(
                       -> {
                         ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                       }
                     )

            # @!attribute [rw] last_name
            #   An individual's last name.
            #   @return [String]
            optional :last_name, String

            # @!attribute [rw] legal_entity_type
            #   The type of legal entity.
            #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType]
            optional :legal_entity_type,
                     enum: -> {
                       ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                     }

            # @!attribute [rw] legal_structure
            #   The business's legal structure.
            #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure]
            optional :legal_structure,
                     enum: -> {
                       ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure
                     }

            # @!attribute [rw] metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #   @return [Hash]
            optional :metadata, Hash

            # @!attribute [rw] middle_name
            #   An individual's middle name.
            #   @return [String]
            optional :middle_name, String

            # @!attribute [rw] phone_numbers
            #   @return [Array<ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
            optional :phone_numbers,
                     ModernTreasury::ArrayOf.new(
                       -> {
                         ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                       }
                     )

            # @!attribute [rw] politically_exposed_person
            #   Whether the individual is a politically exposed person.
            #   @return [Boolean]
            optional :politically_exposed_person, ModernTreasury::BooleanModel

            # @!attribute [rw] preferred_name
            #   An individual's preferred name.
            #   @return [String]
            optional :preferred_name, String

            # @!attribute [rw] prefix
            #   An individual's prefix.
            #   @return [String]
            optional :prefix, String

            # @!attribute [rw] risk_rating
            #   The risk rating of the legal entity. One of low, medium, high.
            #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating]
            optional :risk_rating,
                     enum: -> {
                       ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating
                     }

            # @!attribute [rw] suffix
            #   An individual's suffix.
            #   @return [String]
            optional :suffix, String

            # @!attribute [rw] wealth_and_employment_details
            #   @return [ModernTreasury::Models::WealthAndEmploymentDetails]
            optional :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

            # @!attribute [rw] website
            #   The entity's primary website URL.
            #   @return [String]
            optional :website, String

            class Address < ModernTreasury::BaseModel
              # @!attribute [rw] country
              #   Country code conforms to [ISO 3166-1 alpha-2]
              #   @return [String]
              required :country, String

              # @!attribute [rw] line1
              #   @return [String]
              required :line1, String

              # @!attribute [rw] locality
              #   Locality or City.
              #   @return [String]
              required :locality, String

              # @!attribute [rw] postal_code
              #   The postal code of the address.
              #   @return [String]
              required :postal_code, String

              # @!attribute [rw] region
              #   Region or State.
              #   @return [String]
              required :region, String

              # @!attribute [rw] address_types
              #   The types of this address.
              #   @return [Array<Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>]
              optional :address_types,
                       ModernTreasury::ArrayOf.new(
                         enum: -> {
                           ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                         }
                       )

              # @!attribute [rw] line2
              #   @return [String]
              optional :line2, String

              class AddressType < ModernTreasury::Enum
                BUSINESS = :business
                MAILING = :mailing
                OTHER = :other
                PO_BOX = :po_box
                RESIDENTIAL = :residential
              end

              # @!parse
              #   # Create a new instance of Address from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
              #   #   @option data [String] :line1
              #   #   @option data [String] :locality Locality or City.
              #   #   @option data [String] :postal_code The postal code of the address.
              #   #   @option data [String] :region Region or State.
              #   #   @option data [Array<String>, nil] :address_types The types of this address.
              #   #   @option data [String, nil] :line2
              #   def initialize(data = {}) = super
            end

            class Identification < ModernTreasury::BaseModel
              # @!attribute [rw] id_number
              #   The ID number of identification document.
              #   @return [String]
              required :id_number, String

              # @!attribute [rw] id_type
              #   The type of ID number.
              #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType]
              required :id_type,
                       enum: -> {
                         ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                       }

              # @!attribute [rw] issuing_country
              #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
              #   @return [String]
              optional :issuing_country, String

              # The type of ID number.
              class IDType < ModernTreasury::Enum
                AR_CUIL = :ar_cuil
                AR_CUIT = :ar_cuit
                BR_CNPJ = :br_cnpj
                BR_CPF = :br_cpf
                CL_RUN = :cl_run
                CL_RUT = :cl_rut
                CO_CEDULAS = :co_cedulas
                CO_NIT = :co_nit
                HN_ID = :hn_id
                HN_RTN = :hn_rtn
                IN_LEI = :in_lei
                KR_BRN = :kr_brn
                KR_CRN = :kr_crn
                KR_RRN = :kr_rrn
                PASSPORT = :passport
                SA_TIN = :sa_tin
                SA_VAT = :sa_vat
                US_EIN = :us_ein
                US_ITIN = :us_itin
                US_SSN = :us_ssn
                VN_TIN = :vn_tin
              end

              # @!parse
              #   # Create a new instance of Identification from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :id_number The ID number of identification document.
              #   #   @option data [String] :id_type The type of ID number.
              #   #   @option data [String, nil] :issuing_country The ISO 3166-1 alpha-2 country code of the country that issued the
              #   #     identification
              #   def initialize(data = {}) = super
            end

            # The type of legal entity.
            class LegalEntityType < ModernTreasury::Enum
              BUSINESS = :business
              INDIVIDUAL = :individual
            end

            # The business's legal structure.
            class LegalStructure < ModernTreasury::Enum
              CORPORATION = :corporation
              LLC = :llc
              NON_PROFIT = :non_profit
              PARTNERSHIP = :partnership
              SOLE_PROPRIETORSHIP = :sole_proprietorship
              TRUST = :trust
            end

            class PhoneNumber < ModernTreasury::BaseModel
              # @!attribute [rw] phone_number
              #   @return [String]
              optional :phone_number, String

              # @!parse
              #   # Create a new instance of PhoneNumber from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String, nil] :phone_number
              #   def initialize(data = {}) = super
            end

            # The risk rating of the legal entity. One of low, medium, high.
            class RiskRating < ModernTreasury::Enum
              LOW = :low
              MEDIUM = :medium
              HIGH = :high
            end

            # @!parse
            #   # Create a new instance of ChildLegalEntity from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Array<Object>, nil] :addresses A list of addresses for the entity.
            #   #   @option data [Object, nil] :bank_settings
            #   #   @option data [String, nil] :business_name The business's legal business name.
            #   #   @option data [String, nil] :citizenship_country The country of citizenship for an individual.
            #   #   @option data [String, nil] :date_formed A business's formation date (YYYY-MM-DD).
            #   #   @option data [String, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
            #   #   @option data [Array<String>, nil] :doing_business_as_names
            #   #   @option data [String, nil] :email The entity's primary email.
            #   #   @option data [String, nil] :first_name An individual's first name.
            #   #   @option data [Array<Object>, nil] :identifications A list of identifications for the legal entity.
            #   #   @option data [String, nil] :last_name An individual's last name.
            #   #   @option data [String, nil] :legal_entity_type The type of legal entity.
            #   #   @option data [String, nil] :legal_structure The business's legal structure.
            #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
            #   #     strings.
            #   #   @option data [String, nil] :middle_name An individual's middle name.
            #   #   @option data [Array<Object>, nil] :phone_numbers
            #   #   @option data [Hash, nil] :politically_exposed_person Whether the individual is a politically exposed person.
            #   #   @option data [String, nil] :preferred_name An individual's preferred name.
            #   #   @option data [String, nil] :prefix An individual's prefix.
            #   #   @option data [String, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
            #   #   @option data [String, nil] :suffix An individual's suffix.
            #   #   @option data [Object, nil] :wealth_and_employment_details
            #   #   @option data [String, nil] :website The entity's primary website URL.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of LegalEntityAssociation from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<String>] :relationship_types
          #   #   @option data [Object, nil] :child_legal_entity The child legal entity.
          #   #   @option data [String, nil] :child_legal_entity_id The ID of the child legal entity.
          #   #   @option data [Integer, nil] :ownership_percentage The child entity's ownership percentage iff they are a beneficial owner.
          #   #   @option data [String, nil] :title The job title of the child entity at the parent entity.
          #   def initialize(data = {}) = super
        end

        # The type of legal entity.
        class LegalEntityType < ModernTreasury::Enum
          BUSINESS = :business
          INDIVIDUAL = :individual
        end

        # The business's legal structure.
        class LegalStructure < ModernTreasury::Enum
          CORPORATION = :corporation
          LLC = :llc
          NON_PROFIT = :non_profit
          PARTNERSHIP = :partnership
          SOLE_PROPRIETORSHIP = :sole_proprietorship
          TRUST = :trust
        end

        class PhoneNumber < ModernTreasury::BaseModel
          # @!attribute [rw] phone_number
          #   @return [String]
          optional :phone_number, String

          # @!parse
          #   # Create a new instance of PhoneNumber from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String, nil] :phone_number
          #   def initialize(data = {}) = super
        end

        # The risk rating of the legal entity. One of low, medium, high.
        class RiskRating < ModernTreasury::Enum
          LOW = :low
          MEDIUM = :medium
          HIGH = :high
        end

        # @!parse
        #   # Create a new instance of LegalEntity from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<Object>, nil] :addresses A list of addresses for the entity.
        #   #   @option data [Object, nil] :bank_settings
        #   #   @option data [String, nil] :business_name The business's legal business name.
        #   #   @option data [String, nil] :citizenship_country The country of citizenship for an individual.
        #   #   @option data [String, nil] :date_formed A business's formation date (YYYY-MM-DD).
        #   #   @option data [String, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
        #   #   @option data [Array<String>, nil] :doing_business_as_names
        #   #   @option data [String, nil] :email The entity's primary email.
        #   #   @option data [String, nil] :first_name An individual's first name.
        #   #   @option data [Array<Object>, nil] :identifications A list of identifications for the legal entity.
        #   #   @option data [String, nil] :last_name An individual's last name.
        #   #   @option data [Array<Object>, nil] :legal_entity_associations The legal entity associations and its child legal entities.
        #   #   @option data [String, nil] :legal_entity_type The type of legal entity.
        #   #   @option data [String, nil] :legal_structure The business's legal structure.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [String, nil] :middle_name An individual's middle name.
        #   #   @option data [Array<Object>, nil] :phone_numbers
        #   #   @option data [Hash, nil] :politically_exposed_person Whether the individual is a politically exposed person.
        #   #   @option data [String, nil] :preferred_name An individual's preferred name.
        #   #   @option data [String, nil] :prefix An individual's prefix.
        #   #   @option data [String, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
        #   #   @option data [String, nil] :suffix An individual's suffix.
        #   #   @option data [Object, nil] :wealth_and_employment_details
        #   #   @option data [String, nil] :website The entity's primary website URL.
        #   def initialize(data = {}) = super
      end
    end
  end
end
