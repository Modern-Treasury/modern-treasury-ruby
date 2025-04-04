# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailDeleteParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          accounts_type: ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::OrSymbol,
          account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, account_id:, request_options: {})
      end

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
      def to_hash
      end

      module AccountsType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::TaggedSymbol) }

        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
