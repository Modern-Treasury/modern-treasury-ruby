# typed: strong

module ModernTreasury
  module Models
    class AccountDetailRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::AccountsType::OrSymbol) }
      def accounts_type
      end

      sig do
        params(_: ModernTreasury::Models::AccountsType::OrSymbol)
          .returns(ModernTreasury::Models::AccountsType::OrSymbol)
      end
      def accounts_type=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig do
        params(
          accounts_type: ModernTreasury::Models::AccountsType::OrSymbol,
          account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, account_id:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              accounts_type: ModernTreasury::Models::AccountsType::OrSymbol,
              account_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
