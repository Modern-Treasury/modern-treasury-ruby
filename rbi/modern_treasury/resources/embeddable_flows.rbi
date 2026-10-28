# typed: strong

module ModernTreasury
  module Resources
    class EmbeddableFlows
      # create embeddable_flow
      sig do
        params(
          options:
            T.any(
              ModernTreasury::AccountCollectionFlowCreateRequest::OrHash,
              ModernTreasury::PaymentFlowCreateRequest::OrHash,
              ModernTreasury::EmbeddableFlowCreateParams::Options::Type::OrHash
            ),
          template:
            ModernTreasury::EmbeddableFlowCreateParams::Template::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::EmbeddableFlow)
      end
      def create(
        # The parameters for the selected template's flow.
        options:,
        template:,
        request_options: {}
      )
      end

      # get embeddable_flow
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::EmbeddableFlow)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # update embeddable_flow
      sig do
        params(
          id: String,
          status: ModernTreasury::EmbeddableFlowUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::EmbeddableFlow)
      end
      def update(
        # id
        id,
        # The updated status of the flow. Can only be used to mark the flow as
        # `cancelled`.
        status:,
        request_options: {}
      )
      end

      # list embeddable_flows
      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          status: String,
          template:
            ModernTreasury::EmbeddableFlowListParams::Template::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[ModernTreasury::EmbeddableFlow]
        )
      end
      def list(
        after_cursor: nil,
        per_page: nil,
        status: nil,
        template: nil,
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
