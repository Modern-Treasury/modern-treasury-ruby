# typed: strong

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    class ExternalAccountType < ModernTreasury::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      CASH = :cash
      CHECKING = :checking
      GENERAL_LEDGER = :general_ledger
      LOAN = :loan
      NON_RESIDENT = :non_resident
      OTHER = :other
      OVERDRAFT = :overdraft
      SAVINGS = :savings
    end
  end
end
