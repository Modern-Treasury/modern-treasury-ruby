# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlow < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
      #   @return [Integer]
      optional :amount, Integer

      # @!attribute [rw] client_token
      #   The client token of the payment flow. This token can be used to embed a payment workflow in your client-side application.
      #   @return [String]
      optional :client_token, String

      # @!attribute [rw] counterparty_id
      #   The ID of a counterparty associated with the payment. As part of the payment workflow an external account will be associated with this counterparty.
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [String]
      optional :created_at, String

      # @!attribute [rw] currency
      #   The currency of the payment.
      #   @return [String]
      optional :currency, String

      # @!attribute [rw] direction
      #   Describes the direction money is flowing in the transaction. Can only be `debit`. A `debit` pulls money from someone else's account to your own.
      #   @return [Symbol]
      optional :direction, ModernTreasury::Enum.new(:credit, :debit)

      # @!attribute [rw] due_date
      #   The due date for the flow. Can only be passed in when `effective_date_selection_enabled` is `true`.
      #   @return [String]
      optional :due_date, String

      # @!attribute [rw] effective_date_selection_enabled
      #   When `true`, your end-user can schedule the payment `effective_date` while completing the pre-built UI.
      #   @return [Boolean]
      optional :effective_date_selection_enabled, ModernTreasury::BooleanModel

      # @!attribute [rw] existing_external_accounts_filter
      #   When `verified` and `external_account_collection` is `enabled`, filters the list of external accounts your end-user can select to those with a `verification_status` of `verified`.
      #   @return [Symbol]
      optional :existing_external_accounts_filter, ModernTreasury::Enum.new(:verified)

      # @!attribute [rw] external_account_collection
      #   When `enabled`, your end-user can select from an existing external account when completing the flow. When `disabled`, your end-user must add new payment details when completing the flow.
      #   @return [Symbol]
      optional :external_account_collection, ModernTreasury::Enum.new(:disabled, :enabled)

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      optional :object, String

      # @!attribute [rw] originating_account_id
      #   The ID of one of your organization's internal accounts.
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute [rw] payment_order_id
      #   If present, the ID of the payment order created using this flow.
      #   @return [String]
      optional :payment_order_id, String

      # @!attribute [rw] receiving_account_id
      #   If present, the ID of the external account created using this flow.
      #   @return [String]
      optional :receiving_account_id, String

      # @!attribute [rw] selected_effective_date
      #   This field is set after your end-user selects a payment date while completing the pre-built UI. This field is always `null` unless `effective_date_selection_enabled` is `true`.
      #   @return [String]
      optional :selected_effective_date, String

      # @!attribute [rw] status
      #   The current status of the payment flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #   @return [Symbol]
      optional :status, ModernTreasury::Enum.new(:cancelled, :completed, :expired, :pending)

      # @!attribute [rw] updated_at
      #   @return [String]
      optional :updated_at, String
    end
  end
end
