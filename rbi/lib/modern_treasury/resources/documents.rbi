# typed: strong

module ModernTreasury
  module Resources
    class Documents
      # Create a document.
      sig do
        params(
          documentable_id: String,
          documentable_type: Symbol,
          file: T.any(IO, StringIO),
          document_type: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
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
      )
      end

      # Get an existing document.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::Document)
      end
      def retrieve(
        # The ID of the document.
        id,
        request_options: {}
      )
      end

      # Get a list of documents.
      sig do
        params(
          after_cursor: T.nilable(String),
          documentable_id: String,
          documentable_type: Symbol,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::Document])
      end
      def list(
        after_cursor: nil,
        # The unique identifier for the associated object.
        documentable_id: nil,
        # The type of the associated object. Currently can be one of `payment_order`,
        #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
        #   `case`, `internal_account`, `decision`, or `external_account`.
        documentable_type: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
