# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Returns#list
    class ReturnListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute counterparty_id
      #   Specify `counterparty_id` if you wish to see returns that occurred with a
      #   specific counterparty.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute internal_account_id
      #   Specify `internal_account_id` if you wish to see returns to/from a specific
      #   account.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute returnable_id
      #   The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #
      #   @return [String, nil]
      optional :returnable_id, String

      # @!attribute returnable_type
      #   One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   Must be accompanied by `returnable_id`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType, nil]
      optional :returnable_type, enum: -> { ModernTreasury::Models::ReturnListParams::ReturnableType }

      # @!method initialize(after_cursor: nil, counterparty_id: nil, internal_account_id: nil, per_page: nil, returnable_id: nil, returnable_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ReturnListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param counterparty_id [String] Specify `counterparty_id` if you wish to see returns that occurred with a specif
      #   ...
      #
      #   @param internal_account_id [String] Specify `internal_account_id` if you wish to see returns to/from a specific acco
      #   ...
      #
      #   @param per_page [Integer]
      #
      #   @param returnable_id [String] The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #
      #   @param returnable_type [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType] One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      # Must be accompanied by `returnable_id`.
      module ReturnableType
        extend ModernTreasury::Internal::Type::Enum

        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
