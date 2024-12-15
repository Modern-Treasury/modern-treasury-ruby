# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute balances
      #   For example, if you want the balances as of a particular time (ISO8601), the encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`. The balances as of a time are inclusive of entries with that exact time.
      #
      #   @return [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountCategoryListParams::Balances }

      # @!attribute currency
      #
      #   @return [String]
      optional :currency, String

      # @!attribute ledger_account_id
      #   Query categories which contain a ledger account directly or through child categories.
      #
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute ledger_id
      #
      #   @return [String]
      optional :ledger_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute parent_ledger_account_category_id
      #   Query categories that are nested underneath a parent category
      #
      #   @return [String]
      optional :parent_ledger_account_category_id, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      class Balances < ModernTreasury::BaseModel
        # @!attribute effective_at
        #
        #   @return [Time]
        optional :effective_at, Time

        # @!parse
        #   # For example, if you want the balances as of a particular time (ISO8601), the
        #   #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   #   The balances as of a time are inclusive of entries with that exact time.
        #   #
        #   # @param effective_at [String, nil]
        #   #
        #   def initialize(effective_at: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
