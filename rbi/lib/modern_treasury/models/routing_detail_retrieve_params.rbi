# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(ModernTreasury::Models::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          accounts_type: ModernTreasury::Models::AccountsType::OrSymbol,
          account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, account_id:, request_options: {}); end

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
      def to_hash; end
    end
  end
end
