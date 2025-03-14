# typed: strong

module ModernTreasury
  module Resources
    class BulkRequests
      # create bulk_request
      sig do
        params(
          action_type: Symbol,
          resource_type: Symbol,
          resources: T::Array[
          T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )
          ],
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::BulkRequest)
      end
      def create(
        # One of create, or update.
        action_type:,
        # One of payment_order, expected_payment, or ledger_transaction.
        resource_type:,
        # An array of objects where each object contains the input params for a single
        #   `action_type` request on a `resource_type` resource
        resources:,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        request_options: {}
      )
      end

      # get bulk_request
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::BulkRequest)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # list bulk_requests
      sig do
        params(
          action_type: Symbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type: Symbol,
          status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::BulkRequest])
      end
      def list(
        # One of create, or update.
        action_type: nil,
        after_cursor: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        per_page: nil,
        # One of payment_order, expected_payment, or ledger_transaction.
        resource_type: nil,
        # One of pending, processing, or completed.
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
