# typed: strong

module ModernTreasury
  module Models
    class EmbeddableFlow < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::EmbeddableFlow,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :client_token

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Time) }
      attr_accessor :expires_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(ModernTreasury::EmbeddableFlow::Options::Variants) }
      attr_accessor :options

      # The current status of the underlying flow.
      sig { returns(ModernTreasury::EmbeddableFlow::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(ModernTreasury::EmbeddableFlow::Template::TaggedSymbol) }
      attr_accessor :template

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          client_token: String,
          created_at: Time,
          expires_at: Time,
          live_mode: T::Boolean,
          object: String,
          options:
            T.any(
              ModernTreasury::EmbeddableFlow::Options::UnionMember0::OrHash,
              ModernTreasury::EmbeddableFlow::Options::UnionMember1::OrHash,
              ModernTreasury::EmbeddableFlow::Options::UnionMember2::OrHash
            ),
          status: ModernTreasury::EmbeddableFlow::Status::OrSymbol,
          template: ModernTreasury::EmbeddableFlow::Template::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        client_token:,
        created_at:,
        expires_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        options:,
        # The current status of the underlying flow.
        status:,
        template:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            client_token: String,
            created_at: Time,
            expires_at: Time,
            live_mode: T::Boolean,
            object: String,
            options: ModernTreasury::EmbeddableFlow::Options::Variants,
            status: ModernTreasury::EmbeddableFlow::Status::TaggedSymbol,
            template: ModernTreasury::EmbeddableFlow::Template::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      module Options
        extend ModernTreasury::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ModernTreasury::EmbeddableFlow::Options::UnionMember0,
              ModernTreasury::EmbeddableFlow::Options::UnionMember1,
              ModernTreasury::EmbeddableFlow::Options::UnionMember2
            )
          end

        class UnionMember0 < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::EmbeddableFlow::Options::UnionMember0,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :legal_entity_id

          sig do
            returns(
              ModernTreasury::EmbeddableFlow::Options::UnionMember0::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              legal_entity_id: String,
              type:
                ModernTreasury::EmbeddableFlow::Options::UnionMember0::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(legal_entity_id:, type:)
          end

          sig do
            override.returns(
              {
                legal_entity_id: String,
                type:
                  ModernTreasury::EmbeddableFlow::Options::UnionMember0::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::EmbeddableFlow::Options::UnionMember0::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :individual,
                ModernTreasury::EmbeddableFlow::Options::UnionMember0::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::EmbeddableFlow::Options::UnionMember0::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class UnionMember1 < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::EmbeddableFlow::Options::UnionMember1,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :counterparty_id

          sig { returns(T.nilable(String)) }
          attr_accessor :external_account_id

          sig { returns(T::Array[String]) }
          attr_accessor :payment_types

          sig { returns(T::Array[String]) }
          attr_accessor :receiving_countries

          sig do
            params(
              counterparty_id: T.nilable(String),
              external_account_id: T.nilable(String),
              payment_types: T::Array[String],
              receiving_countries: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            counterparty_id:,
            external_account_id:,
            payment_types:,
            receiving_countries:
          )
          end

          sig do
            override.returns(
              {
                counterparty_id: T.nilable(String),
                external_account_id: T.nilable(String),
                payment_types: T::Array[String],
                receiving_countries: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end

        class UnionMember2 < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::EmbeddableFlow::Options::UnionMember2,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(T.nilable(String)) }
          attr_accessor :counterparty_id

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
          attr_accessor :direction

          sig { returns(T.nilable(Date)) }
          attr_accessor :due_date

          sig { returns(T::Boolean) }
          attr_accessor :effective_date_selection_enabled

          sig do
            returns(
              T.nilable(
                ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter::TaggedSymbol
              )
            )
          end
          attr_accessor :existing_external_accounts_filter

          sig do
            returns(
              ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection::TaggedSymbol
            )
          end
          attr_accessor :external_account_collection

          sig { returns(String) }
          attr_accessor :originating_account_id

          sig { returns(T.nilable(String)) }
          attr_accessor :payment_order_id

          sig { returns(T.nilable(String)) }
          attr_accessor :receiving_account_id

          sig { returns(T.nilable(Date)) }
          attr_accessor :selected_effective_date

          sig do
            params(
              amount: Integer,
              counterparty_id: T.nilable(String),
              currency: String,
              direction: ModernTreasury::TransactionDirection::OrSymbol,
              due_date: T.nilable(Date),
              effective_date_selection_enabled: T::Boolean,
              existing_external_accounts_filter:
                T.nilable(
                  ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter::OrSymbol
                ),
              external_account_collection:
                ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection::OrSymbol,
              originating_account_id: String,
              payment_order_id: T.nilable(String),
              receiving_account_id: T.nilable(String),
              selected_effective_date: T.nilable(Date)
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            counterparty_id:,
            currency:,
            direction:,
            due_date:,
            effective_date_selection_enabled:,
            existing_external_accounts_filter:,
            external_account_collection:,
            originating_account_id:,
            payment_order_id:,
            receiving_account_id:,
            selected_effective_date:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                counterparty_id: T.nilable(String),
                currency: String,
                direction: ModernTreasury::TransactionDirection::TaggedSymbol,
                due_date: T.nilable(Date),
                effective_date_selection_enabled: T::Boolean,
                existing_external_accounts_filter:
                  T.nilable(
                    ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter::TaggedSymbol
                  ),
                external_account_collection:
                  ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection::TaggedSymbol,
                originating_account_id: String,
                payment_order_id: T.nilable(String),
                receiving_account_id: T.nilable(String),
                selected_effective_date: T.nilable(Date)
              }
            )
          end
          def to_hash
          end

          module ExistingExternalAccountsFilter
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VERIFIED =
              T.let(
                :verified,
                ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ExternalAccountCollection
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLED =
              T.let(
                :enabled,
                ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection::TaggedSymbol
              )
            DISABLED =
              T.let(
                :disabled,
                ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[ModernTreasury::EmbeddableFlow::Options::Variants]
          )
        end
        def self.variants
        end
      end

      # The current status of the underlying flow.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::EmbeddableFlow::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::EmbeddableFlow::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::EmbeddableFlow::Status::TaggedSymbol
          )
        EXPIRED =
          T.let(:expired, ModernTreasury::EmbeddableFlow::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, ModernTreasury::EmbeddableFlow::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::EmbeddableFlow::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Template
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::EmbeddableFlow::Template)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEGAL_ENTITY_ONBOARDING =
          T.let(
            :legal_entity_onboarding,
            ModernTreasury::EmbeddableFlow::Template::TaggedSymbol
          )
        ACCOUNT_COLLECTION =
          T.let(
            :account_collection,
            ModernTreasury::EmbeddableFlow::Template::TaggedSymbol
          )
        PAYMENT =
          T.let(
            :payment,
            ModernTreasury::EmbeddableFlow::Template::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::EmbeddableFlow::Template::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
