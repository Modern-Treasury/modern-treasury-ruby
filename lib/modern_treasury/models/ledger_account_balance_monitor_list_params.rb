# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute ledger_account_id
      #   Query the balance monitors for a single ledger account.
      #
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!parse
      #   # @param id [Array<String>, nil] If you have specific IDs to retrieve in bulk, you can pass them as query
      #   #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   #
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param ledger_account_id [String, nil] Query the balance monitors for a single ledger account.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   def initialize(id: nil, after_cursor: nil, ledger_account_id: nil, metadata: nil, per_page: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
