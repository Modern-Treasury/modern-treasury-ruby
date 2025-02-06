# typed: strong

module ModernTreasury
  module Models
    class PaymentFlow < ModernTreasury::BaseModel
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      sig { returns(T.nilable(String)) }
      attr_reader :client_token

      sig { params(client_token: String).void }
      attr_writer :client_token

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(Symbol)) }
      attr_reader :direction

      sig { params(direction: Symbol).void }
      attr_writer :direction

      sig { returns(T.nilable(Date)) }
      attr_accessor :due_date

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :effective_date_selection_enabled

      sig { params(effective_date_selection_enabled: T::Boolean).void }
      attr_writer :effective_date_selection_enabled

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :existing_external_accounts_filter

      sig { returns(T.nilable(Symbol)) }
      attr_reader :external_account_collection

      sig { params(external_account_collection: Symbol).void }
      attr_writer :external_account_collection

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :live_mode

      sig { params(live_mode: T::Boolean).void }
      attr_writer :live_mode

      sig { returns(T.nilable(String)) }
      attr_reader :object

      sig { params(object: String).void }
      attr_writer :object

      sig { returns(T.nilable(String)) }
      attr_accessor :originating_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_order_id

      sig { returns(T.nilable(String)) }
      attr_accessor :receiving_account_id

      sig { returns(T.nilable(Date)) }
      attr_accessor :selected_effective_date

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

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
        ).void
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
        override.returns(
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
