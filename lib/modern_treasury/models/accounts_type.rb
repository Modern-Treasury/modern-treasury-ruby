# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # case accounts_type
    # in :external_accounts
    #   # ...
    # in :internal_accounts
    #   # ...
    # end
    # ```
    class AccountsType < ModernTreasury::Enum
      EXTERNAL_ACCOUNTS = :external_accounts
      INTERNAL_ACCOUNTS = :internal_accounts

      finalize!
    end
  end
end
