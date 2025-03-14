# typed: strong

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    class ExternalAccountType < ModernTreasury::Enum
      abstract!

      CASH = :cash
      CHECKING = :checking
      GENERAL_LEDGER = :general_ledger
      LOAN = :loan
      NON_RESIDENT = :non_resident
      OTHER = :other
      OVERDRAFT = :overdraft
      SAVINGS = :savings

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
