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

      sig { returns(T.nilable(String)) }
      def reference_number
      end

      sig { params(_: String).returns(String) }
      def reference_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def referenceable_id
      end

      sig { params(_: String).returns(String) }
      def referenceable_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def referenceable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def referenceable_type=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          reference_number: String,
          referenceable_id: String,
          referenceable_type: Symbol,
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
              referenceable_type: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class ReferenceableType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
