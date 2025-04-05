# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Documents
      # Create a document.
      #
      # @overload create(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {})
      #
      # @param documentable_id [String]
      # @param documentable_type [Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType]
      # @param file [IO, StringIO]
      # @param document_type [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Document]
      #
      # @see ModernTreasury::Models::DocumentCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Document]
      #
      # @see ModernTreasury::Models::DocumentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/documents/%1$s", id],
          model: ModernTreasury::Models::Document,
          options: params[:request_options]
        )
      end

      # Get a list of documents.
      #
      # @overload list(after_cursor: nil, documentable_id: nil, documentable_type: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param documentable_id [String]
      # @param documentable_type [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Document>]
      #
      # @see ModernTreasury::Models::DocumentListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::DocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/documents",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::Document,
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
