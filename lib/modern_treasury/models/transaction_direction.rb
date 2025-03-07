# frozen_string_literal: true

module ModernTreasury
  module Models
    # @abstract
    #
    class TransactionDirection < ModernTreasury::Enum
      CREDIT = :credit
      DEBIT = :debit

      finalize!
    end
  end
end
