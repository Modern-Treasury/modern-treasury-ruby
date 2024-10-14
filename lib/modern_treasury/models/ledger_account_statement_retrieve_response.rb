# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountStatementRetrieveResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   The description of the ledger account statement.
      #   @return [String]
      required :description, String

      # @!attribute [rw] effective_at_lower_bound
      #   The inclusive lower bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [Time]
      required :effective_at_lower_bound, Time

      # @!attribute [rw] effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [Time]
      required :effective_at_upper_bound, Time

      # @!attribute [rw] ending_balance
      #   The pending, posted, and available balances for this ledger account at the `effective_at_upper_bound`. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance]
      required :ending_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance }

      # @!attribute [rw] ledger_account_id
      #   The id of the ledger account whose ledger entries are queried against, and its balances are computed as a result.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute [rw] ledger_account_lock_version
      #   Lock version of the ledger account at the time of statement generation.
      #   @return [Integer]
      required :ledger_account_lock_version, Integer

      # @!attribute [rw] ledger_account_normal_balance
      #   The normal balance of the ledger account.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :ledger_account_normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this ledger account statement belongs to.
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

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] starting_balance
      #   The pending, posted, and available balances for this ledger account at the `effective_at_lower_bound`. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance]
      required :starting_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      class EndingBalance < BaseModel
        # @!attribute [rw] available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance }

        # @!attribute [rw] pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance }

        # @!attribute [rw] posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance }

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

        # Create a new instance of EndingBalance from a Hash of raw data.
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

      class StartingBalance < BaseModel
        # @!attribute [rw] available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance }

        # @!attribute [rw] pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance }

        # @!attribute [rw] posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance }

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

        # Create a new instance of StartingBalance from a Hash of raw data.
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

      # Create a new instance of LedgerAccountStatementRetrieveResponse from a Hash of
      #   raw data.
      #
      # @overload initialize(id: nil, created_at: nil, description: nil, effective_at_lower_bound: nil, effective_at_upper_bound: nil, ending_balance: nil, ledger_account_id: nil, ledger_account_lock_version: nil, ledger_account_normal_balance: nil, ledger_id: nil, live_mode: nil, metadata: nil, object: nil, starting_balance: nil, updated_at: nil)
      # @param id [String]
      # @param created_at [String]
      # @param description [String] The description of the ledger account statement.
      # @param effective_at_lower_bound [String] The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      # @param effective_at_upper_bound [String] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      # @param ending_balance [Object] The pending, posted, and available balances for this ledger account at the
      #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      # @param ledger_account_id [String] The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      # @param ledger_account_lock_version [Integer] Lock version of the ledger account at the time of statement generation.
      # @param ledger_account_normal_balance [String] The normal balance of the ledger account.
      # @param ledger_id [String] The id of the ledger that this ledger account statement belongs to.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param object [String]
      # @param starting_balance [Object] The pending, posted, and available balances for this ledger account at the
      #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
