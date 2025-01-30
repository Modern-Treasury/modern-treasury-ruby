# typed: strong

module ModernTreasury
  module Models
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

      sig { override.returns(T::Array[Symbol]) }
      def self.values; end
    end
  end
end
