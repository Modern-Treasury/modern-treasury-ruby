# typed: strong

module ModernTreasury
  module Resources
    class PaymentReferences
      # get payment_reference
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::PaymentReference)
      end
      def retrieve(id, request_options: {})
      end

      # list payment_references
      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          reference_number: String,
          referenceable_id: String,
          referenceable_type: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::PaymentReference])
      end
      def list(
        after_cursor: nil,
        per_page: nil,
        reference_number: nil,
        referenceable_id: nil,
        referenceable_type: nil,
        request_options: {}
      )
      end

      # get payment_reference
      alias_method :retireve, :retrieve

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
