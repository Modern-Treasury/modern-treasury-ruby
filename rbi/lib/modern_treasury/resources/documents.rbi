# typed: strong

module ModernTreasury
  module Resources
    class Documents
      sig do
        params(
          documentable_id: String,
          documentable_type: Symbol,
          file: T.any(IO, StringIO),
          document_type: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::Document)
      end
      def create(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::Document)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          documentable_id: String,
          documentable_type: Symbol,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Page[ModernTreasury::Models::Document])
      end
      def list(
        after_cursor: nil,
        documentable_id: nil,
        documentable_type: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
