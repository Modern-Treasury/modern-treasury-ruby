# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances)) }
      attr_reader :balances

      sig { params(balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances).void }
      attr_writer :balances

      sig do
        params(
          balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(balances: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Shape) }
      def to_h; end

      class Balances < ModernTreasury::BaseModel
        Shape = T.type_alias { {as_of_date: Date, effective_at: Time} }

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

        sig { returns(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances::Shape) }
        def to_h; end
      end
    end
  end
end
