# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      # @return [ModernTreasury::Resources::PaymentOrders::Reversals]
      attr_reader :reversals

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentOrderCreateParams} for more details.
      #
      # Create a new Payment Order
      #
      # @overload create(amount:, direction:, originating_account_id:, type:, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, charge_bearer: nil, currency: nil, description: nil, documents: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, reconciled: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, subtype: nil, transaction_monitoring_enabled: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #
      # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      # @param direction [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
      #
      # @param originating_account_id [String] The ID of one of your organization's internal accounts.
      #
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
      #
      # @param accounting [ModernTreasury::Models::PaymentOrderCreateParams::Accounting]
      #
      # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
      #
      # @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be ac
      #
      # @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ChargeBearer, nil] The party that will pay the fees for the payment order. See https://docs.modernt
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency] Defaults to the currency of the originating account.
      #
      # @param description [String, nil] An optional description for internal use.
      #
      # @param documents [Array<ModernTreasury::Models::PaymentOrderCreateParams::Document>] An array of documents to be attached to the payment order. Note that if you atta
      #
      # @param effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
      #
      # @param expires_at [Time, nil] RFP payments require an expires_at. This value must be past the effective_date.
      #
      # @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::FallbackType] A payment type to fallback to if the original type is not valid for the receivin
      #
      # @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
      #
      # @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ForeignExchangeIndicator, nil] Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`
      #
      # @param ledger_transaction [ModernTreasury::Models::LedgerTransactionCreateRequest] Specifies a ledger transaction object that will be created with the payment orde
      #
      # @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a pendi
      #
      # @param line_items [Array<ModernTreasury::Models::PaymentOrderCreateParams::LineItem>] An array of line items that must sum up to the amount of the payment order.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
      #
      # @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank state
      #
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
      #
      # @param process_after [Time, nil] If present, Modern Treasury will not process the payment until after this time.
      #
      # @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the "InstrForDb
      #
      # @param receiving_account [ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
      #
      # @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
      #
      # @param reconciled [Boolean] True if the object is reconciled, false otherwise.
      #
      # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #
      # @param send_remittance_advice [Boolean, nil] Send an email to the counterparty when the payment order is sent to the bank. If
      #
      # @param statement_descriptor [String, nil] An optional descriptor which will appear in the receiver's statement. For `check
      #
      # @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil] An additional layer of classification for the type of payment order you are doin
      #
      # @param transaction_monitoring_enabled [Boolean] A flag that determines whether a payment order should go through transaction mon
      #
      # @param ultimate_originating_party_identifier [String, nil] Identifier of the ultimate originator of the payment order.
      #
      # @param ultimate_originating_party_name [String, nil] Name of the ultimate originator of the payment order.
      #
      # @param ultimate_receiving_party_identifier [String, nil] Identifier of the ultimate funds recipient.
      #
      # @param ultimate_receiving_party_name [String, nil] Name of the ultimate funds recipient.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      #
      # @see ModernTreasury::Models::PaymentOrderCreateParams
      def create(params)
        parsed, options = ModernTreasury::PaymentOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/payment_orders",
          body: parsed,
          model: ModernTreasury::PaymentOrder,
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
          model: ModernTreasury::PaymentOrder,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentOrderUpdateParams} for more details.
      #
      # Update a payment order
      #
      # @overload update(id, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, amount: nil, charge_bearer: nil, counterparty_id: nil, currency: nil, description: nil, direction: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_account_id: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, reconciled: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, status: nil, subtype: nil, type: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param accounting [ModernTreasury::Models::PaymentOrderUpdateParams::Accounting]
      #
      # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
      #
      # @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be ac
      #
      # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      # @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ChargeBearer, nil] The party that will pay the fees for the payment order. See https://docs.modernt
      #
      # @param counterparty_id [String, nil] Required when receiving_account_id is passed the ID of an external account.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency] Defaults to the currency of the originating account.
      #
      # @param description [String, nil] An optional description for internal use.
      #
      # @param direction [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
      #
      # @param effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
      #
      # @param expires_at [Time, nil] RFP payments require an expires_at. This value must be past the effective_date.
      #
      # @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::FallbackType] A payment type to fallback to if the original type is not valid for the receivin
      #
      # @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
      #
      # @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ForeignExchangeIndicator, nil] Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`
      #
      # @param line_items [Array<ModernTreasury::Models::PaymentOrderUpdateParams::LineItem>] An array of line items that must sum up to the amount of the payment order.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
      #
      # @param originating_account_id [String] The ID of one of your organization's internal accounts.
      #
      # @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank state
      #
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
      #
      # @param process_after [Time, nil] If present, Modern Treasury will not process the payment until after this time.
      #
      # @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the "InstrForDb
      #
      # @param receiving_account [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
      #
      # @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
      #
      # @param reconciled [Boolean] True if the object is reconciled, false otherwise.
      #
      # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #
      # @param send_remittance_advice [Boolean, nil] Send an email to the counterparty when the payment order is sent to the bank. If
      #
      # @param statement_descriptor [String, nil] An optional descriptor which will appear in the receiver's statement. For `check
      #
      # @param status [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Status] To cancel a payment order, use `cancelled`. To redraft a returned payment order,
      #
      # @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil] An additional layer of classification for the type of payment order you are doin
      #
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
      #
      # @param ultimate_originating_party_identifier [String, nil] This represents the identifier by which the person is known to the receiver when
      #
      # @param ultimate_originating_party_name [String, nil] This represents the name of the person that the payment is on behalf of when usi
      #
      # @param ultimate_receiving_party_identifier [String, nil] This represents the name of the merchant that the payment is being sent to when
      #
      # @param ultimate_receiving_party_name [String, nil] This represents the identifier by which the merchant is known to the person init
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      #
      # @see ModernTreasury::Models::PaymentOrderUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::PaymentOrderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/payment_orders/%1$s", id],
          body: parsed,
          model: ModernTreasury::PaymentOrder,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentOrderListParams} for more details.
      #
      # Get a list of all payment orders
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, created_at_end: nil, created_at_start: nil, direction: nil, effective_date_end: nil, effective_date_start: nil, external_id: nil, metadata: nil, originating_account_id: nil, per_page: nil, priority: nil, process_after_end: nil, process_after_start: nil, reference_number: nil, status: nil, transaction_id: nil, type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param counterparty_id [String]
      #
      # @param created_at_end [Date] An inclusive upper bound for searching created_at
      #
      # @param created_at_start [Date] An inclusive lower bound for searching created_at
      #
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #
      # @param effective_date_end [Date] An inclusive upper bound for searching effective_date
      #
      # @param effective_date_start [Date] An inclusive lower bound for searching effective_date
      #
      # @param external_id [String]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param originating_account_id [String]
      #
      # @param per_page [Integer]
      #
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
      #
      # @param process_after_end [Time] An inclusive upper bound for searching process_after
      #
      # @param process_after_start [Time] An inclusive lower bound for searching process_after
      #
      # @param reference_number [String] Query for records with the provided reference number
      #
      # @param status [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status]
      #
      # @param transaction_id [String] The ID of a transaction that the payment order has been reconciled to.
      #
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaymentOrder>]
      #
      # @see ModernTreasury::Models::PaymentOrderListParams
      def list(params = {})
        parsed, options = ModernTreasury::PaymentOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/payment_orders",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::PaymentOrder,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentOrderCreateAsyncParams} for more details.
      #
      # Create a new payment order asynchronously
      #
      # @overload create_async(amount:, direction:, originating_account_id:, type:, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, charge_bearer: nil, currency: nil, description: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, reconciled: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, subtype: nil, transaction_monitoring_enabled: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #
      # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      # @param direction [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
      #
      # @param originating_account_id [String] The ID of one of your organization's internal accounts.
      #
      # @param type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
      #
      # @param accounting [ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting]
      #
      # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
      #
      # @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be ac
      #
      # @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::ChargeBearer, nil] The party that will pay the fees for the payment order. See https://docs.modernt
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency] Defaults to the currency of the originating account.
      #
      # @param description [String, nil] An optional description for internal use.
      #
      # @param effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
      #
      # @param expires_at [Time, nil] RFP payments require an expires_at. This value must be past the effective_date.
      #
      # @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::FallbackType] A payment type to fallback to if the original type is not valid for the receivin
      #
      # @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
      #
      # @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::ForeignExchangeIndicator, nil] Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`
      #
      # @param ledger_transaction [ModernTreasury::Models::LedgerTransactionCreateRequest] Specifies a ledger transaction object that will be created with the payment orde
      #
      # @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a pendi
      #
      # @param line_items [Array<ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem>] An array of line items that must sum up to the amount of the payment order.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
      #
      # @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank state
      #
      # @param priority [Symbol, ModernTreasury::Models::PaymentOrderCreateAsyncParams::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
      #
      # @param process_after [Time, nil] If present, Modern Treasury will not process the payment until after this time.
      #
      # @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the "InstrForDb
      #
      # @param receiving_account [ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
      #
      # @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
      #
      # @param reconciled [Boolean] True if the object is reconciled, false otherwise.
      #
      # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #
      # @param send_remittance_advice [Boolean, nil] Send an email to the counterparty when the payment order is sent to the bank. If
      #
      # @param statement_descriptor [String, nil] An optional descriptor which will appear in the receiver's statement. For `check
      #
      # @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil] An additional layer of classification for the type of payment order you are doin
      #
      # @param transaction_monitoring_enabled [Boolean] A flag that determines whether a payment order should go through transaction mon
      #
      # @param ultimate_originating_party_identifier [String, nil] Identifier of the ultimate originator of the payment order.
      #
      # @param ultimate_originating_party_name [String, nil] Name of the ultimate originator of the payment order.
      #
      # @param ultimate_receiving_party_identifier [String, nil] Identifier of the ultimate funds recipient.
      #
      # @param ultimate_receiving_party_name [String, nil] Name of the ultimate funds recipient.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      #
      # @see ModernTreasury::Models::PaymentOrderCreateAsyncParams
      def create_async(params)
        parsed, options = ModernTreasury::PaymentOrderCreateAsyncParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/payment_orders/create_async",
          body: parsed,
          model: ModernTreasury::AsyncResponse,
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
