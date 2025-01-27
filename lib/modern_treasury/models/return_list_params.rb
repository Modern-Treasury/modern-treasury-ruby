# frozen_string_literal: true

module ModernTreasury
  module Models
    class ReturnListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] counterparty_id
      #   Specify `counterparty_id` if you wish to see returns that occurred with a
      #     specific counterparty.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] internal_account_id
      #   Specify `internal_account_id` if you wish to see returns to/from a specific
      #     account.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :internal_account_id

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] returnable_id
      #   The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #
      #   @return [String, nil]
      optional :returnable_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :returnable_id

      # @!attribute [r] returnable_type
      #   One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #     Must be accompanied by `returnable_id`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType, nil]
      optional :returnable_type, enum: -> { ModernTreasury::Models::ReturnListParams::ReturnableType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType]
      #   attr_writer :returnable_type

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param counterparty_id [String]
      #   # @param internal_account_id [String]
      #   # @param per_page [Integer]
      #   # @param returnable_id [String]
      #   # @param returnable_type [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     counterparty_id: nil,
      #     internal_account_id: nil,
      #     per_page: nil,
      #     returnable_id: nil,
      #     returnable_type: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   Must be accompanied by `returnable_id`.
      #
      # @example
      # ```ruby
      # case returnable_type
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

        finalize!
      end
    end
  end
end
