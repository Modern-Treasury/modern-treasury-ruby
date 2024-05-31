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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

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
               ModernTreasury::ArrayOf.new(ModernTreasury::Enum.new(:beneficial_owner, :control_person))

      # @!attribute [rw] title
      #   The job title of the child entity at the parent entity.
      #   @return [String]
      required :title, String

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

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
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] date_formed
        #   A business's formation date (YYYY-MM-DD).
        #   @return [String]
        required :date_formed, String

        # @!attribute [rw] date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #   @return [String]
        required :date_of_birth, String

        # @!attribute [rw] discarded_at
        #   @return [String]
        required :discarded_at, String

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
        #   @return [Symbol]
        required :legal_entity_type, ModernTreasury::Enum.new(:business, :individual, :joint)

        # @!attribute [rw] legal_structure
        #   The business's legal structure.
        #   @return [Symbol]
        required :legal_structure,
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
        #   Translation missing: en.openapi.descriptions.legal_entity.schema.risk_rating
        #   @return [Symbol]
        required :risk_rating, ModernTreasury::Enum.new(:low, :medium, :high)

        # @!attribute [rw] updated_at
        #   @return [String]
        required :updated_at, String

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
                     :kr_brn,
                     :kr_crn,
                     :kr_rrn,
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
end
