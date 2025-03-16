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

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000. Can be any integer up to 36 digits.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The client token of the payment flow. This token can be used to embed a payment
      #   workflow in your client-side application.
      sig { returns(T.nilable(String)) }
      def client_token
      end

      sig { params(_: String).returns(String) }
      def client_token=(_)
      end

      # The ID of a counterparty associated with the payment. As part of the payment
      #   workflow an external account will be associated with this counterparty.
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

      # The currency of the payment.
      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # Describes the direction money is flowing in the transaction. Can only be
      #   `debit`. A `debit` pulls money from someone else's account to your own.
      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # The due date for the flow. Can only be passed in when
      #   `effective_date_selection_enabled` is `true`.
      sig { returns(T.nilable(Date)) }
      def due_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def due_date=(_)
      end

      # When `true`, your end-user can schedule the payment `effective_date` while
      #   completing the pre-built UI.
      sig { returns(T.nilable(T::Boolean)) }
      def effective_date_selection_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def effective_date_selection_enabled=(_)
      end

      # When `verified` and `external_account_collection` is `enabled`, filters the list
      #   of external accounts your end-user can select to those with a
      #   `verification_status` of `verified`.
      sig { returns(T.nilable(Symbol)) }
      def existing_external_accounts_filter
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def existing_external_accounts_filter=(_)
      end

      # When `enabled`, your end-user can select from an existing external account when
      #   completing the flow. When `disabled`, your end-user must add new payment details
      #   when completing the flow.
      sig { returns(T.nilable(Symbol)) }
      def external_account_collection
      end

      sig { params(_: Symbol).returns(Symbol) }
      def external_account_collection=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
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

      # The ID of one of your organization's internal accounts.
      sig { returns(T.nilable(String)) }
      def originating_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_account_id=(_)
      end

      # If present, the ID of the payment order created using this flow.
      sig { returns(T.nilable(String)) }
      def payment_order_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_order_id=(_)
      end

      # If present, the ID of the external account created using this flow.
      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def receiving_account_id=(_)
      end

      # This field is set after your end-user selects a payment date while completing
      #   the pre-built UI. This field is always `null` unless
      #   `effective_date_selection_enabled` is `true`.
      sig { returns(T.nilable(Date)) }
      def selected_effective_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def selected_effective_date=(_)
      end

      # The current status of the payment flow. One of `pending`, `completed`,
      #   `expired`, or `cancelled`.
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
          .returns(T.attached_class)
      end
      def self.new(
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

      # Describes the direction money is flowing in the transaction. Can only be
      #   `debit`. A `debit` pulls money from someone else's account to your own.
      class Direction < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CREDIT = :credit
        DEBIT = :debit
      end

      # When `verified` and `external_account_collection` is `enabled`, filters the list
      #   of external accounts your end-user can select to those with a
      #   `verification_status` of `verified`.
      class ExistingExternalAccountsFilter < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        VERIFIED = :verified
      end

      # When `enabled`, your end-user can select from an existing external account when
      #   completing the flow. When `disabled`, your end-user must add new payment details
      #   when completing the flow.
      class ExternalAccountCollection < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DISABLED = :disabled
        ENABLED = :enabled
      end

      # The current status of the payment flow. One of `pending`, `completed`,
      #   `expired`, or `cancelled`.
      class Status < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending
      end
    end
  end
end
