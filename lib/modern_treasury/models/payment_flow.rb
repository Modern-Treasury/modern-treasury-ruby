# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlow < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
      #
      #   @return [Integer]
      optional :amount, Integer

      # @!attribute client_token
      #   The client token of the payment flow. This token can be used to embed a payment workflow in your client-side application.
      #
      #   @return [String]
      optional :client_token, String

      # @!attribute counterparty_id
      #   The ID of a counterparty associated with the payment. As part of the payment workflow an external account will be associated with this counterparty.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      optional :created_at, Time

      # @!attribute currency
      #   The currency of the payment.
      #
      #   @return [String]
      optional :currency, String

      # @!attribute direction
      #   Describes the direction money is flowing in the transaction. Can only be `debit`. A `debit` pulls money from someone else's account to your own.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::Direction]
      optional :direction, enum: -> { ModernTreasury::Models::PaymentFlow::Direction }

      # @!attribute due_date
      #   The due date for the flow. Can only be passed in when `effective_date_selection_enabled` is `true`.
      #
      #   @return [Date]
      optional :due_date, Date

      # @!attribute effective_date_selection_enabled
      #   When `true`, your end-user can schedule the payment `effective_date` while completing the pre-built UI.
      #
      #   @return [Boolean]
      optional :effective_date_selection_enabled, ModernTreasury::BooleanModel

      # @!attribute existing_external_accounts_filter
      #   When `verified` and `external_account_collection` is `enabled`, filters the list of external accounts your end-user can select to those with a `verification_status` of `verified`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter]
      optional :existing_external_accounts_filter,
               enum: -> { ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter }

      # @!attribute external_account_collection
      #   When `enabled`, your end-user can select from an existing external account when completing the flow. When `disabled`, your end-user must add new payment details when completing the flow.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection]
      optional :external_account_collection,
               enum: -> { ModernTreasury::Models::PaymentFlow::ExternalAccountCollection }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      optional :object, String

      # @!attribute originating_account_id
      #   The ID of one of your organization's internal accounts.
      #
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute payment_order_id
      #   If present, the ID of the payment order created using this flow.
      #
      #   @return [String]
      optional :payment_order_id, String

      # @!attribute receiving_account_id
      #   If present, the ID of the external account created using this flow.
      #
      #   @return [String]
      optional :receiving_account_id, String

      # @!attribute selected_effective_date
      #   This field is set after your end-user selects a payment date while completing the pre-built UI. This field is always `null` unless `effective_date_selection_enabled` is `true`.
      #
      #   @return [Date]
      optional :selected_effective_date, Date

      # @!attribute status
      #   The current status of the payment flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::Status]
      optional :status, enum: -> { ModernTreasury::Models::PaymentFlow::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      optional :updated_at, Time

      # @!parse
      #   # @param id [String, nil]
      #   #
      #   # @param amount [Integer, nil] Value in specified currency's smallest unit. e.g. $10 would be represented
      #   #   as 1000. Can be any integer up to 36 digits.
      #   #
      #   # @param client_token [String, nil] The client token of the payment flow. This token can be used to embed a payment
      #   #   workflow in your client-side application.
      #   #
      #   # @param counterparty_id [String, nil] The ID of a counterparty associated with the payment. As part of the payment
      #   #   workflow an external account will be associated with this counterparty.
      #   #
      #   # @param created_at [String, nil]
      #   #
      #   # @param currency [String, nil] The currency of the payment.
      #   #
      #   # @param direction [String, nil] Describes the direction money is flowing in the transaction. Can only be
      #   #   `debit`. A `debit` pulls money from someone else's account to your own.
      #   #
      #   # @param due_date [String, nil] The due date for the flow. Can only be passed in when
      #   #   `effective_date_selection_enabled` is `true`.
      #   #
      #   # @param effective_date_selection_enabled [Boolean, nil] When `true`, your end-user can schedule the payment `effective_date` while
      #   #   completing the pre-built UI.
      #   #
      #   # @param existing_external_accounts_filter [String, nil] When `verified` and `external_account_collection` is `enabled`, filters the list
      #   #   of external accounts your end-user can select to those with a
      #   #   `verification_status` of `verified`.
      #   #
      #   # @param external_account_collection [String, nil] When `enabled`, your end-user can select from an existing external account when
      #   #   completing the flow. When `disabled`, your end-user must add new payment details
      #   #   when completing the flow.
      #   #
      #   # @param live_mode [Boolean, nil] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String, nil]
      #   #
      #   # @param originating_account_id [String, nil] The ID of one of your organization's internal accounts.
      #   #
      #   # @param payment_order_id [String, nil] If present, the ID of the payment order created using this flow.
      #   #
      #   # @param receiving_account_id [String, nil] If present, the ID of the external account created using this flow.
      #   #
      #   # @param selected_effective_date [String, nil] This field is set after your end-user selects a payment date while completing
      #   #   the pre-built UI. This field is always `null` unless
      #   #   `effective_date_selection_enabled` is `true`.
      #   #
      #   # @param status [String, nil] The current status of the payment flow. One of `pending`, `completed`,
      #   #   `expired`, or `cancelled`.
      #   #
      #   # @param updated_at [String, nil]
      #   #
      #   def initialize(
      #     id: nil,
      #     amount: nil,
      #     client_token: nil,
      #     counterparty_id: nil,
      #     created_at: nil,
      #     currency: nil,
      #     direction: nil,
      #     due_date: nil,
      #     effective_date_selection_enabled: nil,
      #     existing_external_accounts_filter: nil,
      #     external_account_collection: nil,
      #     live_mode: nil,
      #     object: nil,
      #     originating_account_id: nil,
      #     payment_order_id: nil,
      #     receiving_account_id: nil,
      #     selected_effective_date: nil,
      #     status: nil,
      #     updated_at: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Describes the direction money is flowing in the transaction. Can only be `debit`. A `debit` pulls money from someone else's account to your own.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :credit
      #   # ...
      # in :debit
      #   # ...
      # end
      # ```
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit
      end

      # When `verified` and `external_account_collection` is `enabled`, filters the list of external accounts your end-user can select to those with a `verification_status` of `verified`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :verified
      #   # ...
      # end
      # ```
      class ExistingExternalAccountsFilter < ModernTreasury::Enum
        VERIFIED = :verified
      end

      # When `enabled`, your end-user can select from an existing external account when completing the flow. When `disabled`, your end-user must add new payment details when completing the flow.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :disabled
      #   # ...
      # in :enabled
      #   # ...
      # end
      # ```
      class ExternalAccountCollection < ModernTreasury::Enum
        DISABLED = :disabled
        ENABLED = :enabled
      end

      # The current status of the payment flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :cancelled
      #   # ...
      # in :completed
      #   # ...
      # in :expired
      #   # ...
      # in :pending
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending
      end
    end
  end
end
