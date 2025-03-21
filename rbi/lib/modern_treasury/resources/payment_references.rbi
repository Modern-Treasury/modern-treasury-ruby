# typed: strong

module ModernTreasury
  module Resources
    class PaymentReferences
      # get payment_reference
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::PaymentReference)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # list payment_references
      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          reference_number: String,
          referenceable_id: String,
          referenceable_type: ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::PaymentReference])
      end
      def list(
        after_cursor: nil,
        per_page: nil,
        # The actual reference number assigned by the bank.
        reference_number: nil,
        # The id of the referenceable to search for. Must be accompanied by the
        #   referenceable_type or will return an error.
        referenceable_id: nil,
        # One of the referenceable types. This must be accompanied by the id of the
        #   referenceable or will return an error.
        referenceable_type: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
