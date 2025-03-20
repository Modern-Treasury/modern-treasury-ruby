# frozen_string_literal: true

module ModernTreasury
  module Models
    module TransactionDirection
      extend ModernTreasury::Enum

      CREDIT = :credit
      DEBIT = :debit

      finalize!
    end
  end
end
