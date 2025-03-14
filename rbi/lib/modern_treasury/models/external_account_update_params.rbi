# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Can be `checking`, `savings` or `other`.
      sig { returns(T.nilable(Symbol)) }
      def account_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def account_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # A nickname for the external account. This is only for internal usage and won't
      #   affect any payments
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress)) }
      def party_address
      end

      sig do
        params(_: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress)
          .returns(ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress)
      end
      def party_address=(_)
      end

      # If this value isn't provided, it will be inherited from the counterparty's name.
      sig { returns(T.nilable(String)) }
      def party_name
      end

      sig { params(_: String).returns(String) }
      def party_name=(_)
      end

      # Either `individual` or `business`.
      sig { returns(T.nilable(Symbol)) }
      def party_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def party_type=(_)
      end

      sig do
        params(
          account_type: Symbol,
          counterparty_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
          party_name: String,
          party_type: T.nilable(Symbol),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_type: nil,
        counterparty_id: nil,
        metadata: nil,
        name: nil,
        party_address: nil,
        party_name: nil,
        party_type: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_type: Symbol,
              counterparty_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              party_address: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
              party_name: String,
              party_type: T.nilable(Symbol),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class PartyAddress < ModernTreasury::BaseModel
        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        # Locality or City.
        sig { returns(T.nilable(String)) }
        def locality
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def locality=(_)
        end

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        # Region or State.
        sig { returns(T.nilable(String)) }
        def region
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def region=(_)
        end

        sig do
          params(
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
        end

        sig do
          override
            .returns(
              {
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                locality: T.nilable(String),
                postal_code: T.nilable(String),
                region: T.nilable(String)
              }
            )
        end
        def to_hash
        end
      end

      # Either `individual` or `business`.
      class PartyType < ModernTreasury::Enum
        abstract!

        BUSINESS = T.let(:business, T.nilable(Symbol))
        INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
