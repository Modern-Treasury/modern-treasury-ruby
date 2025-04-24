# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExternalAccounts#list
    class ExternalAccountListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute party_name
      #   Searches the ExternalAccount's party_name AND the Counterparty's party_name
      #
      #   @return [String, nil]
      optional :party_name, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(after_cursor: nil, counterparty_id: nil, metadata: nil, party_name: nil, per_page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ExternalAccountListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param counterparty_id [String]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   ...
      #
      #   @param party_name [String] Searches the ExternalAccount's party_name AND the Counterparty's party_name
      #
      #   @param per_page [Integer]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
