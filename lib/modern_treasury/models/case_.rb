# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Cases#retrieve
    class Case < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute requested_actions
      #   The pending actions requested to resolve the case.
      #
      #   @return [Array<ModernTreasury::Models::RequestedAction>]
      required :requested_actions,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RequestedAction] }

      # @!attribute resolved_actions
      #   The requested actions that have been resolved.
      #
      #   @return [Array<ModernTreasury::Models::RequestedAction>]
      required :resolved_actions,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RequestedAction] }

      # @!attribute status
      #   The status of the case.
      #
      #   @return [Symbol, ModernTreasury::Models::Case::Status]
      required :status, enum: -> { ModernTreasury::Case::Status }

      # @!attribute subject_id
      #   The ID of the object the case is about.
      #
      #   @return [String]
      required :subject_id, String

      # @!attribute subject_type
      #   The type of the object the case is about.
      #
      #   @return [String]
      required :subject_type, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, live_mode:, object:, requested_actions:, resolved_actions:, status:, subject_id:, subject_type:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::Case} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param requested_actions [Array<ModernTreasury::Models::RequestedAction>] The pending actions requested to resolve the case.
      #
      #   @param resolved_actions [Array<ModernTreasury::Models::RequestedAction>] The requested actions that have been resolved.
      #
      #   @param status [Symbol, ModernTreasury::Models::Case::Status] The status of the case.
      #
      #   @param subject_id [String] The ID of the object the case is about.
      #
      #   @param subject_type [String] The type of the object the case is about.
      #
      #   @param updated_at [Time]

      # The status of the case.
      #
      # @see ModernTreasury::Models::Case#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        OPEN = :open
        RESOLVED = :resolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
