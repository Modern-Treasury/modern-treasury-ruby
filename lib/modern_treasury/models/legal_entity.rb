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
      required :addresses, ModernTreasury::ArrayOf[-> { ModernTreasury::Models::LegalEntity::Address }]

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::BankSettings, nil]
      required :bank_settings, -> { ModernTreasury::Models::BankSettings }

      # @!attribute business_name
      #   The business's legal business name.
      #
      #   @return [String, nil]
      required :business_name, String

      # @!attribute citizenship_country
      #   The country of citizenship for an individual.
      #
      #   @return [String, nil]
      required :citizenship_country, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute date_formed
      #   A business's formation date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      required :date_formed, Date

      # @!attribute date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      required :date_of_birth, Date

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time

      # @!attribute doing_business_as_names
      #
      #   @return [Array<String>]
      required :doing_business_as_names, ModernTreasury::ArrayOf[String]

      # @!attribute email
      #   The entity's primary email.
      #
      #   @return [String, nil]
      required :email, String

      # @!attribute first_name
      #   An individual's first name.
      #
      #   @return [String, nil]
      required :first_name, String

      # @!attribute identifications
      #   A list of identifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::Identification>]
      required :identifications,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::LegalEntity::Identification }]

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String, nil]
      required :last_name, String

      # @!attribute legal_entity_associations
      #   The legal entity associations and its child legal entities.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityAssociation>, nil]
      required :legal_entity_associations,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::LegalEntityAssociation }]

      # @!attribute legal_entity_type
      #   The type of legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalEntityType]
      required :legal_entity_type, enum: -> { ModernTreasury::Models::LegalEntity::LegalEntityType }

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalStructure, nil]
      required :legal_structure, enum: -> { ModernTreasury::Models::LegalEntity::LegalStructure }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute middle_name
      #   An individual's middle name.
      #
      #   @return [String, nil]
      required :middle_name, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      required :phone_numbers,
               ModernTreasury::ArrayOf[-> {
                 ModernTreasury::Models::LegalEntity::PhoneNumber
               }]

      # @!attribute politically_exposed_person
      #   Whether the individual is a politically exposed person.
      #
      #   @return [Boolean, nil]
      required :politically_exposed_person, ModernTreasury::BooleanModel

      # @!attribute preferred_name
      #   An individual's preferred name.
      #
      #   @return [String, nil]
      required :preferred_name, String

      # @!attribute prefix
      #   An individual's prefix.
      #
      #   @return [String, nil]
      required :prefix, String

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::RiskRating, nil]
      required :risk_rating, enum: -> { ModernTreasury::Models::LegalEntity::RiskRating }

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String, nil]
      required :suffix, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      required :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String, nil]
      required :website, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param addresses [Array<ModernTreasury::Models::LegalEntity::Address>] A list of addresses for the entity.
      #   #
      #   # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      #   #
      #   # @param business_name [String, nil] The business's legal business name.
      #   #
      #   # @param citizenship_country [String, nil] The country of citizenship for an individual.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param date_formed [String, nil] A business's formation date (YYYY-MM-DD).
      #   #
      #   # @param date_of_birth [String, nil] An individual's date of birth (YYYY-MM-DD).
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param doing_business_as_names [Array<String>]
      #   #
      #   # @param email [String, nil] The entity's primary email.
      #   #
      #   # @param first_name [String, nil] An individual's first name.
      #   #
      #   # @param identifications [Array<ModernTreasury::Models::LegalEntity::Identification>] A list of identifications for the legal entity.
      #   #
      #   # @param last_name [String, nil] An individual's last name.
      #   #
      #   # @param legal_entity_associations [Array<ModernTreasury::Models::LegalEntityAssociation>, nil] The legal entity associations and its child legal entities.
      #   #
      #   # @param legal_entity_type [String] The type of legal entity.
      #   #
      #   # @param legal_structure [String, nil] The business's legal structure.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param middle_name [String, nil] An individual's middle name.
      #   #
      #   # @param object [String]
      #   #
      #   # @param phone_numbers [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      #   #
      #   # @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #   #
      #   # @param preferred_name [String, nil] An individual's preferred name.
      #   #
      #   # @param prefix [String, nil] An individual's prefix.
      #   #
      #   # @param risk_rating [String, nil] The risk rating of the legal entity. One of low, medium, high.
      #   #
      #   # @param suffix [String, nil] An individual's suffix.
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      #   #
      #   # @param website [String, nil] The entity's primary website URL.
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
      #     website:,
      #     **
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
                 ModernTreasury::ArrayOf[enum: -> {
                   ModernTreasury::Models::LegalEntity::Address::AddressType
                 }]

        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String, nil]
        required :country, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String

        # @!attribute line2
        #
        #   @return [String, nil]
        required :line2, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String, nil]
        required :locality, String

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        required :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String, nil]
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
        #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param discarded_at [String, nil]
        #   #
        #   # @param line1 [String, nil]
        #   #
        #   # @param line2 [String, nil]
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param locality [String, nil] Locality or City.
        #   #
        #   # @param object [String]
        #   #
        #   # @param postal_code [String, nil] The postal code of the address.
        #   #
        #   # @param region [String, nil] Region or State.
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
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :business
        #   # ...
        # in :mailing
        #   # ...
        # in :other
        #   # ...
        # in :po_box
        #   # ...
        # in :residential
        #   # ...
        # end
        # ```
        class AddressType < ModernTreasury::Enum
          BUSINESS = :business
          MAILING = :mailing
          OTHER = :other
          PO_BOX = :po_box
          RESIDENTIAL = :residential

          finalize!
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
        #   @return [Time, nil]
        required :discarded_at, Time

        # @!attribute id_type
        #   The type of ID number.
        #
        #   @return [Symbol, ModernTreasury::Models::LegalEntity::Identification::IDType]
        required :id_type, enum: -> { ModernTreasury::Models::LegalEntity::Identification::IDType }

        # @!attribute issuing_country
        #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
        #
        #   @return [String, nil]
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
        #   # @param discarded_at [String, nil]
        #   #
        #   # @param id_type [String] The type of ID number.
        #   #
        #   # @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the
        #   #   identification
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param object [String]
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(id:, created_at:, discarded_at:, id_type:, issuing_country:, live_mode:, object:, updated_at:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The type of ID number.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :ar_cuil
        #   # ...
        # in :ar_cuit
        #   # ...
        # in :br_cnpj
        #   # ...
        # in :br_cpf
        #   # ...
        # in :cl_run
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end

      # The type of legal entity.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # in :joint
      #   # ...
      # end
      # ```
      class LegalEntityType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual
        JOINT = :joint

        finalize!
      end

      # The business's legal structure.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :corporation
      #   # ...
      # in :llc
      #   # ...
      # in :non_profit
      #   # ...
      # in :partnership
      #   # ...
      # in :sole_proprietorship
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class LegalStructure < ModernTreasury::Enum
        CORPORATION = :corporation
        LLC = :llc
        NON_PROFIT = :non_profit
        PARTNERSHIP = :partnership
        SOLE_PROPRIETORSHIP = :sole_proprietorship
        TRUST = :trust

        finalize!
      end

      class PhoneNumber < ModernTreasury::BaseModel
        # @!attribute phone_number
        #
        #   @return [String]
        optional :phone_number, String

        # @!parse
        #   # A list of phone numbers in E.164 format.
        #   #
        #   # @param phone_number [String]
        #   #
        #   def initialize(phone_number: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # The risk rating of the legal entity. One of low, medium, high.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :low
      #   # ...
      # in :medium
      #   # ...
      # in :high
      #   # ...
      # end
      # ```
      class RiskRating < ModernTreasury::Enum
        LOW = :low
        MEDIUM = :medium
        HIGH = :high

        finalize!
      end
    end
  end
end
