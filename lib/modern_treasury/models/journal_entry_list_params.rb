# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::JournalEntries#list
    class JournalEntryListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute journal_report_id
      #   The ID of the journal report
      #
      #   @return [String]
      required :journal_report_id, String

      # @!attribute page
      #   Page number for pagination
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute per_page
      #   Number of items per page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(journal_report_id:, page: nil, per_page: nil, request_options: {})
      #   @param journal_report_id [String] The ID of the journal report
      #
      #   @param page [Integer] Page number for pagination
      #
      #   @param per_page [Integer] Number of items per page
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
