# frozen_string_literal: true

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    module ExternalAccountType
      extend ModernTreasury::Internal::Type::Enum

      CASH = :cash
      CHECKING = :checking
      GENERAL_LEDGER = :general_ledger
      HOSTED_WALLET = :hosted_wallet
      LOAN = :loan
      NON_RESIDENT = :non_resident
      OTHER = :other
      OVERDRAFT = :overdraft
      SAVINGS = :savings
      SELF_HOSTED_WALLET = :self_hosted_wallet

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
