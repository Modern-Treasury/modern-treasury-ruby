# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountCategories#list
    class LedgerAccountCategoryListParams < ModernTreasury::Internal::Type::BaseModel
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

      # @!attribute balances
      #   For example, if you want the balances as of a particular time (ISO8601), the
      #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #   The balances as of a time are inclusive of entries with that exact time.
      #
      #   @return [ModernTreasury::LedgerAccountCategoryListParams::Balances, nil]
      optional :balances, -> { ModernTreasury::LedgerAccountCategoryListParams::Balances }

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute ledger_account_id
      #   Query categories which contain a ledger account directly or through child
      #   categories.
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!attribute ledger_id
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute parent_ledger_account_category_id
      #   Query categories that are nested underneath a parent category
      #
      #   @return [String, nil]
      optional :parent_ledger_account_category_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(id: nil, after_cursor: nil, balances: nil, currency: nil, ledger_account_id: nil, ledger_id: nil, metadata: nil, name: nil, parent_ledger_account_category_id: nil, per_page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountCategoryListParams} for more details.
      #
      #   @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #
      #   @param after_cursor [String, nil]
      #
      #   @param balances [ModernTreasury::LedgerAccountCategoryListParams::Balances] For example, if you want the balances as of a particular time (ISO8601), the enc
      #
      #   @param currency [String]
      #
      #   @param ledger_account_id [String] Query categories which contain a ledger account directly or through child catego
      #
      #   @param ledger_id [String]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param name [String]
      #
      #   @param parent_ledger_account_category_id [String] Query categories that are nested underneath a parent category
      #
      #   @param per_page [Integer]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class Balances < ModernTreasury::Internal::Type::BaseModel
        # @!attribute effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!method initialize(effective_at: nil)
        #   For example, if you want the balances as of a particular time (ISO8601), the
        #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   The balances as of a time are inclusive of entries with that exact time.
        #
        #   @param effective_at [Time]
      end
    end
  end
end
