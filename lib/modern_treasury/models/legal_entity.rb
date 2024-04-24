# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntity < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] addresses
      #   A list of addresses for the entity.
      #   @return [Array<ModernTreasury::Models::LegalEntity::Address>]
      optional :addresses, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::Address })

      # @!attribute [rw] business_name
      #   The business's legal business name.
      #   @return [String]
      optional :business_name, String

      # @!attribute [rw] created_at
      #   @return [String]
      optional :created_at, String

      # @!attribute [rw] date_formed
      #   A business's formation date (YYYY-MM-DD).
      #   @return [String]
      optional :date_formed, String

      # @!attribute [rw] date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #   @return [String]
      optional :date_of_birth, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      optional :discarded_at, String

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
      #   @return [Array<ModernTreasury::Models::LegalEntity::Identification>]
      optional :identifications,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::Identification })

      # @!attribute [rw] last_name
      #   An individual's last name.
      #   @return [String]
      optional :last_name, String

      # @!attribute [rw] legal_entity_associations
      #   The legal entity associations and its child legal entities.
      #   @return [Array<ModernTreasury::Models::LegalEntityAssociation>]
      optional :legal_entity_associations,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntityAssociation })

      # @!attribute [rw] legal_entity_type
      #   The type of legal entity.
      #   @return [Symbol]
      optional :legal_entity_type, ModernTreasury::Enum.new(:business, :individual, :joint)

      # @!attribute [rw] legal_structure
      #   The business's legal structure.
      #   @return [Symbol]
      optional :legal_structure,
               ModernTreasury::Enum.new(
                 :corporation,
                 :llc,
                 :non_profit,
                 :partnership,
                 :sole_proprietorship,
                 :trust
               )

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      optional :object, String

      # @!attribute [rw] phone_numbers
      #   @return [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      optional :phone_numbers,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LegalEntity::PhoneNumber })

      # @!attribute [rw] updated_at
      #   @return [String]
      optional :updated_at, String

      # @!attribute [rw] website
      #   The entity's primary website URL.
      #   @return [String]
      optional :website, String

      class Address < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] address_types
        #   The types of this address.
        #   @return [Array<Symbol>]
        required :address_types,
                 ModernTreasury::ArrayOf.new(
                   ModernTreasury::Enum.new(
                     :business,
                     :mailing,
                     :other,
                     :po_box,
                     :residential
                   )
                 )

        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] discarded_at
        #   @return [String]
        required :discarded_at, String

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
        #   @return [String]
        required :updated_at, String
      end

      class Identification < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] discarded_at
        #   @return [String]
        required :discarded_at, String

        # @!attribute [rw] id_type
        #   The type of ID number.
        #   @return [Symbol]
        required :id_type,
                 ModernTreasury::Enum.new(
                   :ar_cuil,
                   :ar_cuit,
                   :br_cnpj,
                   :br_cpf,
                   :cl_rut,
                   :co_cedulas,
                   :co_nit,
                   :hn_id,
                   :hn_rtn,
                   :in_lei,
                   :passport,
                   :sa_tin,
                   :sa_vat,
                   :us_ein,
                   :us_itin,
                   :us_ssn,
                   :vn_tin
                 )

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
        #   @return [String]
        required :updated_at, String
      end

      class PhoneNumber < BaseModel
        # @!attribute [rw] phone_number
        #   @return [String]
        optional :phone_number, String
      end
    end
  end
end
