# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::JournalReports#update
    class JournalReportUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, ModernTreasury::Internal::Type::Unknown

      # @!attribute status
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(id:, metadata: nil, status: nil, request_options: {})
      #   @param id [String]
      #   @param metadata [Object]
      #   @param status [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
