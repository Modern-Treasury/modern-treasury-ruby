# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailDeleteParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all({accounts_type: Symbol, account_id: String}, ModernTreasury::RequestParameters::Shape)
      end

      sig { returns(Symbol) }
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(accounts_type: Symbol, account_id: String, request_options: ModernTreasury::RequestOpts).void
      end
      def initialize(accounts_type:, account_id:, request_options: {}); end

      sig { returns(ModernTreasury::Models::RoutingDetailDeleteParams::Shape) }
      def to_h; end

      class AccountsType < ModernTreasury::Enum
        abstract!

        EXTERNAL_ACCOUNTS = :external_accounts

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
