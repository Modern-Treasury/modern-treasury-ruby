# frozen_string_literal: true

module ModernTreasury
  module Models
    class ReturnListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] counterparty_id
      #   Specify `counterparty_id` if you wish to see returns that occurred with a specific counterparty.
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] internal_account_id
      #   Specify `internal_account_id` if you wish to see returns to/from a specific account.
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] returnable_id
      #   The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #   @return [String]
      optional :returnable_id, String

      # @!attribute [rw] returnable_type
      #   One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`. Must be accompanied by `returnable_id`.
      #   @return [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType]
      optional :returnable_type, enum: -> { ModernTreasury::Models::ReturnListParams::ReturnableType }

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`. Must be accompanied by `returnable_id`.
      class ReturnableType < ModernTreasury::Enum
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end
    end
  end
end
