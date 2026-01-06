# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::BulkRequests#create
    class BulkRequestCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType]
      required :action_type, enum: -> { ModernTreasury::BulkRequestCreateParams::ActionType }

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType]
      required :resource_type, enum: -> { ModernTreasury::BulkRequestCreateParams::ResourceType }

      # @!attribute resources
      #   An array of objects where each object contains the input params for a single
      #   `action_type` request on a `resource_type` resource
      #
      #   @return [Array<ModernTreasury::Models::PaymentOrderAsyncCreate, ModernTreasury::Models::ExpectedPaymentCreate, ModernTreasury::Models::LedgerTransactionCreateRequest, ModernTreasury::Models::LedgerAccountCreateRequest, ModernTreasury::Models::TransactionCreate, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>]
      required :resources,
               -> { ModernTreasury::Internal::Type::ArrayOf[union: ModernTreasury::BulkRequestCreateParams::Resource] }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(action_type:, resource_type:, resources:, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::BulkRequestCreateParams} for more details.
      #
      #   @param action_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType] One of create, or update.
      #
      #   @param resource_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType] One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @param resources [Array<ModernTreasury::Models::PaymentOrderAsyncCreate, ModernTreasury::Models::ExpectedPaymentCreate, ModernTreasury::Models::LedgerTransactionCreateRequest, ModernTreasury::Models::LedgerAccountCreateRequest, ModernTreasury::Models::TransactionCreate, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>] An array of objects where each object contains the input params for a single `ac
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order
        LEDGER_ACCOUNT = :ledger_account
        LEDGER_TRANSACTION = :ledger_transaction
        EXPECTED_PAYMENT = :expected_payment
        TRANSACTION = :transaction
        TRANSACTION_LINE_ITEM = :transaction_line_item
        ENTITY_LINK = :entity_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Resource
        extend ModernTreasury::Internal::Type::Union

        variant -> { ModernTreasury::PaymentOrderAsyncCreate }

        variant -> { ModernTreasury::ExpectedPaymentCreate }

        variant -> { ModernTreasury::LedgerTransactionCreateRequest }

        variant -> { ModernTreasury::LedgerAccountCreateRequest }

        variant -> { ModernTreasury::TransactionCreate }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::ID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID }

        class ID < ModernTreasury::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   @param id [String]
        end

        class PaymentOrderUpdateRequestWithID < ModernTreasury::Models::PaymentOrderUpdate
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   @param id [String]
        end

        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::Models::ExpectedPaymentUpdate
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   @param id [String]
        end

        class TransactionUpdateRequestWithID < ModernTreasury::Models::TransactionUpdate
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   @param id [String]
        end

        class LedgerTransactionUpdateRequestWithID < ModernTreasury::Models::LedgerTransactionUpdate
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   @param id [String]
        end

        # @!method self.variants
        #   @return [Array(ModernTreasury::Models::PaymentOrderAsyncCreate, ModernTreasury::Models::ExpectedPaymentCreate, ModernTreasury::Models::LedgerTransactionCreateRequest, ModernTreasury::Models::LedgerAccountCreateRequest, ModernTreasury::Models::TransactionCreate, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID)]
      end
    end
  end
end
