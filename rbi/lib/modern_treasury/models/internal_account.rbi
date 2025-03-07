# typed: strong

module ModernTreasury
  module Models
    class InternalAccount < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      def account_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::AccountDetail])
          .returns(T::Array[ModernTreasury::Models::AccountDetail])
      end
      def account_details=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def account_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def account_type=(_)
      end

      sig { returns(ModernTreasury::Models::Connection) }
      def connection
      end

      sig { params(_: ModernTreasury::Models::Connection).returns(ModernTreasury::Models::Connection) }
      def connection=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def legal_entity_id=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(T.nilable(String)) }
      def parent_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def parent_account_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress)) }
      def party_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress))
          .returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress))
      end
      def party_address=(_)
      end

      sig { returns(String) }
      def party_name
      end

      sig { params(_: String).returns(String) }
      def party_name=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def party_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def party_type=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      def routing_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::RoutingDetail])
          .returns(T::Array[ModernTreasury::Models::RoutingDetail])
      end
      def routing_details=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
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
          )
      end
      def to_hash
      end

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
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

        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(T.nilable(String)) }
        def locality
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def locality=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def region
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def region=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

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
          )
            .returns(T.attached_class)
        end
        def self.new(
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
        )
        end

        sig do
          override
            .returns(
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
            )
        end
        def to_hash
        end
      end

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
