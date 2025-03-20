# typed: strong

module ModernTreasury
  module Models
    class PaymentReferenceListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # The actual reference number assigned by the bank.
      sig { returns(T.nilable(String)) }
      def reference_number
      end

      sig { params(_: String).returns(String) }
      def reference_number=(_)
      end

      # The id of the referenceable to search for. Must be accompanied by the
      #   referenceable_type or will return an error.
      sig { returns(T.nilable(String)) }
      def referenceable_id
      end

      sig { params(_: String).returns(String) }
      def referenceable_id=(_)
      end

      # One of the referenceable types. This must be accompanied by the id of the
      #   referenceable or will return an error.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol)) }
      def referenceable_type
      end

      sig do
        params(_: ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol)
          .returns(ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol)
      end
      def referenceable_type=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          reference_number: String,
          referenceable_id: String,
          referenceable_type: ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        per_page: nil,
        reference_number: nil,
        referenceable_id: nil,
        referenceable_type: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              per_page: Integer,
              reference_number: String,
              referenceable_id: String,
              referenceable_type: ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # One of the referenceable types. This must be accompanied by the id of the
      #   referenceable or will return an error.
      module ReferenceableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::TaggedSymbol) }

        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol)
        RETURN = T.let(:return, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol)
        REVERSAL =
          T.let(:reversal, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol)
      end
    end
  end
end
