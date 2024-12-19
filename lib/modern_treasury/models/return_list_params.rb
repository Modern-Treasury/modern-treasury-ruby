# frozen_string_literal: true

module ModernTreasury
  module Models
    class ReturnListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute counterparty_id
      #   Specify `counterparty_id` if you wish to see returns that occurred with a specific counterparty.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute internal_account_id
      #   Specify `internal_account_id` if you wish to see returns to/from a specific account.
      #
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute returnable_id
      #   The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #
      #   @return [String]
      optional :returnable_id, String

      # @!attribute returnable_type
      #   One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`. Must be accompanied by `returnable_id`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType]
      optional :returnable_type, enum: -> { ModernTreasury::Models::ReturnListParams::ReturnableType }

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param counterparty_id [String, nil] Specify `counterparty_id` if you wish to see returns that occurred with a
      #   #   specific counterparty.
      #   #
      #   # @param internal_account_id [String, nil] Specify `internal_account_id` if you wish to see returns to/from a specific
      #   #   account.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   # @param returnable_id [String, nil] The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #   #
      #   # @param returnable_type [String, nil] One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   #   Must be accompanied by `returnable_id`.
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     counterparty_id: nil,
      #     internal_account_id: nil,
      #     per_page: nil,
      #     returnable_id: nil,
      #     returnable_type: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`. Must be accompanied by `returnable_id`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :incoming_payment_detail
      #   # ...
      # in :paper_item
      #   # ...
      # in :payment_order
      #   # ...
      # in :return
      #   # ...
      # in :reversal
      #   # ...
      # end
      # ```
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
