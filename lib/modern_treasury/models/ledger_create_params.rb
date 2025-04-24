# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Ledgers#create
    class LedgerCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute name
      #   The name of the ledger.
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   An optional free-form description for internal use.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(name:, description: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerCreateParams} for more details.
      #
      #   @param name [String] The name of the ledger.
      #
      #   @param description [String, nil] An optional free-form description for internal use.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
