# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute created_at_lower_bound
      #   Used to return counterparties created after some datetime.
      #
      #   @return [Time]
      optional :created_at_lower_bound, Time

      # @!attribute created_at_upper_bound
      #   Used to return counterparties created before some datetime.
      #
      #   @return [Time]
      optional :created_at_upper_bound, Time

      # @!attribute email
      #   Performs a partial string match of the email field. This is also case insensitive.
      #
      #   @return [String]
      optional :email, String

      # @!attribute legal_entity_id
      #   Filters for counterparties with the given legal entity ID.
      #
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   Performs a partial string match of the name field. This is also case insensitive.
      #
      #   @return [String]
      optional :name, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param created_at_lower_bound [String, nil] Used to return counterparties created after some datetime.
      #   #
      #   # @param created_at_upper_bound [String, nil] Used to return counterparties created before some datetime.
      #   #
      #   # @param email [String, nil] Performs a partial string match of the email field. This is also case
      #   #   insensitive.
      #   #
      #   # @param legal_entity_id [String, nil] Filters for counterparties with the given legal entity ID.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param name [String, nil] Performs a partial string match of the name field. This is also case
      #   #   insensitive.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     created_at_lower_bound: nil,
      #     created_at_upper_bound: nil,
      #     email: nil,
      #     legal_entity_id: nil,
      #     metadata: nil,
      #     name: nil,
      #     per_page: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
