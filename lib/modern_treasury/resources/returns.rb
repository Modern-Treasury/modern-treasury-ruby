# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Returns
      # Create a return.
      #
      # @overload create(returnable_id:, returnable_type:, additional_information: nil, code: nil, data: nil, date_of_death: nil, reason: nil, request_options: {})
      #
      # @param returnable_id [String, nil]
      # @param returnable_type [Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType]
      # @param additional_information [String, nil]
      # @param code [Symbol, ModernTreasury::Models::ReturnCreateParams::Code, nil]
      # @param data [Object, nil]
      # @param date_of_death [Date, nil]
      # @param reason [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ReturnObject]
      #
      # @see ModernTreasury::Models::ReturnCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::ReturnCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/returns",
          body: parsed,
          model: ModernTreasury::Models::ReturnObject,
          options: options
        )
      end

      # Get a single return.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ReturnObject]
      #
      # @see ModernTreasury::Models::ReturnRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/returns/%1$s", id],
          model: ModernTreasury::Models::ReturnObject,
          options: params[:request_options]
        )
      end

      # Get a list of returns.
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, internal_account_id: nil, per_page: nil, returnable_id: nil, returnable_type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param counterparty_id [String]
      # @param internal_account_id [String]
      # @param per_page [Integer]
      # @param returnable_id [String]
      # @param returnable_type [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ReturnObject>]
      #
      # @see ModernTreasury::Models::ReturnListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::ReturnListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/returns",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::ReturnObject,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
