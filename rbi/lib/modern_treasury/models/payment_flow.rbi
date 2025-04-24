# typed: strong

module ModernTreasury
  module Models
    class PaymentFlow < ModernTreasury::Internal::Type::BaseModel
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000. Can be any integer up to 36 digits.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      # The client token of the payment flow. This token can be used to embed a payment
      # workflow in your client-side application.
      sig { returns(T.nilable(String)) }
      attr_reader :client_token

      sig { params(client_token: String).void }
      attr_writer :client_token

      # The ID of a counterparty associated with the payment. As part of the payment
      # workflow an external account will be associated with this counterparty.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The currency of the payment.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Describes the direction money is flowing in the transaction. Can only be
      # `debit`. A `debit` pulls money from someone else's account to your own.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)) }
      attr_reader :direction

      sig { params(direction: ModernTreasury::Models::PaymentFlow::Direction::OrSymbol).void }
      attr_writer :direction

      # The due date for the flow. Can only be passed in when
      # `effective_date_selection_enabled` is `true`.
      sig { returns(T.nilable(Date)) }
      attr_accessor :due_date

      # When `true`, your end-user can schedule the payment `effective_date` while
      # completing the pre-built UI.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :effective_date_selection_enabled

      sig { params(effective_date_selection_enabled: T::Boolean).void }
      attr_writer :effective_date_selection_enabled

      # When `verified` and `external_account_collection` is `enabled`, filters the list
      # of external accounts your end-user can select to those with a
      # `verification_status` of `verified`.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol)) }
      attr_accessor :existing_external_accounts_filter

      # When `enabled`, your end-user can select from an existing external account when
      # completing the flow. When `disabled`, your end-user must add new payment details
      # when completing the flow.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)) }
      attr_reader :external_account_collection

      sig do
        params(
          external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::OrSymbol
        )
          .void
      end
      attr_writer :external_account_collection

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :live_mode

      sig { params(live_mode: T::Boolean).void }
      attr_writer :live_mode

      sig { returns(T.nilable(String)) }
      attr_reader :object

      sig { params(object: String).void }
      attr_writer :object

      # The ID of one of your organization's internal accounts.
      sig { returns(T.nilable(String)) }
      attr_accessor :originating_account_id

      # If present, the ID of the payment order created using this flow.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_order_id

      # If present, the ID of the external account created using this flow.
      sig { returns(T.nilable(String)) }
      attr_accessor :receiving_account_id

      # This field is set after your end-user selects a payment date while completing
      # the pre-built UI. This field is always `null` unless
      # `effective_date_selection_enabled` is `true`.
      sig { returns(T.nilable(Date)) }
      attr_accessor :selected_effective_date

      # The current status of the payment flow. One of `pending`, `completed`,
      # `expired`, or `cancelled`.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::PaymentFlow::Status::OrSymbol).void }
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
          direction: ModernTreasury::Models::PaymentFlow::Direction::OrSymbol,
          due_date: T.nilable(Date),
          effective_date_selection_enabled: T::Boolean,
          existing_external_accounts_filter: T.nilable(ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::OrSymbol),
          external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::OrSymbol,
          live_mode: T::Boolean,
          object: String,
          originating_account_id: T.nilable(String),
          payment_order_id: T.nilable(String),
          receiving_account_id: T.nilable(String),
          selected_effective_date: T.nilable(Date),
          status: ModernTreasury::Models::PaymentFlow::Status::OrSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id: nil,
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000. Can be any integer up to 36 digits.
        amount: nil,
        # The client token of the payment flow. This token can be used to embed a payment
        # workflow in your client-side application.
        client_token: nil,
        # The ID of a counterparty associated with the payment. As part of the payment
        # workflow an external account will be associated with this counterparty.
        counterparty_id: nil,
        created_at: nil,
        # The currency of the payment.
        currency: nil,
        # Describes the direction money is flowing in the transaction. Can only be
        # `debit`. A `debit` pulls money from someone else's account to your own.
        direction: nil,
        # The due date for the flow. Can only be passed in when
        # `effective_date_selection_enabled` is `true`.
        due_date: nil,
        # When `true`, your end-user can schedule the payment `effective_date` while
        # completing the pre-built UI.
        effective_date_selection_enabled: nil,
        # When `verified` and `external_account_collection` is `enabled`, filters the list
        # of external accounts your end-user can select to those with a
        # `verification_status` of `verified`.
        existing_external_accounts_filter: nil,
        # When `enabled`, your end-user can select from an existing external account when
        # completing the flow. When `disabled`, your end-user must add new payment details
        # when completing the flow.
        external_account_collection: nil,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode: nil,
        object: nil,
        # The ID of one of your organization's internal accounts.
        originating_account_id: nil,
        # If present, the ID of the payment order created using this flow.
        payment_order_id: nil,
        # If present, the ID of the external account created using this flow.
        receiving_account_id: nil,
        # This field is set after your end-user selects a payment date while completing
        # the pre-built UI. This field is always `null` unless
        # `effective_date_selection_enabled` is `true`.
        selected_effective_date: nil,
        # The current status of the payment flow. One of `pending`, `completed`,
        # `expired`, or `cancelled`.
        status: nil,
        updated_at: nil
      ); end
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
      def to_hash; end

      # Describes the direction money is flowing in the transaction. Can only be
      # `debit`. A `debit` pulls money from someone else's account to your own.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT = T.let(:credit, ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlow::Direction::TaggedSymbol]) }
        def self.values; end
      end

      # When `verified` and `external_account_collection` is `enabled`, filters the list
      # of external accounts your end-user can select to those with a
      # `verification_status` of `verified`.
      module ExistingExternalAccountsFilter
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFIED =
          T.let(:verified, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter::TaggedSymbol])
        end
        def self.values; end
      end

      # When `enabled`, your end-user can select from an existing external account when
      # completing the flow. When `disabled`, your end-user must add new payment details
      # when completing the flow.
      module ExternalAccountCollection
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED = T.let(:disabled, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)
        ENABLED = T.let(:enabled, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlow::ExternalAccountCollection::TaggedSymbol]) }
        def self.values; end
      end

      # The current status of the payment flow. One of `pending`, `completed`,
      # `expired`, or `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlow::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELLED = T.let(:cancelled, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlow::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
