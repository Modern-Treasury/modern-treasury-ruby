# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] party_name
      #   Searches the ExternalAccount's party_name AND the Counterparty's party_name
      #   @return [String]
      optional :party_name, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer
    end
  end
end
