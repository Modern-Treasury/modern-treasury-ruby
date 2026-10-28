# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountUpdateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute description
      #   The description of the ledger account.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   The name of the ledger account.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(description: nil, external_id: nil, metadata: nil, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountUpdateRequest} for more details.
      #
      #   @param description [String, nil] The description of the ledger account.
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String] The name of the ledger account.
    end
  end
end
