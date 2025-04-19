# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentFlows#list
    class PaymentFlowListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute client_token
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute originating_account_id
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!attribute payment_order_id
      #
      #   @return [String, nil]
      optional :payment_order_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute receiving_account_id
      #
      #   @return [String, nil]
      optional :receiving_account_id, String

      # @!attribute status
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(after_cursor: nil, client_token: nil, counterparty_id: nil, originating_account_id: nil, payment_order_id: nil, per_page: nil, receiving_account_id: nil, status: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #   @param client_token [String]
      #   @param counterparty_id [String]
      #   @param originating_account_id [String]
      #   @param payment_order_id [String]
      #   @param per_page [Integer]
      #   @param receiving_account_id [String]
      #   @param status [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
