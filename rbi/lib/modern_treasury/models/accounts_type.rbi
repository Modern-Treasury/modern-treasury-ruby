# typed: strong

module ModernTreasury
  module Models
    class AccountsType < ModernTreasury::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      EXTERNAL_ACCOUNTS = :external_accounts
      INTERNAL_ACCOUNTS = :internal_accounts
    end
  end
end
