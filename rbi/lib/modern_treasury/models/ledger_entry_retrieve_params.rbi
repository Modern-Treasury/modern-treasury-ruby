# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      def show_balances
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def show_balances=(_)
      end

      sig do
        params(
          show_balances: T::Boolean,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(show_balances: nil, request_options: {})
      end

      sig { override.returns({show_balances: T::Boolean, request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end
    end
  end
end
