# typed: strong

module ModernTreasury
  module Resources
    class Documents
      # Create a document.
      sig do
        params(
          documentable_id: String,
          documentable_type: ModernTreasury::Models::DocumentCreateParams::DocumentableType::OrSymbol,
          file: T.any(Pathname, StringIO, IO, ModernTreasury::FilePart),
          document_type: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::Document)
      end
      def create(
        # The unique identifier for the associated object.
        documentable_id:,
        documentable_type:,
        file:,
        # A category given to the document, can be `null`.
        document_type: nil,
        request_options: {}
      ); end
      # Get an existing document.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::Document)
      end
      def retrieve(
        # The ID of the document.
        id,
        request_options: {}
      ); end
      # Get a list of documents.
      sig do
        params(
          after_cursor: T.nilable(String),
          documentable_id: String,
          documentable_type: ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::Document])
      end
      def list(
        after_cursor: nil,
        # The unique identifier for the associated object.
        documentable_id: nil,
        # The type of the associated object. Currently can be one of `payment_order`,
        # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
        # `case`, `internal_account`, `decision`, or `external_account`.
        documentable_type: nil,
        per_page: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
