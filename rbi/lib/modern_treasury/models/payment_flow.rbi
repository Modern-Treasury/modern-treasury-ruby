# typed: strong

module ModernTreasury
  module Models
    class PaymentFlow < ModernTreasury::BaseModel
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def client_token
      end

      sig { params(_: String).returns(String) }
      def client_token=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(T.nilable(Date)) }
      def due_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def due_date=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def effective_date_selection_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def effective_date_selection_enabled=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def existing_external_accounts_filter
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def existing_external_accounts_filter=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def external_account_collection
      end

      sig { params(_: Symbol).returns(Symbol) }
      def external_account_collection=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T.nilable(String)) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_order_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_order_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def receiving_account_id=(_)
      end

      sig { returns(T.nilable(Date)) }
      def selected_effective_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def selected_effective_date=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Time)) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          amount: Integer,
          client_token: String,
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: String,
          direction: Symbol,
          due_date: T.nilable(Date),
          effective_date_selection_enabled: T::Boolean,
          existing_external_accounts_filter: T.nilable(Symbol),
          external_account_collection: Symbol,
          live_mode: T::Boolean,
          object: String,
          originating_account_id: T.nilable(String),
          payment_order_id: T.nilable(String),
          receiving_account_id: T.nilable(String),
          selected_effective_date: T.nilable(Date),
          status: Symbol,
          updated_at: Time
        )
          .void
      end
      def initialize(
        id: nil,
        amount: nil,
        client_token: nil,
        counterparty_id: nil,
        created_at: nil,
        currency: nil,
        direction: nil,
        due_date: nil,
        effective_date_selection_enabled: nil,
        existing_external_accounts_filter: nil,
        external_account_collection: nil,
        live_mode: nil,
        object: nil,
        originating_account_id: nil,
        payment_order_id: nil,
        receiving_account_id: nil,
        selected_effective_date: nil,
        status: nil,
        updated_at: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: Integer,
              client_token: String,
              counterparty_id: T.nilable(String),
              created_at: Time,
              currency: String,
              direction: Symbol,
              due_date: T.nilable(Date),
              effective_date_selection_enabled: T::Boolean,
              existing_external_accounts_filter: T.nilable(Symbol),
              external_account_collection: Symbol,
              live_mode: T::Boolean,
              object: String,
              originating_account_id: T.nilable(String),
              payment_order_id: T.nilable(String),
              receiving_account_id: T.nilable(String),
              selected_effective_date: T.nilable(Date),
              status: Symbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ExistingExternalAccountsFilter < ModernTreasury::Enum
        abstract!

        VERIFIED = T.let(:verified, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ExternalAccountCollection < ModernTreasury::Enum
        abstract!

        DISABLED = :disabled
        ENABLED = :enabled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
