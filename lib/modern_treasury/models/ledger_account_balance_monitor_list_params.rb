# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorListParams < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] ledger_account_id
      #   Query the balance monitors for a single ledger account.
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer
    end
  end
end
