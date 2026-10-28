# typed: strong

module ModernTreasury
  module Models
    class RequestedAction < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::RequestedAction,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The category of the requested action.
      sig { returns(ModernTreasury::RequestedAction::Category::TaggedSymbol) }
      attr_accessor :category

      sig { returns(Time) }
      attr_accessor :created_at

      # The field that needs to be corrected or provided, if any.
      sig do
        returns(T.nilable(ModernTreasury::RequestedAction::Field::TaggedSymbol))
      end
      attr_accessor :field

      # Instructions on how to resolve the requested action.
      sig { returns(T.nilable(String)) }
      attr_accessor :instructions

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The reasons the action was requested.
      sig { returns(T::Array[String]) }
      attr_accessor :reasons

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          category: ModernTreasury::RequestedAction::Category::OrSymbol,
          created_at: Time,
          field: T.nilable(ModernTreasury::RequestedAction::Field::OrSymbol),
          instructions: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          reasons: T::Array[String],
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The category of the requested action.
        category:,
        created_at:,
        # The field that needs to be corrected or provided, if any.
        field:,
        # Instructions on how to resolve the requested action.
        instructions:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The reasons the action was requested.
        reasons:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            category: ModernTreasury::RequestedAction::Category::TaggedSymbol,
            created_at: Time,
            field:
              T.nilable(ModernTreasury::RequestedAction::Field::TaggedSymbol),
            instructions: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            reasons: T::Array[String],
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The category of the requested action.
      module Category
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::RequestedAction::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONBOARDING_ARTICLES_OF_INCORPORATION_FAILURE =
          T.let(
            :onboarding_articles_of_incorporation_failure,
            ModernTreasury::RequestedAction::Category::TaggedSymbol
          )
        ONBOARDING_BUSINESS_REGISTRY_VERIFICATION_FAILURE =
          T.let(
            :onboarding_business_registry_verification_failure,
            ModernTreasury::RequestedAction::Category::TaggedSymbol
          )
        ONBOARDING_DATABASE_FAILURE =
          T.let(
            :onboarding_database_failure,
            ModernTreasury::RequestedAction::Category::TaggedSymbol
          )
        ONBOARDING_PROOF_OF_ADDRESS_FAILURE =
          T.let(
            :onboarding_proof_of_address_failure,
            ModernTreasury::RequestedAction::Category::TaggedSymbol
          )
        ONBOARDING_SSN_CHECK_FAILURE =
          T.let(
            :onboarding_ssn_check_failure,
            ModernTreasury::RequestedAction::Category::TaggedSymbol
          )
        ONBOARDING_TIN_CHECK_FAILURE =
          T.let(
            :onboarding_tin_check_failure,
            ModernTreasury::RequestedAction::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::RequestedAction::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field that needs to be corrected or provided, if any.
      module Field
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::RequestedAction::Field) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARTICLES_OF_INCORPORATION =
          T.let(
            :articles_of_incorporation,
            ModernTreasury::RequestedAction::Field::TaggedSymbol
          )
        EIN_LETTER =
          T.let(
            :ein_letter,
            ModernTreasury::RequestedAction::Field::TaggedSymbol
          )
        LEGAL_ENTITY_DETAILS =
          T.let(
            :legal_entity_details,
            ModernTreasury::RequestedAction::Field::TaggedSymbol
          )
        PROOF_OF_ADDRESS =
          T.let(
            :proof_of_address,
            ModernTreasury::RequestedAction::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::RequestedAction::Field::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
