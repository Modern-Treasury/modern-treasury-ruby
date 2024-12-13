# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityAssociation < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute child_legal_entity
      #   The child legal entity.
      #   @return [ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity]
      required :child_legal_entity, -> { ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity }

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute ownership_percentage
      #   The child entity's ownership percentage iff they are a beneficial owner.
      #   @return [Integer]
      required :ownership_percentage, Integer

      # @!attribute parent_legal_entity_id
      #   The ID of the parent legal entity. This must be a business or joint legal entity.
      #   @return [String]
      required :parent_legal_entity_id, String

      # @!attribute relationship_types
      #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityAssociation::RelationshipType>]
      required :relationship_types,
               ModernTreasury::ArrayOf.new(
                 enum: -> {
                   ModernTreasury::Models::LegalEntityAssociation::RelationshipType
                 }
               )

      # @!attribute title
      #   The job title of the child entity at the parent entity.
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      class ChildLegalEntity < ModernTreasury::BaseModel
        # @!attribute id
        #   @return [String]
        required :id, String

        # @!attribute addresses
        #   A list of addresses for the entity.
        #   @return [Array<ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address>]
        required :addresses,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address
                   }
                 )

        # @!attribute bank_settings
        #   @return [ModernTreasury::Models::BankSettings]
        required :bank_settings, -> { ModernTreasury::Models::BankSettings }

        # @!attribute business_name
        #   The business's legal business name.
        #   @return [String]
        required :business_name, String

        # @!attribute citizenship_country
        #   The country of citizenship for an individual.
        #   @return [String]
        required :citizenship_country, String

        # @!attribute created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute date_formed
        #   A business's formation date (YYYY-MM-DD).
        #   @return [Date]
        required :date_formed, Date

        # @!attribute date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute discarded_at
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute doing_business_as_names
        #   @return [Array<String>]
        required :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

        # @!attribute email
        #   The entity's primary email.
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   An individual's first name.
        #   @return [String]
        required :first_name, String

        # @!attribute identifications
        #   A list of identifications for the legal entity.
        #   @return [Array<ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification>]
        required :identifications,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification
                   }
                 )

        # @!attribute last_name
        #   An individual's last name.
        #   @return [String]
        required :last_name, String

        # @!attribute legal_entity_type
        #   The type of legal entity.
        #   @return [Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType]
        required :legal_entity_type,
                 enum: -> {
                   ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                 }

        # @!attribute legal_structure
        #   The business's legal structure.
        #   @return [Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure]
        required :legal_structure,
                 enum: -> { ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure }

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        required :metadata, Hash

        # @!attribute middle_name
        #   An individual's middle name.
        #   @return [String]
        required :middle_name, String

        # @!attribute object
        #   @return [String]
        required :object, String

        # @!attribute phone_numbers
        #   @return [Array<ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
        required :phone_numbers,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                   }
                 )

        # @!attribute politically_exposed_person
        #   Whether the individual is a politically exposed person.
        #   @return [Boolean]
        required :politically_exposed_person, ModernTreasury::BooleanModel

        # @!attribute preferred_name
        #   An individual's preferred name.
        #   @return [String]
        required :preferred_name, String

        # @!attribute prefix
        #   An individual's prefix.
        #   @return [String]
        required :prefix, String

        # @!attribute risk_rating
        #   The risk rating of the legal entity. One of low, medium, high.
        #   @return [Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating]
        required :risk_rating,
                 enum: -> { ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating }

        # @!attribute suffix
        #   An individual's suffix.
        #   @return [String]
        required :suffix, String

        # @!attribute updated_at
        #   @return [Time]
        required :updated_at, Time

        # @!attribute wealth_and_employment_details
        #   @return [ModernTreasury::Models::WealthAndEmploymentDetails]
        required :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

        # @!attribute website
        #   The entity's primary website URL.
        #   @return [String]
        required :website, String

        class Address < ModernTreasury::BaseModel
          # @!attribute id
          #   @return [String]
          required :id, String

          # @!attribute address_types
          #   The types of this address.
          #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>]
          required :address_types,
                   ModernTreasury::ArrayOf.new(
                     enum: -> {
                       ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                     }
                   )

          # @!attribute country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #   @return [String]
          required :country, String

          # @!attribute created_at
          #   @return [Time]
          required :created_at, Time

          # @!attribute discarded_at
          #   @return [Time]
          required :discarded_at, Time

          # @!attribute line1
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   @return [String]
          required :line2, String

          # @!attribute live_mode
          #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
          #   @return [Boolean]
          required :live_mode, ModernTreasury::BooleanModel

          # @!attribute locality
          #   Locality or City.
          #   @return [String]
          required :locality, String

          # @!attribute object
          #   @return [String]
          required :object, String

          # @!attribute postal_code
          #   The postal code of the address.
          #   @return [String]
          required :postal_code, String

          # @!attribute region
          #   Region or State.
          #   @return [String]
          required :region, String

          # @!attribute updated_at
          #   @return [Time]
          required :updated_at, Time

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
          #   #   @option data [String] :id
          #   #   @option data [Array<String>] :address_types The types of this address.
          #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
          #   #   @option data [String] :created_at
          #   #   @option data [String] :discarded_at
          #   #   @option data [String] :line1
          #   #   @option data [String] :line2
          #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
          #   #     if it exists in the test environment.
          #   #   @option data [String] :locality Locality or City.
          #   #   @option data [String] :object
          #   #   @option data [String] :postal_code The postal code of the address.
          #   #   @option data [String] :region Region or State.
          #   #   @option data [String] :updated_at
          #   def initialize(data = {}) = super
        end

        class Identification < ModernTreasury::BaseModel
          # @!attribute id
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   @return [Time]
          required :created_at, Time

          # @!attribute discarded_at
          #   @return [Time]
          required :discarded_at, Time

          # @!attribute id_type
          #   The type of ID number.
          #   @return [Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType]
          required :id_type,
                   enum: -> {
                     ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                   }

          # @!attribute issuing_country
          #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
          #   @return [String]
          required :issuing_country, String

          # @!attribute live_mode
          #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
          #   @return [Boolean]
          required :live_mode, ModernTreasury::BooleanModel

          # @!attribute object
          #   @return [String]
          required :object, String

          # @!attribute updated_at
          #   @return [Time]
          required :updated_at, Time

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
          #   #   @option data [String] :id
          #   #   @option data [String] :created_at
          #   #   @option data [String] :discarded_at
          #   #   @option data [String] :id_type The type of ID number.
          #   #   @option data [String] :issuing_country The ISO 3166-1 alpha-2 country code of the country that issued the
          #   #     identification
          #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
          #   #     if it exists in the test environment.
          #   #   @option data [String] :object
          #   #   @option data [String] :updated_at
          #   def initialize(data = {}) = super
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

        class PhoneNumber < ModernTreasury::BaseModel
          # @!attribute phone_number
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
        #   #   @option data [String] :id
        #   #   @option data [Array<Object>] :addresses A list of addresses for the entity.
        #   #   @option data [Object] :bank_settings
        #   #   @option data [String] :business_name The business's legal business name.
        #   #   @option data [String] :citizenship_country The country of citizenship for an individual.
        #   #   @option data [String] :created_at
        #   #   @option data [String] :date_formed A business's formation date (YYYY-MM-DD).
        #   #   @option data [String] :date_of_birth An individual's date of birth (YYYY-MM-DD).
        #   #   @option data [String] :discarded_at
        #   #   @option data [Array<String>] :doing_business_as_names
        #   #   @option data [String] :email The entity's primary email.
        #   #   @option data [String] :first_name An individual's first name.
        #   #   @option data [Array<Object>] :identifications A list of identifications for the legal entity.
        #   #   @option data [String] :last_name An individual's last name.
        #   #   @option data [String] :legal_entity_type The type of legal entity.
        #   #   @option data [String] :legal_structure The business's legal structure.
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [String] :middle_name An individual's middle name.
        #   #   @option data [String] :object
        #   #   @option data [Array<Object>] :phone_numbers
        #   #   @option data [Hash] :politically_exposed_person Whether the individual is a politically exposed person.
        #   #   @option data [String] :preferred_name An individual's preferred name.
        #   #   @option data [String] :prefix An individual's prefix.
        #   #   @option data [String] :risk_rating The risk rating of the legal entity. One of low, medium, high.
        #   #   @option data [String] :suffix An individual's suffix.
        #   #   @option data [String] :updated_at
        #   #   @option data [Object] :wealth_and_employment_details
        #   #   @option data [String] :website The entity's primary website URL.
        #   def initialize(data = {}) = super
      end

      # A list of relationship types for how the child entity relates to parent entity.
      class RelationshipType < ModernTreasury::Enum
        BENEFICIAL_OWNER = :beneficial_owner
        CONTROL_PERSON = :control_person
      end

      # @!parse
      #   # Create a new instance of LegalEntityAssociation from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :child_legal_entity The child legal entity.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [Integer] :ownership_percentage The child entity's ownership percentage iff they are a beneficial owner.
      #   #   @option data [String] :parent_legal_entity_id The ID of the parent legal entity. This must be a business or joint legal
      #   #     entity.
      #   #   @option data [Array<String>] :relationship_types
      #   #   @option data [String] :title The job title of the child entity at the parent entity.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
