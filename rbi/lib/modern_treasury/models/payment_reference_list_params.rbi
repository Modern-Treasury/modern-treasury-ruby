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

      sig { returns(T.nilable(String)) }
      attr_reader :reference_number

      sig { params(reference_number: String).void }
      attr_writer :reference_number

      sig { returns(T.nilable(String)) }
      attr_reader :referenceable_id

      sig { params(referenceable_id: String).void }
      attr_writer :referenceable_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :referenceable_type

      sig { params(referenceable_type: Symbol).void }
      attr_writer :referenceable_type

      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          reference_number: String,
          referenceable_id: String,
          referenceable_type: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        after_cursor: nil,
        per_page: nil,
        reference_number: nil,
        referenceable_id: nil,
        referenceable_type: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
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
      def to_hash; end

      class ReferenceableType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
