# typed: strong

module ModernTreasury
  module Models
    class InternalAccount < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          account_details: T::Array[ModernTreasury::Models::AccountDetail],
          account_type: T.nilable(Symbol),
          connection: ModernTreasury::Models::Connection,
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          ledger_account_id: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          parent_account_id: T.nilable(String),
          party_address: T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress),
          party_name: String,
          party_type: T.nilable(Symbol),
          routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      attr_accessor :account_details

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :account_type

      sig { returns(ModernTreasury::Models::Connection) }
      attr_accessor :connection

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(String)) }
      attr_accessor :parent_account_id

      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress)) }
      attr_accessor :party_address

      sig { returns(String) }
      attr_accessor :party_name

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :party_type

      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      attr_accessor :routing_details

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_details: T::Array[ModernTreasury::Models::AccountDetail],
          account_type: T.nilable(Symbol),
          connection: ModernTreasury::Models::Connection,
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          ledger_account_id: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          parent_account_id: T.nilable(String),
          party_address: T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress),
          party_name: String,
          party_type: T.nilable(Symbol),
          routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        account_details:,
        account_type:,
        connection:,
        counterparty_id:,
        created_at:,
        currency:,
        ledger_account_id:,
        legal_entity_id:,
        live_mode:,
        metadata:,
        name:,
        object:,
        parent_account_id:,
        party_address:,
        party_name:,
        party_type:,
        routing_details:,
        updated_at:
      ); end

      sig { returns(ModernTreasury::Models::InternalAccount::Shape) }
      def to_h; end

      class AccountType < ModernTreasury::Enum
        abstract!

        CASH = T.let(:cash, T.nilable(Symbol))
        CHECKING = T.let(:checking, T.nilable(Symbol))
        GENERAL_LEDGER = T.let(:general_ledger, T.nilable(Symbol))
        LOAN = T.let(:loan, T.nilable(Symbol))
        NON_RESIDENT = T.let(:non_resident, T.nilable(Symbol))
        OTHER = T.let(:other, T.nilable(Symbol))
        OVERDRAFT = T.let(:overdraft, T.nilable(Symbol))
        SAVINGS = T.let(:savings, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class PartyAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            country: T.nilable(String),
            created_at: Time,
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :object

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            country: T.nilable(String),
            created_at: Time,
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          ).void
        end
        def initialize(
          id:,
          country:,
          created_at:,
          line1:,
          line2:,
          live_mode:,
          locality:,
          object:,
          postal_code:,
          region:,
          updated_at:
        ); end

        sig { returns(ModernTreasury::Models::InternalAccount::PartyAddress::Shape) }
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
