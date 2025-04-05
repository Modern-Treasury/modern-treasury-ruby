# typed: strong

module ModernTreasury
  module Models
    class VirtualAccount < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # An array of account detail objects.
      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      attr_accessor :account_details

      # The ID of a counterparty that the virtual account belongs to. Optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      # The ID of a credit normal ledger account. When money enters the virtual account,
      # this ledger account will be credited. Must be accompanied by a
      # debit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      attr_accessor :credit_ledger_account_id

      # The ID of a debit normal ledger account. When money enters the virtual account,
      # this ledger account will be debited. Must be accompanied by a
      # credit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      attr_accessor :debit_ledger_account_id

      # An optional free-form description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The ID of the internal account that the virtual account is in.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # If the virtual account links to a ledger account in Modern Treasury, the id of
      # the ledger account will be populated here.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The name of the virtual account.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      # An array of routing detail objects. These will be the routing details of the
      # internal account.
      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      attr_accessor :routing_details

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_details: T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Internal::AnyHash)],
          counterparty_id: T.nilable(String),
          created_at: Time,
          credit_ledger_account_id: T.nilable(String),
          debit_ledger_account_id: T.nilable(String),
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          internal_account_id: String,
          ledger_account_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          object: String,
          routing_details: T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Internal::AnyHash)],
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_details:,
        counterparty_id:,
        created_at:,
        credit_ledger_account_id:,
        debit_ledger_account_id:,
        description:,
        discarded_at:,
        internal_account_id:,
        ledger_account_id:,
        live_mode:,
        metadata:,
        name:,
        object:,
        routing_details:,
        updated_at:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              account_details: T::Array[ModernTreasury::Models::AccountDetail],
              counterparty_id: T.nilable(String),
              created_at: Time,
              credit_ledger_account_id: T.nilable(String),
              debit_ledger_account_id: T.nilable(String),
              description: T.nilable(String),
              discarded_at: T.nilable(Time),
              internal_account_id: String,
              ledger_account_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              name: String,
              object: String,
              routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
              updated_at: Time
            }
          )
      end
      def to_hash; end
    end
  end
end
