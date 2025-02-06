# typed: strong

module ModernTreasury
  module Models
    class VirtualAccount < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      attr_accessor :account_details

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :credit_ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :debit_ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(String) }
      attr_accessor :internal_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      attr_accessor :routing_details

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
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
        ).void
      end
      def initialize(
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
        override.returns(
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
