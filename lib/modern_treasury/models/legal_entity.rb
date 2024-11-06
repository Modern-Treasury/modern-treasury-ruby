# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntity < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] addresses
      #   A list of addresses for the entity.
      #   @return [Array<ModernTreasury::Models::LegalEntity::Address>]
      required :addresses, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::Address })

      # @!attribute [rw] business_name
      #   The business's legal business name.
      #   @return [String]
      required :business_name, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] date_formed
      #   A business's formation date (YYYY-MM-DD).
      #   @return [Date]
      required :date_formed, Date

      # @!attribute [rw] date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #   @return [Date]
      required :date_of_birth, Date

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

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
      #   @return [Array<ModernTreasury::Models::LegalEntity::Identification>]
      required :identifications,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::Identification })

      # @!attribute [rw] last_name
      #   An individual's last name.
      #   @return [String]
      required :last_name, String

      # @!attribute [rw] legal_entity_associations
      #   The legal entity associations and its child legal entities.
      #   @return [Array<ModernTreasury::Models::LegalEntityAssociation>]
      required :legal_entity_associations,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntityAssociation })

      # @!attribute [rw] legal_entity_type
      #   The type of legal entity.
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalEntityType]
      required :legal_entity_type, enum: -> { ModernTreasury::Models::LegalEntity::LegalEntityType }

      # @!attribute [rw] legal_structure
      #   The business's legal structure.
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalStructure]
      required :legal_structure, enum: -> { ModernTreasury::Models::LegalEntity::LegalStructure }

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
      #   @return [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      required :phone_numbers,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::PhoneNumber })

      # @!attribute [rw] risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::RiskRating]
      required :risk_rating, enum: -> { ModernTreasury::Models::LegalEntity::RiskRating }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] website
      #   The entity's primary website URL.
      #   @return [String]
      required :website, String

      class Address < ModernTreasury::BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] address_types
        #   The types of this address.
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntity::Address::AddressType>]
        required :address_types,
                 ModernTreasury::ArrayOf.new(
                   enum: -> {
                     ModernTreasury::Models::LegalEntity::Address::AddressType
                   }
                 )

        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] discarded_at
        #   @return [Time]
        required :discarded_at, Time

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
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] discarded_at
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute [rw] id_type
        #   The type of ID number.
        #   @return [Symbol, ModernTreasury::Models::LegalEntity::Identification::IDType]
        required :id_type, enum: -> { ModernTreasury::Models::LegalEntity::Identification::IDType }

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
      #   #   @option data [String] :id
      #   #   @option data [Array<Object>] :addresses A list of addresses for the entity.
      #   #   @option data [String] :business_name The business's legal business name.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :date_formed A business's formation date (YYYY-MM-DD).
      #   #   @option data [String] :date_of_birth An individual's date of birth (YYYY-MM-DD).
      #   #   @option data [String] :discarded_at
      #   #   @option data [Array<String>] :doing_business_as_names
      #   #   @option data [String] :email The entity's primary email.
      #   #   @option data [String] :first_name An individual's first name.
      #   #   @option data [Array<Object>] :identifications A list of identifications for the legal entity.
      #   #   @option data [String] :last_name An individual's last name.
      #   #   @option data [Array<Object>] :legal_entity_associations The legal entity associations and its child legal entities.
      #   #   @option data [String] :legal_entity_type The type of legal entity.
      #   #   @option data [String] :legal_structure The business's legal structure.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [Array<Object>] :phone_numbers
      #   #   @option data [String] :risk_rating The risk rating of the legal entity. One of low, medium, high.
      #   #   @option data [String] :updated_at
      #   #   @option data [String] :website The entity's primary website URL.
      #   def initialize(data = {}) = super
    end
  end
end
