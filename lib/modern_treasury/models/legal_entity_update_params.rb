# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityUpdateParams < ModernTreasury::BaseModel
      # @!attribute addresses
      #   A list of addresses for the entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>]
      optional :addresses,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntityUpdateParams::Address })

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::BankSettings]
      optional :bank_settings, -> { ModernTreasury::Models::BankSettings }

      # @!attribute business_name
      #   The business's legal business name.
      #
      #   @return [String]
      optional :business_name, String

      # @!attribute citizenship_country
      #   The country of citizenship for an individual.
      #
      #   @return [String]
      optional :citizenship_country, String

      # @!attribute date_formed
      #   A business's formation date (YYYY-MM-DD).
      #
      #   @return [Date]
      optional :date_formed, Date

      # @!attribute date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #
      #   @return [Date]
      optional :date_of_birth, Date

      # @!attribute doing_business_as_names
      #
      #   @return [Array<String>]
      optional :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

      # @!attribute email
      #   The entity's primary email.
      #
      #   @return [String]
      optional :email, String

      # @!attribute first_name
      #   An individual's first name.
      #
      #   @return [String]
      optional :first_name, String

      # @!attribute identifications
      #   A list of identifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>]
      optional :identifications,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::LegalEntityUpdateParams::Identification
                 }
               )

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String]
      optional :last_name, String

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure]
      optional :legal_structure, enum: -> { ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute middle_name
      #   An individual's middle name.
      #
      #   @return [String]
      optional :middle_name, String

      # @!attribute phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      optional :phone_numbers,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber
                 }
               )

      # @!attribute politically_exposed_person
      #   Whether the individual is a politically exposed person.
      #
      #   @return [Boolean]
      optional :politically_exposed_person, ModernTreasury::BooleanModel

      # @!attribute preferred_name
      #   An individual's preferred name.
      #
      #   @return [String]
      optional :preferred_name, String

      # @!attribute prefix
      #   An individual's prefix.
      #
      #   @return [String]
      optional :prefix, String

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating]
      optional :risk_rating, enum: -> { ModernTreasury::Models::LegalEntityUpdateParams::RiskRating }

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String]
      optional :suffix, String

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::WealthAndEmploymentDetails]
      optional :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String]
      optional :website, String

      # @!parse
      #   # @param addresses [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>, nil] A list of addresses for the entity.
      #   #
      #   # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      #   #
      #   # @param business_name [String, nil] The business's legal business name.
      #   #
      #   # @param citizenship_country [String, nil] The country of citizenship for an individual.
      #   #
      #   # @param date_formed [String, nil] A business's formation date (YYYY-MM-DD).
      #   #
      #   # @param date_of_birth [String, nil] An individual's date of birth (YYYY-MM-DD).
      #   #
      #   # @param doing_business_as_names [Array<String>, nil]
      #   #
      #   # @param email [String, nil] The entity's primary email.
      #   #
      #   # @param first_name [String, nil] An individual's first name.
      #   #
      #   # @param identifications [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>, nil] A list of identifications for the legal entity.
      #   #
      #   # @param last_name [String, nil] An individual's last name.
      #   #
      #   # @param legal_structure [String, nil] The business's legal structure.
      #   #
      #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param middle_name [String, nil] An individual's middle name.
      #   #
      #   # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>, nil]
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
      #   # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      #   #
      #   # @param website [String, nil] The entity's primary website URL.
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
      #     website: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Address < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

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

        # @!attribute address_types
        #   The types of this address.
        #
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType>]
        optional :address_types,
                 ModernTreasury::ArrayOf.new(
                   enum: -> {
                     ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType
                   }
                 )

        # @!attribute line2
        #
        #   @return [String]
        optional :line2, String

        # @!parse
        #   # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String]
        #   #
        #   # @param locality [String] Locality or City.
        #   #
        #   # @param postal_code [String] The postal code of the address.
        #   #
        #   # @param region [String] Region or State.
        #   #
        #   # @param address_types [Array<String>, nil] The types of this address.
        #   #
        #   # @param line2 [String, nil]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil) = super

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
        end
      end

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
        #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
        #
        #   @return [String]
        optional :issuing_country, String

        # @!parse
        #   # @param id_number [String] The ID number of identification document.
        #   #
        #   # @param id_type [String] The type of ID number.
        #   #
        #   # @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the
        #   #   identification
        #   #
        #   def initialize(id_number:, id_type:, issuing_country: nil) = super

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
        end
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
      end
    end
  end
end
