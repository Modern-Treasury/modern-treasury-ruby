# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlowListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute client_token
      #
      #   @return [String]
      optional :client_token, String

      # @!attribute counterparty_id
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute originating_account_id
      #
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute payment_order_id
      #
      #   @return [String]
      optional :payment_order_id, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute receiving_account_id
      #
      #   @return [String]
      optional :receiving_account_id, String

      # @!attribute status
      #
      #   @return [String]
      optional :status, String

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param client_token [String]
      #   # @param counterparty_id [String]
      #   # @param originating_account_id [String]
      #   # @param payment_order_id [String]
      #   # @param per_page [Integer]
      #   # @param receiving_account_id [String]
      #   # @param status [String]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     client_token: nil,
      #     counterparty_id: nil,
      #     originating_account_id: nil,
      #     payment_order_id: nil,
      #     per_page: nil,
      #     receiving_account_id: nil,
      #     status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
