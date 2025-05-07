# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountStatements#create
    class LedgerAccountStatementCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute effective_at_lower_bound
      #   The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      #
      #   @return [Time]
      required :effective_at_lower_bound, Time

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      #
      #   @return [Time]
      required :effective_at_upper_bound, Time

      # @!attribute ledger_account_id
      #   The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute description
      #   The description of the ledger account statement.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(effective_at_lower_bound:, effective_at_upper_bound:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountStatementCreateParams} for more details.
      #
      #   @param effective_at_lower_bound [Time] The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #
      #   @param effective_at_upper_bound [Time] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #
      #   @param ledger_account_id [String] The id of the ledger account whose ledger entries are queried against, and its b
      #
      #   @param description [String, nil] The description of the ledger account statement.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
