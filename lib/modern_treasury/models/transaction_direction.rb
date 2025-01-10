# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    #
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
    end
  end
end
