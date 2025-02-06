# typed: strong

module ModernTreasury
  module Models
    class AccountDetailDeleteParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          accounts_type: Symbol,
          account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(accounts_type:, account_id:, request_options: {}); end

      sig do
        override.returns(
          {
            accounts_type: Symbol,
            account_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class AccountsType < ModernTreasury::Enum
        abstract!

        EXTERNAL_ACCOUNTS = :external_accounts

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
