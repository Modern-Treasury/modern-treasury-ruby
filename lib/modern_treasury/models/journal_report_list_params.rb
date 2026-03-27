# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::JournalReports#list
    class JournalReportListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::JournalReportListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::JournalReportListParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, ModernTreasury::Models::JournalReportListParams::Status]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend ModernTreasury::Internal::Type::Enum

        DRAFT = :draft
        PUBLISHED = :published
        READY = :ready

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
