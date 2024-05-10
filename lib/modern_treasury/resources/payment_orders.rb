# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      # @return [ModernTreasury::Resources::PaymentOrders::Reversals]
      attr_reader :reversals

      def initialize(client:)
        @client = client
        @reversals = ModernTreasury::Resources::PaymentOrders::Reversals.new(client: client)
      end

      # Create a new Payment Order
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented as
      #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      # @option params [Symbol] :direction One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      # @option params [String] :originating_account_id The ID of one of your organization's internal accounts.
      # @option params [Symbol] :type One of `ach`, `bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`,
      #   `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`,
      #   `sic`, `signet`, `provexchange`, `zengin`.
      # @option params [Accounting] :accounting
      # @option params [String] :accounting_category_id The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      # @option params [String] :accounting_ledger_class_id The ID of one of your accounting ledger classes. Note that these will only be
      #   accessible if your accounting system has been connected.
      # @option params [Symbol] :charge_bearer The party that will pay the fees for the payment order. Only applies to wire
      #   payment orders. Can be one of shared, sender, or receiver, which correspond
      #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      # @option params [Symbol] :currency Defaults to the currency of the originating account.
      # @option params [String] :description An optional description for internal use.
      # @option params [Array<Document>] :documents An array of documents to be attached to the payment order. Note that if you
      #   attach documents, the request's content type must be `multipart/form-data`.
      # @option params [String] :effective_date Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      # @option params [String] :expires_at RFP payments require an expires_at. This value must be past the effective_date.
      # @option params [Symbol] :fallback_type A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (type=rtp and fallback_type=ach)
      # @option params [String] :foreign_exchange_contract If present, indicates a specific foreign exchange contract number that has been
      #   generated by your financial institution.
      # @option params [Symbol] :foreign_exchange_indicator Indicates the type of FX transfer to initiate, can be either
      #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #   currency matches the originating account currency.
      # @option params [LedgerTransaction] :ledger_transaction Specifies a ledger transaction object that will be created with the payment
      #   order. If the ledger transaction cannot be created, then the payment order
      #   creation will fail. The resulting ledger transaction will mirror the status of
      #   the payment order.
      # @option params [String] :ledger_transaction_id Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #   pending ledger transaction can be attached upon payment order creation. Once the
      #   payment order is created, the status of the ledger transaction tracks the
      #   payment order automatically.
      # @option params [Array<LineItem>] :line_items An array of line items that must sum up to the amount of the payment order.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Boolean] :nsf_protected A boolean to determine if NSF Protection is enabled for this payment order. Note
      #   that this setting must also be turned on in your organization settings page.
      # @option params [String] :originating_party_name If present, this will replace your default company name on receiver's bank
      #   statement. This field can only be used for ACH payments currently. For ACH, only
      #   the first 16 characters of this string will be used. Any additional characters
      #   will be truncated.
      # @option params [Symbol] :priority Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      # @option params [String] :process_after If present, Modern Treasury will not process the payment until after this time.
      #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
      #   take precedence and `effective_date` will automatically update to reflect the
      #   earliest possible sending date after `process_after`. Format is ISO8601
      #   timestamp.
      # @option params [String] :purpose For `wire`, this is usually the purpose which is transmitted via the
      #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
      #   digit CPA Code that will be attached to the payment.
      # @option params [ReceivingAccount] :receiving_account Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      # @option params [String] :receiving_account_id Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      # @option params [String] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      # @option params [Boolean] :send_remittance_advice Send an email to the counterparty when the payment order is sent to the bank. If
      #   `null`, `send_remittance_advice` on the Counterparty is used.
      # @option params [String] :statement_descriptor An optional descriptor which will appear in the receiver's statement. For
      #   `check` payments this field will be used as the memo line. For `ach` the maximum
      #   length is 10 characters. Note that for ACH payments, the name on your bank
      #   account will be included automatically by the bank, so you can use the
      #   characters for other useful information. For `eft` the maximum length is 15
      #   characters.
      # @option params [Symbol] :subtype An additional layer of classification for the type of payment order you are
      #   doing. This field is only used for `ach` payment orders currently. For `ach`
      #   payment orders, the `subtype` represents the SEC code. We currently support
      #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      # @option params [Boolean] :transaction_monitoring_enabled A flag that determines whether a payment order should go through transaction
      #   monitoring.
      # @option params [String] :ultimate_originating_party_identifier Identifier of the ultimate originator of the payment order.
      # @option params [String] :ultimate_originating_party_name Name of the ultimate originator of the payment order.
      # @option params [String] :ultimate_receiving_party_identifier Identifier of the ultimate funds recipient.
      # @option params [String] :ultimate_receiving_party_name Name of the ultimate funds recipient.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/payment_orders"
        req[:body] = params
        req[:model] = ModernTreasury::Models::PaymentOrder
        @client.request(req, opts)
      end

      # Get details on a single payment order
      #
      # @param id [String]
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/payment_orders/#{id}"
        req[:model] = ModernTreasury::Models::PaymentOrder
        @client.request(req, opts)
      end

      # Update a payment order
      #
      # @param id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Accounting] :accounting
      # @option params [String] :accounting_category_id The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      # @option params [String] :accounting_ledger_class_id The ID of one of your accounting ledger classes. Note that these will only be
      #   accessible if your accounting system has been connected.
      # @option params [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented as
      #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      # @option params [Symbol] :charge_bearer The party that will pay the fees for the payment order. Only applies to wire
      #   payment orders. Can be one of shared, sender, or receiver, which correspond
      #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      # @option params [String] :counterparty_id Required when receiving_account_id is passed the ID of an external account.
      # @option params [Symbol] :currency Defaults to the currency of the originating account.
      # @option params [String] :description An optional description for internal use.
      # @option params [Symbol] :direction One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      # @option params [String] :effective_date Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      # @option params [String] :expires_at RFP payments require an expires_at. This value must be past the effective_date.
      # @option params [Symbol] :fallback_type A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (type=rtp and fallback_type=ach)
      # @option params [String] :foreign_exchange_contract If present, indicates a specific foreign exchange contract number that has been
      #   generated by your financial institution.
      # @option params [Symbol] :foreign_exchange_indicator Indicates the type of FX transfer to initiate, can be either
      #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #   currency matches the originating account currency.
      # @option params [Array<LineItem>] :line_items An array of line items that must sum up to the amount of the payment order.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Boolean] :nsf_protected A boolean to determine if NSF Protection is enabled for this payment order. Note
      #   that this setting must also be turned on in your organization settings page.
      # @option params [String] :originating_account_id The ID of one of your organization's internal accounts.
      # @option params [String] :originating_party_name If present, this will replace your default company name on receiver's bank
      #   statement. This field can only be used for ACH payments currently. For ACH, only
      #   the first 16 characters of this string will be used. Any additional characters
      #   will be truncated.
      # @option params [Symbol] :priority Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      # @option params [String] :process_after If present, Modern Treasury will not process the payment until after this time.
      #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
      #   take precedence and `effective_date` will automatically update to reflect the
      #   earliest possible sending date after `process_after`. Format is ISO8601
      #   timestamp.
      # @option params [String] :purpose For `wire`, this is usually the purpose which is transmitted via the
      #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
      #   digit CPA Code that will be attached to the payment.
      # @option params [ReceivingAccount] :receiving_account Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      # @option params [String] :receiving_account_id Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      # @option params [String] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      # @option params [Boolean] :send_remittance_advice Send an email to the counterparty when the payment order is sent to the bank. If
      #   `null`, `send_remittance_advice` on the Counterparty is used.
      # @option params [String] :statement_descriptor An optional descriptor which will appear in the receiver's statement. For
      #   `check` payments this field will be used as the memo line. For `ach` the maximum
      #   length is 10 characters. Note that for ACH payments, the name on your bank
      #   account will be included automatically by the bank, so you can use the
      #   characters for other useful information. For `eft` the maximum length is 15
      #   characters.
      # @option params [Symbol] :status To cancel a payment order, use `cancelled`. To redraft a returned payment order,
      #   use `approved`. To undo approval on a denied or approved payment order, use
      #   `needs_approval`.
      # @option params [Symbol] :subtype An additional layer of classification for the type of payment order you are
      #   doing. This field is only used for `ach` payment orders currently. For `ach`
      #   payment orders, the `subtype` represents the SEC code. We currently support
      #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      # @option params [Symbol] :type One of `ach`, `bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`,
      #   `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`,
      #   `sic`, `signet`, `provexchange`, `zengin`.
      # @option params [String] :ultimate_originating_party_identifier This represents the identifier by which the person is known to the receiver when
      #   using the CIE subtype for ACH payments. Only the first 22 characters of this
      #   string will be used. Any additional characters will be truncated.
      # @option params [String] :ultimate_originating_party_name This represents the name of the person that the payment is on behalf of when
      #   using the CIE subtype for ACH payments. Only the first 15 characters of this
      #   string will be used. Any additional characters will be truncated.
      # @option params [String] :ultimate_receiving_party_identifier This represents the name of the merchant that the payment is being sent to when
      #   using the CIE subtype for ACH payments. Only the first 22 characters of this
      #   string will be used. Any additional characters will be truncated.
      # @option params [String] :ultimate_receiving_party_name This represents the identifier by which the merchant is known to the person
      #   initiating an ACH payment with CIE subtype. Only the first 15 characters of this
      #   string will be used. Any additional characters will be truncated.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentOrder]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/payment_orders/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::PaymentOrder
        @client.request(req, opts)
      end

      # Get a list of all payment orders
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [String] :counterparty_id
      # @option params [String] :created_at_end An inclusive upper bound for searching created_at
      # @option params [String] :created_at_start An inclusive lower bound for searching created_at
      # @option params [Symbol] :direction
      # @option params [String] :effective_date_end An inclusive upper bound for searching effective_date
      # @option params [String] :effective_date_start An inclusive lower bound for searching effective_date
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [String] :originating_account_id
      # @option params [Integer] :per_page
      # @option params [Symbol] :priority Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      # @option params [String] :process_after_end An inclusive upper bound for searching process_after
      # @option params [String] :process_after_start An inclusive lower bound for searching process_after
      # @option params [String] :reference_number Query for records with the provided reference number
      # @option params [Symbol] :status
      # @option params [String] :transaction_id The ID of a transaction that the payment order has been reconciled to.
      # @option params [Symbol] :type
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentOrder>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/payment_orders"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::PaymentOrder
        @client.request(req, opts)
      end

      # Create a new payment order asynchronously
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented as
      #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      # @option params [Symbol] :direction One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      # @option params [String] :originating_account_id The ID of one of your organization's internal accounts.
      # @option params [Symbol] :type One of `ach`, `bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`,
      #   `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`,
      #   `sic`, `signet`, `provexchange`, `zengin`.
      # @option params [Accounting] :accounting
      # @option params [String] :accounting_category_id The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      # @option params [String] :accounting_ledger_class_id The ID of one of your accounting ledger classes. Note that these will only be
      #   accessible if your accounting system has been connected.
      # @option params [Symbol] :charge_bearer The party that will pay the fees for the payment order. Only applies to wire
      #   payment orders. Can be one of shared, sender, or receiver, which correspond
      #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      # @option params [Symbol] :currency Defaults to the currency of the originating account.
      # @option params [String] :description An optional description for internal use.
      # @option params [String] :effective_date Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      # @option params [String] :expires_at RFP payments require an expires_at. This value must be past the effective_date.
      # @option params [Symbol] :fallback_type A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (type=rtp and fallback_type=ach)
      # @option params [String] :foreign_exchange_contract If present, indicates a specific foreign exchange contract number that has been
      #   generated by your financial institution.
      # @option params [Symbol] :foreign_exchange_indicator Indicates the type of FX transfer to initiate, can be either
      #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #   currency matches the originating account currency.
      # @option params [LedgerTransaction] :ledger_transaction Specifies a ledger transaction object that will be created with the payment
      #   order. If the ledger transaction cannot be created, then the payment order
      #   creation will fail. The resulting ledger transaction will mirror the status of
      #   the payment order.
      # @option params [String] :ledger_transaction_id Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #   pending ledger transaction can be attached upon payment order creation. Once the
      #   payment order is created, the status of the ledger transaction tracks the
      #   payment order automatically.
      # @option params [Array<LineItem>] :line_items An array of line items that must sum up to the amount of the payment order.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Boolean] :nsf_protected A boolean to determine if NSF Protection is enabled for this payment order. Note
      #   that this setting must also be turned on in your organization settings page.
      # @option params [String] :originating_party_name If present, this will replace your default company name on receiver's bank
      #   statement. This field can only be used for ACH payments currently. For ACH, only
      #   the first 16 characters of this string will be used. Any additional characters
      #   will be truncated.
      # @option params [Symbol] :priority Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      # @option params [String] :process_after If present, Modern Treasury will not process the payment until after this time.
      #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
      #   take precedence and `effective_date` will automatically update to reflect the
      #   earliest possible sending date after `process_after`. Format is ISO8601
      #   timestamp.
      # @option params [String] :purpose For `wire`, this is usually the purpose which is transmitted via the
      #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
      #   digit CPA Code that will be attached to the payment.
      # @option params [ReceivingAccount] :receiving_account Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      # @option params [String] :receiving_account_id Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      # @option params [String] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      # @option params [Boolean] :send_remittance_advice Send an email to the counterparty when the payment order is sent to the bank. If
      #   `null`, `send_remittance_advice` on the Counterparty is used.
      # @option params [String] :statement_descriptor An optional descriptor which will appear in the receiver's statement. For
      #   `check` payments this field will be used as the memo line. For `ach` the maximum
      #   length is 10 characters. Note that for ACH payments, the name on your bank
      #   account will be included automatically by the bank, so you can use the
      #   characters for other useful information. For `eft` the maximum length is 15
      #   characters.
      # @option params [Symbol] :subtype An additional layer of classification for the type of payment order you are
      #   doing. This field is only used for `ach` payment orders currently. For `ach`
      #   payment orders, the `subtype` represents the SEC code. We currently support
      #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      # @option params [Boolean] :transaction_monitoring_enabled A flag that determines whether a payment order should go through transaction
      #   monitoring.
      # @option params [String] :ultimate_originating_party_identifier Identifier of the ultimate originator of the payment order.
      # @option params [String] :ultimate_originating_party_name Name of the ultimate originator of the payment order.
      # @option params [String] :ultimate_receiving_party_identifier Identifier of the ultimate funds recipient.
      # @option params [String] :ultimate_receiving_party_name Name of the ultimate funds recipient.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      def create_async(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/payment_orders/create_async"
        req[:body] = params
        req[:model] = ModernTreasury::Models::AsyncResponse
        @client.request(req, opts)
      end
    end
  end
end
