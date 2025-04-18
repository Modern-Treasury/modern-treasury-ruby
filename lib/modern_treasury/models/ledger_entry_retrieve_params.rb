# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerEntries#retrieve
    class LedgerEntryRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute [r] show_balances
      #   If true, response will include the balances attached to the ledger entry. If
      #   there is no balance available, null will be returned instead.
      #
      #   @return [Boolean, nil]
      optional :show_balances, ModernTreasury::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :show_balances

      # @!method initialize(show_balances: nil, request_options: {})
      #   @param show_balances [Boolean]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
