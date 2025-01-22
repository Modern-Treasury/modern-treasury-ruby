# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorListParams < ModernTreasury::BaseModel
      # @!attribute [r] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :id

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] ledger_account_id
      #   Query the balance monitors for a single ledger account.
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_id

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param id [Array<String>]
      #   # @param after_cursor [String, nil]
      #   # @param ledger_account_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param per_page [Integer]
      #   #
      #   def initialize(id: nil, after_cursor: nil, ledger_account_id: nil, metadata: nil, per_page: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
