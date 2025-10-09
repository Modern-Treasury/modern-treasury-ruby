# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::BulkRequests#create
    class BulkRequestCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType]
      required :action_type, enum: -> { ModernTreasury::BulkRequestCreateParams::ActionType }

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType]
      required :resource_type, enum: -> { ModernTreasury::BulkRequestCreateParams::ResourceType }

      # @!attribute resources
      #   An array of objects where each object contains the input params for a single
      #   `action_type` request on a `resource_type` resource
      #
      #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::LedgerTransactionCreateRequest, ModernTreasury::Models::LedgerAccountCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>]
      required :resources,
               -> { ModernTreasury::Internal::Type::ArrayOf[union: ModernTreasury::BulkRequestCreateParams::Resource] }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(action_type:, resource_type:, resources:, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::BulkRequestCreateParams} for more details.
      #
      #   @param action_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType] One of create, or update.
      #
      #   @param resource_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType] One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @param resources [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::LedgerTransactionCreateRequest, ModernTreasury::Models::LedgerAccountCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>] An array of objects where each object contains the input params for a single `ac
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order
        LEDGER_ACCOUNT = :ledger_account
        LEDGER_TRANSACTION = :ledger_transaction
        EXPECTED_PAYMENT = :expected_payment
        TRANSACTION = :transaction
        TRANSACTION_LINE_ITEM = :transaction_line_item
        ENTITY_LINK = :entity_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Resource
        extend ModernTreasury::Internal::Type::Union

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest }

        variant -> { ModernTreasury::LedgerTransactionCreateRequest }

        variant -> { ModernTreasury::LedgerAccountCreateRequest }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::ID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID }

        variant -> { ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID }

        class PaymentOrderAsyncCreateRequest < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented as
          #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute direction
          #   One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction]
          required :direction,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction }

          # @!attribute originating_account_id
          #   The ID of one of your organization's internal accounts.
          #
          #   @return [String]
          required :originating_account_id, String

          # @!attribute type
          #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
          #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
          #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderType]
          required :type, enum: -> { ModernTreasury::PaymentOrderType }

          # @!attribute accounting
          #   @deprecated
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting, nil]
          optional :accounting,
                   -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting }

          # @!attribute accounting_category_id
          #   @deprecated
          #
          #   The ID of one of your accounting categories. Note that these will only be
          #   accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_category_id, String, nil?: true

          # @!attribute accounting_ledger_class_id
          #   @deprecated
          #
          #   The ID of one of your accounting ledger classes. Note that these will only be
          #   accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_ledger_class_id, String, nil?: true

          # @!attribute charge_bearer
          #   The party that will pay the fees for the payment order. See
          #   https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          #   differences between the options.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer, nil]
          optional :charge_bearer,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer
                   },
                   nil?: true

          # @!attribute currency
          #   Defaults to the currency of the originating account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency, nil]
          optional :currency, enum: -> { ModernTreasury::Currency }

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute effective_date
          #   Date transactions are to be posted to the participants' account. Defaults to the
          #   current business day or the next business day if the current day is a bank
          #   holiday or weekend. Format: yyyy-mm-dd.
          #
          #   @return [Date, nil]
          optional :effective_date, Date

          # @!attribute expires_at
          #   RFP payments require an expires_at. This value must be past the effective_date.
          #
          #   @return [Time, nil]
          optional :expires_at, Time, nil?: true

          # @!attribute fallback_type
          #   A payment type to fallback to if the original type is not valid for the
          #   receiving account. Currently, this only supports falling back from RTP to ACH
          #   (type=rtp and fallback_type=ach)
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType, nil]
          optional :fallback_type,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType }

          # @!attribute foreign_exchange_contract
          #   If present, indicates a specific foreign exchange contract number that has been
          #   generated by your financial institution.
          #
          #   @return [String, nil]
          optional :foreign_exchange_contract, String, nil?: true

          # @!attribute foreign_exchange_indicator
          #   Indicates the type of FX transfer to initiate, can be either
          #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          #   currency matches the originating account currency.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator, nil]
          optional :foreign_exchange_indicator,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator
                   },
                   nil?: true

          # @!attribute ledger_transaction
          #   Specifies a ledger transaction object that will be created with the payment
          #   order. If the ledger transaction cannot be created, then the payment order
          #   creation will fail. The resulting ledger transaction will mirror the status of
          #   the payment order.
          #
          #   @return [ModernTreasury::Models::LedgerTransactionCreateRequest, nil]
          optional :ledger_transaction, -> { ModernTreasury::LedgerTransactionCreateRequest }

          # @!attribute ledger_transaction_id
          #   Either ledger_transaction or ledger_transaction_id can be provided. Only a
          #   pending ledger transaction can be attached upon payment order creation. Once the
          #   payment order is created, the status of the ledger transaction tracks the
          #   payment order automatically.
          #
          #   @return [String, nil]
          optional :ledger_transaction_id, String

          # @!attribute line_items
          #   An array of line items that must sum up to the amount of the payment order.
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem>, nil]
          optional :line_items,
                   -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem] }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!attribute nsf_protected
          #   A boolean to determine if NSF Protection is enabled for this payment order. Note
          #   that this setting must also be turned on in your organization settings page.
          #
          #   @return [Boolean, nil]
          optional :nsf_protected, ModernTreasury::Internal::Type::Boolean

          # @!attribute originating_party_name
          #   If present, this will replace your default company name on receiver's bank
          #   statement. This field can only be used for ACH payments currently. For ACH, only
          #   the first 16 characters of this string will be used. Any additional characters
          #   will be truncated.
          #
          #   @return [String, nil]
          optional :originating_party_name, String, nil?: true

          # @!attribute priority
          #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          #   an overnight check rather than standard mail.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority, nil]
          optional :priority,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority }

          # @!attribute process_after
          #   If present, Modern Treasury will not process the payment until after this time.
          #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
          #   take precedence and `effective_date` will automatically update to reflect the
          #   earliest possible sending date after `process_after`. Format is ISO8601
          #   timestamp.
          #
          #   @return [Time, nil]
          optional :process_after, Time, nil?: true

          # @!attribute purpose
          #   For `wire`, this is usually the purpose which is transmitted via the
          #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
          #   digit CPA Code that will be attached to the payment.
          #
          #   @return [String, nil]
          optional :purpose, String, nil?: true

          # @!attribute receiving_account
          #   Either `receiving_account` or `receiving_account_id` must be present. When using
          #   `receiving_account_id`, you may pass the id of an external account or an
          #   internal account.
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount, nil]
          optional :receiving_account,
                   -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount }

          # @!attribute receiving_account_id
          #   Either `receiving_account` or `receiving_account_id` must be present. When using
          #   `receiving_account_id`, you may pass the id of an external account or an
          #   internal account.
          #
          #   @return [String, nil]
          optional :receiving_account_id, String

          # @!attribute reconciliation_status
          #   One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus, nil]
          optional :reconciliation_status,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus }

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire`
          #   payments the field will be passed through as the "Originator to Beneficiary
          #   Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String, nil?: true

          # @!attribute send_remittance_advice
          #   Send an email to the counterparty when the payment order is sent to the bank. If
          #   `null`, `send_remittance_advice` on the Counterparty is used.
          #
          #   @return [Boolean, nil]
          optional :send_remittance_advice, ModernTreasury::Internal::Type::Boolean, nil?: true

          # @!attribute statement_descriptor
          #   An optional descriptor which will appear in the receiver's statement. For
          #   `check` payments this field will be used as the memo line. For `ach` the maximum
          #   length is 10 characters. Note that for ACH payments, the name on your bank
          #   account will be included automatically by the bank, so you can use the
          #   characters for other useful information. For `eft` the maximum length is 15
          #   characters.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String, nil?: true

          # @!attribute subtype
          #   An additional layer of classification for the type of payment order you are
          #   doing. This field is only used for `ach` payment orders currently. For `ach`
          #   payment orders, the `subtype` represents the SEC code. We currently support
          #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
          optional :subtype, enum: -> { ModernTreasury::PaymentOrderSubtype }, nil?: true

          # @!attribute transaction_monitoring_enabled
          #   A flag that determines whether a payment order should go through transaction
          #   monitoring.
          #
          #   @return [Boolean, nil]
          optional :transaction_monitoring_enabled, ModernTreasury::Internal::Type::Boolean

          # @!attribute ultimate_originating_party_identifier
          #   Identifier of the ultimate originator of the payment order.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_identifier, String, nil?: true

          # @!attribute ultimate_originating_party_name
          #   Name of the ultimate originator of the payment order.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_name, String, nil?: true

          # @!attribute ultimate_receiving_party_identifier
          #   Identifier of the ultimate funds recipient.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_identifier, String, nil?: true

          # @!attribute ultimate_receiving_party_name
          #   Name of the ultimate funds recipient.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_name, String, nil?: true

          # @!method initialize(amount:, direction:, originating_account_id:, type:, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, charge_bearer: nil, currency: nil, description: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, reconciliation_status: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, subtype: nil, transaction_monitoring_enabled: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest}
          #   for more details.
          #
          #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
          #
          #   @param direction [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
          #
          #   @param originating_account_id [String] The ID of one of your organization's internal accounts.
          #
          #   @param type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
          #
          #   @param accounting [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting]
          #
          #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
          #
          #   @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be ac
          #
          #   @param charge_bearer [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer, nil] The party that will pay the fees for the payment order. See https://docs.modernt
          #
          #   @param currency [Symbol, ModernTreasury::Models::Currency] Defaults to the currency of the originating account.
          #
          #   @param description [String, nil] An optional description for internal use.
          #
          #   @param effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
          #
          #   @param expires_at [Time, nil] RFP payments require an expires_at. This value must be past the effective_date.
          #
          #   @param fallback_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType] A payment type to fallback to if the original type is not valid for the receivin
          #
          #   @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
          #
          #   @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator, nil] Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`
          #
          #   @param ledger_transaction [ModernTreasury::Models::LedgerTransactionCreateRequest] Specifies a ledger transaction object that will be created with the payment orde
          #
          #   @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a pendi
          #
          #   @param line_items [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem>] An array of line items that must sum up to the amount of the payment order.
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
          #
          #   @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank state
          #
          #   @param priority [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
          #
          #   @param process_after [Time, nil] If present, Modern Treasury will not process the payment until after this time.
          #
          #   @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the "InstrForDb
          #
          #   @param receiving_account [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
          #
          #   @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
          #
          #   @param reconciliation_status [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus] One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          #
          #   @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
          #
          #   @param send_remittance_advice [Boolean, nil] Send an email to the counterparty when the payment order is sent to the bank. If
          #
          #   @param statement_descriptor [String, nil] An optional descriptor which will appear in the receiver's statement. For `check
          #
          #   @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil] An additional layer of classification for the type of payment order you are doin
          #
          #   @param transaction_monitoring_enabled [Boolean] A flag that determines whether a payment order should go through transaction mon
          #
          #   @param ultimate_originating_party_identifier [String, nil] Identifier of the ultimate originator of the payment order.
          #
          #   @param ultimate_originating_party_name [String, nil] Name of the ultimate originator of the payment order.
          #
          #   @param ultimate_receiving_party_identifier [String, nil] Identifier of the ultimate funds recipient.
          #
          #   @param ultimate_receiving_party_name [String, nil] Name of the ultimate funds recipient.

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          # transaction. A `credit` moves money from your account to someone else's. A
          # `debit` pulls money from someone else's account to your own. Note that wire,
          # rtp, and check payments will always be `credit`.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#direction
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            CREDIT = :credit
            DEBIT = :debit

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @deprecated
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#accounting
          class Accounting < ModernTreasury::Internal::Type::BaseModel
            # @!attribute account_id
            #   @deprecated
            #
            #   The ID of one of your accounting categories. Note that these will only be
            #   accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :account_id, String, nil?: true

            # @!attribute class_id
            #   @deprecated
            #
            #   The ID of one of the class objects in your accounting system. Class objects
            #   track segments of your business independent of client or project. Note that
            #   these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :class_id, String, nil?: true

            # @!method initialize(account_id: nil, class_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting}
            #   for more details.
            #
            #   @param account_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
            #
            #   @param class_id [String, nil] The ID of one of the class objects in your accounting system. Class objects trac
          end

          # The party that will pay the fees for the payment order. See
          # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          # differences between the options.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#charge_bearer
          module ChargeBearer
            extend ModernTreasury::Internal::Type::Enum

            SHARED = :shared
            SENDER = :sender
            RECEIVER = :receiver

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # A payment type to fallback to if the original type is not valid for the
          # receiving account. Currently, this only supports falling back from RTP to ACH
          # (type=rtp and fallback_type=ach)
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#fallback_type
          module FallbackType
            extend ModernTreasury::Internal::Type::Enum

            ACH = :ach

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Indicates the type of FX transfer to initiate, can be either
          # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          # currency matches the originating account currency.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#foreign_exchange_indicator
          module ForeignExchangeIndicator
            extend ModernTreasury::Internal::Type::Enum

            FIXED_TO_VARIABLE = :fixed_to_variable
            VARIABLE_TO_FIXED = :variable_to_fixed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class LineItem < ModernTreasury::Internal::Type::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented
            #   as 1000.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute accounting_category_id
            #   The ID of one of your accounting categories. Note that these will only be
            #   accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :accounting_category_id, String, nil?: true

            # @!attribute description
            #   A free-form description of the line item.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

            # @!method initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem}
            #   for more details.
            #
            #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
            #
            #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
            #
            #   @param description [String, nil] A free-form description of the line item.
            #
            #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          end

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          # an overnight check rather than standard mail.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#priority
          module Priority
            extend ModernTreasury::Internal::Type::Enum

            HIGH = :high
            NORMAL = :normal

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#receiving_account
          class ReceivingAccount < ModernTreasury::Internal::Type::BaseModel
            # @!attribute account_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail>, nil]
            optional :account_details,
                     -> do
                       ModernTreasury::Internal::Type::ArrayOf[
                         ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                       ]
                     end

            # @!attribute account_type
            #   Can be `checking`, `savings` or `other`.
            #
            #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
            optional :account_type, enum: -> { ModernTreasury::ExternalAccountType }

            # @!attribute contact_details
            #
            #   @return [Array<ModernTreasury::Models::ContactDetailCreateRequest>, nil]
            optional :contact_details,
                     -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ContactDetailCreateRequest] }

            # @!attribute external_id
            #   An optional user-defined 180 character unique identifier.
            #
            #   @return [String, nil]
            optional :external_id, String, nil?: true

            # @!attribute ledger_account
            #   Specifies a ledger account object that will be created with the external
            #   account. The resulting ledger account is linked to the external account for
            #   auto-ledgering Payment objects. See
            #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            #   for more details.
            #
            #   @return [ModernTreasury::Models::LedgerAccountCreateRequest, nil]
            optional :ledger_account, -> { ModernTreasury::LedgerAccountCreateRequest }

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

            # @!attribute name
            #   A nickname for the external account. This is only for internal usage and won't
            #   affect any payments
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute party_address
            #   Required if receiving wire payments.
            #
            #   @return [ModernTreasury::Models::AddressRequest, nil]
            optional :party_address, -> { ModernTreasury::AddressRequest }

            # @!attribute party_identifier
            #
            #   @return [String, nil]
            optional :party_identifier, String

            # @!attribute party_name
            #   If this value isn't provided, it will be inherited from the counterparty's name.
            #
            #   @return [String, nil]
            optional :party_name, String

            # @!attribute party_type
            #   Either `individual` or `business`.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType, nil]
            optional :party_type,
                     enum: -> {
                       ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType
                     },
                     nil?: true

            # @!attribute plaid_processor_token
            #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            #   you can pass the processor token in this field.
            #
            #   @return [String, nil]
            optional :plaid_processor_token, String

            # @!attribute routing_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail>, nil]
            optional :routing_details,
                     -> do
                       ModernTreasury::Internal::Type::ArrayOf[
                         ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                       ]
                     end

            # @!method initialize(account_details: nil, account_type: nil, contact_details: nil, external_id: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount}
            #   for more details.
            #
            #   Either `receiving_account` or `receiving_account_id` must be present. When using
            #   `receiving_account_id`, you may pass the id of an external account or an
            #   internal account.
            #
            #   @param account_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail>]
            #
            #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Can be `checking`, `savings` or `other`.
            #
            #   @param contact_details [Array<ModernTreasury::Models::ContactDetailCreateRequest>]
            #
            #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
            #
            #   @param ledger_account [ModernTreasury::Models::LedgerAccountCreateRequest] Specifies a ledger account object that will be created with the external account
            #
            #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
            #
            #   @param name [String, nil] A nickname for the external account. This is only for internal usage and won't a
            #
            #   @param party_address [ModernTreasury::Models::AddressRequest] Required if receiving wire payments.
            #
            #   @param party_identifier [String]
            #
            #   @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
            #
            #   @param party_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType, nil] Either `individual` or `business`.
            #
            #   @param plaid_processor_token [String] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            #
            #   @param routing_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail>]

            class AccountDetail < ModernTreasury::Internal::Type::BaseModel
              # @!attribute account_number
              #
              #   @return [String]
              required :account_number, String

              # @!attribute account_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType, nil]
              optional :account_number_type,
                       enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType }

              # @!method initialize(account_number:, account_number_type: nil)
              #   @param account_number [String]
              #   @param account_number_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType]

              # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail#account_number_type
              module AccountNumberType
                extend ModernTreasury::Internal::Type::Enum

                AU_NUMBER = :au_number
                BASE_ADDRESS = :base_address
                CLABE = :clabe
                ETHEREUM_ADDRESS = :ethereum_address
                HK_NUMBER = :hk_number
                IBAN = :iban
                ID_NUMBER = :id_number
                NZ_NUMBER = :nz_number
                OTHER = :other
                PAN = :pan
                POLYGON_ADDRESS = :polygon_address
                SG_NUMBER = :sg_number
                SOLANA_ADDRESS = :solana_address
                WALLET_ADDRESS = :wallet_address

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Either `individual` or `business`.
            #
            # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount#party_type
            module PartyType
              extend ModernTreasury::Internal::Type::Enum

              BUSINESS = :business
              INDIVIDUAL = :individual

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
              # @!attribute routing_number
              #
              #   @return [String]
              required :routing_number, String

              # @!attribute routing_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType]
              required :routing_number_type,
                       enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType }

              # @!attribute payment_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType, nil]
              optional :payment_type,
                       enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType }

              # @!method initialize(routing_number:, routing_number_type:, payment_type: nil)
              #   @param routing_number [String]
              #   @param routing_number_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType]
              #   @param payment_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType]

              # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail#routing_number_type
              module RoutingNumberType
                extend ModernTreasury::Internal::Type::Enum

                ABA = :aba
                AU_BSB = :au_bsb
                BR_CODIGO = :br_codigo
                CA_CPA = :ca_cpa
                CHIPS = :chips
                CNAPS = :cnaps
                DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
                GB_SORT_CODE = :gb_sort_code
                HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
                HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
                ID_SKNBI_CODE = :id_sknbi_code
                IL_BANK_CODE = :il_bank_code
                IN_IFSC = :in_ifsc
                JP_ZENGIN_CODE = :jp_zengin_code
                MY_BRANCH_CODE = :my_branch_code
                MX_BANK_IDENTIFIER = :mx_bank_identifier
                NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
                PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
                SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
                SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
                SWIFT = :swift
                ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail#payment_type
              module PaymentType
                extend ModernTreasury::Internal::Type::Enum

                ACH = :ach
                AU_BECS = :au_becs
                BACS = :bacs
                BASE = :base
                BOOK = :book
                CARD = :card
                CHATS = :chats
                CHECK = :check
                CROSS_BORDER = :cross_border
                DK_NETS = :dk_nets
                EFT = :eft
                ETHEREUM = :ethereum
                GB_FPS = :gb_fps
                HU_ICS = :hu_ics
                INTERAC = :interac
                MASAV = :masav
                MX_CCEN = :mx_ccen
                NEFT = :neft
                NICS = :nics
                NZ_BECS = :nz_becs
                PL_ELIXIR = :pl_elixir
                POLYGON = :polygon
                PROVXCHANGE = :provxchange
                RO_SENT = :ro_sent
                RTP = :rtp
                SE_BANKGIROT = :se_bankgirot
                SEN = :sen
                SEPA = :sepa
                SG_GIRO = :sg_giro
                SIC = :sic
                SIGNET = :signet
                SKNBI = :sknbi
                SOLANA = :solana
                WIRE = :wire
                ZENGIN = :zengin

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest#reconciliation_status
          module ReconciliationStatus
            extend ModernTreasury::Internal::Type::Enum

            UNRECONCILED = :unreconciled
            TENTATIVELY_RECONCILED = :tentatively_reconciled
            RECONCILED = :reconciled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ExpectedPaymentCreateRequest < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount_lower_bound
          #   The lowest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_lower_bound, Integer, nil?: true

          # @!attribute amount_upper_bound
          #   The highest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_upper_bound, Integer, nil?: true

          # @!attribute counterparty_id
          #   The ID of the counterparty you expect for this payment.
          #
          #   @return [String, nil]
          optional :counterparty_id, String, nil?: true

          # @!attribute currency
          #   Must conform to ISO 4217. Defaults to the currency of the internal account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency, nil]
          optional :currency, enum: -> { ModernTreasury::Currency }, nil?: true

          # @!attribute date_lower_bound
          #   The earliest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_lower_bound, Date, nil?: true

          # @!attribute date_upper_bound
          #   The latest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_upper_bound, Date, nil?: true

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute direction
          #   One of credit or debit. When you are receiving money, use credit. When you are
          #   being charged, use debit.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction, nil]
          optional :direction,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction
                   },
                   nil?: true

          # @!attribute external_id
          #   An optional user-defined 180 character unique identifier.
          #
          #   @return [String, nil]
          optional :external_id, String, nil?: true

          # @!attribute internal_account_id
          #   The ID of the Internal Account for the expected payment.
          #
          #   @return [String, nil]
          optional :internal_account_id, String, nil?: true

          # @!attribute ledger_transaction
          #   Specifies a ledger transaction object that will be created with the expected
          #   payment. If the ledger transaction cannot be created, then the expected payment
          #   creation will fail. The resulting ledger transaction will mirror the status of
          #   the expected payment.
          #
          #   @return [ModernTreasury::Models::LedgerTransactionCreateRequest, nil]
          optional :ledger_transaction, -> { ModernTreasury::LedgerTransactionCreateRequest }

          # @!attribute ledger_transaction_id
          #   Either ledger_transaction or ledger_transaction_id can be provided. Only a
          #   pending ledger transaction can be attached upon expected payment creation. Once
          #   the expected payment is created, the status of the ledger transaction tracks the
          #   expected payment automatically.
          #
          #   @return [String, nil]
          optional :ledger_transaction_id, String

          # @!attribute line_items
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem>, nil]
          optional :line_items,
                   -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem] }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!attribute reconciliation_filters
          #   The reconciliation filters you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_filters, ModernTreasury::Internal::Type::Unknown, nil?: true

          # @!attribute reconciliation_groups
          #   The reconciliation groups you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_groups, ModernTreasury::Internal::Type::Unknown, nil?: true

          # @!attribute reconciliation_rule_variables
          #   An array of reconciliation rule variables for this payment.
          #
          #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
          optional :reconciliation_rule_variables,
                   -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule] },
                   nil?: true

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire`
          #   payments the field will be passed through as the "Originator to Beneficiary
          #   Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String, nil?: true

          # @!attribute statement_descriptor
          #   The statement description you expect to see on the transaction. For ACH
          #   payments, this will be the full line item passed from the bank. For wire
          #   payments, this will be the OBI field on the wire. For check payments, this will
          #   be the memo field.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String, nil?: true

          # @!attribute type
          #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
          #   sepa, signet, wire.
          #
          #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
          optional :type, enum: -> { ModernTreasury::ExpectedPaymentType }, nil?: true

          # @!method initialize(amount_lower_bound: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, external_id: nil, internal_account_id: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest}
          #   for more details.
          #
          #   @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified curr
          #
          #   @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified cur
          #
          #   @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
          #
          #   @param currency [Symbol, ModernTreasury::Models::Currency, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
          #
          #   @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @param date_upper_bound [Date, nil] The latest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @param description [String, nil] An optional description for internal use.
          #
          #   @param direction [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction, nil] One of credit or debit. When you are receiving money, use credit. When you are b
          #
          #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
          #
          #   @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
          #
          #   @param ledger_transaction [ModernTreasury::Models::LedgerTransactionCreateRequest] Specifies a ledger transaction object that will be created with the expected pay
          #
          #   @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a pendi
          #
          #   @param line_items [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem>]
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
          #
          #   @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
          #
          #   @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
          #
          #   @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
          #
          #   @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH payments
          #
          #   @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, se

          # One of credit or debit. When you are receiving money, use credit. When you are
          # being charged, use debit.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest#direction
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            CREDIT = :credit
            DEBIT = :debit

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class LineItem < ModernTreasury::Internal::Type::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented
            #   as 1000.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute accounting_category_id
            #   The ID of one of your accounting categories. Note that these will only be
            #   accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :accounting_category_id, String, nil?: true

            # @!attribute description
            #   A free-form description of the line item.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

            # @!method initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem}
            #   for more details.
            #
            #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
            #
            #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
            #
            #   @param description [String, nil] A free-form description of the line item.
            #
            #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          end
        end

        class TransactionCreateRequest < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented
          #   as 1000.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute as_of_date
          #   The date on which the transaction occurred.
          #
          #   @return [Date, nil]
          required :as_of_date, Date, nil?: true

          # @!attribute direction
          #   Either `credit` or `debit`.
          #
          #   @return [String]
          required :direction, String

          # @!attribute internal_account_id
          #   The ID of the relevant Internal Account.
          #
          #   @return [String]
          required :internal_account_id, String

          # @!attribute vendor_code
          #   When applicable, the bank-given code that determines the transaction's category.
          #   For most banks this is the BAI2/BTRS transaction code.
          #
          #   @return [String, nil]
          required :vendor_code, String, nil?: true

          # @!attribute vendor_code_type
          #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   `swift`, `us_bank`, or others.
          #
          #   @return [String, nil]
          required :vendor_code_type, String, nil?: true

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!attribute posted
          #   This field will be `true` if the transaction has posted to the account.
          #
          #   @return [Boolean, nil]
          optional :posted, ModernTreasury::Internal::Type::Boolean

          # @!attribute type
          #   The type of the transaction. Examples could be
          #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type, nil]
          optional :type,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type
                   },
                   nil?: true

          # @!attribute vendor_customer_id
          #   An identifier given to this transaction by the bank, often `null`.
          #
          #   @return [String, nil]
          optional :vendor_customer_id, String, nil?: true

          # @!attribute vendor_description
          #   The transaction detail text that often appears in on your bank statement and in
          #   your banking portal.
          #
          #   @return [String, nil]
          optional :vendor_description, String, nil?: true

          # @!method initialize(amount:, as_of_date:, direction:, internal_account_id:, vendor_code:, vendor_code_type:, metadata: nil, posted: nil, type: nil, vendor_customer_id: nil, vendor_description: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest}
          #   for more details.
          #
          #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
          #
          #   @param as_of_date [Date, nil] The date on which the transaction occurred.
          #
          #   @param direction [String] Either `credit` or `debit`.
          #
          #   @param internal_account_id [String] The ID of the relevant Internal Account.
          #
          #   @param vendor_code [String, nil] When applicable, the bank-given code that determines the transaction's category.
          #
          #   @param vendor_code_type [String, nil] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param posted [Boolean] This field will be `true` if the transaction has posted to the account.
          #
          #   @param type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type, nil] The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `r
          #
          #   @param vendor_customer_id [String, nil] An identifier given to this transaction by the bank, often `null`.
          #
          #   @param vendor_description [String, nil] The transaction detail text that often appears in on your bank statement and in

          # The type of the transaction. Examples could be
          # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest#type
          module Type
            extend ModernTreasury::Internal::Type::Enum

            ACH = :ach
            AU_BECS = :au_becs
            BACS = :bacs
            BASE = :base
            BOOK = :book
            CARD = :card
            CHATS = :chats
            CHECK = :check
            CROSS_BORDER = :cross_border
            DK_NETS = :dk_nets
            EFT = :eft
            ETHEREUM = :ethereum
            GB_FPS = :gb_fps
            HU_ICS = :hu_ics
            INTERAC = :interac
            MASAV = :masav
            MX_CCEN = :mx_ccen
            NEFT = :neft
            NICS = :nics
            NZ_BECS = :nz_becs
            PL_ELIXIR = :pl_elixir
            POLYGON = :polygon
            PROVXCHANGE = :provxchange
            RO_SENT = :ro_sent
            RTP = :rtp
            SE_BANKGIROT = :se_bankgirot
            SEN = :sen
            SEPA = :sepa
            SG_GIRO = :sg_giro
            SIC = :sic
            SIGNET = :signet
            SKNBI = :sknbi
            SOLANA = :solana
            WIRE = :wire
            ZENGIN = :zengin
            OTHER = :other

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ID < ModernTreasury::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   @param id [String]
        end

        class PaymentOrderUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute accounting
          #   @deprecated
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting, nil]
          optional :accounting,
                   -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting }

          # @!attribute accounting_category_id
          #   @deprecated
          #
          #   The ID of one of your accounting categories. Note that these will only be
          #   accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_category_id, String, nil?: true

          # @!attribute accounting_ledger_class_id
          #   @deprecated
          #
          #   The ID of one of your accounting ledger classes. Note that these will only be
          #   accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_ledger_class_id, String, nil?: true

          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented as
          #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          #
          #   @return [Integer, nil]
          optional :amount, Integer

          # @!attribute charge_bearer
          #   The party that will pay the fees for the payment order. See
          #   https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          #   differences between the options.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer, nil]
          optional :charge_bearer,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer
                   },
                   nil?: true

          # @!attribute counterparty_id
          #   Required when receiving_account_id is passed the ID of an external account.
          #
          #   @return [String, nil]
          optional :counterparty_id, String, nil?: true

          # @!attribute currency
          #   Defaults to the currency of the originating account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency, nil]
          optional :currency, enum: -> { ModernTreasury::Currency }

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute direction
          #   One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction, nil]
          optional :direction,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction }

          # @!attribute effective_date
          #   Date transactions are to be posted to the participants' account. Defaults to the
          #   current business day or the next business day if the current day is a bank
          #   holiday or weekend. Format: yyyy-mm-dd.
          #
          #   @return [Date, nil]
          optional :effective_date, Date

          # @!attribute expires_at
          #   RFP payments require an expires_at. This value must be past the effective_date.
          #
          #   @return [Time, nil]
          optional :expires_at, Time, nil?: true

          # @!attribute fallback_type
          #   A payment type to fallback to if the original type is not valid for the
          #   receiving account. Currently, this only supports falling back from RTP to ACH
          #   (type=rtp and fallback_type=ach)
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType, nil]
          optional :fallback_type,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType }

          # @!attribute foreign_exchange_contract
          #   If present, indicates a specific foreign exchange contract number that has been
          #   generated by your financial institution.
          #
          #   @return [String, nil]
          optional :foreign_exchange_contract, String, nil?: true

          # @!attribute foreign_exchange_indicator
          #   Indicates the type of FX transfer to initiate, can be either
          #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          #   currency matches the originating account currency.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator, nil]
          optional :foreign_exchange_indicator,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator
                   },
                   nil?: true

          # @!attribute line_items
          #   An array of line items that must sum up to the amount of the payment order.
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem>, nil]
          optional :line_items,
                   -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem] }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!attribute nsf_protected
          #   A boolean to determine if NSF Protection is enabled for this payment order. Note
          #   that this setting must also be turned on in your organization settings page.
          #
          #   @return [Boolean, nil]
          optional :nsf_protected, ModernTreasury::Internal::Type::Boolean

          # @!attribute originating_account_id
          #   The ID of one of your organization's internal accounts.
          #
          #   @return [String, nil]
          optional :originating_account_id, String

          # @!attribute originating_party_name
          #   If present, this will replace your default company name on receiver's bank
          #   statement. This field can only be used for ACH payments currently. For ACH, only
          #   the first 16 characters of this string will be used. Any additional characters
          #   will be truncated.
          #
          #   @return [String, nil]
          optional :originating_party_name, String, nil?: true

          # @!attribute priority
          #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          #   an overnight check rather than standard mail.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority, nil]
          optional :priority,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority }

          # @!attribute process_after
          #   If present, Modern Treasury will not process the payment until after this time.
          #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
          #   take precedence and `effective_date` will automatically update to reflect the
          #   earliest possible sending date after `process_after`. Format is ISO8601
          #   timestamp.
          #
          #   @return [Time, nil]
          optional :process_after, Time, nil?: true

          # @!attribute purpose
          #   For `wire`, this is usually the purpose which is transmitted via the
          #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
          #   digit CPA Code that will be attached to the payment.
          #
          #   @return [String, nil]
          optional :purpose, String, nil?: true

          # @!attribute receiving_account
          #   Either `receiving_account` or `receiving_account_id` must be present. When using
          #   `receiving_account_id`, you may pass the id of an external account or an
          #   internal account.
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount, nil]
          optional :receiving_account,
                   -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount }

          # @!attribute receiving_account_id
          #   Either `receiving_account` or `receiving_account_id` must be present. When using
          #   `receiving_account_id`, you may pass the id of an external account or an
          #   internal account.
          #
          #   @return [String, nil]
          optional :receiving_account_id, String

          # @!attribute reconciliation_status
          #   One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus, nil]
          optional :reconciliation_status,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus }

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire`
          #   payments the field will be passed through as the "Originator to Beneficiary
          #   Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String, nil?: true

          # @!attribute send_remittance_advice
          #   Send an email to the counterparty when the payment order is sent to the bank. If
          #   `null`, `send_remittance_advice` on the Counterparty is used.
          #
          #   @return [Boolean, nil]
          optional :send_remittance_advice, ModernTreasury::Internal::Type::Boolean, nil?: true

          # @!attribute statement_descriptor
          #   An optional descriptor which will appear in the receiver's statement. For
          #   `check` payments this field will be used as the memo line. For `ach` the maximum
          #   length is 10 characters. Note that for ACH payments, the name on your bank
          #   account will be included automatically by the bank, so you can use the
          #   characters for other useful information. For `eft` the maximum length is 15
          #   characters.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String, nil?: true

          # @!attribute status
          #   To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          #   use `approved`. To undo approval on a denied or approved payment order, use
          #   `needs_approval`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status, nil]
          optional :status,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status }

          # @!attribute subtype
          #   An additional layer of classification for the type of payment order you are
          #   doing. This field is only used for `ach` payment orders currently. For `ach`
          #   payment orders, the `subtype` represents the SEC code. We currently support
          #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
          optional :subtype, enum: -> { ModernTreasury::PaymentOrderSubtype }, nil?: true

          # @!attribute type
          #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
          #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
          #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderType, nil]
          optional :type, enum: -> { ModernTreasury::PaymentOrderType }

          # @!attribute ultimate_originating_party_identifier
          #   This represents the identifier by which the person is known to the receiver when
          #   using the CIE subtype for ACH payments. Only the first 22 characters of this
          #   string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_identifier, String, nil?: true

          # @!attribute ultimate_originating_party_name
          #   This represents the name of the person that the payment is on behalf of when
          #   using the CIE subtype for ACH payments. Only the first 15 characters of this
          #   string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_name, String, nil?: true

          # @!attribute ultimate_receiving_party_identifier
          #   This represents the name of the merchant that the payment is being sent to when
          #   using the CIE subtype for ACH payments. Only the first 22 characters of this
          #   string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_identifier, String, nil?: true

          # @!attribute ultimate_receiving_party_name
          #   This represents the identifier by which the merchant is known to the person
          #   initiating an ACH payment with CIE subtype. Only the first 15 characters of this
          #   string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_name, String, nil?: true

          # @!method initialize(id: nil, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, amount: nil, charge_bearer: nil, counterparty_id: nil, currency: nil, description: nil, direction: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_account_id: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, reconciliation_status: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, status: nil, subtype: nil, type: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID}
          #   for more details.
          #
          #   @param id [String]
          #
          #   @param accounting [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting]
          #
          #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
          #
          #   @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be ac
          #
          #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
          #
          #   @param charge_bearer [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer, nil] The party that will pay the fees for the payment order. See https://docs.modernt
          #
          #   @param counterparty_id [String, nil] Required when receiving_account_id is passed the ID of an external account.
          #
          #   @param currency [Symbol, ModernTreasury::Models::Currency] Defaults to the currency of the originating account.
          #
          #   @param description [String, nil] An optional description for internal use.
          #
          #   @param direction [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
          #
          #   @param effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
          #
          #   @param expires_at [Time, nil] RFP payments require an expires_at. This value must be past the effective_date.
          #
          #   @param fallback_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType] A payment type to fallback to if the original type is not valid for the receivin
          #
          #   @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
          #
          #   @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator, nil] Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`
          #
          #   @param line_items [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem>] An array of line items that must sum up to the amount of the payment order.
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
          #
          #   @param originating_account_id [String] The ID of one of your organization's internal accounts.
          #
          #   @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank state
          #
          #   @param priority [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
          #
          #   @param process_after [Time, nil] If present, Modern Treasury will not process the payment until after this time.
          #
          #   @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the "InstrForDb
          #
          #   @param receiving_account [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
          #
          #   @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
          #
          #   @param reconciliation_status [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus] One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          #
          #   @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
          #
          #   @param send_remittance_advice [Boolean, nil] Send an email to the counterparty when the payment order is sent to the bank. If
          #
          #   @param statement_descriptor [String, nil] An optional descriptor which will appear in the receiver's statement. For `check
          #
          #   @param status [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status] To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          #
          #   @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil] An additional layer of classification for the type of payment order you are doin
          #
          #   @param type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
          #
          #   @param ultimate_originating_party_identifier [String, nil] This represents the identifier by which the person is known to the receiver when
          #
          #   @param ultimate_originating_party_name [String, nil] This represents the name of the person that the payment is on behalf of when usi
          #
          #   @param ultimate_receiving_party_identifier [String, nil] This represents the name of the merchant that the payment is being sent to when
          #
          #   @param ultimate_receiving_party_name [String, nil] This represents the identifier by which the merchant is known to the person init

          # @deprecated
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#accounting
          class Accounting < ModernTreasury::Internal::Type::BaseModel
            # @!attribute account_id
            #   @deprecated
            #
            #   The ID of one of your accounting categories. Note that these will only be
            #   accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :account_id, String, nil?: true

            # @!attribute class_id
            #   @deprecated
            #
            #   The ID of one of the class objects in your accounting system. Class objects
            #   track segments of your business independent of client or project. Note that
            #   these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :class_id, String, nil?: true

            # @!method initialize(account_id: nil, class_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting}
            #   for more details.
            #
            #   @param account_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
            #
            #   @param class_id [String, nil] The ID of one of the class objects in your accounting system. Class objects trac
          end

          # The party that will pay the fees for the payment order. See
          # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          # differences between the options.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#charge_bearer
          module ChargeBearer
            extend ModernTreasury::Internal::Type::Enum

            SHARED = :shared
            SENDER = :sender
            RECEIVER = :receiver

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          # transaction. A `credit` moves money from your account to someone else's. A
          # `debit` pulls money from someone else's account to your own. Note that wire,
          # rtp, and check payments will always be `credit`.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#direction
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            CREDIT = :credit
            DEBIT = :debit

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # A payment type to fallback to if the original type is not valid for the
          # receiving account. Currently, this only supports falling back from RTP to ACH
          # (type=rtp and fallback_type=ach)
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#fallback_type
          module FallbackType
            extend ModernTreasury::Internal::Type::Enum

            ACH = :ach

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Indicates the type of FX transfer to initiate, can be either
          # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          # currency matches the originating account currency.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#foreign_exchange_indicator
          module ForeignExchangeIndicator
            extend ModernTreasury::Internal::Type::Enum

            FIXED_TO_VARIABLE = :fixed_to_variable
            VARIABLE_TO_FIXED = :variable_to_fixed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class LineItem < ModernTreasury::Internal::Type::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented
            #   as 1000.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute accounting_category_id
            #   The ID of one of your accounting categories. Note that these will only be
            #   accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :accounting_category_id, String, nil?: true

            # @!attribute description
            #   A free-form description of the line item.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

            # @!method initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem}
            #   for more details.
            #
            #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
            #
            #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
            #
            #   @param description [String, nil] A free-form description of the line item.
            #
            #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          end

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          # an overnight check rather than standard mail.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#priority
          module Priority
            extend ModernTreasury::Internal::Type::Enum

            HIGH = :high
            NORMAL = :normal

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#receiving_account
          class ReceivingAccount < ModernTreasury::Internal::Type::BaseModel
            # @!attribute account_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail>, nil]
            optional :account_details,
                     -> do
                       ModernTreasury::Internal::Type::ArrayOf[
                         ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                       ]
                     end

            # @!attribute account_type
            #   Can be `checking`, `savings` or `other`.
            #
            #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
            optional :account_type, enum: -> { ModernTreasury::ExternalAccountType }

            # @!attribute contact_details
            #
            #   @return [Array<ModernTreasury::Models::ContactDetailCreateRequest>, nil]
            optional :contact_details,
                     -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ContactDetailCreateRequest] }

            # @!attribute external_id
            #   An optional user-defined 180 character unique identifier.
            #
            #   @return [String, nil]
            optional :external_id, String, nil?: true

            # @!attribute ledger_account
            #   Specifies a ledger account object that will be created with the external
            #   account. The resulting ledger account is linked to the external account for
            #   auto-ledgering Payment objects. See
            #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            #   for more details.
            #
            #   @return [ModernTreasury::Models::LedgerAccountCreateRequest, nil]
            optional :ledger_account, -> { ModernTreasury::LedgerAccountCreateRequest }

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

            # @!attribute name
            #   A nickname for the external account. This is only for internal usage and won't
            #   affect any payments
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute party_address
            #   Required if receiving wire payments.
            #
            #   @return [ModernTreasury::Models::AddressRequest, nil]
            optional :party_address, -> { ModernTreasury::AddressRequest }

            # @!attribute party_identifier
            #
            #   @return [String, nil]
            optional :party_identifier, String

            # @!attribute party_name
            #   If this value isn't provided, it will be inherited from the counterparty's name.
            #
            #   @return [String, nil]
            optional :party_name, String

            # @!attribute party_type
            #   Either `individual` or `business`.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType, nil]
            optional :party_type,
                     enum: -> {
                       ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType
                     },
                     nil?: true

            # @!attribute plaid_processor_token
            #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            #   you can pass the processor token in this field.
            #
            #   @return [String, nil]
            optional :plaid_processor_token, String

            # @!attribute routing_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail>, nil]
            optional :routing_details,
                     -> do
                       ModernTreasury::Internal::Type::ArrayOf[
                         ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                       ]
                     end

            # @!method initialize(account_details: nil, account_type: nil, contact_details: nil, external_id: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount}
            #   for more details.
            #
            #   Either `receiving_account` or `receiving_account_id` must be present. When using
            #   `receiving_account_id`, you may pass the id of an external account or an
            #   internal account.
            #
            #   @param account_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail>]
            #
            #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Can be `checking`, `savings` or `other`.
            #
            #   @param contact_details [Array<ModernTreasury::Models::ContactDetailCreateRequest>]
            #
            #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
            #
            #   @param ledger_account [ModernTreasury::Models::LedgerAccountCreateRequest] Specifies a ledger account object that will be created with the external account
            #
            #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
            #
            #   @param name [String, nil] A nickname for the external account. This is only for internal usage and won't a
            #
            #   @param party_address [ModernTreasury::Models::AddressRequest] Required if receiving wire payments.
            #
            #   @param party_identifier [String]
            #
            #   @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
            #
            #   @param party_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType, nil] Either `individual` or `business`.
            #
            #   @param plaid_processor_token [String] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            #
            #   @param routing_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail>]

            class AccountDetail < ModernTreasury::Internal::Type::BaseModel
              # @!attribute account_number
              #
              #   @return [String]
              required :account_number, String

              # @!attribute account_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType, nil]
              optional :account_number_type,
                       enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType }

              # @!method initialize(account_number:, account_number_type: nil)
              #   @param account_number [String]
              #   @param account_number_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType]

              # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail#account_number_type
              module AccountNumberType
                extend ModernTreasury::Internal::Type::Enum

                AU_NUMBER = :au_number
                BASE_ADDRESS = :base_address
                CLABE = :clabe
                ETHEREUM_ADDRESS = :ethereum_address
                HK_NUMBER = :hk_number
                IBAN = :iban
                ID_NUMBER = :id_number
                NZ_NUMBER = :nz_number
                OTHER = :other
                PAN = :pan
                POLYGON_ADDRESS = :polygon_address
                SG_NUMBER = :sg_number
                SOLANA_ADDRESS = :solana_address
                WALLET_ADDRESS = :wallet_address

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Either `individual` or `business`.
            #
            # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount#party_type
            module PartyType
              extend ModernTreasury::Internal::Type::Enum

              BUSINESS = :business
              INDIVIDUAL = :individual

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
              # @!attribute routing_number
              #
              #   @return [String]
              required :routing_number, String

              # @!attribute routing_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType]
              required :routing_number_type,
                       enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType }

              # @!attribute payment_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType, nil]
              optional :payment_type,
                       enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType }

              # @!method initialize(routing_number:, routing_number_type:, payment_type: nil)
              #   @param routing_number [String]
              #   @param routing_number_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType]
              #   @param payment_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType]

              # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail#routing_number_type
              module RoutingNumberType
                extend ModernTreasury::Internal::Type::Enum

                ABA = :aba
                AU_BSB = :au_bsb
                BR_CODIGO = :br_codigo
                CA_CPA = :ca_cpa
                CHIPS = :chips
                CNAPS = :cnaps
                DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
                GB_SORT_CODE = :gb_sort_code
                HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
                HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
                ID_SKNBI_CODE = :id_sknbi_code
                IL_BANK_CODE = :il_bank_code
                IN_IFSC = :in_ifsc
                JP_ZENGIN_CODE = :jp_zengin_code
                MY_BRANCH_CODE = :my_branch_code
                MX_BANK_IDENTIFIER = :mx_bank_identifier
                NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
                PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
                SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
                SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
                SWIFT = :swift
                ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail#payment_type
              module PaymentType
                extend ModernTreasury::Internal::Type::Enum

                ACH = :ach
                AU_BECS = :au_becs
                BACS = :bacs
                BASE = :base
                BOOK = :book
                CARD = :card
                CHATS = :chats
                CHECK = :check
                CROSS_BORDER = :cross_border
                DK_NETS = :dk_nets
                EFT = :eft
                ETHEREUM = :ethereum
                GB_FPS = :gb_fps
                HU_ICS = :hu_ics
                INTERAC = :interac
                MASAV = :masav
                MX_CCEN = :mx_ccen
                NEFT = :neft
                NICS = :nics
                NZ_BECS = :nz_becs
                PL_ELIXIR = :pl_elixir
                POLYGON = :polygon
                PROVXCHANGE = :provxchange
                RO_SENT = :ro_sent
                RTP = :rtp
                SE_BANKGIROT = :se_bankgirot
                SEN = :sen
                SEPA = :sepa
                SG_GIRO = :sg_giro
                SIC = :sic
                SIGNET = :signet
                SKNBI = :sknbi
                SOLANA = :solana
                WIRE = :wire
                ZENGIN = :zengin

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#reconciliation_status
          module ReconciliationStatus
            extend ModernTreasury::Internal::Type::Enum

            UNRECONCILED = :unreconciled
            TENTATIVELY_RECONCILED = :tentatively_reconciled
            RECONCILED = :reconciled

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          # use `approved`. To undo approval on a denied or approved payment order, use
          # `needs_approval`.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID#status
          module Status
            extend ModernTreasury::Internal::Type::Enum

            APPROVED = :approved
            CANCELLED = :cancelled
            COMPLETED = :completed
            DENIED = :denied
            FAILED = :failed
            HELD = :held
            NEEDS_APPROVAL = :needs_approval
            PENDING = :pending
            PROCESSING = :processing
            RETURNED = :returned
            REVERSED = :reversed
            SENT = :sent
            STOPPED = :stopped

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute amount_lower_bound
          #   The lowest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_lower_bound, Integer, nil?: true

          # @!attribute amount_upper_bound
          #   The highest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_upper_bound, Integer, nil?: true

          # @!attribute counterparty_id
          #   The ID of the counterparty you expect for this payment.
          #
          #   @return [String, nil]
          optional :counterparty_id, String, nil?: true

          # @!attribute currency
          #   Must conform to ISO 4217. Defaults to the currency of the internal account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency, nil]
          optional :currency, enum: -> { ModernTreasury::Currency }, nil?: true

          # @!attribute date_lower_bound
          #   The earliest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_lower_bound, Date, nil?: true

          # @!attribute date_upper_bound
          #   The latest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_upper_bound, Date, nil?: true

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute direction
          #   One of credit or debit. When you are receiving money, use credit. When you are
          #   being charged, use debit.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction, nil]
          optional :direction,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction
                   },
                   nil?: true

          # @!attribute external_id
          #   An optional user-defined 180 character unique identifier.
          #
          #   @return [String, nil]
          optional :external_id, String, nil?: true

          # @!attribute internal_account_id
          #   The ID of the Internal Account for the expected payment.
          #
          #   @return [String, nil]
          optional :internal_account_id, String, nil?: true

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!attribute reconciliation_filters
          #   The reconciliation filters you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_filters, ModernTreasury::Internal::Type::Unknown, nil?: true

          # @!attribute reconciliation_groups
          #   The reconciliation groups you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_groups, ModernTreasury::Internal::Type::Unknown, nil?: true

          # @!attribute reconciliation_rule_variables
          #   An array of reconciliation rule variables for this payment.
          #
          #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
          optional :reconciliation_rule_variables,
                   -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule] },
                   nil?: true

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire`
          #   payments the field will be passed through as the "Originator to Beneficiary
          #   Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String, nil?: true

          # @!attribute statement_descriptor
          #   The statement description you expect to see on the transaction. For ACH
          #   payments, this will be the full line item passed from the bank. For wire
          #   payments, this will be the OBI field on the wire. For check payments, this will
          #   be the memo field.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String, nil?: true

          # @!attribute status
          #   The Expected Payment's status can be updated from partially_reconciled to
          #   reconciled.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status, nil]
          optional :status,
                   enum: -> {
                     ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status
                   },
                   nil?: true

          # @!attribute type
          #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
          #   sepa, signet, wire.
          #
          #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
          optional :type, enum: -> { ModernTreasury::ExpectedPaymentType }, nil?: true

          # @!method initialize(id: nil, amount_lower_bound: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, external_id: nil, internal_account_id: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, status: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID}
          #   for more details.
          #
          #   @param id [String]
          #
          #   @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified curr
          #
          #   @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified cur
          #
          #   @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
          #
          #   @param currency [Symbol, ModernTreasury::Models::Currency, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
          #
          #   @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @param date_upper_bound [Date, nil] The latest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @param description [String, nil] An optional description for internal use.
          #
          #   @param direction [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction, nil] One of credit or debit. When you are receiving money, use credit. When you are b
          #
          #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
          #
          #   @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
          #
          #   @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
          #
          #   @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
          #
          #   @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
          #
          #   @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH payments
          #
          #   @param status [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status, nil] The Expected Payment's status can be updated from partially_reconciled to reconc
          #
          #   @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, se

          # One of credit or debit. When you are receiving money, use credit. When you are
          # being charged, use debit.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID#direction
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            CREDIT = :credit
            DEBIT = :debit

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The Expected Payment's status can be updated from partially_reconciled to
          # reconciled.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID#status
          module Status
            extend ModernTreasury::Internal::Type::Enum

            RECONCILED = :reconciled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class TransactionUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute metadata
          #   Additional data in the form of key-value pairs. Pairs can be removed by passing
          #   an empty string or `null` as the value.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!method initialize(id: nil, metadata: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID}
          #   for more details.
          #
          #   @param id [String]
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
        end

        class LedgerTransactionUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute effective_at
          #   The timestamp (ISO8601 format) at which the ledger transaction happened for
          #   reporting purposes.
          #
          #   @return [Time, nil]
          optional :effective_at, Time

          # @!attribute ledger_entries
          #   An array of ledger entry objects.
          #
          #   @return [Array<ModernTreasury::Models::LedgerEntryCreateRequest>, nil]
          optional :ledger_entries,
                   -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntryCreateRequest] }

          # @!attribute ledgerable_id
          #   If the ledger transaction can be reconciled to another object in Modern
          #   Treasury, the id will be populated here, otherwise null.
          #
          #   @return [String, nil]
          optional :ledgerable_id, String

          # @!attribute ledgerable_type
          #   If the ledger transaction can be reconciled to another object in Modern
          #   Treasury, the type will be populated here, otherwise null. This can be one of
          #   payment_order, incoming_payment_detail, expected_payment, return, or reversal.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType, nil]
          optional :ledgerable_type,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!attribute status
          #   To post a ledger transaction at creation, use `posted`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status, nil]
          optional :status,
                   enum: -> { ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status }

          # @!method initialize(id: nil, description: nil, effective_at: nil, ledger_entries: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID}
          #   for more details.
          #
          #   @param id [String]
          #
          #   @param description [String, nil] An optional description for internal use.
          #
          #   @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
          #
          #   @param ledger_entries [Array<ModernTreasury::Models::LedgerEntryCreateRequest>] An array of ledger entry objects.
          #
          #   @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern Treasury
          #
          #   @param ledgerable_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType] If the ledger transaction can be reconciled to another object in Modern Treasury
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param status [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status] To post a ledger transaction at creation, use `posted`.

          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the type will be populated here, otherwise null. This can be one of
          # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID#ledgerable_type
          module LedgerableType
            extend ModernTreasury::Internal::Type::Enum

            EXPECTED_PAYMENT = :expected_payment
            INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
            PAYMENT_ORDER = :payment_order
            RETURN = :return
            REVERSAL = :reversal

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # To post a ledger transaction at creation, use `posted`.
          #
          # @see ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID#status
          module Status
            extend ModernTreasury::Internal::Type::Enum

            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::LedgerTransactionCreateRequest, ModernTreasury::Models::LedgerAccountCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID)]
      end
    end
  end
end
