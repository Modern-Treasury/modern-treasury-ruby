# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntity < BaseModel
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

      class Address < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] address_types
        #   The types of this address.
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntity::Address::AddressType>]
        required :address_types,
                 ModernTreasury::ArrayOf.new(
                   enum: lambda {
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

        # Create a new instance of Address from a Hash of raw data.
        #
        # @overload initialize(id: nil, address_types: nil, country: nil, created_at: nil, discarded_at: nil, line1: nil, line2: nil, live_mode: nil, locality: nil, object: nil, postal_code: nil, region: nil, updated_at: nil)
        # @param id [String]
        # @param address_types [Array<String>] The types of this address.
        # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        # @param created_at [String]
        # @param discarded_at [String]
        # @param line1 [String]
        # @param line2 [String]
        # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        # @param locality [String] Locality or City.
        # @param object [String]
        # @param postal_code [String] The postal code of the address.
        # @param region [String] Region or State.
        # @param updated_at [String]
        def initialize(data = {})
          super
        end
      end

      class Identification < BaseModel
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

        # Create a new instance of Identification from a Hash of raw data.
        #
        # @overload initialize(id: nil, created_at: nil, discarded_at: nil, id_type: nil, issuing_country: nil, live_mode: nil, object: nil, updated_at: nil)
        # @param id [String]
        # @param created_at [String]
        # @param discarded_at [String]
        # @param id_type [String] The type of ID number.
        # @param issuing_country [String] The ISO 3166-1 alpha-2 country code of the country that issued the
        #   identification
        # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        # @param object [String]
        # @param updated_at [String]
        def initialize(data = {})
          super
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

        # Create a new instance of PhoneNumber from a Hash of raw data.
        #
        # @overload initialize(phone_number: nil)
        # @param phone_number [String]
        def initialize(data = {})
          super
        end
      end

      # The risk rating of the legal entity. One of low, medium, high.
      class RiskRating < ModernTreasury::Enum
        LOW = :low
        MEDIUM = :medium
        HIGH = :high
      end

      # Create a new instance of LegalEntity from a Hash of raw data.
      #
      # @overload initialize(id: nil, addresses: nil, business_name: nil, created_at: nil, date_formed: nil, date_of_birth: nil, discarded_at: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, last_name: nil, legal_entity_associations: nil, legal_entity_type: nil, legal_structure: nil, live_mode: nil, metadata: nil, object: nil, phone_numbers: nil, risk_rating: nil, updated_at: nil, website: nil)
      # @param id [String]
      # @param addresses [Array<Object>] A list of addresses for the entity.
      # @param business_name [String] The business's legal business name.
      # @param created_at [String]
      # @param date_formed [String] A business's formation date (YYYY-MM-DD).
      # @param date_of_birth [String] An individual's date of birth (YYYY-MM-DD).
      # @param discarded_at [String]
      # @param doing_business_as_names [Array<String>]
      # @param email [String] The entity's primary email.
      # @param first_name [String] An individual's first name.
      # @param identifications [Array<Object>] A list of identifications for the legal entity.
      # @param last_name [String] An individual's last name.
      # @param legal_entity_associations [Array<Object>] The legal entity associations and its child legal entities.
      # @param legal_entity_type [String] The type of legal entity.
      # @param legal_structure [String] The business's legal structure.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param object [String]
      # @param phone_numbers [Array<Object>]
      # @param risk_rating [String] The risk rating of the legal entity. One of low, medium, high.
      # @param updated_at [String]
      # @param website [String] The entity's primary website URL.
      def initialize(data = {})
        super
      end
    end
  end
end
