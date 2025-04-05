# typed: strong

module ModernTreasury
  module Resources
    class AccountCollectionFlows
      # create account_collection_flow
      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol],
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def create(
        # Required.
        counterparty_id:,
        payment_types:,
        receiving_countries: nil,
        request_options: {}
      )
      end

      # get account_collection_flow
      sig do
        params(
          id: String,
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # update account_collection_flow
      sig do
        params(
          id: String,
          status: ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status::OrSymbol,
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def update(
        # id
        id,
        # Required. The updated status of the account collection flow. Can only be used to
        #   mark a flow as `cancelled`.
        status:,
        request_options: {}
      )
      end

      # list account_collection_flows
      sig do
        params(
          after_cursor: T.nilable(String),
          client_token: String,
          counterparty_id: String,
          external_account_id: String,
          per_page: Integer,
          status: String,
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::AccountCollectionFlow])
      end
      def list(
        after_cursor: nil,
        client_token: nil,
        counterparty_id: nil,
        external_account_id: nil,
        per_page: nil,
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
