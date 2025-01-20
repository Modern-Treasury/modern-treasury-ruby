# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountListParams < ModernTreasury::BaseModel
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

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] party_name
      #   Searches the ExternalAccount's party_name AND the Counterparty's party_name
      #
      #   @return [String, nil]
      optional :party_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :party_name

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param counterparty_id [String]
      #   #
      #   # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param party_name [String] Searches the ExternalAccount's party_name AND the Counterparty's party_name
      #   #
      #   # @param per_page [Integer]
      #   #
      #   def initialize(after_cursor: nil, counterparty_id: nil, metadata: nil, party_name: nil, per_page: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
