# typed: strong

module ModernTreasury
  module Resources
    class BulkRequests
      # create bulk_request
      sig do
        params(
          action_type:
            ModernTreasury::BulkRequestCreateParams::ActionType::OrSymbol,
          resource_type:
            ModernTreasury::BulkRequestCreateParams::ResourceType::OrSymbol,
          resources:
            T::Array[
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::OrHash,
                ModernTreasury::LedgerTransactionCreateRequest::OrHash,
                ModernTreasury::LedgerAccountCreateRequest::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::OrHash
              )
            ],
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::BulkRequest)
      end
      def create(
        # One of create, or update.
        action_type:,
        # One of payment_order, expected_payment, or ledger_transaction.
        resource_type:,
        # An array of objects where each object contains the input params for a single
        # `action_type` request on a `resource_type` resource
        resources:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      # get bulk_request
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::BulkRequest)
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
          action_type:
            ModernTreasury::BulkRequestListParams::ActionType::OrSymbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type:
            ModernTreasury::BulkRequestListParams::ResourceType::OrSymbol,
          status: ModernTreasury::BulkRequestListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::BulkRequest])
      end
      def list(
        # One of create, or update.
        action_type: nil,
        after_cursor: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # One of payment_order, expected_payment, or ledger_transaction.
        resource_type: nil,
        # One of pending, processing, or completed.
        status: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
