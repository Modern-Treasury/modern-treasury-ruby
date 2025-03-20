# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlow < ModernTreasury::BaseModel
      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #     as 1000. Can be any integer up to 36 digits.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :amount

      # @!attribute [r] client_token
      #   The client token of the payment flow. This token can be used to embed a payment
      #     workflow in your client-side application.
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_token

      # @!attribute counterparty_id
      #   The ID of a counterparty associated with the payment. As part of the payment
      #     workflow an external account will be associated with this counterparty.
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute [r] created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created_at

      # @!attribute [r] currency
      #   The currency of the payment.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :currency

      # @!attribute [r] direction
      #   Describes the direction money is flowing in the transaction. Can only be
      #     `debit`. A `debit` pulls money from someone else's account to your own.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::Direction, nil]
      optional :direction, enum: -> { ModernTreasury::Models::PaymentFlow::Direction }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentFlow::Direction]
      #   attr_writer :direction

      # @!attribute due_date
      #   The due date for the flow. Can only be passed in when
      #     `effective_date_selection_enabled` is `true`.
      #
      #   @return [Date, nil]
      optional :due_date, Date, nil?: true

      # @!attribute [r] effective_date_selection_enabled
      #   When `true`, your end-user can schedule the payment `effective_date` while
      #     completing the pre-built UI.
      #
      #   @return [Boolean, nil]
      optional :effective_date_selection_enabled, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :effective_date_selection_enabled

      # @!attribute existing_external_accounts_filter
      #   When `verified` and `external_account_collection` is `enabled`, filters the list
      #     of external accounts your end-user can select to those with a
      #     `verification_status` of `verified`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter, nil]
      optional :existing_external_accounts_filter,
               enum: -> { ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter },
               nil?: true

      # @!attribute [r] external_account_collection
      #   When `enabled`, your end-user can select from an existing external account when
      #     completing the flow. When `disabled`, your end-user must add new payment details
      #     when completing the flow.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection, nil]
      optional :external_account_collection,
               enum: -> { ModernTreasury::Models::PaymentFlow::ExternalAccountCollection }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection]
      #   attr_writer :external_account_collection

      # @!attribute [r] live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean, nil]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :live_mode

      # @!attribute [r] object
      #
      #   @return [String, nil]
      optional :object, String

      # @!parse
      #   # @return [String]
      #   attr_writer :object

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
      #     the pre-built UI. This field is always `null` unless
      #     `effective_date_selection_enabled` is `true`.
      #
      #   @return [Date, nil]
      optional :selected_effective_date, Date, nil?: true

      # @!attribute [r] status
      #   The current status of the payment flow. One of `pending`, `completed`,
      #     `expired`, or `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlow::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::PaymentFlow::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentFlow::Status]
      #   attr_writer :status

      # @!attribute [r] updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :updated_at

      # @!parse
      #   # @param id [String]
      #   # @param amount [Integer]
      #   # @param client_token [String]
      #   # @param counterparty_id [String, nil]
      #   # @param created_at [Time]
      #   # @param currency [String]
      #   # @param direction [Symbol, ModernTreasury::Models::PaymentFlow::Direction]
      #   # @param due_date [Date, nil]
      #   # @param effective_date_selection_enabled [Boolean]
      #   # @param existing_external_accounts_filter [Symbol, ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter, nil]
      #   # @param external_account_collection [Symbol, ModernTreasury::Models::PaymentFlow::ExternalAccountCollection]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param originating_account_id [String, nil]
      #   # @param payment_order_id [String, nil]
      #   # @param receiving_account_id [String, nil]
      #   # @param selected_effective_date [Date, nil]
      #   # @param status [Symbol, ModernTreasury::Models::PaymentFlow::Status]
      #   # @param updated_at [Time]
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
      #     updated_at: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Describes the direction money is flowing in the transaction. Can only be
      #   `debit`. A `debit` pulls money from someone else's account to your own.
      module Direction
        extend ModernTreasury::Enum

        CREDIT = :credit
        DEBIT = :debit

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # When `verified` and `external_account_collection` is `enabled`, filters the list
      #   of external accounts your end-user can select to those with a
      #   `verification_status` of `verified`.
      module ExistingExternalAccountsFilter
        extend ModernTreasury::Enum

        VERIFIED = :verified

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # When `enabled`, your end-user can select from an existing external account when
      #   completing the flow. When `disabled`, your end-user must add new payment details
      #   when completing the flow.
      module ExternalAccountCollection
        extend ModernTreasury::Enum

        DISABLED = :disabled
        ENABLED = :enabled

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # The current status of the payment flow. One of `pending`, `completed`,
      #   `expired`, or `cancelled`.
      module Status
        extend ModernTreasury::Enum

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
