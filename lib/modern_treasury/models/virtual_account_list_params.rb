# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::VirtualAccounts#list
    class VirtualAccountListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] internal_account_id
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :internal_account_id

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
      #   # @param after_cursor [String, nil]
      #   # @param counterparty_id [String]
      #   # @param internal_account_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param per_page [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     counterparty_id: nil,
      #     internal_account_id: nil,
      #     metadata: nil,
      #     per_page: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
