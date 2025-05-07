# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#list
    class CounterpartyListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute created_at_lower_bound
      #   Used to return counterparties created after some datetime.
      #
      #   @return [Time, nil]
      optional :created_at_lower_bound, Time

      # @!attribute created_at_upper_bound
      #   Used to return counterparties created before some datetime.
      #
      #   @return [Time, nil]
      optional :created_at_upper_bound, Time

      # @!attribute email
      #   Performs a partial string match of the email field. This is also case
      #   insensitive.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute legal_entity_id
      #   Filters for counterparties with the given legal entity ID.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   Performs a partial string match of the name field. This is also case
      #   insensitive.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(after_cursor: nil, created_at_lower_bound: nil, created_at_upper_bound: nil, email: nil, legal_entity_id: nil, metadata: nil, name: nil, per_page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::CounterpartyListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param created_at_lower_bound [Time] Used to return counterparties created after some datetime.
      #
      #   @param created_at_upper_bound [Time] Used to return counterparties created before some datetime.
      #
      #   @param email [String] Performs a partial string match of the email field. This is also case insensitiv
      #
      #   @param legal_entity_id [String] Filters for counterparties with the given legal entity ID.
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param name [String] Performs a partial string match of the name field. This is also case insensitive
      #
      #   @param per_page [Integer]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
