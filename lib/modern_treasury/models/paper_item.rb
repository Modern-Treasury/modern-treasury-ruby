# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaperItem < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_number
      #   The account number on the paper item.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] account_number_safe
      #   The last 4 digits of the account_number.
      #   @return [String]
      required :account_number_safe, String

      # @!attribute [rw] amount
      #   The amount of the paper item.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] check_number
      #   The check number on the paper item.
      #   @return [String]
      required :check_number, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   The currency of the paper item.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] deposit_date
      #   The date the paper item was deposited into your organization's bank account.
      #   @return [Date]
      required :deposit_date, Date

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] lockbox_number
      #   The identifier for the lockbox assigned by the bank.
      #   @return [String]
      required :lockbox_number, String

      # @!attribute [rw] memo_field
      #   The memo field on the paper item.
      #   @return [String]
      required :memo_field, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] remitter_name
      #   The name of the remitter on the paper item.
      #   @return [String]
      required :remitter_name, String

      # @!attribute [rw] routing_number
      #   The routing number on the paper item.
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] status
      #   The current status of the paper item. One of `pending`, `completed`, or `returned`.
      #   @return [Symbol, ModernTreasury::Models::PaperItem::Status]
      required :status, enum: -> { ModernTreasury::Models::PaperItem::Status }

      # @!attribute [rw] transaction_id
      #   The ID of the reconciled Transaction or `null`.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] transaction_line_item_id
      #   The ID of the reconciled Transaction Line Item or `null`.
      #   @return [String]
      required :transaction_line_item_id, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # The current status of the paper item. One of `pending`, `completed`, or `returned`.
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned
      end

      # @!parse
      #   # Create a new instance of PaperItem from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :account_number The account number on the paper item.
      #   #   @option data [String] :account_number_safe The last 4 digits of the account_number.
      #   #   @option data [Integer] :amount The amount of the paper item.
      #   #   @option data [String] :check_number The check number on the paper item.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :currency The currency of the paper item.
      #   #   @option data [String] :deposit_date The date the paper item was deposited into your organization's bank account.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :lockbox_number The identifier for the lockbox assigned by the bank.
      #   #   @option data [String] :memo_field The memo field on the paper item.
      #   #   @option data [String] :object
      #   #   @option data [String] :remitter_name The name of the remitter on the paper item.
      #   #   @option data [String] :routing_number The routing number on the paper item.
      #   #   @option data [String] :status The current status of the paper item. One of `pending`, `completed`, or
      #   #     `returned`.
      #   #   @option data [String] :transaction_id The ID of the reconciled Transaction or `null`.
      #   #   @option data [String] :transaction_line_item_id The ID of the reconciled Transaction Line Item or `null`.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
