# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::EmbeddableFlows#create
    class EmbeddableFlowCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute options
      #   The parameters for the selected template's flow.
      #
      #   @return [ModernTreasury::Models::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type]
      required :options, union: -> { ModernTreasury::EmbeddableFlowCreateParams::Options }

      # @!attribute template
      #
      #   @return [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Template]
      required :template, enum: -> { ModernTreasury::EmbeddableFlowCreateParams::Template }

      # @!method initialize(options:, template:, request_options: {})
      #   @param options [ModernTreasury::Models::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type] The parameters for the selected template's flow.
      #
      #   @param template [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Template]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The parameters for the selected template's flow.
      module Options
        extend ModernTreasury::Internal::Type::Union

        variant -> { ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest }

        variant -> { ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest }

        variant -> { ModernTreasury::EmbeddableFlowCreateParams::Options::Type }

        class AccountCollectionFlowCreateRequest < ModernTreasury::Internal::Type::BaseModel
          # @!attribute counterparty_id
          #   Required.
          #
          #   @return [String]
          required :counterparty_id, String

          # @!attribute payment_types
          #
          #   @return [Array<String>]
          required :payment_types, ModernTreasury::Internal::Type::ArrayOf[String]

          # @!attribute receiving_countries
          #
          #   @return [Array<Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry>, nil]
          optional :receiving_countries,
                   -> do
                     ModernTreasury::Internal::Type::ArrayOf[
                       enum: ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry
                     ]
                   end

          # @!method initialize(counterparty_id:, payment_types:, receiving_countries: nil)
          #   @param counterparty_id [String] Required.
          #
          #   @param payment_types [Array<String>]
          #
          #   @param receiving_countries [Array<Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry>]

          # Optional. Array of 3-digit ISO country codes.
          module ReceivingCountry
            extend ModernTreasury::Internal::Type::Enum

            USA = :USA
            AUS = :AUS
            BEL = :BEL
            CAN = :CAN
            CHL = :CHL
            CHN = :CHN
            COL = :COL
            FRA = :FRA
            DEU = :DEU
            HKG = :HKG
            IND = :IND
            IRL = :IRL
            ITA = :ITA
            MEX = :MEX
            NLD = :NLD
            PER = :PER
            ESP = :ESP
            GBR = :GBR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PaymentFlowCreateRequest < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #   Required. Value in specified currency's smallest unit. e.g. $10 would be
          #   represented as 1000. Can be any integer up to 36 digits.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute counterparty_id
          #   Required. The ID of a counterparty associated with the payment. As part of the
          #   payment workflow an external account will be associated with this model.
          #
          #   @return [String]
          required :counterparty_id, String

          # @!attribute currency
          #   Required. The currency of the payment.
          #
          #   @return [String]
          required :currency, String

          # @!attribute direction
          #   Required. Describes the direction money is flowing in the transaction. Can only
          #   be `debit`. A `debit` pulls money from someone else's account to your own.
          #
          #   @return [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction]
          required :direction,
                   enum: -> { ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction }

          # @!attribute originating_account_id
          #   Required. The ID of one of your organization's internal accounts.
          #
          #   @return [String]
          required :originating_account_id, String

          # @!attribute due_date
          #   Optional. Can only be passed in when `effective_date_selection_enabled` is
          #   `true`. When set, the due date is shown to your end-user in the pre-built UI as
          #   they are selecting a payment `effective_date`.
          #
          #   @return [Date, nil]
          optional :due_date, Date

          # @!method initialize(amount:, counterparty_id:, currency:, direction:, originating_account_id:, due_date: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest}
          #   for more details.
          #
          #   @param amount [Integer] Required. Value in specified currency's smallest unit. e.g. $10 would be represe
          #
          #   @param counterparty_id [String] Required. The ID of a counterparty associated with the payment. As part of the p
          #
          #   @param currency [String] Required. The currency of the payment.
          #
          #   @param direction [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction] Required. Describes the direction money is flowing in the transaction. Can only
          #
          #   @param originating_account_id [String] Required. The ID of one of your organization's internal accounts.
          #
          #   @param due_date [Date] Optional. Can only be passed in when `effective_date_selection_enabled` is `true

          # Required. Describes the direction money is flowing in the transaction. Can only
          # be `debit`. A `debit` pulls money from someone else's account to your own.
          #
          # @see ModernTreasury::Models::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest#direction
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            CREDIT = :credit
            DEBIT = :debit

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Type < ModernTreasury::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type::Type]
          required :type, enum: -> { ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type }

          # @!method initialize(type:)
          #   @param type [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type::Type]

          # @see ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type#type
          module Type
            extend ModernTreasury::Internal::Type::Enum

            INDIVIDUAL = :individual

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(ModernTreasury::Models::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type)]
      end

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
