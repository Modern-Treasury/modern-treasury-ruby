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

      # @!method initialize(journal_report_id:, request_options: {})
      #   @param journal_report_id [String] The ID of the journal report
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
