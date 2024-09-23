# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityAssociation < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] child_legal_entity
      #   The child legal entity.
      #   @return [ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity]
      required :child_legal_entity, -> { ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity }

      # @!attribute [rw] created_at
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] discarded_at
      #   @return [DateTime]
      required :discarded_at, DateTime

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] ownership_percentage
      #   The child entity's ownership percentage iff they are a beneficial owner.
      #   @return [Integer]
      required :ownership_percentage, Integer

      # @!attribute [rw] parent_legal_entity_id
      #   The ID of the parent legal entity. This must be a business or joint legal entity.
      #   @return [String]
      required :parent_legal_entity_id, String

      # @!attribute [rw] relationship_types
      #   @return [Array<Symbol>]
      required :relationship_types,
               ModernTreasury::ArrayOf.new(
                 enum: lambda {
                   ModernTreasury::Models::LegalEntityAssociation::RelationshipType
                 }
               )

      # @!attribute [rw] title
      #   The job title of the child entity at the parent entity.
      #   @return [String]
      required :title, String

      # @!attribute [rw] updated_at
      #   @return [DateTime]
      required :updated_at, DateTime

      class ChildLegalEntity < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] addresses
        #   A list of addresses for the entity.
        #   @return [Array<ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address>]
        required :addresses,
                 ModernTreasury::ArrayOf.new(
                   lambda {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address
                   }
                 )

        # @!attribute [rw] business_name
        #   The business's legal business name.
        #   @return [String]
        required :business_name, String

        # @!attribute [rw] created_at
        #   @return [DateTime]
        required :created_at, DateTime

        # @!attribute [rw] date_formed
        #   A business's formation date (YYYY-MM-DD).
        #   @return [Date]
        required :date_formed, Date

        # @!attribute [rw] date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute [rw] discarded_at
        #   @return [DateTime]
        required :discarded_at, DateTime

        # @!attribute [rw] doing_business_as_names
        #   @return [Array<String>]
        required :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

        # @!attribute [rw] email
        #   The entity's primary email.
        #   @return [String]
        required :email, String

        # @!attribute [rw] first_name
        #   An individual's first name.
        #   @return [String]
        required :first_name, String

        # @!attribute [rw] identifications
        #   A list of identifications for the legal entity.
        #   @return [Array<ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification>]
        required :identifications,
                 ModernTreasury::ArrayOf.new(
                   lambda {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification
                   }
                 )

        # @!attribute [rw] last_name
        #   An individual's last name.
        #   @return [String]
        required :last_name, String

        # @!attribute [rw] legal_entity_type
        #   The type of legal entity.
        #   One of the constants defined in {ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType}
        #   @return [Symbol]
        required :legal_entity_type,
                 enum: lambda {
                   ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                 }

        # @!attribute [rw] legal_structure
        #   The business's legal structure.
        #   One of the constants defined in {ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure}
        #   @return [Symbol]
        required :legal_structure,
                 enum: -> { ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure }

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        required :metadata, Hash

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] phone_numbers
        #   @return [Array<ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
        required :phone_numbers,
                 ModernTreasury::ArrayOf.new(
                   lambda {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                   }
                 )

        # @!attribute [rw] risk_rating
        #   The risk rating of the legal entity. One of low, medium, high.
        #   One of the constants defined in {ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating}
        #   @return [Symbol]
        required :risk_rating,
                 enum: -> { ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating }

        # @!attribute [rw] updated_at
        #   @return [DateTime]
        required :updated_at, DateTime

        # @!attribute [rw] website
        #   The entity's primary website URL.
        #   @return [String]
        required :website, String

        class Address < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] address_types
          #   The types of this address.
          #   @return [Array<Symbol>]
          required :address_types,
                   ModernTreasury::ArrayOf.new(
                     enum: lambda {
                       ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                     }
                   )

          # @!attribute [rw] country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #   @return [String]
          required :country, String

          # @!attribute [rw] created_at
          #   @return [DateTime]
          required :created_at, DateTime

          # @!attribute [rw] discarded_at
          #   @return [DateTime]
          required :discarded_at, DateTime

          # @!attribute [rw] line1
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   @return [String]
          required :line2, String

          # @!attribute [rw] live_mode
          #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
          #   @return [Boolean]
          required :live_mode, ModernTreasury::BooleanModel

          # @!attribute [rw] locality
          #   Locality or City.
          #   @return [String]
          required :locality, String

          # @!attribute [rw] object
          #   @return [String]
          required :object, String

          # @!attribute [rw] postal_code
          #   The postal code of the address.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] region
          #   Region or State.
          #   @return [String]
          required :region, String

          # @!attribute [rw] updated_at
          #   @return [DateTime]
          required :updated_at, DateTime

          class AddressType < ModernTreasury::Enum
            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential
          end
        end

        class Identification < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] created_at
          #   @return [DateTime]
          required :created_at, DateTime

          # @!attribute [rw] discarded_at
          #   @return [DateTime]
          required :discarded_at, DateTime

          # @!attribute [rw] id_type
          #   The type of ID number.
          #   One of the constants defined in {ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType}
          #   @return [Symbol]
          required :id_type,
                   enum: lambda {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                   }

          # @!attribute [rw] issuing_country
          #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
          #   @return [String]
          required :issuing_country, String

          # @!attribute [rw] live_mode
          #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
          #   @return [Boolean]
          required :live_mode, ModernTreasury::BooleanModel

          # @!attribute [rw] object
          #   @return [String]
          required :object, String

          # @!attribute [rw] updated_at
          #   @return [DateTime]
          required :updated_at, DateTime

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
        end

        # The type of legal entity.
        class LegalEntityType < ModernTreasury::Enum
          BUSINESS = :business
          INDIVIDUAL = :individual
          JOINT = :joint
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

        class PhoneNumber < BaseModel
          # @!attribute [rw] phone_number
          #   @return [String]
          optional :phone_number, String
        end

        # The risk rating of the legal entity. One of low, medium, high.
        class RiskRating < ModernTreasury::Enum
          LOW = :low
          MEDIUM = :medium
          HIGH = :high
        end
      end

      # A list of relationship types for how the child entity relates to parent entity.
      class RelationshipType < ModernTreasury::Enum
        BENEFICIAL_OWNER = :beneficial_owner
        CONTROL_PERSON = :control_person
      end
    end
  end
end
