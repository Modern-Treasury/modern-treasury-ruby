# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntity < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute addresses
      #   A list of addresses for the entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::Address>]
      required :addresses, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::Address })

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::BankSettings]
      required :bank_settings, -> { ModernTreasury::Models::BankSettings }

      # @!attribute business_name
      #   The business's legal business name.
      #
      #   @return [String]
      required :business_name, String

      # @!attribute citizenship_country
      #   The country of citizenship for an individual.
      #
      #   @return [String]
      required :citizenship_country, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute date_formed
      #   A business's formation date (YYYY-MM-DD).
      #
      #   @return [Date]
      required :date_formed, Date

      # @!attribute date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #
      #   @return [Date]
      required :date_of_birth, Date

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute doing_business_as_names
      #
      #   @return [Array<String>]
      required :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

      # @!attribute email
      #   The entity's primary email.
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   An individual's first name.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute identifications
      #   A list of identifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::Identification>]
      required :identifications,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::Identification })

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute legal_entity_associations
      #   The legal entity associations and its child legal entities.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityAssociation>]
      required :legal_entity_associations,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntityAssociation })

      # @!attribute legal_entity_type
      #   The type of legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalEntityType]
      required :legal_entity_type, enum: -> { ModernTreasury::Models::LegalEntity::LegalEntityType }

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalStructure]
      required :legal_structure, enum: -> { ModernTreasury::Models::LegalEntity::LegalStructure }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute middle_name
      #   An individual's middle name.
      #
      #   @return [String]
      required :middle_name, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      required :phone_numbers,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::PhoneNumber })

      # @!attribute politically_exposed_person
      #   Whether the individual is a politically exposed person.
      #
      #   @return [Boolean]
      required :politically_exposed_person, ModernTreasury::BooleanModel

      # @!attribute preferred_name
      #   An individual's preferred name.
      #
      #   @return [String]
      required :preferred_name, String

      # @!attribute prefix
      #   An individual's prefix.
      #
      #   @return [String]
      required :prefix, String

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::RiskRating]
      required :risk_rating, enum: -> { ModernTreasury::Models::LegalEntity::RiskRating }

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String]
      required :suffix, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::WealthAndEmploymentDetails]
      required :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String]
      required :website, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param addresses [Array<Object>] A list of addresses for the entity.
      #   #
      #   # @param bank_settings [Object]
      #   #
      #   # @param business_name [String] The business's legal business name.
      #   #
      #   # @param citizenship_country [String] The country of citizenship for an individual.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param date_formed [String] A business's formation date (YYYY-MM-DD).
      #   #
      #   # @param date_of_birth [String] An individual's date of birth (YYYY-MM-DD).
      #   #
      #   # @param discarded_at [String]
      #   #
      #   # @param doing_business_as_names [Array<String>]
      #   #
      #   # @param email [String] The entity's primary email.
      #   #
      #   # @param first_name [String] An individual's first name.
      #   #
      #   # @param identifications [Array<Object>] A list of identifications for the legal entity.
      #   #
      #   # @param last_name [String] An individual's last name.
      #   #
      #   # @param legal_entity_associations [Array<Object>] The legal entity associations and its child legal entities.
      #   #
      #   # @param legal_entity_type [String] The type of legal entity.
      #   #
      #   # @param legal_structure [String] The business's legal structure.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param middle_name [String] An individual's middle name.
      #   #
      #   # @param object [String]
      #   #
      #   # @param phone_numbers [Array<Object>]
      #   #
      #   # @param politically_exposed_person [Boolean] Whether the individual is a politically exposed person.
      #   #
      #   # @param preferred_name [String] An individual's preferred name.
      #   #
      #   # @param prefix [String] An individual's prefix.
      #   #
      #   # @param risk_rating [String] The risk rating of the legal entity. One of low, medium, high.
      #   #
      #   # @param suffix [String] An individual's suffix.
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param wealth_and_employment_details [Object]
      #   #
      #   # @param website [String] The entity's primary website URL.
      #   #
      #   def initialize(
      #     id:,
      #     addresses:,
      #     bank_settings:,
      #     business_name:,
      #     citizenship_country:,
      #     created_at:,
      #     date_formed:,
      #     date_of_birth:,
      #     discarded_at:,
      #     doing_business_as_names:,
      #     email:,
      #     first_name:,
      #     identifications:,
      #     last_name:,
      #     legal_entity_associations:,
      #     legal_entity_type:,
      #     legal_structure:,
      #     live_mode:,
      #     metadata:,
      #     middle_name:,
      #     object:,
      #     phone_numbers:,
      #     politically_exposed_person:,
      #     preferred_name:,
      #     prefix:,
      #     risk_rating:,
      #     suffix:,
      #     updated_at:,
      #     wealth_and_employment_details:,
      #     website:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Address < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute address_types
        #   The types of this address.
        #
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntity::Address::AddressType>]
        required :address_types,
                 ModernTreasury::ArrayOf.new(
                   enum: -> {
                     ModernTreasury::Models::LegalEntity::Address::AddressType
                   }
                 )

        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute line2
        #
        #   @return [String]
        required :line2, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        required :region, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param address_types [Array<String>] The types of this address.
        #   #
        #   # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param discarded_at [String]
        #   #
        #   # @param line1 [String]
        #   #
        #   # @param line2 [String]
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param locality [String] Locality or City.
        #   #
        #   # @param object [String]
        #   #
        #   # @param postal_code [String] The postal code of the address.
        #   #
        #   # @param region [String] Region or State.
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(
        #     id:,
        #     address_types:,
        #     country:,
        #     created_at:,
        #     discarded_at:,
        #     line1:,
        #     line2:,
        #     live_mode:,
        #     locality:,
        #     object:,
        #     postal_code:,
        #     region:,
        #     updated_at:
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        class AddressType < ModernTreasury::Enum
          BUSINESS = :business
          MAILING = :mailing
          OTHER = :other
          PO_BOX = :po_box
          RESIDENTIAL = :residential
        end
      end

      class Identification < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute id_type
        #   The type of ID number.
        #
        #   @return [Symbol, ModernTreasury::Models::LegalEntity::Identification::IDType]
        required :id_type, enum: -> { ModernTreasury::Models::LegalEntity::Identification::IDType }

        # @!attribute issuing_country
        #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
        #
        #   @return [String]
        required :issuing_country, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param discarded_at [String]
        #   #
        #   # @param id_type [String] The type of ID number.
        #   #
        #   # @param issuing_country [String] The ISO 3166-1 alpha-2 country code of the country that issued the
        #   #   identification
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param object [String]
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(id:, created_at:, discarded_at:, id_type:, issuing_country:, live_mode:, object:, updated_at:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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

      class PhoneNumber < ModernTreasury::BaseModel
        # @!attribute phone_number
        #
        #   @return [String]
        optional :phone_number, String

        # @!parse
        #   # A list of phone numbers in E.164 format.
        #   #
        #   # @param phone_number [String, nil]
        #   #
        #   def initialize(phone_number: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # The risk rating of the legal entity. One of low, medium, high.
      class RiskRating < ModernTreasury::Enum
        LOW = :low
        MEDIUM = :medium
        HIGH = :high
      end
    end
  end
end
