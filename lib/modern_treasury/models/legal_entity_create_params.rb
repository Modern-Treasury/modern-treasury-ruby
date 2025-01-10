# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityCreateParams < ModernTreasury::BaseModel
      # @!attribute legal_entity_type
      #   The type of legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityType]
      required :legal_entity_type,
               enum: -> {
                 ModernTreasury::Models::LegalEntityCreateParams::LegalEntityType
               }

      # @!attribute addresses
      #   A list of addresses for the entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityCreateParams::Address>]
      optional :addresses,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::LegalEntityCreateParams::Address }]

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::BankSettings, nil]
      optional :bank_settings, -> { ModernTreasury::Models::BankSettings }

      # @!attribute business_name
      #   The business's legal business name.
      #
      #   @return [String, nil]
      optional :business_name, String

      # @!attribute citizenship_country
      #   The country of citizenship for an individual.
      #
      #   @return [String, nil]
      optional :citizenship_country, String

      # @!attribute date_formed
      #   A business's formation date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :date_formed, Date

      # @!attribute date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :date_of_birth, Date

      # @!attribute doing_business_as_names
      #
      #   @return [Array<String>]
      optional :doing_business_as_names, ModernTreasury::ArrayOf[String]

      # @!attribute email
      #   The entity's primary email.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute first_name
      #   An individual's first name.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute identifications
      #   A list of identifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityCreateParams::Identification>]
      optional :identifications,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::LegalEntityCreateParams::Identification }]

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute legal_entity_associations
      #   The legal entity associations and its child legal entities.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation>, nil]
      optional :legal_entity_associations,
               ModernTreasury::ArrayOf[-> {
                 ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation
               }]

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalStructure, nil]
      optional :legal_structure, enum: -> { ModernTreasury::Models::LegalEntityCreateParams::LegalStructure }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute middle_name
      #   An individual's middle name.
      #
      #   @return [String, nil]
      optional :middle_name, String

      # @!attribute phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber>]
      optional :phone_numbers,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber }]

      # @!attribute politically_exposed_person
      #   Whether the individual is a politically exposed person.
      #
      #   @return [Boolean, nil]
      optional :politically_exposed_person, ModernTreasury::BooleanModel

      # @!attribute preferred_name
      #   An individual's preferred name.
      #
      #   @return [String, nil]
      optional :preferred_name, String

      # @!attribute prefix
      #   An individual's prefix.
      #
      #   @return [String, nil]
      optional :prefix, String

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::RiskRating, nil]
      optional :risk_rating, enum: -> { ModernTreasury::Models::LegalEntityCreateParams::RiskRating }

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String, nil]
      optional :suffix, String

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      optional :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String, nil]
      optional :website, String

      # @!parse
      #   # @param legal_entity_type [String] The type of legal entity.
      #   #
      #   # @param addresses [Array<ModernTreasury::Models::LegalEntityCreateParams::Address>] A list of addresses for the entity.
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
      #   # @param doing_business_as_names [Array<String>]
      #   #
      #   # @param email [String, nil] The entity's primary email.
      #   #
      #   # @param first_name [String, nil] An individual's first name.
      #   #
      #   # @param identifications [Array<ModernTreasury::Models::LegalEntityCreateParams::Identification>] A list of identifications for the legal entity.
      #   #
      #   # @param last_name [String, nil] An individual's last name.
      #   #
      #   # @param legal_entity_associations [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation>, nil] The legal entity associations and its child legal entities.
      #   #
      #   # @param legal_structure [String, nil] The business's legal structure.
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param middle_name [String, nil] An individual's middle name.
      #   #
      #   # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber>]
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
      #     legal_entity_type:,
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
      #     legal_entity_associations: nil,
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
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The type of legal entity.
      #
      # @example
      #
      # ```ruby
      # case legal_entity_type
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # end
      # ```
      class LegalEntityType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual

        finalize!
      end

      # @example
      #
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
        required :country, String

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String, nil]
        required :locality, String

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

        # @!attribute address_types
        #   The types of this address.
        #
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityCreateParams::Address::AddressType>]
        optional :address_types,
                 ModernTreasury::ArrayOf[enum: -> {
                   ModernTreasury::Models::LegalEntityCreateParams::Address::AddressType
                 }]

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String, nil]
        #   #
        #   # @param locality [String, nil] Locality or City.
        #   #
        #   # @param postal_code [String, nil] The postal code of the address.
        #   #
        #   # @param region [String, nil] Region or State.
        #   #
        #   # @param address_types [Array<String>] The types of this address.
        #   #
        #   # @param line2 [String, nil]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        #
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
      #
      # ```ruby
      # identification => {
      #   id_number: String,
      #   id_type: ModernTreasury::Models::LegalEntityCreateParams::Identification::IDType,
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
        #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::Identification::IDType]
        required :id_type,
                 enum: -> {
                   ModernTreasury::Models::LegalEntityCreateParams::Identification::IDType
                 }

        # @!attribute issuing_country
        #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
        #
        #   @return [String, nil]
        optional :issuing_country, String

        # @!parse
        #   # @param id_number [String] The ID number of identification document.
        #   #
        #   # @param id_type [String] The type of ID number.
        #   #
        #   # @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the
        #   #   identification
        #   #
        #   def initialize(id_number:, id_type:, issuing_country: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The type of ID number.
        #
        # @example
        #
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

      # @example
      #
      # ```ruby
      # legal_entity_association => {
      #   relationship_types: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::RelationshipType] === _1 },
      #   child_legal_entity: ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity,
      #   child_legal_entity_id: String,
      #   ownership_percentage: Integer,
      #   title: String
      # }
      # ```
      class LegalEntityAssociation < ModernTreasury::BaseModel
        # @!attribute relationship_types
        #
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::RelationshipType>]
        required :relationship_types,
                 ModernTreasury::ArrayOf[enum: -> {
                   ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::RelationshipType
                 }]

        # @!attribute child_legal_entity
        #   The child legal entity.
        #
        #   @return [ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity]
        optional :child_legal_entity,
                 -> { ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity }

        # @!attribute child_legal_entity_id
        #   The ID of the child legal entity.
        #
        #   @return [String]
        optional :child_legal_entity_id, String

        # @!attribute ownership_percentage
        #   The child entity's ownership percentage iff they are a beneficial owner.
        #
        #   @return [Integer, nil]
        optional :ownership_percentage, Integer

        # @!attribute title
        #   The job title of the child entity at the parent entity.
        #
        #   @return [String, nil]
        optional :title, String

        # @!parse
        #   # @param relationship_types [Array<String>]
        #   #
        #   # @param child_legal_entity [ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity] The child legal entity.
        #   #
        #   # @param child_legal_entity_id [String] The ID of the child legal entity.
        #   #
        #   # @param ownership_percentage [Integer, nil] The child entity's ownership percentage iff they are a beneficial owner.
        #   #
        #   # @param title [String, nil] The job title of the child entity at the parent entity.
        #   #
        #   def initialize(
        #     relationship_types:,
        #     child_legal_entity: nil,
        #     child_legal_entity_id: nil,
        #     ownership_percentage: nil,
        #     title: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # A list of relationship types for how the child entity relates to parent entity.
        #
        # @example
        #
        # ```ruby
        # case relationship_type
        # in :beneficial_owner
        #   # ...
        # in :control_person
        #   # ...
        # end
        # ```
        class RelationshipType < ModernTreasury::Enum
          BENEFICIAL_OWNER = :beneficial_owner
          CONTROL_PERSON = :control_person

          finalize!
        end

        # @example
        #
        # ```ruby
        # child_legal_entity => {
        #   addresses: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Address] === _1 },
        #   bank_settings: ModernTreasury::Models::BankSettings,
        #   business_name: String,
        #   citizenship_country: String,
        #   date_formed: Date,
        #   **_
        # }
        # ```
        class ChildLegalEntity < ModernTreasury::BaseModel
          # @!attribute addresses
          #   A list of addresses for the entity.
          #
          #   @return [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Address>]
          optional :addresses,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Address
                   }]

          # @!attribute bank_settings
          #
          #   @return [ModernTreasury::Models::BankSettings, nil]
          optional :bank_settings, -> { ModernTreasury::Models::BankSettings }

          # @!attribute business_name
          #   The business's legal business name.
          #
          #   @return [String, nil]
          optional :business_name, String

          # @!attribute citizenship_country
          #   The country of citizenship for an individual.
          #
          #   @return [String, nil]
          optional :citizenship_country, String

          # @!attribute date_formed
          #   A business's formation date (YYYY-MM-DD).
          #
          #   @return [Date, nil]
          optional :date_formed, Date

          # @!attribute date_of_birth
          #   An individual's date of birth (YYYY-MM-DD).
          #
          #   @return [Date, nil]
          optional :date_of_birth, Date

          # @!attribute doing_business_as_names
          #
          #   @return [Array<String>]
          optional :doing_business_as_names, ModernTreasury::ArrayOf[String]

          # @!attribute email
          #   The entity's primary email.
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute first_name
          #   An individual's first name.
          #
          #   @return [String, nil]
          optional :first_name, String

          # @!attribute identifications
          #   A list of identifications for the legal entity.
          #
          #   @return [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Identification>]
          optional :identifications,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Identification
                   }]

          # @!attribute last_name
          #   An individual's last name.
          #
          #   @return [String, nil]
          optional :last_name, String

          # @!attribute legal_entity_type
          #   The type of legal entity.
          #
          #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::LegalEntityType]
          optional :legal_entity_type,
                   enum: -> {
                     ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                   }

          # @!attribute legal_structure
          #   The business's legal structure.
          #
          #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::LegalStructure, nil]
          optional :legal_structure,
                   enum: -> {
                     ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::LegalStructure
                   }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute middle_name
          #   An individual's middle name.
          #
          #   @return [String, nil]
          optional :middle_name, String

          # @!attribute phone_numbers
          #
          #   @return [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
          optional :phone_numbers,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                   }]

          # @!attribute politically_exposed_person
          #   Whether the individual is a politically exposed person.
          #
          #   @return [Boolean, nil]
          optional :politically_exposed_person, ModernTreasury::BooleanModel

          # @!attribute preferred_name
          #   An individual's preferred name.
          #
          #   @return [String, nil]
          optional :preferred_name, String

          # @!attribute prefix
          #   An individual's prefix.
          #
          #   @return [String, nil]
          optional :prefix, String

          # @!attribute risk_rating
          #   The risk rating of the legal entity. One of low, medium, high.
          #
          #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::RiskRating, nil]
          optional :risk_rating,
                   enum: -> {
                     ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::RiskRating
                   }

          # @!attribute suffix
          #   An individual's suffix.
          #
          #   @return [String, nil]
          optional :suffix, String

          # @!attribute wealth_and_employment_details
          #
          #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
          optional :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

          # @!attribute website
          #   The entity's primary website URL.
          #
          #   @return [String, nil]
          optional :website, String

          # @!parse
          #   # The child legal entity.
          #   #
          #   # @param addresses [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Address>] A list of addresses for the entity.
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
          #   # @param doing_business_as_names [Array<String>]
          #   #
          #   # @param email [String, nil] The entity's primary email.
          #   #
          #   # @param first_name [String, nil] An individual's first name.
          #   #
          #   # @param identifications [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Identification>] A list of identifications for the legal entity.
          #   #
          #   # @param last_name [String, nil] An individual's last name.
          #   #
          #   # @param legal_entity_type [String] The type of legal entity.
          #   #
          #   # @param legal_structure [String, nil] The business's legal structure.
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param middle_name [String, nil] An individual's middle name.
          #   #
          #   # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
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
          #     legal_entity_type: nil,
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
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @example
          #
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
            required :country, String

            # @!attribute line1
            #
            #   @return [String, nil]
            required :line1, String

            # @!attribute locality
            #   Locality or City.
            #
            #   @return [String, nil]
            required :locality, String

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

            # @!attribute address_types
            #   The types of this address.
            #
            #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>]
            optional :address_types,
                     ModernTreasury::ArrayOf[enum: -> {
                       ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                     }]

            # @!attribute line2
            #
            #   @return [String, nil]
            optional :line2, String

            # @!parse
            #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
            #   #
            #   # @param line1 [String, nil]
            #   #
            #   # @param locality [String, nil] Locality or City.
            #   #
            #   # @param postal_code [String, nil] The postal code of the address.
            #   #
            #   # @param region [String, nil] Region or State.
            #   #
            #   # @param address_types [Array<String>] The types of this address.
            #   #
            #   # @param line2 [String, nil]
            #   #
            #   def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # @example
            #
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
          #
          # ```ruby
          # identification => {
          #   id_number: String,
          #   id_type: ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Identification::IDType,
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
            #   @return [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Identification::IDType]
            required :id_type,
                     enum: -> {
                       ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                     }

            # @!attribute issuing_country
            #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
            #
            #   @return [String, nil]
            optional :issuing_country, String

            # @!parse
            #   # @param id_number [String] The ID number of identification document.
            #   #
            #   # @param id_type [String] The type of ID number.
            #   #
            #   # @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the
            #   #   identification
            #   #
            #   def initialize(id_number:, id_type:, issuing_country: nil, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # The type of ID number.
            #
            # @example
            #
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

          # The type of legal entity.
          #
          # @example
          #
          # ```ruby
          # case legal_entity_type
          # in :business
          #   # ...
          # in :individual
          #   # ...
          # end
          # ```
          class LegalEntityType < ModernTreasury::Enum
            BUSINESS = :business
            INDIVIDUAL = :individual

            finalize!
          end

          # The business's legal structure.
          #
          # @example
          #
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
          #
          # ```ruby
          # phone_number => {
          #   phone_number: String
          # }
          # ```
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

      # The business's legal structure.
      #
      # @example
      #
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
      #
      # ```ruby
      # phone_number => {
      #   phone_number: String
      # }
      # ```
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
