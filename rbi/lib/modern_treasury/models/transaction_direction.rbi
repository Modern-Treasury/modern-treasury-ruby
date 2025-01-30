# typed: strong

module ModernTreasury
  module Models
    class TransactionDirection < ModernTreasury::Enum
      abstract!

      CREDIT = :credit
      DEBIT = :debit

      sig { override.returns(T::Array[Symbol]) }
      def self.values; end
    end
  end
end
