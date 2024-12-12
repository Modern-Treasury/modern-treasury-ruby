# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlowListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] client_token
      #   @return [String]
      optional :client_token, String

      # @!attribute [rw] counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] originating_account_id
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute [rw] payment_order_id
      #   @return [String]
      optional :payment_order_id, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] receiving_account_id
      #   @return [String]
      optional :receiving_account_id, String

      # @!attribute [rw] status
      #   @return [String]
      optional :status, String
    end
  end
end
