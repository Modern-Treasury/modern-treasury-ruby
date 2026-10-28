# frozen_string_literal: true

module ModernTreasury
  module Resources
    class EmbeddableFlows
      # create embeddable_flow
      #
      # @overload create(options:, template:, request_options: {})
      #
      # @param options [ModernTreasury::Models::AccountCollectionFlowCreateRequest, ModernTreasury::Models::PaymentFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type] The parameters for the selected template's flow.
      #
      # @param template [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Template]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::EmbeddableFlow]
      #
      # @see ModernTreasury::Models::EmbeddableFlowCreateParams
      def create(params)
        parsed, options = ModernTreasury::EmbeddableFlowCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/embeddable_flows",
          body: parsed,
          model: ModernTreasury::EmbeddableFlow,
          options: options
        )
      end

      # get embeddable_flow
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::EmbeddableFlow]
      #
      # @see ModernTreasury::Models::EmbeddableFlowRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/embeddable_flows/%1$s", id],
          model: ModernTreasury::EmbeddableFlow,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::EmbeddableFlowUpdateParams} for more details.
      #
      # update embeddable_flow
      #
      # @overload update(id, status:, request_options: {})
      #
      # @param id [String] id
      #
      # @param status [Symbol, ModernTreasury::Models::EmbeddableFlowUpdateParams::Status] The updated status of the flow. Can only be used to mark the flow as `cancelled`
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::EmbeddableFlow]
      #
      # @see ModernTreasury::Models::EmbeddableFlowUpdateParams
      def update(id, params)
        parsed, options = ModernTreasury::EmbeddableFlowUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/embeddable_flows/%1$s", id],
          body: parsed,
          model: ModernTreasury::EmbeddableFlow,
          options: options
        )
      end

      # list embeddable_flows
      #
      # @overload list(after_cursor: nil, per_page: nil, status: nil, template: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param per_page [Integer]
      # @param status [String]
      # @param template [Symbol, ModernTreasury::Models::EmbeddableFlowListParams::Template]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::EmbeddableFlow>]
      #
      # @see ModernTreasury::Models::EmbeddableFlowListParams
      def list(params = {})
        parsed, options = ModernTreasury::EmbeddableFlowListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/embeddable_flows",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::EmbeddableFlow,
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
