# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Cases#list
    class CaseListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #   The status of the case.
      #
      #   @return [Symbol, ModernTreasury::Models::CaseListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::CaseListParams::Status }

      # @!attribute subject_id
      #   The ID of the object the case is about.
      #
      #   @return [String, nil]
      optional :subject_id, String

      # @!attribute subject_type
      #   The type of the object the case is about.
      #
      #   @return [Symbol, ModernTreasury::Models::CaseListParams::SubjectType, nil]
      optional :subject_type, enum: -> { ModernTreasury::CaseListParams::SubjectType }

      # @!method initialize(after_cursor: nil, per_page: nil, status: nil, subject_id: nil, subject_type: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #
      #   @param per_page [Integer]
      #
      #   @param status [Symbol, ModernTreasury::Models::CaseListParams::Status] The status of the case.
      #
      #   @param subject_id [String] The ID of the object the case is about.
      #
      #   @param subject_type [Symbol, ModernTreasury::Models::CaseListParams::SubjectType] The type of the object the case is about.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The status of the case.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        OPEN = :open
        RESOLVED = :resolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of the object the case is about.
      module SubjectType
        extend ModernTreasury::Internal::Type::Enum

        LEGAL_ENTITY = :legal_entity

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
