# frozen_string_literal: true

module ModernTreasury
  module Models
    # @abstract
    #
    # Can be `checking`, `savings` or `other`.
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
