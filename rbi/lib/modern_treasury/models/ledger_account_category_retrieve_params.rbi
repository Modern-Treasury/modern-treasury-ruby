# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances)) }
      attr_reader :balances

      sig { params(balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances).void }
      attr_writer :balances

      sig do
        params(
          balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(balances: nil, request_options: {}); end

      sig do
        override.returns(
          {
            balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class Balances < ModernTreasury::BaseModel
        sig { returns(T.nilable(Date)) }
        attr_reader :as_of_date

        sig { params(as_of_date: Date).void }
        attr_writer :as_of_date

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig { params(as_of_date: Date, effective_at: Time).void }
        def initialize(as_of_date: nil, effective_at: nil); end

        sig { override.returns({as_of_date: Date, effective_at: Time}) }
        def to_hash; end
      end
    end
  end
end
