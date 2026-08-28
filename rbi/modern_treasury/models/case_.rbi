# typed: strong

module ModernTreasury
  module Models
    class Case < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Case, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The pending actions requested to resolve the case.
      sig { returns(T::Array[ModernTreasury::Case::RequestedAction]) }
      attr_accessor :requested_actions

      # The requested actions that have been resolved.
      sig { returns(T::Array[ModernTreasury::Case::ResolvedAction]) }
      attr_accessor :resolved_actions

      # The status of the case.
      sig { returns(ModernTreasury::Case::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the object the case is about.
      sig { returns(String) }
      attr_accessor :subject_id

      # The type of the object the case is about.
      sig { returns(String) }
      attr_accessor :subject_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          live_mode: T::Boolean,
          object: String,
          requested_actions:
            T::Array[ModernTreasury::Case::RequestedAction::OrHash],
          resolved_actions:
            T::Array[ModernTreasury::Case::ResolvedAction::OrHash],
          status: ModernTreasury::Case::Status::OrSymbol,
          subject_id: String,
          subject_type: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The pending actions requested to resolve the case.
        requested_actions:,
        # The requested actions that have been resolved.
        resolved_actions:,
        # The status of the case.
        status:,
        # The ID of the object the case is about.
        subject_id:,
        # The type of the object the case is about.
        subject_type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            live_mode: T::Boolean,
            object: String,
            requested_actions: T::Array[ModernTreasury::Case::RequestedAction],
            resolved_actions: T::Array[ModernTreasury::Case::ResolvedAction],
            status: ModernTreasury::Case::Status::TaggedSymbol,
            subject_id: String,
            subject_type: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class RequestedAction < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Case::RequestedAction,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The category of the requested action.
        sig do
          returns(ModernTreasury::Case::RequestedAction::Category::TaggedSymbol)
        end
        attr_accessor :category

        sig { returns(Time) }
        attr_accessor :created_at

        # The field that needs to be corrected or provided, if any.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Case::RequestedAction::Field::TaggedSymbol
            )
          )
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
            category: ModernTreasury::Case::RequestedAction::Category::OrSymbol,
            created_at: Time,
            field:
              T.nilable(ModernTreasury::Case::RequestedAction::Field::OrSymbol),
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
              category:
                ModernTreasury::Case::RequestedAction::Category::TaggedSymbol,
              created_at: Time,
              field:
                T.nilable(
                  ModernTreasury::Case::RequestedAction::Field::TaggedSymbol
                ),
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
              T.all(Symbol, ModernTreasury::Case::RequestedAction::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONBOARDING_ARTICLES_OF_INCORPORATION_FAILURE =
            T.let(
              :onboarding_articles_of_incorporation_failure,
              ModernTreasury::Case::RequestedAction::Category::TaggedSymbol
            )
          ONBOARDING_BUSINESS_REGISTRY_VERIFICATION_FAILURE =
            T.let(
              :onboarding_business_registry_verification_failure,
              ModernTreasury::Case::RequestedAction::Category::TaggedSymbol
            )
          ONBOARDING_DATABASE_FAILURE =
            T.let(
              :onboarding_database_failure,
              ModernTreasury::Case::RequestedAction::Category::TaggedSymbol
            )
          ONBOARDING_PROOF_OF_ADDRESS_FAILURE =
            T.let(
              :onboarding_proof_of_address_failure,
              ModernTreasury::Case::RequestedAction::Category::TaggedSymbol
            )
          ONBOARDING_SSN_CHECK_FAILURE =
            T.let(
              :onboarding_ssn_check_failure,
              ModernTreasury::Case::RequestedAction::Category::TaggedSymbol
            )
          ONBOARDING_TIN_CHECK_FAILURE =
            T.let(
              :onboarding_tin_check_failure,
              ModernTreasury::Case::RequestedAction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Case::RequestedAction::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The field that needs to be corrected or provided, if any.
        module Field
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Case::RequestedAction::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              ModernTreasury::Case::RequestedAction::Field::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              ModernTreasury::Case::RequestedAction::Field::TaggedSymbol
            )
          LEGAL_ENTITY_DETAILS =
            T.let(
              :legal_entity_details,
              ModernTreasury::Case::RequestedAction::Field::TaggedSymbol
            )
          PROOF_OF_ADDRESS =
            T.let(
              :proof_of_address,
              ModernTreasury::Case::RequestedAction::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Case::RequestedAction::Field::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class ResolvedAction < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Case::ResolvedAction,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The category of the requested action.
        sig do
          returns(ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol)
        end
        attr_accessor :category

        sig { returns(Time) }
        attr_accessor :created_at

        # The field that needs to be corrected or provided, if any.
        sig do
          returns(
            T.nilable(ModernTreasury::Case::ResolvedAction::Field::TaggedSymbol)
          )
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
            category: ModernTreasury::Case::ResolvedAction::Category::OrSymbol,
            created_at: Time,
            field:
              T.nilable(ModernTreasury::Case::ResolvedAction::Field::OrSymbol),
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
              category:
                ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol,
              created_at: Time,
              field:
                T.nilable(
                  ModernTreasury::Case::ResolvedAction::Field::TaggedSymbol
                ),
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
              T.all(Symbol, ModernTreasury::Case::ResolvedAction::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONBOARDING_ARTICLES_OF_INCORPORATION_FAILURE =
            T.let(
              :onboarding_articles_of_incorporation_failure,
              ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol
            )
          ONBOARDING_BUSINESS_REGISTRY_VERIFICATION_FAILURE =
            T.let(
              :onboarding_business_registry_verification_failure,
              ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol
            )
          ONBOARDING_DATABASE_FAILURE =
            T.let(
              :onboarding_database_failure,
              ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol
            )
          ONBOARDING_PROOF_OF_ADDRESS_FAILURE =
            T.let(
              :onboarding_proof_of_address_failure,
              ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol
            )
          ONBOARDING_SSN_CHECK_FAILURE =
            T.let(
              :onboarding_ssn_check_failure,
              ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol
            )
          ONBOARDING_TIN_CHECK_FAILURE =
            T.let(
              :onboarding_tin_check_failure,
              ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Case::ResolvedAction::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The field that needs to be corrected or provided, if any.
        module Field
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Case::ResolvedAction::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              ModernTreasury::Case::ResolvedAction::Field::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              ModernTreasury::Case::ResolvedAction::Field::TaggedSymbol
            )
          LEGAL_ENTITY_DETAILS =
            T.let(
              :legal_entity_details,
              ModernTreasury::Case::ResolvedAction::Field::TaggedSymbol
            )
          PROOF_OF_ADDRESS =
            T.let(
              :proof_of_address,
              ModernTreasury::Case::ResolvedAction::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Case::ResolvedAction::Field::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The status of the case.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Case::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:open, ModernTreasury::Case::Status::TaggedSymbol)
        RESOLVED = T.let(:resolved, ModernTreasury::Case::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Case::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
