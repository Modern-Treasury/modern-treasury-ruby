# typed: strong

module ModernTreasury
  module Resources
    class RoutingDetails
      # Create a routing detail for a single external account.
      sig do
        params(
          account_id: String,
          accounts_type:
            ModernTreasury::RoutingDetailCreateParams::AccountsType::OrSymbol,
          routing_number: String,
          routing_number_type:
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::OrSymbol,
          payment_type:
            T.nilable(
              ModernTreasury::RoutingDetailCreateParams::PaymentType::OrSymbol
            ),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::RoutingDetail)
      end
      def create(
        # Path param: The ID of the account.
        account_id,
        # Path param:
        accounts_type:,
        # Body param: The routing number of the bank.
        routing_number:,
        # Body param: The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details.
        routing_number_type:,
        # Body param: If the routing detail is to be used for a specific payment type this
        # field will be populated, otherwise null.
        payment_type: nil,
        request_options: {}
      )
      end

      # Get a single routing detail for a single internal or external account.
      sig do
        params(
          id: String,
          accounts_type: ModernTreasury::AccountsType::OrSymbol,
          account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::RoutingDetail)
      end
      def retrieve(
        # The ID of the routing detail.
        id,
        accounts_type:,
        # The ID of the account.
        account_id:,
        request_options: {}
      )
      end

      # Get a list of routing details for a single internal or external account.
      sig do
        params(
          account_id: String,
          accounts_type: ModernTreasury::AccountsType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::RoutingDetail])
      end
      def list(
        # Path param: The ID of the account.
        account_id,
        # Path param:
        accounts_type:,
        # Query param:
        after_cursor: nil,
        # Query param:
        per_page: nil,
        request_options: {}
      )
      end

      # Delete a routing detail for a single external account.
      sig do
        params(
          id: String,
          accounts_type:
            ModernTreasury::RoutingDetailDeleteParams::AccountsType::OrSymbol,
          account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the routing detail.
        id,
        accounts_type:,
        # The ID of the account.
        account_id:,
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
