# typed: strong

module ModernTreasury
  module Models
    class PaymentReferenceListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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
      # referenceable_type or will return an error.
      sig { returns(T.nilable(String)) }
      attr_reader :referenceable_id

      sig { params(referenceable_id: String).void }
      attr_writer :referenceable_id

      # One of the referenceable types. This must be accompanied by the id of the
      # referenceable or will return an error.
      sig do
        returns(
          T.nilable(
            ModernTreasury::PaymentReferenceListParams::ReferenceableType::OrSymbol
          )
        )
      end
      attr_reader :referenceable_type

      sig do
        params(
          referenceable_type:
            ModernTreasury::PaymentReferenceListParams::ReferenceableType::OrSymbol
        ).void
      end
      attr_writer :referenceable_type

      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          reference_number: String,
          referenceable_id: String,
          referenceable_type:
            ModernTreasury::PaymentReferenceListParams::ReferenceableType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        per_page: nil,
        # The actual reference number assigned by the bank.
        reference_number: nil,
        # The id of the referenceable to search for. Must be accompanied by the
        # referenceable_type or will return an error.
        referenceable_id: nil,
        # One of the referenceable types. This must be accompanied by the id of the
        # referenceable or will return an error.
        referenceable_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            per_page: Integer,
            reference_number: String,
            referenceable_id: String,
            referenceable_type:
              ModernTreasury::PaymentReferenceListParams::ReferenceableType::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # One of the referenceable types. This must be accompanied by the id of the
      # referenceable or will return an error.
      module ReferenceableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::PaymentReferenceListParams::ReferenceableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::PaymentReferenceListParams::ReferenceableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::PaymentReferenceListParams::ReferenceableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::PaymentReferenceListParams::ReferenceableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentReferenceListParams::ReferenceableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
