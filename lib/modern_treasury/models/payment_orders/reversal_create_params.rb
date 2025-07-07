# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      # @see ModernTreasury::Resources::PaymentOrders::Reversals#create
      class ReversalCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute reason
        #   The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #   `incorrect_receiving_account`, `date_earlier_than_intended`,
        #   `date_later_than_intended`.
        #
        #   @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason]
        required :reason, enum: -> { ModernTreasury::PaymentOrders::ReversalCreateParams::Reason }

        # @!attribute ledger_transaction
        #   Specifies a ledger transaction object that will be created with the reversal. If
        #   the ledger transaction cannot be created, then the reversal creation will fail.
        #   The resulting ledger transaction will mirror the status of the reversal.
        #
        #   @return [ModernTreasury::Models::LedgerTransactionCreateRequest, nil]
        optional :ledger_transaction, -> { ModernTreasury::LedgerTransactionCreateRequest }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!method initialize(reason:, ledger_transaction: nil, metadata: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::PaymentOrders::ReversalCreateParams} for more details.
        #
        #   @param reason [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason] The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`, `in
        #
        #   @param ledger_transaction [ModernTreasury::Models::LedgerTransactionCreateRequest] Specifies a ledger transaction object that will be created with the reversal. If
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        # `incorrect_receiving_account`, `date_earlier_than_intended`,
        # `date_later_than_intended`.
        module Reason
          extend ModernTreasury::Internal::Type::Enum

          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
