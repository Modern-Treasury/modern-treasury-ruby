# typed: strong

module ModernTreasury
  module Resources
    class Holds
      # Create a new hold
      sig do
        params(
          status: ModernTreasury::HoldCreateParams::Status::OrSymbol,
          target_id: String,
          target_type: ModernTreasury::HoldCreateParams::TargetType::OrSymbol,
          metadata: T.nilable(T::Hash[Symbol, String]),
          reason: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Models::HoldCreateResponse)
      end
      def create(
        # The status of the hold
        status:,
        # The ID of the target to hold
        target_id:,
        # The type of target to hold
        target_type:,
        # Additional metadata for the hold
        metadata: nil,
        # The reason for the hold
        reason: nil,
        request_options: {}
      )
      end

      # Get a specific hold
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Models::HoldRetrieveResponse)
      end
      def retrieve(
        # hold id
        id,
        request_options: {}
      )
      end

      # Update a hold
      sig do
        params(
          id: String,
          status: ModernTreasury::HoldUpdateParams::Status::OrSymbol,
          resolution: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Models::HoldUpdateResponse)
      end
      def update(
        # hold id
        id,
        # The new status of the hold
        status:,
        # The resolution of the hold
        resolution: nil,
        request_options: {}
      )
      end

      # Get a list of holds.
      sig do
        params(
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: T.nilable(ModernTreasury::HoldListParams::Status::OrSymbol),
          target_id: T.nilable(String),
          target_type:
            T.nilable(ModernTreasury::HoldListParams::TargetType::OrSymbol),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[
            ModernTreasury::Models::HoldListResponse
          ]
        )
      end
      def list(
        after_cursor: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # Translation missing: en.openapi.descriptions.payment_order.query_params.status
        status: nil,
        # Translation missing:
        # en.openapi.descriptions.payment_order.query_params.target_id
        target_id: nil,
        # Translation missing:
        # en.openapi.descriptions.payment_order.query_params.target_type
        target_type: nil,
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
