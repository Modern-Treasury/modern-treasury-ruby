# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaperItem < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_number
      #   The account number on the paper item.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute account_number_safe
      #   The last 4 digits of the account_number.
      #
      #   @return [String]
      required :account_number_safe, String

      # @!attribute amount
      #   The amount of the paper item.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute check_number
      #   The check number on the paper item.
      #
      #   @return [String]
      required :check_number, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the paper item.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute deposit_date
      #   The date the paper item was deposited into your organization's bank account.
      #
      #   @return [Date]
      required :deposit_date, Date

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute lockbox_number
      #   The identifier for the lockbox assigned by the bank.
      #
      #   @return [String]
      required :lockbox_number, String

      # @!attribute memo_field
      #   The memo field on the paper item.
      #
      #   @return [String]
      required :memo_field, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute remitter_name
      #   The name of the remitter on the paper item.
      #
      #   @return [String]
      required :remitter_name, String

      # @!attribute routing_number
      #   The routing number on the paper item.
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute status
      #   The current status of the paper item. One of `pending`, `completed`, or `returned`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaperItem::Status]
      required :status, enum: -> { ModernTreasury::Models::PaperItem::Status }

      # @!attribute transaction_id
      #   The ID of the reconciled Transaction or `null`.
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute transaction_line_item_id
      #   The ID of the reconciled Transaction Line Item or `null`.
      #
      #   @return [String]
      required :transaction_line_item_id, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param account_number [String, nil] The account number on the paper item.
      #   #
      #   # @param account_number_safe [String, nil] The last 4 digits of the account_number.
      #   #
      #   # @param amount [Integer] The amount of the paper item.
      #   #
      #   # @param check_number [String, nil] The check number on the paper item.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param currency [String] The currency of the paper item.
      #   #
      #   # @param deposit_date [String] The date the paper item was deposited into your organization's bank account.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param lockbox_number [String] The identifier for the lockbox assigned by the bank.
      #   #
      #   # @param memo_field [String, nil] The memo field on the paper item.
      #   #
      #   # @param object [String]
      #   #
      #   # @param remitter_name [String, nil] The name of the remitter on the paper item.
      #   #
      #   # @param routing_number [String, nil] The routing number on the paper item.
      #   #
      #   # @param status [String] The current status of the paper item. One of `pending`, `completed`, or
      #   #   `returned`.
      #   #
      #   # @param transaction_id [String, nil] The ID of the reconciled Transaction or `null`.
      #   #
      #   # @param transaction_line_item_id [String, nil] The ID of the reconciled Transaction Line Item or `null`.
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     account_number:,
      #     account_number_safe:,
      #     amount:,
      #     check_number:,
      #     created_at:,
      #     currency:,
      #     deposit_date:,
      #     live_mode:,
      #     lockbox_number:,
      #     memo_field:,
      #     object:,
      #     remitter_name:,
      #     routing_number:,
      #     status:,
      #     transaction_id:,
      #     transaction_line_item_id:,
      #     updated_at:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The current status of the paper item. One of `pending`, `completed`, or `returned`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :completed
      #   # ...
      # in :pending
      #   # ...
      # in :returned
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned
      end
    end
  end
end
