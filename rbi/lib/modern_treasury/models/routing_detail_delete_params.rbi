# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailDeleteParams < ModernTreasury::BaseModel
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
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, account_id:, request_options: {})
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

        Value = type_template(:out) { {fixed: Symbol} }

        EXTERNAL_ACCOUNTS = :external_accounts
      end
    end
  end
end
