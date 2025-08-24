# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentFlows#create
    class PaymentFlow < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000. Can be any integer up to 36 digits.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!attribute client_token
      #   The client token of the payment flow. This token can be used to embed a payment
      #   workflow in your client-side application.
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!attribute counterparty_id
      #   The ID of a counterparty associated with the payment. As part of the payment
      #   workflow an external account will be associated with this counterparty.
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute currency
      #   The currency of the payment.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute direction
      #   Describes the direction money is flowing in the transaction. Can only be
      #   `debit`. A `debit` pulls money from someone else's account to your own.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::Direction, nil]
      optional :direction, enum: -> { ModernTreasury::PaymentFlow::Direction }

      # @!attribute due_date
      #   The due date for the flow. Can only be passed in when
      #   `effective_date_selection_enabled` is `true`.
      #
      #   @return [Date, nil]
      optional :due_date, Date, nil?: true

      # @!attribute effective_date_selection_enabled
      #   When `true`, your end-user can schedule the payment `effective_date` while
      #   completing the pre-built UI.
      #
      #   @return [Boolean, nil]
      optional :effective_date_selection_enabled, ModernTreasury::Internal::Type::Boolean

      # @!attribute existing_external_accounts_filter
      #   When `verified` and `external_account_collection` is `enabled`, filters the list
      #   of external accounts your end-user can select to those with a
      #   `verification_status` of `verified`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter, nil]
      optional :existing_external_accounts_filter,
               enum: -> { ModernTreasury::PaymentFlow::ExistingExternalAccountsFilter },
               nil?: true

      # @!attribute external_account_collection
      #   When `enabled`, your end-user can select from an existing external account when
      #   completing the flow. When `disabled`, your end-user must add new payment details
      #   when completing the flow.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection, nil]
      optional :external_account_collection, enum: -> { ModernTreasury::PaymentFlow::ExternalAccountCollection }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean, nil]
      optional :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String, nil]
      optional :object, String

      # @!attribute originating_account_id
      #   The ID of one of your organization's internal accounts.
      #
      #   @return [String, nil]
      optional :originating_account_id, String, nil?: true

      # @!attribute payment_order_id
      #   If present, the ID of the payment order created using this flow.
      #
      #   @return [String, nil]
      optional :payment_order_id, String, nil?: true

      # @!attribute receiving_account_id
      #   If present, the ID of the external account created using this flow.
      #
      #   @return [String, nil]
      optional :receiving_account_id, String, nil?: true

      # @!attribute selected_effective_date
      #   This field is set after your end-user selects a payment date while completing
      #   the pre-built UI. This field is always `null` unless
      #   `effective_date_selection_enabled` is `true`.
      #
      #   @return [Date, nil]
      optional :selected_effective_date, Date, nil?: true

      # @!attribute status
      #   The current status of the payment flow. One of `pending`, `completed`,
      #   `expired`, or `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::Status, nil]
      optional :status, enum: -> { ModernTreasury::PaymentFlow::Status }

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, amount: nil, client_token: nil, counterparty_id: nil, created_at: nil, currency: nil, direction: nil, due_date: nil, effective_date_selection_enabled: nil, existing_external_accounts_filter: nil, external_account_collection: nil, live_mode: nil, object: nil, originating_account_id: nil, payment_order_id: nil, receiving_account_id: nil, selected_effective_date: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentFlow} for more details.
      #
      #   @param id [String]
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param client_token [String] The client token of the payment flow. This token can be used to embed a payment
      #
      #   @param counterparty_id [String, nil] The ID of a counterparty associated with the payment. As part of the payment wor
      #
      #   @param created_at [Time]
      #
      #   @param currency [String] The currency of the payment.
      #
      #   @param direction [Symbol, ModernTreasury::Models::PaymentFlow::Direction] Describes the direction money is flowing in the transaction. Can only be `debit`
      #
      #   @param due_date [Date, nil] The due date for the flow. Can only be passed in when `effective*date_selection*
      #
      #   @param effective_date_selection_enabled [Boolean] When `true`, your end-user can schedule the payment `effective_date` while compl
      #
      #   @param existing_external_accounts_filter [Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter, nil] When `verified` and `external_account_collection` is `enabled`, filters the list
      #
      #   @param external_account_collection [Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection] When `enabled`, your end-user can select from an existing external account when
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param originating_account_id [String, nil] The ID of one of your organization's internal accounts.
      #
      #   @param payment_order_id [String, nil] If present, the ID of the payment order created using this flow.
      #
      #   @param receiving_account_id [String, nil] If present, the ID of the external account created using this flow.
      #
      #   @param selected_effective_date [Date, nil] This field is set after your end-user selects a payment date while completing th
      #
      #   @param status [Symbol, ModernTreasury::Models::PaymentFlow::Status] The current status of the payment flow. One of `pending`, `completed`, `expired`
      #
      #   @param updated_at [Time]

      # Describes the direction money is flowing in the transaction. Can only be
      # `debit`. A `debit` pulls money from someone else's account to your own.
      #
      # @see ModernTreasury::Models::PaymentFlow#direction
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # When `verified` and `external_account_collection` is `enabled`, filters the list
      # of external accounts your end-user can select to those with a
      # `verification_status` of `verified`.
      #
      # @see ModernTreasury::Models::PaymentFlow#existing_external_accounts_filter
      module ExistingExternalAccountsFilter
        extend ModernTreasury::Internal::Type::Enum

        VERIFIED = :verified

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # When `enabled`, your end-user can select from an existing external account when
      # completing the flow. When `disabled`, your end-user must add new payment details
      # when completing the flow.
      #
      # @see ModernTreasury::Models::PaymentFlow#external_account_collection
      module ExternalAccountCollection
        extend ModernTreasury::Internal::Type::Enum

        DISABLED = :disabled
        ENABLED = :enabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the payment flow. One of `pending`, `completed`,
      # `expired`, or `cancelled`.
      #
      # @see ModernTreasury::Models::PaymentFlow#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
