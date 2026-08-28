# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::JournalSources#list
    class JournalSourceListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute journal_entry_id
      #   The ID of the journal entry
      #
      #   @return [String, nil]
      optional :journal_entry_id, String

      # @!attribute journal_report_id
      #   The ID of the journal report
      #
      #   @return [String, nil]
      optional :journal_report_id, String

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

      # @!attribute source_id
      #   The ID of the source object
      #
      #   @return [String, nil]
      optional :source_id, String

      # @!attribute source_type
      #   The type of the source object
      #
      #   @return [String, nil]
      optional :source_type, String

      # @!method initialize(journal_entry_id: nil, journal_report_id: nil, page: nil, per_page: nil, source_id: nil, source_type: nil, request_options: {})
      #   @param journal_entry_id [String] The ID of the journal entry
      #
      #   @param journal_report_id [String] The ID of the journal report
      #
      #   @param page [Integer] Page number for pagination
      #
      #   @param per_page [Integer] Number of items per page
      #
      #   @param source_id [String] The ID of the source object
      #
      #   @param source_type [String] The type of the source object
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
