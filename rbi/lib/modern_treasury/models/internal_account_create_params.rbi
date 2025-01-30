# typed: strong

module ModernTreasury
  module Models
    class InternalAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            connection_id: String,
            currency: Symbol,
            name: String,
            party_name: String,
            counterparty_id: String,
            legal_entity_id: String,
            parent_account_id: String,
            party_address: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
            vendor_attributes: T::Hash[Symbol, String]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :connection_id

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :party_name

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      sig { returns(T.nilable(String)) }
      attr_reader :parent_account_id

      sig { params(parent_account_id: String).void }
      attr_writer :parent_account_id

      sig { returns(T.nilable(ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)) }
      attr_reader :party_address

      sig { params(party_address: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress).void }
      attr_writer :party_address

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :vendor_attributes

      sig { params(vendor_attributes: T::Hash[Symbol, String]).void }
      attr_writer :vendor_attributes

      sig do
        params(
          connection_id: String,
          currency: Symbol,
          name: String,
          party_name: String,
          counterparty_id: String,
          legal_entity_id: String,
          parent_account_id: String,
          party_address: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
          vendor_attributes: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        connection_id:,
        currency:,
        name:,
        party_name:,
        counterparty_id: nil,
        legal_entity_id: nil,
        parent_account_id: nil,
        party_address: nil,
        vendor_attributes: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::InternalAccountCreateParams::Shape) }
      def to_h; end

      class Currency < ModernTreasury::Enum
        abstract!

        USD = :USD
        CAD = :CAD

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class PartyAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          }
        end

        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil); end

        sig { returns(ModernTreasury::Models::InternalAccountCreateParams::PartyAddress::Shape) }
        def to_h; end
      end
    end
  end
end
