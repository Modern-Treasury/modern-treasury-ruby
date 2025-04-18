# frozen_string_literal: true

module ModernTreasury
  module Models
    module TransactionDirection
      extend ModernTreasury::Internal::Type::Enum

      CREDIT = :credit
      DEBIT = :debit

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
