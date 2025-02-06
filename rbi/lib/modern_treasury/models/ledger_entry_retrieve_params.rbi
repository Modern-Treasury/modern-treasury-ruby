# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_balances

      sig { params(show_balances: T::Boolean).void }
      attr_writer :show_balances

      sig do
        params(
          show_balances: T::Boolean,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(show_balances: nil, request_options: {}); end

      sig { override.returns({show_balances: T::Boolean, request_options: ModernTreasury::RequestOptions}) }
      def to_hash; end
    end
  end
end
