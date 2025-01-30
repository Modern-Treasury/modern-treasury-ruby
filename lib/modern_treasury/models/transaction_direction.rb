# frozen_string_literal: true

module ModernTreasury
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case transaction_direction
    # in :credit
    #   # ...
    # in :debit
    #   # ...
    # end
    # ```
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
