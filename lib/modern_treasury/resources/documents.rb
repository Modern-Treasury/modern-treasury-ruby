# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Documents
      # Create a document.
      #
      # @overload create(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {})
      #
      # @param documentable_id [String] The unique identifier for the associated object.
      #
      # @param documentable_type [Symbol, ModernTreasury::DocumentCreateParams::DocumentableType]
      #
      # @param file [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      #
      # @param document_type [String] A category given to the document, can be `null`.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Document]
      #
      # @see ModernTreasury::Models::DocumentCreateParams
      def create(params)
        parsed, options = ModernTreasury::DocumentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/documents",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: ModernTreasury::Document,
          options: options
        )
      end

      # Get an existing document.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the document.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Document]
      #
      # @see ModernTreasury::Models::DocumentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/documents/%1$s", id],
          model: ModernTreasury::Document,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::DocumentListParams} for more details.
      #
      # Get a list of documents.
      #
      # @overload list(after_cursor: nil, documentable_id: nil, documentable_type: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param documentable_id [String] The unique identifier for the associated object.
      #
      # @param documentable_type [Symbol, ModernTreasury::DocumentListParams::DocumentableType] The type of the associated object. Currently can be one of `payment_order`, `tra
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Document>]
      #
      # @see ModernTreasury::Models::DocumentListParams
      def list(params = {})
        parsed, options = ModernTreasury::DocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/documents",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Document,
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
