# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailDeleteParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          accounts_type: ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::OrSymbol,
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
              accounts_type: ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::OrSymbol,
              account_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
