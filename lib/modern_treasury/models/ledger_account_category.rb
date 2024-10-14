# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategory < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] balances
      #   The pending, posted, and available balances for this ledger account category. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances]
      required :balances, -> { ModernTreasury::Models::LedgerAccountCategory::Balances }

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   The description of the ledger account category.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this account category belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   The name of the ledger account category.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] normal_balance
      #   The normal balance of the ledger account category.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      class Balances < BaseModel
        # @!attribute [rw] available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance }

        # @!attribute [rw] pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance]
        required :pending_balance,
                 lambda {
                   ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance
                 }

        # @!attribute [rw] posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance]
        required :posted_balance,
                 lambda {
                   ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance
                 }

        class AvailableBalance < BaseModel
          # @!attribute [rw] amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute [rw] currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute [rw] currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute [rw] debits
          #   @return [Integer]
          required :debits, Integer

          # Create a new instance of AvailableBalance from a Hash of raw data.
          #
          # @overload initialize(amount: nil, credits: nil, currency: nil, currency_exponent: nil, debits: nil)
          # @param amount [Integer]
          # @param credits [Integer]
          # @param currency [String] The currency of the ledger account.
          # @param currency_exponent [Integer] The currency exponent of the ledger account.
          # @param debits [Integer]
          def initialize(data = {})
            super
          end
        end

        class PendingBalance < BaseModel
          # @!attribute [rw] amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute [rw] currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute [rw] currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute [rw] debits
          #   @return [Integer]
          required :debits, Integer

          # Create a new instance of PendingBalance from a Hash of raw data.
          #
          # @overload initialize(amount: nil, credits: nil, currency: nil, currency_exponent: nil, debits: nil)
          # @param amount [Integer]
          # @param credits [Integer]
          # @param currency [String] The currency of the ledger account.
          # @param currency_exponent [Integer] The currency exponent of the ledger account.
          # @param debits [Integer]
          def initialize(data = {})
            super
          end
        end

        class PostedBalance < BaseModel
          # @!attribute [rw] amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute [rw] currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute [rw] currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute [rw] debits
          #   @return [Integer]
          required :debits, Integer

          # Create a new instance of PostedBalance from a Hash of raw data.
          #
          # @overload initialize(amount: nil, credits: nil, currency: nil, currency_exponent: nil, debits: nil)
          # @param amount [Integer]
          # @param credits [Integer]
          # @param currency [String] The currency of the ledger account.
          # @param currency_exponent [Integer] The currency exponent of the ledger account.
          # @param debits [Integer]
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of Balances from a Hash of raw data.
        #
        # @overload initialize(available_balance: nil, pending_balance: nil, posted_balance: nil)
        # @param available_balance [Object] The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        # @param pending_balance [Object] The pending_balance is the sum of all pending and posted entries.
        # @param posted_balance [Object] The posted_balance is the sum of all posted entries.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of LedgerAccountCategory from a Hash of raw data.
      #
      # @overload initialize(id: nil, balances: nil, created_at: nil, description: nil, discarded_at: nil, ledger_id: nil, live_mode: nil, metadata: nil, name: nil, normal_balance: nil, object: nil, updated_at: nil)
      # @param id [String]
      # @param balances [Object] The pending, posted, and available balances for this ledger account category.
      #   The posted balance is the sum of all posted entries on the account. The pending
      #   balance is the sum of all pending and posted entries on the account. The
      #   available balance is the posted incoming entries minus the sum of the pending
      #   and posted outgoing amounts.
      # @param created_at [String]
      # @param description [String] The description of the ledger account category.
      # @param discarded_at [String]
      # @param ledger_id [String] The id of the ledger that this account category belongs to.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param name [String] The name of the ledger account category.
      # @param normal_balance [String] The normal balance of the ledger account category.
      # @param object [String]
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
