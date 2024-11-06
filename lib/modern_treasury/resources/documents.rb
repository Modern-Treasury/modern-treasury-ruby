# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Documents
      def initialize(client:)
        @client = client
      end

      # Create a document.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :documentable_id The unique identifier for the associated object.
      # @option params [Symbol, DocumentableType] :documentable_type
      # @option params [String] :file
      # @option params [String, nil] :document_type A category given to the document, can be `null`.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Document]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/documents"
        req[:body] = params
        req[:model] = ModernTreasury::Models::Document
        @client.request(req, opts)
      end

      # Get an existing document.
      #
      # @param id [String] The ID of the document.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Document]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/documents/#{id}"
        req[:model] = ModernTreasury::Models::Document
        @client.request(req, opts)
      end

      # Get a list of documents.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :after_cursor
      # @option params [String, nil] :documentable_id The unique identifier for the associated object.
      # @option params [Symbol, DocumentableType, nil] :documentable_type The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      # @option params [Integer, nil] :per_page
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Document>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/documents"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::Document
        @client.request(req, opts)
      end
    end
  end
end
