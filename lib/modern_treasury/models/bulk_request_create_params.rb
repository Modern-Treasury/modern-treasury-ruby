# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkRequestCreateParams < ModernTreasury::BaseModel
      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType]
      required :action_type, enum: -> { ModernTreasury::Models::BulkRequestCreateParams::ActionType }

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType]
      required :resource_type, enum: -> { ModernTreasury::Models::BulkRequestCreateParams::ResourceType }

      # @!attribute resources
      #   An array of objects where each object contains the input params for a single `action_type` request on a `resource_type` resource
      #
      #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent0, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent1, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent2, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent3, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent4, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent5, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent6, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent7, ModernTreasury::Models::BulkRequestCreateParams::Resource::UnnamedTypeWithunionParent8>]
      required :resources, ModernTreasury::ArrayOf.new(ModernTreasury::Unknown)

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # One of create, or update.
      class ActionType < ModernTreasury::Enum
        CREATE = :create
        UPDATE = :update
        DELETE = :delete
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      class ResourceType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
      end
    end
  end
end
