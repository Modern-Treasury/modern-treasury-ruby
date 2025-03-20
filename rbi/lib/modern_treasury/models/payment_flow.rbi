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
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)
      end
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
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol)) }
      def existing_external_accounts_filter
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol))
      end
      def existing_external_accounts_filter=(_)
      end

      # When `enabled`, your end-user can select from an existing external account when
      #   completing the flow. When `disabled`, your end-user must add new payment details
      #   when completing the flow.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)) }
      def external_account_collection
      end

      sig do
        params(_: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)
      end
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
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
      end
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
          direction: ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol,
          due_date: T.nilable(Date),
          effective_date_selection_enabled: T::Boolean,
          existing_external_accounts_filter: T.nilable(ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol),
          external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol,
          live_mode: T::Boolean,
          object: String,
          originating_account_id: T.nilable(String),
          payment_order_id: T.nilable(String),
          receiving_account_id: T.nilable(String),
          selected_effective_date: T.nilable(Date),
          status: ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol,
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
              direction: ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol,
              due_date: T.nilable(Date),
              effective_date_selection_enabled: T::Boolean,
              existing_external_accounts_filter: T.nilable(ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol),
              external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol,
              live_mode: T::Boolean,
              object: String,
              originating_account_id: T.nilable(String),
              payment_order_id: T.nilable(String),
              receiving_account_id: T.nilable(String),
              selected_effective_date: T.nilable(Date),
              status: ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # Describes the direction money is flowing in the transaction. Can only be
      #   `debit`. A `debit` pulls money from someone else's account to your own.
      module Direction
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol]) }
          def values
          end
        end
      end

      # When `verified` and `external_account_collection` is `enabled`, filters the list
      #   of external accounts your end-user can select to those with a
      #   `verification_status` of `verified`.
      module ExistingExternalAccountsFilter
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol) }

        VERIFIED =
          T.let(:verified, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol])
          end
          def values
          end
        end
      end

      # When `enabled`, your end-user can select from an existing external account when
      #   completing the flow. When `disabled`, your end-user must add new payment details
      #   when completing the flow.
      module ExternalAccountCollection
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol) }

        DISABLED = T.let(:disabled, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)
        ENABLED = T.let(:enabled, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol]) }
          def values
          end
        end
      end

      # The current status of the payment flow. One of `pending`, `completed`,
      #   `expired`, or `cancelled`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol) }

        CANCELLED = T.let(:cancelled, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
