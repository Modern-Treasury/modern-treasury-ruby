# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            account_type: Symbol,
            counterparty_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
            party_name: String,
            party_type: T.nilable(Symbol)
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(Symbol)) }
      attr_reader :account_type

      sig { params(account_type: Symbol).void }
      attr_writer :account_type

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress)) }
      attr_reader :party_address

      sig { params(party_address: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress).void }
      attr_writer :party_address

      sig { returns(T.nilable(String)) }
      attr_reader :party_name

      sig { params(party_name: String).void }
      attr_writer :party_name

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :party_type

      sig do
        params(
          account_type: Symbol,
          counterparty_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
          party_name: String,
          party_type: T.nilable(Symbol),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        account_type: nil,
        counterparty_id: nil,
        metadata: nil,
        name: nil,
        party_address: nil,
        party_name: nil,
        party_type: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::ExternalAccountUpdateParams::Shape) }
      def to_h; end

      class PartyAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          }
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

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
          ).void
        end
        def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
        end

        sig { returns(ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress::Shape) }
        def to_h; end
      end

      class PartyType < ModernTreasury::Enum
        abstract!

        BUSINESS = T.let(:business, T.nilable(Symbol))
        INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
