# typed: strong

module ModernTreasury
  module Models
    class AccountDetailDeleteParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig do
        returns(
          ModernTreasury::AccountDetailDeleteParams::AccountsType::OrSymbol
        )
      end
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          accounts_type:
            ModernTreasury::AccountDetailDeleteParams::AccountsType::OrSymbol,
          account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(accounts_type:, account_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            accounts_type:
              ModernTreasury::AccountDetailDeleteParams::AccountsType::OrSymbol,
            account_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountDetailDeleteParams::AccountsType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_ACCOUNTS =
          T.let(
            :external_accounts,
            ModernTreasury::AccountDetailDeleteParams::AccountsType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountDetailDeleteParams::AccountsType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
