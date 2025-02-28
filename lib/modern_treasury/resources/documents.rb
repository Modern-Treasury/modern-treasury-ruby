# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Documents
      # Create a document.
      #
      # @param params [ModernTreasury::Models::DocumentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :documentable_id The unique identifier for the associated object.
      #
      #   @option params [Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType] :documentable_type
      #
      #   @option params [IO, StringIO] :file
      #
      #   @option params [String] :document_type A category given to the document, can be `null`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Document]
      #
      def create(params)
        parsed, options = ModernTreasury::Models::DocumentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/documents",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: ModernTreasury::Models::Document,
          options: options
        )
      end

      # Get an existing document.
      #
      # @param id [String] The ID of the document.
      #
      # @param params [ModernTreasury::Models::DocumentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Document]
      #
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/documents/%0s", id],
          model: ModernTreasury::Models::Document,
          options: params[:request_options]
        )
      end

      # Get a list of documents.
      #
      # @param params [ModernTreasury::Models::DocumentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :documentable_id The unique identifier for the associated object.
      #
      #   @option params [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType] :documentable_type The type of the associated object. Currently can be one of `payment_order`,
      #     `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #     `case`, `internal_account`, `decision`, or `external_account`.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Document>]
      #
      def list(params = {})
        parsed, options = ModernTreasury::Models::DocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/documents",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Document,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
