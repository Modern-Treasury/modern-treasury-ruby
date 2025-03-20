# typed: strong

module ModernTreasury
  module Models
    class InternalAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The identifier of the financial institution the account belongs to.
      sig { returns(String) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      # Either "USD" or "CAD". Internal accounts created at Increase only supports
      #   "USD".
      sig { returns(ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol) }
      def currency
      end

      sig do
        params(_: ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol)
          .returns(ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol)
      end
      def currency=(_)
      end

      # The nickname of the account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      def party_name
      end

      sig { params(_: String).returns(String) }
      def party_name=(_)
      end

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # The LegalEntity associated to this account.
      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      # The parent internal account of this new account.
      sig { returns(T.nilable(String)) }
      def parent_account_id
      end

      sig { params(_: String).returns(String) }
      def parent_account_id=(_)
      end

      # The address associated with the owner or null.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)) }
      def party_address
      end

      sig do
        params(_: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)
          .returns(ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)
      end
      def party_address=(_)
      end

      # A hash of vendor specific attributes that will be used when creating the account
      #   at the vendor specified by the given connection.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def vendor_attributes
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def vendor_attributes=(_)
      end

      sig do
        params(
          connection_id: String,
          currency: ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol,
          name: String,
          party_name: String,
          counterparty_id: String,
          legal_entity_id: String,
          parent_account_id: String,
          party_address: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
          vendor_attributes: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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
      def to_hash
      end

      # Either "USD" or "CAD". Internal accounts created at Increase only supports
      #   "USD".
      module Currency
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency::TaggedSymbol) }

        USD = T.let(:USD, ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol)
        CAD = T.let(:CAD, ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol)
      end

      class PartyAddress < ModernTreasury::BaseModel
        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(String) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        # Locality or City.
        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        # The postal code of the address.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # Region or State.
        sig { returns(String) }
        def region
        end

        sig { params(_: String).returns(String) }
        def region=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

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
        def self.new(country:, line1:, locality:, postal_code:, region:, line2: nil)
        end

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
        def to_hash
        end
      end
    end
  end
end
