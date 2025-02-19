# typed: strong

module ModernTreasury
  module Models
    class InternalAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def party_name
      end

      sig { params(_: String).returns(String) }
      def party_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def parent_account_id
      end

      sig { params(_: String).returns(String) }
      def parent_account_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)) }
      def party_address
      end

      sig do
        params(_: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)
          .returns(ModernTreasury::Models::InternalAccountCreateParams::PartyAddress)
      end
      def party_address=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def vendor_attributes
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def vendor_attributes=(_)
      end

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
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
      )
      end

      sig do
        override
          .returns(
            {
              connection_id: String,
              currency: Symbol,
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

      class Currency < ModernTreasury::Enum
        abstract!

        USD = :USD
        CAD = :CAD

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
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

        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

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

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          )
            .void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
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
