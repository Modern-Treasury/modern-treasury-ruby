# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountSettlements#list
    class LedgerAccountSettlementListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>, nil]
      optional :id, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :created_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!attribute ledger_id
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!attribute ledger_transaction_id
      #
      #   @return [String, nil]
      optional :ledger_transaction_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute settled_ledger_account_id
      #
      #   @return [String, nil]
      optional :settled_ledger_account_id, String

      # @!attribute settlement_entry_direction
      #
      #   @return [String, nil]
      optional :settlement_entry_direction, String

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :updated_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!method initialize(id: nil, after_cursor: nil, created_at: nil, ledger_id: nil, ledger_transaction_id: nil, metadata: nil, per_page: nil, settled_ledger_account_id: nil, settlement_entry_direction: nil, updated_at: nil, request_options: {})
      #   @param id [Array<String>]
      #   @param after_cursor [String, nil]
      #   @param created_at [Hash{Symbol=>Time}]
      #   @param ledger_id [String]
      #   @param ledger_transaction_id [String]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param per_page [Integer]
      #   @param settled_ledger_account_id [String]
      #   @param settlement_entry_direction [String]
      #   @param updated_at [Hash{Symbol=>Time}]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
