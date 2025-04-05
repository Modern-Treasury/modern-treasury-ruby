# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # Can be `checking`, `savings` or `other`.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::OrSymbol)) }
      attr_reader :account_type

      sig { params(account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol).void }
      attr_writer :account_type

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # A nickname for the external account. This is only for internal usage and won't
      #   affect any payments
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress)) }
      attr_reader :party_address

      sig do
        params(
          party_address: T.any(
            ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :party_address

      # If this value isn't provided, it will be inherited from the counterparty's name.
      sig { returns(T.nilable(String)) }
      attr_reader :party_name

      sig { params(party_name: String).void }
      attr_writer :party_name

      # Either `individual` or `business`.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountUpdateParams::PartyType::OrSymbol)) }
      attr_accessor :party_type

      sig do
        params(
          account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
          counterparty_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: T.any(
            ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
            ModernTreasury::Internal::AnyHash
          ),
          party_name: String,
          party_type: T.nilable(ModernTreasury::Models::ExternalAccountUpdateParams::PartyType::OrSymbol),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
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
      ); end
      sig do
        override
          .returns(
            {
              account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
              counterparty_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              party_address: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
              party_name: String,
              party_type: T.nilable(ModernTreasury::Models::ExternalAccountUpdateParams::PartyType::OrSymbol),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # Locality or City.
        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(T.nilable(String)) }
        attr_accessor :region

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
        def self.new(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil); end

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
        def to_hash; end
      end

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType::TaggedSymbol) }

        BUSINESS = T.let(:business, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType::TaggedSymbol)
        INDIVIDUAL =
          T.let(:individual, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccountUpdateParams::PartyType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
