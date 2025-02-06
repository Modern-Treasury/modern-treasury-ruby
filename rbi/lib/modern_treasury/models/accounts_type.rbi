# typed: strong

module ModernTreasury
  module Models
    class AccountsType < ModernTreasury::Enum
      abstract!

      EXTERNAL_ACCOUNTS = :external_accounts
      INTERNAL_ACCOUNTS = :internal_accounts

      sig { override.returns(T::Array[Symbol]) }
      def self.values
      end
    end
  end
end
