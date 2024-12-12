# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryListParams < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] balances
      #   For example, if you want the balances as of a particular time (ISO8601), the encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`. The balances as of a time are inclusive of entries with that exact time.
      #   @return [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountCategoryListParams::Balances }

      # @!attribute [rw] currency
      #   @return [String]
      optional :currency, String

      # @!attribute [rw] ledger_account_id
      #   Query categories which contain a ledger account directly or through child categories.
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute [rw] ledger_id
      #   @return [String]
      optional :ledger_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] name
      #   @return [String]
      optional :name, String

      # @!attribute [rw] parent_ledger_account_category_id
      #   Query categories that are nested underneath a parent category
      #   @return [String]
      optional :parent_ledger_account_category_id, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      class Balances < ModernTreasury::BaseModel
        # @!attribute [rw] effective_at
        #   @return [Time]
        optional :effective_at, Time

        # @!parse
        #   # Create a new instance of Balances from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :effective_at
        #   def initialize(data = {}) = super
      end
    end
  end
end
