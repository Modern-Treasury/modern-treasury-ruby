# typed: strong

module ModernTreasury
  module Models
    class AccountDetailDeleteParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      def accounts_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          accounts_type: Symbol,
          account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(accounts_type:, account_id:, request_options: {})
      end

      sig do
        override
          .returns({
                     accounts_type: Symbol,
                     account_id: String,
                     request_options: ModernTreasury::RequestOptions
                   })
      end
      def to_hash
      end

      class AccountsType < ModernTreasury::Enum
        abstract!

        EXTERNAL_ACCOUNTS = :external_accounts

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
