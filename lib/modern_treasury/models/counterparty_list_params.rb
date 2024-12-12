# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] created_at_lower_bound
      #   Used to return counterparties created after some datetime.
      #   @return [Time]
      optional :created_at_lower_bound, Time

      # @!attribute [rw] created_at_upper_bound
      #   Used to return counterparties created before some datetime.
      #   @return [Time]
      optional :created_at_upper_bound, Time

      # @!attribute [rw] email
      #   Performs a partial string match of the email field. This is also case insensitive.
      #   @return [String]
      optional :email, String

      # @!attribute [rw] legal_entity_id
      #   Filters for counterparties with the given legal entity ID.
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] name
      #   Performs a partial string match of the name field. This is also case insensitive.
      #   @return [String]
      optional :name, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer
    end
  end
end
