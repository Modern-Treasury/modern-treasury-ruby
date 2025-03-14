# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # If true, response will include the balances attached to the ledger entry. If
      #   there is no balance available, null will be returned instead.
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
          .returns(T.attached_class)
      end
      def self.new(show_balances: nil, request_options: {})
      end

      sig { override.returns({show_balances: T::Boolean, request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end
    end
  end
end
