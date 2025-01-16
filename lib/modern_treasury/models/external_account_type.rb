# frozen_string_literal: true

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    #
    # @example
    # ```ruby
    # case external_account_type
    # in :cash
    #   # ...
    # in :checking
    #   # ...
    # in :general_ledger
    #   # ...
    # in :loan
    #   # ...
    # in :non_resident
    #   # ...
    # in ...
    #   #...
    # end
    # ```
    class ExternalAccountType < ModernTreasury::Enum
      CASH = :cash
      CHECKING = :checking
      GENERAL_LEDGER = :general_ledger
      LOAN = :loan
      NON_RESIDENT = :non_resident
      OTHER = :other
      OVERDRAFT = :overdraft
      SAVINGS = :savings

      finalize!
    end
  end
end
