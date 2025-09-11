# typed: strong

module ModernTreasury
  module Resources
    class PaymentOrders
      sig { returns(ModernTreasury::Resources::PaymentOrders::Reversals) }
      attr_reader :reversals

      # Create a new Payment Order
      sig do
        params(
          amount: Integer,
          direction:
            ModernTreasury::PaymentOrderCreateParams::Direction::OrSymbol,
          originating_account_id: String,
          type: ModernTreasury::PaymentOrderType::OrSymbol,
          accounting:
            ModernTreasury::PaymentOrderCreateParams::Accounting::OrHash,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          charge_bearer:
            T.nilable(
              ModernTreasury::PaymentOrderCreateParams::ChargeBearer::OrSymbol
            ),
          currency: ModernTreasury::Currency::OrSymbol,
          description: T.nilable(String),
          documents:
            T::Array[
              ModernTreasury::PaymentOrderCreateParams::Document::OrHash
            ],
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type:
            ModernTreasury::PaymentOrderCreateParams::FallbackType::OrSymbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator:
            T.nilable(
              ModernTreasury::PaymentOrderCreateParams::ForeignExchangeIndicator::OrSymbol
            ),
          ledger_transaction:
            ModernTreasury::LedgerTransactionCreateRequest::OrHash,
          ledger_transaction_id: String,
          line_items:
            T::Array[
              ModernTreasury::PaymentOrderCreateParams::LineItem::OrHash
            ],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_party_name: T.nilable(String),
          priority:
            ModernTreasury::PaymentOrderCreateParams::Priority::OrSymbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account:
            ModernTreasury::PaymentOrderCreateParams::ReceivingAccount::OrHash,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          subtype: T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol),
          transaction_monitoring_enabled: T::Boolean,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::PaymentOrder)
      end
      def create(
        # Value in specified currency's smallest unit. e.g. $10 would be represented as
        # 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
        amount:,
        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        direction:,
        # The ID of one of your organization's internal accounts.
        originating_account_id:,
        # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
        # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
        # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
        type:,
        accounting: nil,
        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_category_id: nil,
        # The ID of one of your accounting ledger classes. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_ledger_class_id: nil,
        # The party that will pay the fees for the payment order. See
        # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
        # differences between the options.
        charge_bearer: nil,
        # Defaults to the currency of the originating account.
        currency: nil,
        # An optional description for internal use.
        description: nil,
        # An array of documents to be attached to the payment order. Note that if you
        # attach documents, the request's content type must be `multipart/form-data`.
        documents: nil,
        # Date transactions are to be posted to the participants' account. Defaults to the
        # current business day or the next business day if the current day is a bank
        # holiday or weekend. Format: yyyy-mm-dd.
        effective_date: nil,
        # RFP payments require an expires_at. This value must be past the effective_date.
        expires_at: nil,
        # A payment type to fallback to if the original type is not valid for the
        # receiving account. Currently, this only supports falling back from RTP to ACH
        # (type=rtp and fallback_type=ach)
        fallback_type: nil,
        # If present, indicates a specific foreign exchange contract number that has been
        # generated by your financial institution.
        foreign_exchange_contract: nil,
        # Indicates the type of FX transfer to initiate, can be either
        # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
        # currency matches the originating account currency.
        foreign_exchange_indicator: nil,
        # Specifies a ledger transaction object that will be created with the payment
        # order. If the ledger transaction cannot be created, then the payment order
        # creation will fail. The resulting ledger transaction will mirror the status of
        # the payment order.
        ledger_transaction: nil,
        # Either ledger_transaction or ledger_transaction_id can be provided. Only a
        # pending ledger transaction can be attached upon payment order creation. Once the
        # payment order is created, the status of the ledger transaction tracks the
        # payment order automatically.
        ledger_transaction_id: nil,
        # An array of line items that must sum up to the amount of the payment order.
        line_items: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # A boolean to determine if NSF Protection is enabled for this payment order. Note
        # that this setting must also be turned on in your organization settings page.
        nsf_protected: nil,
        # If present, this will replace your default company name on receiver's bank
        # statement. This field can only be used for ACH payments currently. For ACH, only
        # the first 16 characters of this string will be used. Any additional characters
        # will be truncated.
        originating_party_name: nil,
        # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
        # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
        # an overnight check rather than standard mail.
        priority: nil,
        # If present, Modern Treasury will not process the payment until after this time.
        # If `process_after` is past the cutoff for `effective_date`, `process_after` will
        # take precedence and `effective_date` will automatically update to reflect the
        # earliest possible sending date after `process_after`. Format is ISO8601
        # timestamp.
        process_after: nil,
        # For `wire`, this is usually the purpose which is transmitted via the
        # "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
        # digit CPA Code that will be attached to the payment.
        purpose: nil,
        # Either `receiving_account` or `receiving_account_id` must be present. When using
        # `receiving_account_id`, you may pass the id of an external account or an
        # internal account.
        receiving_account: nil,
        # Either `receiving_account` or `receiving_account_id` must be present. When using
        # `receiving_account_id`, you may pass the id of an external account or an
        # internal account.
        receiving_account_id: nil,
        # For `ach`, this field will be passed through on an addenda record. For `wire`
        # payments the field will be passed through as the "Originator to Beneficiary
        # Information", also known as OBI or Fedwire tag 6000.
        remittance_information: nil,
        # Send an email to the counterparty when the payment order is sent to the bank. If
        # `null`, `send_remittance_advice` on the Counterparty is used.
        send_remittance_advice: nil,
        # An optional descriptor which will appear in the receiver's statement. For
        # `check` payments this field will be used as the memo line. For `ach` the maximum
        # length is 10 characters. Note that for ACH payments, the name on your bank
        # account will be included automatically by the bank, so you can use the
        # characters for other useful information. For `eft` the maximum length is 15
        # characters.
        statement_descriptor: nil,
        # An additional layer of classification for the type of payment order you are
        # doing. This field is only used for `ach` payment orders currently. For `ach`
        # payment orders, the `subtype` represents the SEC code. We currently support
        # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
        subtype: nil,
        # A flag that determines whether a payment order should go through transaction
        # monitoring.
        transaction_monitoring_enabled: nil,
        # Identifier of the ultimate originator of the payment order.
        ultimate_originating_party_identifier: nil,
        # Name of the ultimate originator of the payment order.
        ultimate_originating_party_name: nil,
        # Identifier of the ultimate funds recipient.
        ultimate_receiving_party_identifier: nil,
        # Name of the ultimate funds recipient.
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      # Get details on a single payment order
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::PaymentOrder)
      end
      def retrieve(id, request_options: {})
      end

      # Update a payment order
      sig do
        params(
          id: String,
          accounting:
            ModernTreasury::PaymentOrderUpdateParams::Accounting::OrHash,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          amount: Integer,
          charge_bearer:
            T.nilable(
              ModernTreasury::PaymentOrderUpdateParams::ChargeBearer::OrSymbol
            ),
          counterparty_id: T.nilable(String),
          currency: ModernTreasury::Currency::OrSymbol,
          description: T.nilable(String),
          direction:
            ModernTreasury::PaymentOrderUpdateParams::Direction::OrSymbol,
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type:
            ModernTreasury::PaymentOrderUpdateParams::FallbackType::OrSymbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator:
            T.nilable(
              ModernTreasury::PaymentOrderUpdateParams::ForeignExchangeIndicator::OrSymbol
            ),
          line_items:
            T::Array[
              ModernTreasury::PaymentOrderUpdateParams::LineItem::OrHash
            ],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_account_id: String,
          originating_party_name: T.nilable(String),
          priority:
            ModernTreasury::PaymentOrderUpdateParams::Priority::OrSymbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account:
            ModernTreasury::PaymentOrderUpdateParams::ReceivingAccount::OrHash,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          status: ModernTreasury::PaymentOrderUpdateParams::Status::OrSymbol,
          subtype: T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol),
          type: ModernTreasury::PaymentOrderType::OrSymbol,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::PaymentOrder)
      end
      def update(
        id,
        accounting: nil,
        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_category_id: nil,
        # The ID of one of your accounting ledger classes. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_ledger_class_id: nil,
        # Value in specified currency's smallest unit. e.g. $10 would be represented as
        # 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
        amount: nil,
        # The party that will pay the fees for the payment order. See
        # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
        # differences between the options.
        charge_bearer: nil,
        # Required when receiving_account_id is passed the ID of an external account.
        counterparty_id: nil,
        # Defaults to the currency of the originating account.
        currency: nil,
        # An optional description for internal use.
        description: nil,
        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        direction: nil,
        # Date transactions are to be posted to the participants' account. Defaults to the
        # current business day or the next business day if the current day is a bank
        # holiday or weekend. Format: yyyy-mm-dd.
        effective_date: nil,
        # RFP payments require an expires_at. This value must be past the effective_date.
        expires_at: nil,
        # A payment type to fallback to if the original type is not valid for the
        # receiving account. Currently, this only supports falling back from RTP to ACH
        # (type=rtp and fallback_type=ach)
        fallback_type: nil,
        # If present, indicates a specific foreign exchange contract number that has been
        # generated by your financial institution.
        foreign_exchange_contract: nil,
        # Indicates the type of FX transfer to initiate, can be either
        # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
        # currency matches the originating account currency.
        foreign_exchange_indicator: nil,
        # An array of line items that must sum up to the amount of the payment order.
        line_items: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # A boolean to determine if NSF Protection is enabled for this payment order. Note
        # that this setting must also be turned on in your organization settings page.
        nsf_protected: nil,
        # The ID of one of your organization's internal accounts.
        originating_account_id: nil,
        # If present, this will replace your default company name on receiver's bank
        # statement. This field can only be used for ACH payments currently. For ACH, only
        # the first 16 characters of this string will be used. Any additional characters
        # will be truncated.
        originating_party_name: nil,
        # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
        # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
        # an overnight check rather than standard mail.
        priority: nil,
        # If present, Modern Treasury will not process the payment until after this time.
        # If `process_after` is past the cutoff for `effective_date`, `process_after` will
        # take precedence and `effective_date` will automatically update to reflect the
        # earliest possible sending date after `process_after`. Format is ISO8601
        # timestamp.
        process_after: nil,
        # For `wire`, this is usually the purpose which is transmitted via the
        # "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
        # digit CPA Code that will be attached to the payment.
        purpose: nil,
        # Either `receiving_account` or `receiving_account_id` must be present. When using
        # `receiving_account_id`, you may pass the id of an external account or an
        # internal account.
        receiving_account: nil,
        # Either `receiving_account` or `receiving_account_id` must be present. When using
        # `receiving_account_id`, you may pass the id of an external account or an
        # internal account.
        receiving_account_id: nil,
        # For `ach`, this field will be passed through on an addenda record. For `wire`
        # payments the field will be passed through as the "Originator to Beneficiary
        # Information", also known as OBI or Fedwire tag 6000.
        remittance_information: nil,
        # Send an email to the counterparty when the payment order is sent to the bank. If
        # `null`, `send_remittance_advice` on the Counterparty is used.
        send_remittance_advice: nil,
        # An optional descriptor which will appear in the receiver's statement. For
        # `check` payments this field will be used as the memo line. For `ach` the maximum
        # length is 10 characters. Note that for ACH payments, the name on your bank
        # account will be included automatically by the bank, so you can use the
        # characters for other useful information. For `eft` the maximum length is 15
        # characters.
        statement_descriptor: nil,
        # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
        # use `approved`. To undo approval on a denied or approved payment order, use
        # `needs_approval`.
        status: nil,
        # An additional layer of classification for the type of payment order you are
        # doing. This field is only used for `ach` payment orders currently. For `ach`
        # payment orders, the `subtype` represents the SEC code. We currently support
        # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
        subtype: nil,
        # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
        # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
        # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
        type: nil,
        # This represents the identifier by which the person is known to the receiver when
        # using the CIE subtype for ACH payments. Only the first 22 characters of this
        # string will be used. Any additional characters will be truncated.
        ultimate_originating_party_identifier: nil,
        # This represents the name of the person that the payment is on behalf of when
        # using the CIE subtype for ACH payments. Only the first 15 characters of this
        # string will be used. Any additional characters will be truncated.
        ultimate_originating_party_name: nil,
        # This represents the name of the merchant that the payment is being sent to when
        # using the CIE subtype for ACH payments. Only the first 22 characters of this
        # string will be used. Any additional characters will be truncated.
        ultimate_receiving_party_identifier: nil,
        # This represents the identifier by which the merchant is known to the person
        # initiating an ACH payment with CIE subtype. Only the first 15 characters of this
        # string will be used. Any additional characters will be truncated.
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      # Get a list of all payment orders
      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_end: Date,
          created_at_start: Date,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          effective_date_end: Date,
          effective_date_start: Date,
          external_id: String,
          metadata: T::Hash[Symbol, String],
          originating_account_id: String,
          per_page: Integer,
          priority: ModernTreasury::PaymentOrderListParams::Priority::OrSymbol,
          process_after_end: Time,
          process_after_start: Time,
          reference_number: String,
          status: ModernTreasury::PaymentOrderListParams::Status::OrSymbol,
          transaction_id: String,
          type: ModernTreasury::PaymentOrderListParams::Type::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::PaymentOrder])
      end
      def list(
        after_cursor: nil,
        counterparty_id: nil,
        # An inclusive upper bound for searching created_at
        created_at_end: nil,
        # An inclusive lower bound for searching created_at
        created_at_start: nil,
        direction: nil,
        # An inclusive upper bound for searching effective_date
        effective_date_end: nil,
        # An inclusive lower bound for searching effective_date
        effective_date_start: nil,
        external_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        originating_account_id: nil,
        per_page: nil,
        # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
        # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
        # an overnight check rather than standard mail.
        priority: nil,
        # An inclusive upper bound for searching process_after
        process_after_end: nil,
        # An inclusive lower bound for searching process_after
        process_after_start: nil,
        # Query for records with the provided reference number
        reference_number: nil,
        status: nil,
        # The ID of a transaction that the payment order has been reconciled to.
        transaction_id: nil,
        type: nil,
        request_options: {}
      )
      end

      # Create a new payment order asynchronously
      sig do
        params(
          amount: Integer,
          direction:
            ModernTreasury::PaymentOrderCreateAsyncParams::Direction::OrSymbol,
          originating_account_id: String,
          type: ModernTreasury::PaymentOrderType::OrSymbol,
          accounting:
            ModernTreasury::PaymentOrderCreateAsyncParams::Accounting::OrHash,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          charge_bearer:
            T.nilable(
              ModernTreasury::PaymentOrderCreateAsyncParams::ChargeBearer::OrSymbol
            ),
          currency: ModernTreasury::Currency::OrSymbol,
          description: T.nilable(String),
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type:
            ModernTreasury::PaymentOrderCreateAsyncParams::FallbackType::OrSymbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator:
            T.nilable(
              ModernTreasury::PaymentOrderCreateAsyncParams::ForeignExchangeIndicator::OrSymbol
            ),
          ledger_transaction:
            ModernTreasury::LedgerTransactionCreateRequest::OrHash,
          ledger_transaction_id: String,
          line_items:
            T::Array[
              ModernTreasury::PaymentOrderCreateAsyncParams::LineItem::OrHash
            ],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_party_name: T.nilable(String),
          priority:
            ModernTreasury::PaymentOrderCreateAsyncParams::Priority::OrSymbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account:
            ModernTreasury::PaymentOrderCreateAsyncParams::ReceivingAccount::OrHash,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          subtype: T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol),
          transaction_monitoring_enabled: T::Boolean,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::AsyncResponse)
      end
      def create_async(
        # Value in specified currency's smallest unit. e.g. $10 would be represented as
        # 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
        amount:,
        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        direction:,
        # The ID of one of your organization's internal accounts.
        originating_account_id:,
        # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
        # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
        # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
        type:,
        accounting: nil,
        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_category_id: nil,
        # The ID of one of your accounting ledger classes. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_ledger_class_id: nil,
        # The party that will pay the fees for the payment order. See
        # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
        # differences between the options.
        charge_bearer: nil,
        # Defaults to the currency of the originating account.
        currency: nil,
        # An optional description for internal use.
        description: nil,
        # Date transactions are to be posted to the participants' account. Defaults to the
        # current business day or the next business day if the current day is a bank
        # holiday or weekend. Format: yyyy-mm-dd.
        effective_date: nil,
        # RFP payments require an expires_at. This value must be past the effective_date.
        expires_at: nil,
        # A payment type to fallback to if the original type is not valid for the
        # receiving account. Currently, this only supports falling back from RTP to ACH
        # (type=rtp and fallback_type=ach)
        fallback_type: nil,
        # If present, indicates a specific foreign exchange contract number that has been
        # generated by your financial institution.
        foreign_exchange_contract: nil,
        # Indicates the type of FX transfer to initiate, can be either
        # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
        # currency matches the originating account currency.
        foreign_exchange_indicator: nil,
        # Specifies a ledger transaction object that will be created with the payment
        # order. If the ledger transaction cannot be created, then the payment order
        # creation will fail. The resulting ledger transaction will mirror the status of
        # the payment order.
        ledger_transaction: nil,
        # Either ledger_transaction or ledger_transaction_id can be provided. Only a
        # pending ledger transaction can be attached upon payment order creation. Once the
        # payment order is created, the status of the ledger transaction tracks the
        # payment order automatically.
        ledger_transaction_id: nil,
        # An array of line items that must sum up to the amount of the payment order.
        line_items: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # A boolean to determine if NSF Protection is enabled for this payment order. Note
        # that this setting must also be turned on in your organization settings page.
        nsf_protected: nil,
        # If present, this will replace your default company name on receiver's bank
        # statement. This field can only be used for ACH payments currently. For ACH, only
        # the first 16 characters of this string will be used. Any additional characters
        # will be truncated.
        originating_party_name: nil,
        # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
        # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
        # an overnight check rather than standard mail.
        priority: nil,
        # If present, Modern Treasury will not process the payment until after this time.
        # If `process_after` is past the cutoff for `effective_date`, `process_after` will
        # take precedence and `effective_date` will automatically update to reflect the
        # earliest possible sending date after `process_after`. Format is ISO8601
        # timestamp.
        process_after: nil,
        # For `wire`, this is usually the purpose which is transmitted via the
        # "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
        # digit CPA Code that will be attached to the payment.
        purpose: nil,
        # Either `receiving_account` or `receiving_account_id` must be present. When using
        # `receiving_account_id`, you may pass the id of an external account or an
        # internal account.
        receiving_account: nil,
        # Either `receiving_account` or `receiving_account_id` must be present. When using
        # `receiving_account_id`, you may pass the id of an external account or an
        # internal account.
        receiving_account_id: nil,
        # For `ach`, this field will be passed through on an addenda record. For `wire`
        # payments the field will be passed through as the "Originator to Beneficiary
        # Information", also known as OBI or Fedwire tag 6000.
        remittance_information: nil,
        # Send an email to the counterparty when the payment order is sent to the bank. If
        # `null`, `send_remittance_advice` on the Counterparty is used.
        send_remittance_advice: nil,
        # An optional descriptor which will appear in the receiver's statement. For
        # `check` payments this field will be used as the memo line. For `ach` the maximum
        # length is 10 characters. Note that for ACH payments, the name on your bank
        # account will be included automatically by the bank, so you can use the
        # characters for other useful information. For `eft` the maximum length is 15
        # characters.
        statement_descriptor: nil,
        # An additional layer of classification for the type of payment order you are
        # doing. This field is only used for `ach` payment orders currently. For `ach`
        # payment orders, the `subtype` represents the SEC code. We currently support
        # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
        subtype: nil,
        # A flag that determines whether a payment order should go through transaction
        # monitoring.
        transaction_monitoring_enabled: nil,
        # Identifier of the ultimate originator of the payment order.
        ultimate_originating_party_identifier: nil,
        # Name of the ultimate originator of the payment order.
        ultimate_originating_party_name: nil,
        # Identifier of the ultimate funds recipient.
        ultimate_receiving_party_identifier: nil,
        # Name of the ultimate funds recipient.
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
