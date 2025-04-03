# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerTransactions#update
    class LedgerTransactionUpdateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for
      #     reporting purposes.
      #
      #   @return [Time, nil]
      optional :effective_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :effective_at

      # @!attribute [r] ledger_entries
      #   An array of ledger entry objects.
      #
      #   @return [Array<ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry>, nil]
      optional :ledger_entries,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry] }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry>]
      #   attr_writer :ledger_entries

      # @!attribute [r] ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledgerable_id

      # @!attribute [r] ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the type will be populated here, otherwise null. This can be one of
      #     payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #     reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType, nil]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType]
      #   attr_writer :ledgerable_type

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] status
      #   To post a ledger transaction at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param description [String, nil]
      #   # @param effective_at [Time]
      #   # @param ledger_entries [Array<ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry>]
      #   # @param ledgerable_id [String]
      #   # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     description: nil,
      #     effective_at: nil,
      #     ledger_entries: nil,
      #     ledgerable_id: nil,
      #     ledgerable_type: nil,
      #     metadata: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
        # @!attribute amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented
        #     as 1000. Can be any integer up to 36 digits.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute direction
        #   One of `credit`, `debit`. Describes the direction money is flowing in the
        #     transaction. A `credit` moves money from your account to someone else's. A
        #     `debit` pulls money from someone else's account to your own. Note that wire,
        #     rtp, and check payments will always be `credit`.
        #
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

        # @!attribute ledger_account_id
        #   The ledger account that this ledger entry is associated with.
        #
        #   @return [String]
        required :ledger_account_id, String

        # @!attribute available_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #     account’s available balance. If any of these conditions would be false after the
        #     transaction is created, the entire call will fail with error code 422.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :available_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

        # @!attribute lock_version
        #   Lock version of the ledger account. This can be passed when creating a ledger
        #     transaction to only succeed if no ledger transactions have posted since the
        #     given version. See our post about Designing the Ledgers API with Optimistic
        #     Locking for more details.
        #
        #   @return [Integer, nil]
        optional :lock_version, Integer, nil?: true

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute pending_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #     account’s pending balance. If any of these conditions would be false after the
        #     transaction is created, the entire call will fail with error code 422.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :pending_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

        # @!attribute posted_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #     account’s posted balance. If any of these conditions would be false after the
        #     transaction is created, the entire call will fail with error code 422.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :posted_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

        # @!attribute show_resulting_ledger_account_balances
        #   If true, response will include the balance of the associated ledger account for
        #     the entry.
        #
        #   @return [Boolean, nil]
        optional :show_resulting_ledger_account_balances,
                 ModernTreasury::Internal::Type::BooleanModel,
                 nil?: true

        # @!parse
        #   # @param amount [Integer]
        #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
        #   # @param ledger_account_id [String]
        #   # @param available_balance_amount [Hash{Symbol=>Integer}, nil]
        #   # @param lock_version [Integer, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param pending_balance_amount [Hash{Symbol=>Integer}, nil]
        #   # @param posted_balance_amount [Hash{Symbol=>Integer}, nil]
        #   # @param show_resulting_ledger_account_balances [Boolean, nil]
        #   #
        #   def initialize(
        #     amount:,
        #     direction:,
        #     ledger_account_id:,
        #     available_balance_amount: nil,
        #     lock_version: nil,
        #     metadata: nil,
        #     pending_balance_amount: nil,
        #     posted_balance_amount: nil,
        #     show_resulting_ledger_account_balances: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
      end

      # If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   reversal.
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # To post a ledger transaction at creation, use `posted`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
