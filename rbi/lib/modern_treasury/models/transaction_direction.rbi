# typed: strong

module ModernTreasury
  module Models
    class TransactionDirection < ModernTreasury::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      CREDIT = :credit
      DEBIT = :debit
    end
  end
end
