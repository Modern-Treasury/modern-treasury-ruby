# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#list
    class CounterpartyListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] created_at_lower_bound
      #   Used to return counterparties created after some datetime.
      #
      #   @return [Time, nil]
      optional :created_at_lower_bound, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created_at_lower_bound

      # @!attribute [r] created_at_upper_bound
      #   Used to return counterparties created before some datetime.
      #
      #   @return [Time, nil]
      optional :created_at_upper_bound, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created_at_upper_bound

      # @!attribute [r] email
      #   Performs a partial string match of the email field. This is also case
      #     insensitive.
      #
      #   @return [String, nil]
      optional :email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :email

      # @!attribute [r] legal_entity_id
      #   Filters for counterparties with the given legal entity ID.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :legal_entity_id

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
      #   Performs a partial string match of the name field. This is also case
      #     insensitive.
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param created_at_lower_bound [Time]
      #   # @param created_at_upper_bound [Time]
      #   # @param email [String]
      #   # @param legal_entity_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param per_page [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
