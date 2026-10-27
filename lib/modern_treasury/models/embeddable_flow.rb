# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::EmbeddableFlows#create
    class EmbeddableFlow < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute client_token
      #
      #   @return [String]
      required :client_token, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute expires_at
      #
      #   @return [Time]
      required :expires_at, Time

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

      # @!attribute options
      #
      #   @return [ModernTreasury::Models::EmbeddableFlow::Options::UnionMember0, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember1, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2]
      required :options, union: -> { ModernTreasury::EmbeddableFlow::Options }

      # @!attribute status
      #   The current status of the underlying flow.
      #
      #   @return [Symbol, ModernTreasury::Models::EmbeddableFlow::Status]
      required :status, enum: -> { ModernTreasury::EmbeddableFlow::Status }

      # @!attribute template
      #
      #   @return [Symbol, ModernTreasury::Models::EmbeddableFlow::Template]
      required :template, enum: -> { ModernTreasury::EmbeddableFlow::Template }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, client_token:, created_at:, expires_at:, live_mode:, object:, options:, status:, template:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::EmbeddableFlow} for more details.
      #
      #   @param id [String]
      #
      #   @param client_token [String]
      #
      #   @param created_at [Time]
      #
      #   @param expires_at [Time]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param options [ModernTreasury::Models::EmbeddableFlow::Options::UnionMember0, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember1, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2]
      #
      #   @param status [Symbol, ModernTreasury::Models::EmbeddableFlow::Status] The current status of the underlying flow.
      #
      #   @param template [Symbol, ModernTreasury::Models::EmbeddableFlow::Template]
      #
      #   @param updated_at [Time]

      # @see ModernTreasury::Models::EmbeddableFlow#options
      module Options
        extend ModernTreasury::Internal::Type::Union

        variant -> { ModernTreasury::EmbeddableFlow::Options::UnionMember0 }

        variant -> { ModernTreasury::EmbeddableFlow::Options::UnionMember1 }

        variant -> { ModernTreasury::EmbeddableFlow::Options::UnionMember2 }

        class UnionMember0 < ModernTreasury::Internal::Type::BaseModel
          # @!attribute legal_entity_id
          #
          #   @return [String]
          required :legal_entity_id, String

          # @!attribute type
          #
          #   @return [Symbol, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember0::Type]
          required :type, enum: -> { ModernTreasury::EmbeddableFlow::Options::UnionMember0::Type }

          # @!method initialize(legal_entity_id:, type:)
          #   @param legal_entity_id [String]
          #   @param type [Symbol, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember0::Type]

          # @see ModernTreasury::Models::EmbeddableFlow::Options::UnionMember0#type
          module Type
            extend ModernTreasury::Internal::Type::Enum

            INDIVIDUAL = :individual

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class UnionMember1 < ModernTreasury::Internal::Type::BaseModel
          # @!attribute counterparty_id
          #
          #   @return [String, nil]
          required :counterparty_id, String, nil?: true

          # @!attribute external_account_id
          #
          #   @return [String, nil]
          required :external_account_id, String, nil?: true

          # @!attribute payment_types
          #
          #   @return [Array<String>]
          required :payment_types, ModernTreasury::Internal::Type::ArrayOf[String]

          # @!attribute receiving_countries
          #
          #   @return [Array<String>]
          required :receiving_countries, ModernTreasury::Internal::Type::ArrayOf[String]

          # @!method initialize(counterparty_id:, external_account_id:, payment_types:, receiving_countries:)
          #   @param counterparty_id [String, nil]
          #   @param external_account_id [String, nil]
          #   @param payment_types [Array<String>]
          #   @param receiving_countries [Array<String>]
        end

        class UnionMember2 < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute counterparty_id
          #
          #   @return [String, nil]
          required :counterparty_id, String, nil?: true

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!attribute direction
          #
          #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
          required :direction, enum: -> { ModernTreasury::TransactionDirection }

          # @!attribute due_date
          #
          #   @return [Date, nil]
          required :due_date, Date, nil?: true

          # @!attribute effective_date_selection_enabled
          #
          #   @return [Boolean]
          required :effective_date_selection_enabled, ModernTreasury::Internal::Type::Boolean

          # @!attribute existing_external_accounts_filter
          #
          #   @return [Symbol, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter, nil]
          required :existing_external_accounts_filter,
                   enum: -> {
                     ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter
                   },
                   nil?: true

          # @!attribute external_account_collection
          #
          #   @return [Symbol, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection]
          required :external_account_collection,
                   enum: -> { ModernTreasury::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection }

          # @!attribute originating_account_id
          #
          #   @return [String]
          required :originating_account_id, String

          # @!attribute payment_order_id
          #
          #   @return [String, nil]
          required :payment_order_id, String, nil?: true

          # @!attribute receiving_account_id
          #
          #   @return [String, nil]
          required :receiving_account_id, String, nil?: true

          # @!attribute selected_effective_date
          #
          #   @return [Date, nil]
          required :selected_effective_date, Date, nil?: true

          # @!method initialize(amount:, counterparty_id:, currency:, direction:, due_date:, effective_date_selection_enabled:, existing_external_accounts_filter:, external_account_collection:, originating_account_id:, payment_order_id:, receiving_account_id:, selected_effective_date:)
          #   @param amount [Integer]
          #   @param counterparty_id [String, nil]
          #   @param currency [String]
          #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
          #   @param due_date [Date, nil]
          #   @param effective_date_selection_enabled [Boolean]
          #   @param existing_external_accounts_filter [Symbol, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2::ExistingExternalAccountsFilter, nil]
          #   @param external_account_collection [Symbol, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2::ExternalAccountCollection]
          #   @param originating_account_id [String]
          #   @param payment_order_id [String, nil]
          #   @param receiving_account_id [String, nil]
          #   @param selected_effective_date [Date, nil]

          # @see ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2#existing_external_accounts_filter
          module ExistingExternalAccountsFilter
            extend ModernTreasury::Internal::Type::Enum

            VERIFIED = :verified

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2#external_account_collection
          module ExternalAccountCollection
            extend ModernTreasury::Internal::Type::Enum

            ENABLED = :enabled
            DISABLED = :disabled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(ModernTreasury::Models::EmbeddableFlow::Options::UnionMember0, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember1, ModernTreasury::Models::EmbeddableFlow::Options::UnionMember2)]
      end

      # The current status of the underlying flow.
      #
      # @see ModernTreasury::Models::EmbeddableFlow#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see ModernTreasury::Models::EmbeddableFlow#template
      module Template
        extend ModernTreasury::Internal::Type::Enum

        LEGAL_ENTITY_ONBOARDING = :legal_entity_onboarding
        ACCOUNT_COLLECTION = :account_collection
        PAYMENT = :payment

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
