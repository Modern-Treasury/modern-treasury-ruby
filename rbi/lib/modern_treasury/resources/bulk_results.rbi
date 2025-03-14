# typed: strong

module ModernTreasury
  module Resources
    class BulkResults
      # get bulk_result
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::BulkResult)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # list bulk_results
      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          entity_type: Symbol,
          per_page: Integer,
          request_id: String,
          request_type: Symbol,
          status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::BulkResult])
      end
      def list(
        after_cursor: nil,
        # Unique identifier for the result entity object.
        entity_id: nil,
        # The type of the request that created this result. bulk_request is the only
        #   supported `request_type`
        entity_type: nil,
        per_page: nil,
        # Unique identifier for the request that created this bulk result. This is the ID
        #   of the bulk request when `request_type` is bulk_request
        request_id: nil,
        # The type of the request that created this result. bulk_request is the only
        #   supported `request_type`
        request_type: nil,
        # One of successful or failed.
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
