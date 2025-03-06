# frozen_string_literal: true

module ModernTreasury
  module Models
    # @abstract
    #
    class TransactionDirection < ModernTreasury::Enum
      CREDIT = :credit
      DEBIT = :debit

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   #
      #   def self.values; end
    end
  end
end
