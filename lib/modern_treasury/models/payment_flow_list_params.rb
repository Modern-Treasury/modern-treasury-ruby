# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentFlows#list
    class PaymentFlowListParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] client_token
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_token

      # @!attribute [r] counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] originating_account_id
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originating_account_id

      # @!attribute [r] payment_order_id
      #
      #   @return [String, nil]
      optional :payment_order_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :payment_order_id

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] receiving_account_id
      #
      #   @return [String, nil]
      optional :receiving_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :receiving_account_id

      # @!attribute [r] status
      #
      #   @return [String, nil]
      optional :status, String

      # @!parse
      #   # @return [String]
      #   attr_writer :status

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
