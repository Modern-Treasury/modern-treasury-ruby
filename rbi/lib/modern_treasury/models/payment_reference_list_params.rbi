# typed: strong

module ModernTreasury
  module Models
    class PaymentReferenceListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # The actual reference number assigned by the bank.
      sig { returns(T.nilable(String)) }
      attr_reader :reference_number

      sig { params(reference_number: String).void }
      attr_writer :reference_number

      # The id of the referenceable to search for. Must be accompanied by the
      #   referenceable_type or will return an error.
      sig { returns(T.nilable(String)) }
      attr_reader :referenceable_id

      sig { params(referenceable_id: String).void }
      attr_writer :referenceable_id

      # One of the referenceable types. This must be accompanied by the id of the
      #   referenceable or will return an error.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol)) }
      attr_reader :referenceable_type

      sig do
        params(
          referenceable_type: ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol
        )
          .void
      end
      attr_writer :referenceable_type

      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          reference_number: String,
          referenceable_id: String,
          referenceable_type: ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
          T.let(:payment_order, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::TaggedSymbol)
        RETURN =
          T.let(:return, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::TaggedSymbol)
        REVERSAL =
          T.let(:reversal, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
