# typed: strong

module ModernTreasury
  module Models
    class AccountDetailDeleteParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::OrSymbol) }
      def accounts_type
      end

      sig do
        params(_: ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::OrSymbol)
          .returns(ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::OrSymbol)
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
          accounts_type: ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::OrSymbol,
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
              accounts_type: ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::OrSymbol,
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
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::TaggedSymbol) }

        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
