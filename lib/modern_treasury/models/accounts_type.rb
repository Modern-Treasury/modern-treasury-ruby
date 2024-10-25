# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountsType < ModernTreasury::Enum
      EXTERNAL_ACCOUNTS = :external_accounts
      INTERNAL_ACCOUNTS = :internal_accounts
    end
  end
end
