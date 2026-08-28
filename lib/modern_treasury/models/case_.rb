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
      #   @return [Array<ModernTreasury::Models::Case::RequestedAction>]
      required :requested_actions,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Case::RequestedAction] }

      # @!attribute resolved_actions
      #   The requested actions that have been resolved.
      #
      #   @return [Array<ModernTreasury::Models::Case::ResolvedAction>]
      required :resolved_actions,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Case::ResolvedAction] }

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
      #   @param requested_actions [Array<ModernTreasury::Models::Case::RequestedAction>] The pending actions requested to resolve the case.
      #
      #   @param resolved_actions [Array<ModernTreasury::Models::Case::ResolvedAction>] The requested actions that have been resolved.
      #
      #   @param status [Symbol, ModernTreasury::Models::Case::Status] The status of the case.
      #
      #   @param subject_id [String] The ID of the object the case is about.
      #
      #   @param subject_type [String] The type of the object the case is about.
      #
      #   @param updated_at [Time]

      class RequestedAction < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute category
        #   The category of the requested action.
        #
        #   @return [Symbol, ModernTreasury::Models::Case::RequestedAction::Category]
        required :category, enum: -> { ModernTreasury::Case::RequestedAction::Category }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute field
        #   The field that needs to be corrected or provided, if any.
        #
        #   @return [Symbol, ModernTreasury::Models::Case::RequestedAction::Field, nil]
        required :field, enum: -> { ModernTreasury::Case::RequestedAction::Field }, nil?: true

        # @!attribute instructions
        #   Instructions on how to resolve the requested action.
        #
        #   @return [String, nil]
        required :instructions, String, nil?: true

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

        # @!attribute reasons
        #   The reasons the action was requested.
        #
        #   @return [Array<String>]
        required :reasons, ModernTreasury::Internal::Type::ArrayOf[String]

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, category:, created_at:, field:, instructions:, live_mode:, object:, reasons:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::Case::RequestedAction} for more details.
        #
        #   @param id [String]
        #
        #   @param category [Symbol, ModernTreasury::Models::Case::RequestedAction::Category] The category of the requested action.
        #
        #   @param created_at [Time]
        #
        #   @param field [Symbol, ModernTreasury::Models::Case::RequestedAction::Field, nil] The field that needs to be corrected or provided, if any.
        #
        #   @param instructions [String, nil] Instructions on how to resolve the requested action.
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param reasons [Array<String>] The reasons the action was requested.
        #
        #   @param updated_at [Time]

        # The category of the requested action.
        #
        # @see ModernTreasury::Models::Case::RequestedAction#category
        module Category
          extend ModernTreasury::Internal::Type::Enum

          ONBOARDING_ARTICLES_OF_INCORPORATION_FAILURE = :onboarding_articles_of_incorporation_failure
          ONBOARDING_BUSINESS_REGISTRY_VERIFICATION_FAILURE = :onboarding_business_registry_verification_failure
          ONBOARDING_DATABASE_FAILURE = :onboarding_database_failure
          ONBOARDING_PROOF_OF_ADDRESS_FAILURE = :onboarding_proof_of_address_failure
          ONBOARDING_SSN_CHECK_FAILURE = :onboarding_ssn_check_failure
          ONBOARDING_TIN_CHECK_FAILURE = :onboarding_tin_check_failure

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The field that needs to be corrected or provided, if any.
        #
        # @see ModernTreasury::Models::Case::RequestedAction#field
        module Field
          extend ModernTreasury::Internal::Type::Enum

          ARTICLES_OF_INCORPORATION = :articles_of_incorporation
          EIN_LETTER = :ein_letter
          LEGAL_ENTITY_DETAILS = :legal_entity_details
          PROOF_OF_ADDRESS = :proof_of_address

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ResolvedAction < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute category
        #   The category of the requested action.
        #
        #   @return [Symbol, ModernTreasury::Models::Case::ResolvedAction::Category]
        required :category, enum: -> { ModernTreasury::Case::ResolvedAction::Category }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute field
        #   The field that needs to be corrected or provided, if any.
        #
        #   @return [Symbol, ModernTreasury::Models::Case::ResolvedAction::Field, nil]
        required :field, enum: -> { ModernTreasury::Case::ResolvedAction::Field }, nil?: true

        # @!attribute instructions
        #   Instructions on how to resolve the requested action.
        #
        #   @return [String, nil]
        required :instructions, String, nil?: true

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

        # @!attribute reasons
        #   The reasons the action was requested.
        #
        #   @return [Array<String>]
        required :reasons, ModernTreasury::Internal::Type::ArrayOf[String]

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, category:, created_at:, field:, instructions:, live_mode:, object:, reasons:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::Case::ResolvedAction} for more details.
        #
        #   @param id [String]
        #
        #   @param category [Symbol, ModernTreasury::Models::Case::ResolvedAction::Category] The category of the requested action.
        #
        #   @param created_at [Time]
        #
        #   @param field [Symbol, ModernTreasury::Models::Case::ResolvedAction::Field, nil] The field that needs to be corrected or provided, if any.
        #
        #   @param instructions [String, nil] Instructions on how to resolve the requested action.
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param reasons [Array<String>] The reasons the action was requested.
        #
        #   @param updated_at [Time]

        # The category of the requested action.
        #
        # @see ModernTreasury::Models::Case::ResolvedAction#category
        module Category
          extend ModernTreasury::Internal::Type::Enum

          ONBOARDING_ARTICLES_OF_INCORPORATION_FAILURE = :onboarding_articles_of_incorporation_failure
          ONBOARDING_BUSINESS_REGISTRY_VERIFICATION_FAILURE = :onboarding_business_registry_verification_failure
          ONBOARDING_DATABASE_FAILURE = :onboarding_database_failure
          ONBOARDING_PROOF_OF_ADDRESS_FAILURE = :onboarding_proof_of_address_failure
          ONBOARDING_SSN_CHECK_FAILURE = :onboarding_ssn_check_failure
          ONBOARDING_TIN_CHECK_FAILURE = :onboarding_tin_check_failure

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The field that needs to be corrected or provided, if any.
        #
        # @see ModernTreasury::Models::Case::ResolvedAction#field
        module Field
          extend ModernTreasury::Internal::Type::Enum

          ARTICLES_OF_INCORPORATION = :articles_of_incorporation
          EIN_LETTER = :ein_letter
          LEGAL_ENTITY_DETAILS = :legal_entity_details
          PROOF_OF_ADDRESS = :proof_of_address

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

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
