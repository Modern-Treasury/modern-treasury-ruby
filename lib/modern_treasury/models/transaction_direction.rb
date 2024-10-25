# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionDirection < ModernTreasury::Enum
      CREDIT = :credit
      DEBIT = :debit
    end
  end
end
