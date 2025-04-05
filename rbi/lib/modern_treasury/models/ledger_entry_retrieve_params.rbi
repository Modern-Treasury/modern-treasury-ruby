# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # If true, response will include the balances attached to the ledger entry. If
      #   there is no balance available, null will be returned instead.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_balances

      sig { params(show_balances: T::Boolean).void }
      attr_writer :show_balances

      sig do
        params(
          show_balances: T::Boolean,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(show_balances: nil, request_options: {}); end

      sig { override.returns({show_balances: T::Boolean, request_options: ModernTreasury::RequestOptions}) }
      def to_hash; end
    end
  end
end
