# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerBalances < ModernTreasury::Internal::Type::BaseModel
      # @!attribute available_balance
      #   The available_balance is the sum of all posted inbound entries and pending
      #   outbound entries. For credit normal, available_amount = posted_credits -
      #   pending_debits; for debit normal, available_amount = posted_debits -
      #   pending_credits.
      #
      #   @return [ModernTreasury::Models::LedgerBalance]
      required :available_balance, -> { ModernTreasury::LedgerBalance }

      # @!attribute pending_balance
      #   The pending_balance is the sum of all pending and posted entries.
      #
      #   @return [ModernTreasury::Models::LedgerBalance]
      required :pending_balance, -> { ModernTreasury::LedgerBalance }

      # @!attribute posted_balance
      #   The posted_balance is the sum of all posted entries.
      #
      #   @return [ModernTreasury::Models::LedgerBalance]
      required :posted_balance, -> { ModernTreasury::LedgerBalance }

      # @!method initialize(available_balance:, pending_balance:, posted_balance:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerBalances} for more details.
      #
      #   @param available_balance [ModernTreasury::Models::LedgerBalance] The available_balance is the sum of all posted inbound entries and pending outbo
      #
      #   @param pending_balance [ModernTreasury::Models::LedgerBalance] The pending_balance is the sum of all pending and posted entries.
      #
      #   @param posted_balance [ModernTreasury::Models::LedgerBalance] The posted_balance is the sum of all posted entries.
    end
  end
end
