# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] addresses
      #   A list of addresses for the entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>]
      optional :addresses,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityUpdateParams::Address] }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>]
      #   attr_writer :addresses

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::BankSettings, nil]
      optional :bank_settings, -> { ModernTreasury::Models::BankSettings }, nil?: true

      # @!attribute business_name
      #   The business's legal business name.
      #
      #   @return [String, nil]
      optional :business_name, String, nil?: true

      # @!attribute citizenship_country
      #   The country of citizenship for an individual.
      #
      #   @return [String, nil]
      optional :citizenship_country, String, nil?: true

      # @!attribute date_formed
      #   A business's formation date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :date_formed, Date, nil?: true

      # @!attribute date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :date_of_birth, Date, nil?: true

      # @!attribute [r] doing_business_as_names
      #
      #   @return [Array<String>]
      optional :doing_business_as_names, ModernTreasury::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :doing_business_as_names

      # @!attribute email
      #   The entity's primary email.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute first_name
      #   An individual's first name.
      #
      #   @return [String, nil]
      optional :first_name, String, nil?: true

      # @!attribute [r] identifications
      #   A list of identifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>]
      optional :identifications,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityUpdateParams::Identification] }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>]
      #   attr_writer :identifications

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String, nil]
      optional :last_name, String, nil?: true

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil]
      optional :legal_structure,
               enum: -> { ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure },
               nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute middle_name
      #   An individual's middle name.
      #
      #   @return [String, nil]
      optional :middle_name, String, nil?: true

      # @!attribute [r] phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      optional :phone_numbers,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber] }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      #   attr_writer :phone_numbers

      # @!attribute politically_exposed_person
      #   Whether the individual is a politically exposed person.
      #
      #   @return [Boolean, nil]
      optional :politically_exposed_person, ModernTreasury::BooleanModel, nil?: true

      # @!attribute preferred_name
      #   An individual's preferred name.
      #
      #   @return [String, nil]
      optional :preferred_name, String, nil?: true

      # @!attribute prefix
      #   An individual's prefix.
      #
      #   @return [String, nil]
      optional :prefix, String, nil?: true

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil]
      optional :risk_rating,
               enum: -> { ModernTreasury::Models::LegalEntityUpdateParams::RiskRating },
               nil?: true

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String, nil]
      optional :suffix, String, nil?: true

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      optional :wealth_and_employment_details,
               -> { ModernTreasury::Models::WealthAndEmploymentDetails },
               nil?: true

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String, nil]
      optional :website, String, nil?: true

      # @!parse
      #   # @param addresses [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>]
      #   # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      #   # @param business_name [String, nil]
      #   # @param citizenship_country [String, nil]
      #   # @param date_formed [Date, nil]
      #   # @param date_of_birth [Date, nil]
      #   # @param doing_business_as_names [Array<String>]
      #   # @param email [String, nil]
      #   # @param first_name [String, nil]
      #   # @param identifications [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>]
      #   # @param last_name [String, nil]
      #   # @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param middle_name [String, nil]
      #   # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      #   # @param politically_exposed_person [Boolean, nil]
      #   # @param preferred_name [String, nil]
      #   # @param prefix [String, nil]
      #   # @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil]
      #   # @param suffix [String, nil]
      #   # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      #   # @param website [String, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     addresses: nil,
      #     bank_settings: nil,
      #     business_name: nil,
      #     citizenship_country: nil,
      #     date_formed: nil,
      #     date_of_birth: nil,
      #     doing_business_as_names: nil,
      #     email: nil,
      #     first_name: nil,
      #     identifications: nil,
      #     last_name: nil,
      #     legal_structure: nil,
      #     metadata: nil,
      #     middle_name: nil,
      #     phone_numbers: nil,
      #     politically_exposed_person: nil,
      #     preferred_name: nil,
      #     prefix: nil,
      #     risk_rating: nil,
      #     suffix: nil,
      #     wealth_and_employment_details: nil,
      #     website: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # address => {
      #   country: String,
      #   line1: String,
      #   locality: String,
      #   postal_code: String,
      #   region: String,
      #   **_
      # }
      # ```
      class Address < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String, nil]
        required :locality, String, nil?: true

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute region
        #   Region or State.
        #
        #   @return [String, nil]
        required :region, String, nil?: true

        # @!attribute [r] address_types
        #   The types of this address.
        #
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType>]
        optional :address_types,
                 -> {
                   ModernTreasury::ArrayOf[enum: ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType]
                 }

        # @!parse
        #   # @return [Array<Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType>]
        #   attr_writer :address_types

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!parse
        #   # @param country [String, nil]
        #   # @param line1 [String, nil]
        #   # @param locality [String, nil]
        #   # @param postal_code [String, nil]
        #   # @param region [String, nil]
        #   # @param address_types [Array<Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType>]
        #   # @param line2 [String, nil]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        # ```ruby
        # case address_type
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

      # @example
      # ```ruby
      # identification => {
      #   id_number: String,
      #   id_type: ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType,
      #   issuing_country: String
      # }
      # ```
      class Identification < ModernTreasury::BaseModel
        # @!attribute id_number
        #   The ID number of identification document.
        #
        #   @return [String]
        required :id_number, String

        # @!attribute id_type
        #   The type of ID number.
        #
        #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType]
        required :id_type,
                 enum: -> {
                   ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType
                 }

        # @!attribute issuing_country
        #   The ISO 3166-1 alpha-2 country code of the country that issued the
        #     identification
        #
        #   @return [String, nil]
        optional :issuing_country, String, nil?: true

        # @!parse
        #   # @param id_number [String]
        #   # @param id_type [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType]
        #   # @param issuing_country [String, nil]
        #   #
        #   def initialize(id_number:, id_type:, issuing_country: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The type of ID number.
        #
        # @example
        # ```ruby
        # case id_type
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

      # The business's legal structure.
      #
      # @example
      # ```ruby
      # case legal_structure
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

      # @example
      # ```ruby
      # phone_number => {
      #   phone_number: String
      # }
      # ```
      class PhoneNumber < ModernTreasury::BaseModel
        # @!attribute [r] phone_number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone_number

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
      # ```ruby
      # case risk_rating
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
