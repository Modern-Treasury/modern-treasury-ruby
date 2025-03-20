# frozen_string_literal: true

module ModernTreasury
  module Models
    module TransactionDirection
      extend ModernTreasury::Enum

      CREDIT = :credit
      DEBIT = :debit

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end
