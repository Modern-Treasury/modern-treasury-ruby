# frozen_string_literal: true

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    module ExternalAccountType
      extend ModernTreasury::Internal::Type::Enum

      BASE_WALLET = :base_wallet
      CASH = :cash
      CHECKING = :checking
      CRYPTO_WALLET = :crypto_wallet
      ETHEREUM_WALLET = :ethereum_wallet
      GENERAL_LEDGER = :general_ledger
      LOAN = :loan
      NON_RESIDENT = :non_resident
      OTHER = :other
      OVERDRAFT = :overdraft
      POLYGON_WALLET = :polygon_wallet
      SAVINGS = :savings
      SOLANA_WALLET = :solana_wallet

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
