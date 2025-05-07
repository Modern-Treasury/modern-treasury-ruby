# frozen_string_literal: true

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    module ExternalAccountType
      extend ModernTreasury::Internal::Type::Enum

      CASH = :cash
      CHECKING = :checking
      GENERAL_LEDGER = :general_ledger
      LOAN = :loan
      NON_RESIDENT = :non_resident
      OTHER = :other
      OVERDRAFT = :overdraft
      SAVINGS = :savings

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
