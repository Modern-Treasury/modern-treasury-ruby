# typed: strong

module ModernTreasury
  module Models
    class InternalAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # The identifier of the financial institution the account belongs to.
      sig { returns(String) }
      attr_accessor :connection_id

      # Either "USD" or "CAD". Internal accounts created at Increase only supports
      # "USD".
      sig { returns(ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol) }
      attr_accessor :currency

      # The nickname of the account.
      sig { returns(String) }
      attr_accessor :name

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      attr_accessor :party_name

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The LegalEntity associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      # The parent internal account of this new account.
      sig { returns(T.nilable(String)) }
      attr_reader :parent_account_id

      sig { params(parent_account_id: String).void }
      attr_writer :parent_account_id

      # The address associated with the owner or null.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)) }
      attr_reader :party_address

      sig do
        params(
          party_address: T.any(
            ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :party_address

      # A hash of vendor specific attributes that will be used when creating the account
      # at the vendor specified by the given connection.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :vendor_attributes

      sig { params(vendor_attributes: T::Hash[Symbol, String]).void }
      attr_writer :vendor_attributes

      sig do
        params(
          connection_id: String,
          currency: ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol,
          name: String,
          party_name: String,
          counterparty_id: String,
          legal_entity_id: String,
          parent_account_id: String,
          party_address: T.any(
            ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
            ModernTreasury::Internal::AnyHash
          ),
          vendor_attributes: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      sig do
        override
          .returns(
            {
              connection_id: String,
              currency: ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol,
              name: String,
              party_name: String,
              counterparty_id: String,
              legal_entity_id: String,
              parent_account_id: String,
              party_address: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
              vendor_attributes: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # Either "USD" or "CAD". Internal accounts created at Increase only supports
      # "USD".
      module Currency
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::InternalAccountCreateParams::Currency::TaggedSymbol) }

        USD = T.let(:USD, ModernTreasury::Models::InternalAccountCreateParams::Currency::TaggedSymbol)
        CAD = T.let(:CAD, ModernTreasury::Models::InternalAccountCreateParams::Currency::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::InternalAccountCreateParams::Currency::TaggedSymbol]) }
        def self.values; end
      end

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        # Locality or City.
        sig { returns(String) }
        attr_accessor :locality

        # The postal code of the address.
        sig { returns(String) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # The address associated with the owner or null.
        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          )
            .returns(T.attached_class)
        end
        def self.new(country:, line1:, locality:, postal_code:, region:, line2: nil); end

        sig do
          override
            .returns(
              {
                country: String,
                line1: String,
                locality: String,
                postal_code: String,
                region: String,
                line2: String
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
