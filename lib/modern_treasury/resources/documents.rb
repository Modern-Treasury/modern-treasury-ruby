# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Documents
      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Create a document.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::DocumentCreateParams] Attributes to send in this request.
      #
      #   @option params [String] :documentable_id The unique identifier for the associated object.
      #
      #   @option params [Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType] :documentable_type
      #
      #   @option params [String] :file
      #
      #   @option params [String] :document_type A category given to the document, can be `null`.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Document]
      #
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::DocumentCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/documents",
          headers: {"Content-Type" => "multipart/form-data"},
          body: parsed,
          model: ModernTreasury::Models::Document
        }
        @client.request(req, opts)
      end

      # Get an existing document.
      #
      # @param id [String] The ID of the document.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Document]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/documents/%0s", id],
          model: ModernTreasury::Models::Document
        }
        @client.request(req, opts)
      end

      # Get a list of documents.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::DocumentListParams] Attributes to send in this request.
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
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Document>]
      #
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::DocumentListParams.dump(params)
        req = {
          method: :get,
          path: "api/documents",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Document
        }
        @client.request(req, opts)
      end
    end
  end
end
