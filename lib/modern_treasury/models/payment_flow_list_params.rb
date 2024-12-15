# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlowListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
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
    end
  end
end
