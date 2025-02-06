# typed: strong

module ModernTreasury
  module Resources
    class PaymentOrders
      sig { returns(ModernTreasury::Resources::PaymentOrders::Reversals) }
      attr_reader :reversals

      sig do
        params(
          amount: Integer,
          direction: Symbol,
          originating_account_id: String,
          type: Symbol,
          accounting: ModernTreasury::Models::PaymentOrderCreateParams::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          charge_bearer: T.nilable(Symbol),
          currency: Symbol,
          description: T.nilable(String),
          documents: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::Document],
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type: Symbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          ledger_transaction: ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction,
          ledger_transaction_id: String,
          line_items: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LineItem],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          subtype: T.nilable(Symbol),
          transaction_monitoring_enabled: T::Boolean,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::PaymentOrder)
      end
      def create(
        amount:,
        direction:,
        originating_account_id:,
        type:,
        accounting: nil,
        accounting_category_id: nil,
        accounting_ledger_class_id: nil,
        charge_bearer: nil,
        currency: nil,
        description: nil,
        documents: nil,
        effective_date: nil,
        expires_at: nil,
        fallback_type: nil,
        foreign_exchange_contract: nil,
        foreign_exchange_indicator: nil,
        ledger_transaction: nil,
        ledger_transaction_id: nil,
        line_items: nil,
        metadata: nil,
        nsf_protected: nil,
        originating_party_name: nil,
        priority: nil,
        process_after: nil,
        purpose: nil,
        receiving_account: nil,
        receiving_account_id: nil,
        remittance_information: nil,
        send_remittance_advice: nil,
        statement_descriptor: nil,
        subtype: nil,
        transaction_monitoring_enabled: nil,
        ultimate_originating_party_identifier: nil,
        ultimate_originating_party_name: nil,
        ultimate_receiving_party_identifier: nil,
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::PaymentOrder)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          id: String,
          accounting: ModernTreasury::Models::PaymentOrderUpdateParams::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          amount: Integer,
          charge_bearer: T.nilable(Symbol),
          counterparty_id: T.nilable(String),
          currency: Symbol,
          description: T.nilable(String),
          direction: Symbol,
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type: Symbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          line_items: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::LineItem],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_account_id: String,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          status: Symbol,
          subtype: T.nilable(Symbol),
          type: Symbol,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::PaymentOrder)
      end
      def update(
        id,
        accounting: nil,
        accounting_category_id: nil,
        accounting_ledger_class_id: nil,
        amount: nil,
        charge_bearer: nil,
        counterparty_id: nil,
        currency: nil,
        description: nil,
        direction: nil,
        effective_date: nil,
        expires_at: nil,
        fallback_type: nil,
        foreign_exchange_contract: nil,
        foreign_exchange_indicator: nil,
        line_items: nil,
        metadata: nil,
        nsf_protected: nil,
        originating_account_id: nil,
        originating_party_name: nil,
        priority: nil,
        process_after: nil,
        purpose: nil,
        receiving_account: nil,
        receiving_account_id: nil,
        remittance_information: nil,
        send_remittance_advice: nil,
        statement_descriptor: nil,
        status: nil,
        subtype: nil,
        type: nil,
        ultimate_originating_party_identifier: nil,
        ultimate_originating_party_name: nil,
        ultimate_receiving_party_identifier: nil,
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_end: Date,
          created_at_start: Date,
          direction: Symbol,
          effective_date_end: Date,
          effective_date_start: Date,
          metadata: T::Hash[Symbol, String],
          originating_account_id: String,
          per_page: Integer,
          priority: Symbol,
          process_after_end: Time,
          process_after_start: Time,
          reference_number: String,
          status: Symbol,
          transaction_id: String,
          type: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Page[ModernTreasury::Models::PaymentOrder])
      end
      def list(
        after_cursor: nil,
        counterparty_id: nil,
        created_at_end: nil,
        created_at_start: nil,
        direction: nil,
        effective_date_end: nil,
        effective_date_start: nil,
        metadata: nil,
        originating_account_id: nil,
        per_page: nil,
        priority: nil,
        process_after_end: nil,
        process_after_start: nil,
        reference_number: nil,
        status: nil,
        transaction_id: nil,
        type: nil,
        request_options: {}
      )
      end

      sig do
        params(
          amount: Integer,
          direction: Symbol,
          originating_account_id: String,
          type: Symbol,
          accounting: ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          charge_bearer: T.nilable(Symbol),
          currency: Symbol,
          description: T.nilable(String),
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type: Symbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          ledger_transaction: ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction,
          ledger_transaction_id: String,
          line_items: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          subtype: T.nilable(Symbol),
          transaction_monitoring_enabled: T::Boolean,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::AsyncResponse)
      end
      def create_async(
        amount:,
        direction:,
        originating_account_id:,
        type:,
        accounting: nil,
        accounting_category_id: nil,
        accounting_ledger_class_id: nil,
        charge_bearer: nil,
        currency: nil,
        description: nil,
        effective_date: nil,
        expires_at: nil,
        fallback_type: nil,
        foreign_exchange_contract: nil,
        foreign_exchange_indicator: nil,
        ledger_transaction: nil,
        ledger_transaction_id: nil,
        line_items: nil,
        metadata: nil,
        nsf_protected: nil,
        originating_party_name: nil,
        priority: nil,
        process_after: nil,
        purpose: nil,
        receiving_account: nil,
        receiving_account_id: nil,
        remittance_information: nil,
        send_remittance_advice: nil,
        statement_descriptor: nil,
        subtype: nil,
        transaction_monitoring_enabled: nil,
        ultimate_originating_party_identifier: nil,
        ultimate_originating_party_name: nil,
        ultimate_receiving_party_identifier: nil,
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
