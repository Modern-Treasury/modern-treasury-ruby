# typed: strong

module ModernTreasury
  module Resources
    class PaymentActions
      # Create a payment action.
      sig do
        params(
          type: String,
          actionable_id: String,
          actionable_type: String,
          details: T.anything,
          internal_account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::PaymentAction)
      end
      def create(
        # Required. The type of the payment action. Determines the action to be taken.
        type:,
        # Optional. The ID of the associated actionable object.
        actionable_id: nil,
        # Optional. The type of the associated actionable object. One of `payment_order`,
        # `expected_payment`. Required if `actionable_id` is passed.
        actionable_type: nil,
        # Optional. The specifc details of the payment action based on type.
        details: nil,
        # Optional. The ID of one of your organization's internal accounts. Required if
        # `actionable_id` is not passed.
        internal_account_id: nil,
        request_options: {}
      )
      end

      # Get details on a single payment action.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::PaymentAction)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Update a single payment action.
      sig do
        params(
          id: String,
          status: ModernTreasury::PaymentActionUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::PaymentAction)
      end
      def update(
        # id
        id,
        # Optional. Set the status of the payment action to `cancelled` to cancel the
        # payment action. This will only work if the payment action is in a `pending`
        # state.
        status:,
        request_options: {}
      )
      end

      # Get a list of all payment actions.
      sig do
        params(
          actionable_id: String,
          actionable_type: String,
          after_cursor: T.nilable(String),
          created_at:
            ModernTreasury::PaymentActionListParams::CreatedAt::OrHash,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: ModernTreasury::PaymentActionListParams::Status::OrSymbol,
          type: ModernTreasury::PaymentActionListParams::Type::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::PaymentAction])
      end
      def list(
        # The ID of the associated actionable object.
        actionable_id: nil,
        # The type of the associated actionable object. One of `payment_order`,
        # `expected_payment`.
        actionable_type: nil,
        after_cursor: nil,
        # Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=),
        # `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For
        # example, `created_at[gte]=2024-01-01T00:00:00Z`
        created_at: nil,
        # The ID of one of your internal accounts.
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # Filter by payment actions of a specific status.
        status: nil,
        # The type of payment action.
        type: nil,
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
