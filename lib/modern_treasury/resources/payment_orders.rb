# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      # @return [ModernTreasury::Resources::PaymentOrders::Reversals]
      attr_reader :reversals

      # Create a new Payment Order
      #
      # @overload create(amount:, direction:, originating_account_id:, type:, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, charge_bearer: nil, currency: nil, description: nil, documents: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, subtype: nil, transaction_monitoring_enabled: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param direction [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Direction]
      # @param originating_account_id [String]
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderType]
      # @param accounting [ModernTreasury::Models::PaymentOrderCreateParams::Accounting]
      # @param accounting_category_id [String, nil]
      # @param accounting_ledger_class_id [String, nil]
      # @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ChargeBearer, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency]
      # @param description [String, nil]
      # @param documents [Array<ModernTreasury::Models::PaymentOrderCreateParams::Document>]
      # @param effective_date [Date]
      # @param expires_at [Time, nil]
      # @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::FallbackType]
      # @param foreign_exchange_contract [String, nil]
      # @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ForeignExchangeIndicator, nil]
      # @param ledger_transaction [ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction]
      # @param ledger_transaction_id [String]
      # @param line_items [Array<ModernTreasury::Models::PaymentOrderCreateParams::LineItem>]
      # @param metadata [Hash{Symbol=>String}]
      # @param nsf_protected [Boolean]
      # @param originating_party_name [String, nil]
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Priority]
      # @param process_after [Time, nil]
      # @param purpose [String, nil]
      # @param receiving_account [ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount]
      # @param receiving_account_id [String]
      # @param remittance_information [String, nil]
      # @param send_remittance_advice [Boolean, nil]
      # @param statement_descriptor [String, nil]
      # @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
      # @param transaction_monitoring_enabled [Boolean]
      # @param ultimate_originating_party_identifier [String, nil]
      # @param ultimate_originating_party_name [String, nil]
      # @param ultimate_receiving_party_identifier [String, nil]
      # @param ultimate_receiving_party_name [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      #
      # @see ModernTreasury::Models::PaymentOrderCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::PaymentOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/payment_orders",
          body: parsed,
          model: ModernTreasury::Models::PaymentOrder,
          options: options
        )
      end

      # Get details on a single payment order
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      #
      # @see ModernTreasury::Models::PaymentOrderRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/payment_orders/%1$s", id],
          model: ModernTreasury::Models::PaymentOrder,
          options: params[:request_options]
        )
      end

      # Update a payment order
      #
      # @overload update(id, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, amount: nil, charge_bearer: nil, counterparty_id: nil, currency: nil, description: nil, direction: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_account_id: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, status: nil, subtype: nil, type: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #
      # @param id [String]
      # @param accounting [ModernTreasury::Models::PaymentOrderUpdateParams::Accounting]
      # @param accounting_category_id [String, nil]
      # @param accounting_ledger_class_id [String, nil]
      # @param amount [Integer]
      # @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ChargeBearer, nil]
      # @param counterparty_id [String, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency]
      # @param description [String, nil]
      # @param direction [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Direction]
      # @param effective_date [Date]
      # @param expires_at [Time, nil]
      # @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::FallbackType]
      # @param foreign_exchange_contract [String, nil]
      # @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ForeignExchangeIndicator, nil]
      # @param line_items [Array<ModernTreasury::Models::PaymentOrderUpdateParams::LineItem>]
      # @param metadata [Hash{Symbol=>String}]
      # @param nsf_protected [Boolean]
      # @param originating_account_id [String]
      # @param originating_party_name [String, nil]
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Priority]
      # @param process_after [Time, nil]
      # @param purpose [String, nil]
      # @param receiving_account [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount]
      # @param receiving_account_id [String]
      # @param remittance_information [String, nil]
      # @param send_remittance_advice [Boolean, nil]
      # @param statement_descriptor [String, nil]
      # @param status [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Status]
      # @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderType]
      # @param ultimate_originating_party_identifier [String, nil]
      # @param ultimate_originating_party_name [String, nil]
      # @param ultimate_receiving_party_identifier [String, nil]
      # @param ultimate_receiving_party_name [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      #
      # @see ModernTreasury::Models::PaymentOrderUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::PaymentOrderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/payment_orders/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::PaymentOrder,
          options: options
        )
      end

      # Get a list of all payment orders
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, created_at_end: nil, created_at_start: nil, direction: nil, effective_date_end: nil, effective_date_start: nil, metadata: nil, originating_account_id: nil, per_page: nil, priority: nil, process_after_end: nil, process_after_start: nil, reference_number: nil, status: nil, transaction_id: nil, type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param counterparty_id [String]
      # @param created_at_end [Date]
      # @param created_at_start [Date]
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param effective_date_end [Date]
      # @param effective_date_start [Date]
      # @param metadata [Hash{Symbol=>String}]
      # @param originating_account_id [String]
      # @param per_page [Integer]
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority]
      # @param process_after_end [Time]
      # @param process_after_start [Time]
      # @param reference_number [String]
      # @param status [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status]
      # @param transaction_id [String]
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaymentOrder>]
      #
      # @see ModernTreasury::Models::PaymentOrderListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::PaymentOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/payment_orders",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::PaymentOrder,
          options: options
        )
      end

      # Create a new payment order asynchronously
      #
      # @overload create_async(amount:, direction:, originating_account_id:, type:, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, charge_bearer: nil, currency: nil, description: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, subtype: nil, transaction_monitoring_enabled: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param direction [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::Direction]
      # @param originating_account_id [String]
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderType]
      # @param accounting [ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting]
      # @param accounting_category_id [String, nil]
      # @param accounting_ledger_class_id [String, nil]
      # @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::ChargeBearer, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency]
      # @param description [String, nil]
      # @param effective_date [Date]
      # @param expires_at [Time, nil]
      # @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::FallbackType]
      # @param foreign_exchange_contract [String, nil]
      # @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::ForeignExchangeIndicator, nil]
      # @param ledger_transaction [ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction]
      # @param ledger_transaction_id [String]
      # @param line_items [Array<ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem>]
      # @param metadata [Hash{Symbol=>String}]
      # @param nsf_protected [Boolean]
      # @param originating_party_name [String, nil]
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::Priority]
      # @param process_after [Time, nil]
      # @param purpose [String, nil]
      # @param receiving_account [ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount]
      # @param receiving_account_id [String]
      # @param remittance_information [String, nil]
      # @param send_remittance_advice [Boolean, nil]
      # @param statement_descriptor [String, nil]
      # @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
      # @param transaction_monitoring_enabled [Boolean]
      # @param ultimate_originating_party_identifier [String, nil]
      # @param ultimate_originating_party_name [String, nil]
      # @param ultimate_receiving_party_identifier [String, nil]
      # @param ultimate_receiving_party_name [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      #
      # @see ModernTreasury::Models::PaymentOrderCreateAsyncParams
      def create_async(params)
        parsed, options = ModernTreasury::Models::PaymentOrderCreateAsyncParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/payment_orders/create_async",
          body: parsed,
          model: ModernTreasury::Models::AsyncResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @reversals = ModernTreasury::Resources::PaymentOrders::Reversals.new(client: client)
      end
    end
  end
end
