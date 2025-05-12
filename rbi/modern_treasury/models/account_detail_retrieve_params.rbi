# typed: strong

module ModernTreasury
  module Models
    class AccountDetailRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountDetailRetrieveParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(ModernTreasury::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          accounts_type: ModernTreasury::AccountsType::OrSymbol,
          account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(accounts_type:, account_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            accounts_type: ModernTreasury::AccountsType::OrSymbol,
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
