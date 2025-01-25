# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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

      # @!attribute [r] balances
      #   For example, if you want the balances as of a particular time (ISO8601), the
      #     encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #     The balances as of a time are inclusive of entries with that exact time.
      #
      #   @return [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances, nil]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountCategoryListParams::Balances }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances]
      #   attr_writer :balances

      # @!attribute [r] currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :currency

      # @!attribute [r] ledger_account_id
      #   Query categories which contain a ledger account directly or through child
      #     categories.
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_id

      # @!attribute [r] ledger_id
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_id

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

      # @!attribute [r] name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] parent_ledger_account_category_id
      #   Query categories that are nested underneath a parent category
      #
      #   @return [String, nil]
      optional :parent_ledger_account_category_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :parent_ledger_account_category_id

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
      #   # @param balances [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances]
      #   # @param currency [String]
      #   # @param ledger_account_id [String]
      #   # @param ledger_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param parent_ledger_account_category_id [String]
      #   # @param per_page [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     id: nil,
      #     after_cursor: nil,
      #     balances: nil,
      #     currency: nil,
      #     ledger_account_id: nil,
      #     ledger_id: nil,
      #     metadata: nil,
      #     name: nil,
      #     parent_ledger_account_category_id: nil,
      #     per_page: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # balances => {
      #   effective_at: Time
      # }
      # ```
      class Balances < ModernTreasury::BaseModel
        # @!attribute [r] effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :effective_at

        # @!parse
        #   # For example, if you want the balances as of a particular time (ISO8601), the
        #   #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   #   The balances as of a time are inclusive of entries with that exact time.
        #   #
        #   # @param effective_at [String]
        #   #
        #   def initialize(effective_at: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
