# typed: strong

module ModernTreasury
  module Models
    class TransactionDirection < ModernTreasury::Enum
      abstract!

      CREDIT = :credit
      DEBIT = :debit

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
