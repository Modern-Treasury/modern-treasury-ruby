# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkRequestCreateParams < ModernTreasury::BaseModel
      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType]
      required :action_type, enum: -> { ModernTreasury::Models::BulkRequestCreateParams::ActionType }

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType]
      required :resource_type, enum: -> { ModernTreasury::Models::BulkRequestCreateParams::ResourceType }

      # @!attribute resources
      #   An array of objects where each object contains the input params for a single `action_type` request on a `resource_type` resource
      #
      #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>]
      required :resources,
               ModernTreasury::ArrayOf[union: -> {
                 ModernTreasury::Models::BulkRequestCreateParams::Resource
               }]

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @param action_type [String] One of create, or update.
      #   #
      #   # @param resource_type [String] One of payment_order, expected_payment, or ledger_transaction.
      #   #
      #   # @param resources [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>] An array of objects where each object contains the input params for a single
      #   #   `action_type` request on a `resource_type` resource
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   def initialize(action_type:, resource_type:, resources:, metadata: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of create, or update.
      #
      # @example
      #
      # ```ruby
      # case action_type
      # in :create
      #   # ...
      # in :update
      #   # ...
      # in :delete
      #   # ...
      # end
      # ```
      class ActionType < ModernTreasury::Enum
        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        finalize!
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      #
      # @example
      #
      # ```ruby
      # case resource_type
      # in :payment_order
      #   # ...
      # in :ledger_transaction
      #   # ...
      # in :transaction
      #   # ...
      # in :expected_payment
      #   # ...
      # end
      # ```
      class ResourceType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment

        finalize!
      end

      # @example
      #
      # ```ruby
      # case resource
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::ID
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID
      #   # ...
      # in ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
      #   # ...
      # end
      # ```
      class Resource < ModernTreasury::Union
        variant -> {
          ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest
        }

        variant -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest }

        variant -> {
          ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest
        }

        variant -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest }

        variant -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::ID }

        variant -> {
          ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID
        }

        variant -> {
          ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID
        }

        variant -> {
          ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID
        }

        variant -> {
          ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
        }

        # @example
        #
        # ```ruby
        # payment_order_async_create_request => {
        #   amount: Integer,
        #   direction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction,
        #   originating_account_id: String,
        #   type: ModernTreasury::Models::PaymentOrderType,
        #   accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
        #   **_
        # }
        # ```
        class PaymentOrderAsyncCreateRequest < ModernTreasury::BaseModel
          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute direction
          #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction]
          required :direction,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction
                   }

          # @!attribute originating_account_id
          #   The ID of one of your organization's internal accounts.
          #
          #   @return [String]
          required :originating_account_id, String

          # @!attribute type
          #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderType]
          required :type, enum: -> { ModernTreasury::Models::PaymentOrderType }

          # @!attribute accounting
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting]
          optional :accounting,
                   -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting }

          # @!attribute accounting_category_id
          #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_category_id, String

          # @!attribute accounting_ledger_class_id
          #   The ID of one of your accounting ledger classes. Note that these will only be accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_ledger_class_id, String

          # @!attribute charge_bearer
          #   The party that will pay the fees for the payment order. Only applies to wire payment orders. Can be one of shared, sender, or receiver, which correspond respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer, nil]
          optional :charge_bearer,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer
                   }

          # @!attribute currency
          #   Defaults to the currency of the originating account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency]
          optional :currency, enum: -> { ModernTreasury::Models::Currency }

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute effective_date
          #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
          #
          #   @return [Date]
          optional :effective_date, Date

          # @!attribute expires_at
          #   RFP payments require an expires_at. This value must be past the effective_date.
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute fallback_type
          #   A payment type to fallback to if the original type is not valid for the receiving account. Currently, this only supports falling back from RTP to ACH (type=rtp and fallback_type=ach)
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType]
          optional :fallback_type,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType
                   }

          # @!attribute foreign_exchange_contract
          #   If present, indicates a specific foreign exchange contract number that has been generated by your financial institution.
          #
          #   @return [String, nil]
          optional :foreign_exchange_contract, String

          # @!attribute foreign_exchange_indicator
          #   Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order currency matches the originating account currency.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator, nil]
          optional :foreign_exchange_indicator,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator
                   }

          # @!attribute ledger_transaction
          #   Specifies a ledger transaction object that will be created with the payment order. If the ledger transaction cannot be created, then the payment order creation will fail. The resulting ledger transaction will mirror the status of the payment order.
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction]
          optional :ledger_transaction,
                   -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction }

          # @!attribute ledger_transaction_id
          #   Either ledger_transaction or ledger_transaction_id can be provided. Only a pending ledger transaction can be attached upon payment order creation. Once the payment order is created, the status of the ledger transaction tracks the payment order automatically.
          #
          #   @return [String]
          optional :ledger_transaction_id, String

          # @!attribute line_items
          #   An array of line items that must sum up to the amount of the payment order.
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem>]
          optional :line_items,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem
                   }]

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute nsf_protected
          #   A boolean to determine if NSF Protection is enabled for this payment order. Note that this setting must also be turned on in your organization settings page.
          #
          #   @return [Boolean]
          optional :nsf_protected, ModernTreasury::BooleanModel

          # @!attribute originating_party_name
          #   If present, this will replace your default company name on receiver's bank statement. This field can only be used for ACH payments currently. For ACH, only the first 16 characters of this string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :originating_party_name, String

          # @!attribute priority
          #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-day ACH or EFT transfer, respectively. For check payments, `high` can mean an overnight check rather than standard mail.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority]
          optional :priority,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority
                   }

          # @!attribute process_after
          #   If present, Modern Treasury will not process the payment until after this time. If `process_after` is past the cutoff for `effective_date`, `process_after` will take precedence and `effective_date` will automatically update to reflect the earliest possible sending date after `process_after`. Format is ISO8601 timestamp.
          #
          #   @return [Time, nil]
          optional :process_after, Time

          # @!attribute purpose
          #   For `wire`, this is usually the purpose which is transmitted via the "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3 digit CPA Code that will be attached to the payment.
          #
          #   @return [String, nil]
          optional :purpose, String

          # @!attribute receiving_account
          #   Either `receiving_account` or `receiving_account_id` must be present. When using `receiving_account_id`, you may pass the id of an external account or an internal account.
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount]
          optional :receiving_account,
                   -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount }

          # @!attribute receiving_account_id
          #   Either `receiving_account` or `receiving_account_id` must be present. When using `receiving_account_id`, you may pass the id of an external account or an internal account.
          #
          #   @return [String]
          optional :receiving_account_id, String

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String

          # @!attribute send_remittance_advice
          #   Send an email to the counterparty when the payment order is sent to the bank. If `null`, `send_remittance_advice` on the Counterparty is used.
          #
          #   @return [Boolean, nil]
          optional :send_remittance_advice, ModernTreasury::BooleanModel

          # @!attribute statement_descriptor
          #   An optional descriptor which will appear in the receiver's statement. For `check` payments this field will be used as the memo line. For `ach` the maximum length is 10 characters. Note that for ACH payments, the name on your bank account will be included automatically by the bank, so you can use the characters for other useful information. For `eft` the maximum length is 15 characters.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String

          # @!attribute subtype
          #   An additional layer of classification for the type of payment order you are doing. This field is only used for `ach` payment orders currently. For `ach`  payment orders, the `subtype`  represents the SEC code. We currently support `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
          optional :subtype, enum: -> { ModernTreasury::Models::PaymentOrderSubtype }

          # @!attribute transaction_monitoring_enabled
          #   A flag that determines whether a payment order should go through transaction monitoring.
          #
          #   @return [Boolean]
          optional :transaction_monitoring_enabled, ModernTreasury::BooleanModel

          # @!attribute ultimate_originating_party_identifier
          #   Identifier of the ultimate originator of the payment order.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_identifier, String

          # @!attribute ultimate_originating_party_name
          #   Name of the ultimate originator of the payment order.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_name, String

          # @!attribute ultimate_receiving_party_identifier
          #   Identifier of the ultimate funds recipient.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_identifier, String

          # @!attribute ultimate_receiving_party_name
          #   Name of the ultimate funds recipient.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_name, String

          # @!parse
          #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as
          #   #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          #   #
          #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
          #   #   transaction. A `credit` moves money from your account to someone else's. A
          #   #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   #   rtp, and check payments will always be `credit`.
          #   #
          #   # @param originating_account_id [String] The ID of one of your organization's internal accounts.
          #   #
          #   # @param type [String] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
          #   #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
          #   #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          #   #
          #   # @param accounting [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting]
          #   #
          #   # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be
          #   #   accessible if your accounting system has been connected.
          #   #
          #   # @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be
          #   #   accessible if your accounting system has been connected.
          #   #
          #   # @param charge_bearer [String, nil] The party that will pay the fees for the payment order. Only applies to wire
          #   #   payment orders. Can be one of shared, sender, or receiver, which correspond
          #   #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
          #   #
          #   # @param currency [String] Defaults to the currency of the originating account.
          #   #
          #   # @param description [String, nil] An optional description for internal use.
          #   #
          #   # @param effective_date [String] Date transactions are to be posted to the participants' account. Defaults to the
          #   #   current business day or the next business day if the current day is a bank
          #   #   holiday or weekend. Format: yyyy-mm-dd.
          #   #
          #   # @param expires_at [String, nil] RFP payments require an expires_at. This value must be past the effective_date.
          #   #
          #   # @param fallback_type [String] A payment type to fallback to if the original type is not valid for the
          #   #   receiving account. Currently, this only supports falling back from RTP to ACH
          #   #   (type=rtp and fallback_type=ach)
          #   #
          #   # @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
          #   #   generated by your financial institution.
          #   #
          #   # @param foreign_exchange_indicator [String, nil] Indicates the type of FX transfer to initiate, can be either
          #   #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          #   #   currency matches the originating account currency.
          #   #
          #   # @param ledger_transaction [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction] Specifies a ledger transaction object that will be created with the payment
          #   #   order. If the ledger transaction cannot be created, then the payment order
          #   #   creation will fail. The resulting ledger transaction will mirror the status of
          #   #   the payment order.
          #   #
          #   # @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a
          #   #   pending ledger transaction can be attached upon payment order creation. Once the
          #   #   payment order is created, the status of the ledger transaction tracks the
          #   #   payment order automatically.
          #   #
          #   # @param line_items [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem>] An array of line items that must sum up to the amount of the payment order.
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
          #   #   that this setting must also be turned on in your organization settings page.
          #   #
          #   # @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank
          #   #   statement. This field can only be used for ACH payments currently. For ACH, only
          #   #   the first 16 characters of this string will be used. Any additional characters
          #   #   will be truncated.
          #   #
          #   # @param priority [String] Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          #   #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          #   #   an overnight check rather than standard mail.
          #   #
          #   # @param process_after [String, nil] If present, Modern Treasury will not process the payment until after this time.
          #   #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
          #   #   take precedence and `effective_date` will automatically update to reflect the
          #   #   earliest possible sending date after `process_after`. Format is ISO8601
          #   #   timestamp.
          #   #
          #   # @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the
          #   #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
          #   #   digit CPA Code that will be attached to the payment.
          #   #
          #   # @param receiving_account [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
          #   #   `receiving_account_id`, you may pass the id of an external account or an
          #   #   internal account.
          #   #
          #   # @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
          #   #   `receiving_account_id`, you may pass the id of an external account or an
          #   #   internal account.
          #   #
          #   # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire`
          #   #   payments the field will be passed through as the "Originator to Beneficiary
          #   #   Information", also known as OBI or Fedwire tag 6000.
          #   #
          #   # @param send_remittance_advice [Boolean, nil] Send an email to the counterparty when the payment order is sent to the bank. If
          #   #   `null`, `send_remittance_advice` on the Counterparty is used.
          #   #
          #   # @param statement_descriptor [String, nil] An optional descriptor which will appear in the receiver's statement. For
          #   #   `check` payments this field will be used as the memo line. For `ach` the maximum
          #   #   length is 10 characters. Note that for ACH payments, the name on your bank
          #   #   account will be included automatically by the bank, so you can use the
          #   #   characters for other useful information. For `eft` the maximum length is 15
          #   #   characters.
          #   #
          #   # @param subtype [String, nil] An additional layer of classification for the type of payment order you are
          #   #   doing. This field is only used for `ach` payment orders currently. For `ach`
          #   #   payment orders, the `subtype` represents the SEC code. We currently support
          #   #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          #   #
          #   # @param transaction_monitoring_enabled [Boolean] A flag that determines whether a payment order should go through transaction
          #   #   monitoring.
          #   #
          #   # @param ultimate_originating_party_identifier [String, nil] Identifier of the ultimate originator of the payment order.
          #   #
          #   # @param ultimate_originating_party_name [String, nil] Name of the ultimate originator of the payment order.
          #   #
          #   # @param ultimate_receiving_party_identifier [String, nil] Identifier of the ultimate funds recipient.
          #   #
          #   # @param ultimate_receiving_party_name [String, nil] Name of the ultimate funds recipient.
          #   #
          #   def initialize(
          #     amount:,
          #     direction:,
          #     originating_account_id:,
          #     type:,
          #     accounting: nil,
          #     accounting_category_id: nil,
          #     accounting_ledger_class_id: nil,
          #     charge_bearer: nil,
          #     currency: nil,
          #     description: nil,
          #     effective_date: nil,
          #     expires_at: nil,
          #     fallback_type: nil,
          #     foreign_exchange_contract: nil,
          #     foreign_exchange_indicator: nil,
          #     ledger_transaction: nil,
          #     ledger_transaction_id: nil,
          #     line_items: nil,
          #     metadata: nil,
          #     nsf_protected: nil,
          #     originating_party_name: nil,
          #     priority: nil,
          #     process_after: nil,
          #     purpose: nil,
          #     receiving_account: nil,
          #     receiving_account_id: nil,
          #     remittance_information: nil,
          #     send_remittance_advice: nil,
          #     statement_descriptor: nil,
          #     subtype: nil,
          #     transaction_monitoring_enabled: nil,
          #     ultimate_originating_party_identifier: nil,
          #     ultimate_originating_party_name: nil,
          #     ultimate_receiving_party_identifier: nil,
          #     ultimate_receiving_party_name: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
          #
          # @example
          #
          # ```ruby
          # case direction
          # in :credit
          #   # ...
          # in :debit
          #   # ...
          # end
          # ```
          class Direction < ModernTreasury::Enum
            CREDIT = :credit
            DEBIT = :debit

            finalize!
          end

          # @example
          #
          # ```ruby
          # accounting => {
          #   account_id: String,
          #   class_id: String
          # }
          # ```
          class Accounting < ModernTreasury::BaseModel
            # @!attribute account_id
            #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :account_id, String

            # @!attribute class_id
            #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :class_id, String

            # @!parse
            #   # @param account_id [String, nil] The ID of one of your accounting categories. Note that these will only be
            #   #   accessible if your accounting system has been connected.
            #   #
            #   # @param class_id [String, nil] The ID of one of the class objects in your accounting system. Class objects
            #   #   track segments of your business independent of client or project. Note that
            #   #   these will only be accessible if your accounting system has been connected.
            #   #
            #   def initialize(account_id: nil, class_id: nil, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # The party that will pay the fees for the payment order. Only applies to wire payment orders. Can be one of shared, sender, or receiver, which correspond respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
          #
          # @example
          #
          # ```ruby
          # case charge_bearer
          # in :shared
          #   # ...
          # in :sender
          #   # ...
          # in :receiver
          #   # ...
          # end
          # ```
          class ChargeBearer < ModernTreasury::Enum
            SHARED = :shared
            SENDER = :sender
            RECEIVER = :receiver

            finalize!
          end

          # A payment type to fallback to if the original type is not valid for the receiving account. Currently, this only supports falling back from RTP to ACH (type=rtp and fallback_type=ach)
          #
          # @example
          #
          # ```ruby
          # case fallback_type
          # in :ach
          #   # ...
          # end
          # ```
          class FallbackType < ModernTreasury::Enum
            ACH = :ach

            finalize!
          end

          # Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order currency matches the originating account currency.
          #
          # @example
          #
          # ```ruby
          # case foreign_exchange_indicator
          # in :fixed_to_variable
          #   # ...
          # in :variable_to_fixed
          #   # ...
          # end
          # ```
          class ForeignExchangeIndicator < ModernTreasury::Enum
            FIXED_TO_VARIABLE = :fixed_to_variable
            VARIABLE_TO_FIXED = :variable_to_fixed

            finalize!
          end

          # @example
          #
          # ```ruby
          # ledger_transaction => {
          #   ledger_entries: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry] === _1 },
          #   description: String,
          #   effective_at: Time,
          #   effective_date: Date,
          #   external_id: String,
          #   **_
          # }
          # ```
          class LedgerTransaction < ModernTreasury::BaseModel
            # @!attribute ledger_entries
            #   An array of ledger entry objects.
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry>]
            required :ledger_entries,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                     }]

            # @!attribute description
            #   An optional description for internal use.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute effective_at
            #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
            #
            #   @return [Time]
            optional :effective_at, Time

            # @!attribute effective_date
            #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
            #
            #   @return [Date]
            optional :effective_date, Date

            # @!attribute external_id
            #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
            #
            #   @return [String]
            optional :external_id, String

            # @!attribute ledgerable_id
            #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
            #
            #   @return [String]
            optional :ledgerable_id, String

            # @!attribute ledgerable_type
            #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType]
            optional :ledgerable_type,
                     enum: -> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType
                     }

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!attribute status
            #   To post a ledger transaction at creation, use `posted`.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status]
            optional :status,
                     enum: -> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status
                     }

            # @!parse
            #   # Specifies a ledger transaction object that will be created with the payment
            #   #   order. If the ledger transaction cannot be created, then the payment order
            #   #   creation will fail. The resulting ledger transaction will mirror the status of
            #   #   the payment order.
            #   #
            #   # @param ledger_entries [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry>] An array of ledger entry objects.
            #   #
            #   # @param description [String, nil] An optional description for internal use.
            #   #
            #   # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
            #   #   reporting purposes.
            #   #
            #   # @param effective_date [String] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
            #   #   purposes.
            #   #
            #   # @param external_id [String] A unique string to represent the ledger transaction. Only one pending or posted
            #   #   ledger transaction may have this ID in the ledger.
            #   #
            #   # @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern
            #   #   Treasury, the id will be populated here, otherwise null.
            #   #
            #   # @param ledgerable_type [String] If the ledger transaction can be reconciled to another object in Modern
            #   #   Treasury, the type will be populated here, otherwise null. This can be one of
            #   #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
            #   #   reversal.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   # @param status [String] To post a ledger transaction at creation, use `posted`.
            #   #
            #   def initialize(
            #     ledger_entries:,
            #     description: nil,
            #     effective_at: nil,
            #     effective_date: nil,
            #     external_id: nil,
            #     ledgerable_id: nil,
            #     ledgerable_type: nil,
            #     metadata: nil,
            #     status: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # @example
            #
            # ```ruby
            # ledger_entry => {
            #   amount: Integer,
            #   direction: ModernTreasury::Models::TransactionDirection,
            #   ledger_account_id: String,
            #   available_balance_amount: -> { ModernTreasury::HashOf[Integer] === _1 },
            #   lock_version: Integer,
            #   **_
            # }
            # ```
            class LedgerEntry < ModernTreasury::BaseModel
              # @!attribute amount
              #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
              #
              #   @return [Integer]
              required :amount, Integer

              # @!attribute direction
              #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
              #
              #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
              required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

              # @!attribute ledger_account_id
              #   The ledger account that this ledger entry is associated with.
              #
              #   @return [String]
              required :ledger_account_id, String

              # @!attribute available_balance_amount
              #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s available balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
              #
              #   @return [Hash{Symbol => Integer}, nil]
              optional :available_balance_amount, ModernTreasury::HashOf[Integer]

              # @!attribute lock_version
              #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
              #
              #   @return [Integer, nil]
              optional :lock_version, Integer

              # @!attribute metadata
              #   Additional data represented as key-value pairs. Both the key and value must be strings.
              #
              #   @return [Hash{Symbol => String}]
              optional :metadata, ModernTreasury::HashOf[String]

              # @!attribute pending_balance_amount
              #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s pending balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
              #
              #   @return [Hash{Symbol => Integer}, nil]
              optional :pending_balance_amount, ModernTreasury::HashOf[Integer]

              # @!attribute posted_balance_amount
              #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s posted balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
              #
              #   @return [Hash{Symbol => Integer}, nil]
              optional :posted_balance_amount, ModernTreasury::HashOf[Integer]

              # @!attribute show_resulting_ledger_account_balances
              #   If true, response will include the balance of the associated ledger account for the entry.
              #
              #   @return [Boolean, nil]
              optional :show_resulting_ledger_account_balances, ModernTreasury::BooleanModel

              # @!parse
              #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
              #   #   as 1000. Can be any integer up to 36 digits.
              #   #
              #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
              #   #   transaction. A `credit` moves money from your account to someone else's. A
              #   #   `debit` pulls money from someone else's account to your own. Note that wire,
              #   #   rtp, and check payments will always be `credit`.
              #   #
              #   # @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
              #   #
              #   # @param available_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   #   account’s available balance. If any of these conditions would be false after the
              #   #   transaction is created, the entire call will fail with error code 422.
              #   #
              #   # @param lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger
              #   #   transaction to only succeed if no ledger transactions have posted since the
              #   #   given version. See our post about Designing the Ledgers API with Optimistic
              #   #   Locking for more details.
              #   #
              #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
              #   #   strings.
              #   #
              #   # @param pending_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   #   account’s pending balance. If any of these conditions would be false after the
              #   #   transaction is created, the entire call will fail with error code 422.
              #   #
              #   # @param posted_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   #   account’s posted balance. If any of these conditions would be false after the
              #   #   transaction is created, the entire call will fail with error code 422.
              #   #
              #   # @param show_resulting_ledger_account_balances [Boolean, nil] If true, response will include the balance of the associated ledger account for
              #   #   the entry.
              #   #
              #   def initialize(
              #     amount:,
              #     direction:,
              #     ledger_account_id:,
              #     available_balance_amount: nil,
              #     lock_version: nil,
              #     metadata: nil,
              #     pending_balance_amount: nil,
              #     posted_balance_amount: nil,
              #     show_resulting_ledger_account_balances: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end

            # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
            #
            # @example
            #
            # ```ruby
            # case ledgerable_type
            # in :expected_payment
            #   # ...
            # in :incoming_payment_detail
            #   # ...
            # in :paper_item
            #   # ...
            # in :payment_order
            #   # ...
            # in :return
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class LedgerableType < ModernTreasury::Enum
              EXPECTED_PAYMENT = :expected_payment
              INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
              PAPER_ITEM = :paper_item
              PAYMENT_ORDER = :payment_order
              RETURN = :return
              REVERSAL = :reversal

              finalize!
            end

            # To post a ledger transaction at creation, use `posted`.
            #
            # @example
            #
            # ```ruby
            # case status
            # in :archived
            #   # ...
            # in :pending
            #   # ...
            # in :posted
            #   # ...
            # end
            # ```
            class Status < ModernTreasury::Enum
              ARCHIVED = :archived
              PENDING = :pending
              POSTED = :posted

              finalize!
            end
          end

          # @example
          #
          # ```ruby
          # line_item => {
          #   amount: Integer,
          #   accounting_category_id: String,
          #   description: String,
          #   metadata: -> { ModernTreasury::HashOf[String] === _1 }
          # }
          # ```
          class LineItem < ModernTreasury::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute accounting_category_id
            #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :accounting_category_id, String

            # @!attribute description
            #   A free-form description of the line item.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!parse
            #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
            #   #   as 1000.
            #   #
            #   # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be
            #   #   accessible if your accounting system has been connected.
            #   #
            #   # @param description [String, nil] A free-form description of the line item.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-day ACH or EFT transfer, respectively. For check payments, `high` can mean an overnight check rather than standard mail.
          #
          # @example
          #
          # ```ruby
          # case priority
          # in :high
          #   # ...
          # in :normal
          #   # ...
          # end
          # ```
          class Priority < ModernTreasury::Enum
            HIGH = :high
            NORMAL = :normal

            finalize!
          end

          # @example
          #
          # ```ruby
          # receiving_account => {
          #   account_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail] === _1 },
          #   account_type: ModernTreasury::Models::ExternalAccountType,
          #   contact_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail] === _1 },
          #   ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
          #   metadata: -> { ModernTreasury::HashOf[String] === _1 },
          #   **_
          # }
          # ```
          class ReceivingAccount < ModernTreasury::BaseModel
            # @!attribute account_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail>]
            optional :account_details,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                     }]

            # @!attribute account_type
            #   Can be `checking`, `savings` or `other`.
            #
            #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
            optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

            # @!attribute contact_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail>]
            optional :contact_details,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                     }]

            # @!attribute ledger_account
            #   Specifies a ledger account object that will be created with the external account. The resulting ledger account is linked to the external account for auto-ledgering Payment objects. See https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects for more details.
            #
            #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount]
            optional :ledger_account,
                     -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount }

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!attribute name
            #   A nickname for the external account. This is only for internal usage and won't affect any payments
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute party_address
            #   Required if receiving wire payments.
            #
            #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress]
            optional :party_address,
                     -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress }

            # @!attribute party_identifier
            #
            #   @return [String]
            optional :party_identifier, String

            # @!attribute party_name
            #   If this value isn't provided, it will be inherited from the counterparty's name.
            #
            #   @return [String]
            optional :party_name, String

            # @!attribute party_type
            #   Either `individual` or `business`.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType, nil]
            optional :party_type,
                     enum: -> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType
                     }

            # @!attribute plaid_processor_token
            #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account, you can pass the processor token in this field.
            #
            #   @return [String]
            optional :plaid_processor_token, String

            # @!attribute routing_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail>]
            optional :routing_details,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                     }]

            # @!parse
            #   # Either `receiving_account` or `receiving_account_id` must be present. When using
            #   #   `receiving_account_id`, you may pass the id of an external account or an
            #   #   internal account.
            #   #
            #   # @param account_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail>]
            #   #
            #   # @param account_type [String] Can be `checking`, `savings` or `other`.
            #   #
            #   # @param contact_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail>]
            #   #
            #   # @param ledger_account [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount] Specifies a ledger account object that will be created with the external
            #   #   account. The resulting ledger account is linked to the external account for
            #   #   auto-ledgering Payment objects. See
            #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            #   #   for more details.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   # @param name [String, nil] A nickname for the external account. This is only for internal usage and won't
            #   #   affect any payments
            #   #
            #   # @param party_address [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress] Required if receiving wire payments.
            #   #
            #   # @param party_identifier [String]
            #   #
            #   # @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
            #   #
            #   # @param party_type [String, nil] Either `individual` or `business`.
            #   #
            #   # @param plaid_processor_token [String] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            #   #   you can pass the processor token in this field.
            #   #
            #   # @param routing_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail>]
            #   #
            #   def initialize(
            #     account_details: nil,
            #     account_type: nil,
            #     contact_details: nil,
            #     ledger_account: nil,
            #     metadata: nil,
            #     name: nil,
            #     party_address: nil,
            #     party_identifier: nil,
            #     party_name: nil,
            #     party_type: nil,
            #     plaid_processor_token: nil,
            #     routing_details: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # @example
            #
            # ```ruby
            # account_detail => {
            #   account_number: String,
            #   account_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType
            # }
            # ```
            class AccountDetail < ModernTreasury::BaseModel
              # @!attribute account_number
              #
              #   @return [String]
              required :account_number, String

              # @!attribute account_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType]
              optional :account_number_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType
                       }

              # @!parse
              #   # @param account_number [String]
              #   # @param account_number_type [String]
              #   #
              #   def initialize(account_number:, account_number_type: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case account_number_type
              # in :au_number
              #   # ...
              # in :clabe
              #   # ...
              # in :hk_number
              #   # ...
              # in :iban
              #   # ...
              # in :id_number
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class AccountNumberType < ModernTreasury::Enum
                AU_NUMBER = :au_number
                CLABE = :clabe
                HK_NUMBER = :hk_number
                IBAN = :iban
                ID_NUMBER = :id_number
                NZ_NUMBER = :nz_number
                OTHER = :other
                PAN = :pan
                SG_NUMBER = :sg_number
                WALLET_ADDRESS = :wallet_address

                finalize!
              end
            end

            # @example
            #
            # ```ruby
            # contact_detail => {
            #   contact_identifier: String,
            #   contact_identifier_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType
            # }
            # ```
            class ContactDetail < ModernTreasury::BaseModel
              # @!attribute contact_identifier
              #
              #   @return [String]
              optional :contact_identifier, String

              # @!attribute contact_identifier_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType]
              optional :contact_identifier_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType
                       }

              # @!parse
              #   # @param contact_identifier [String]
              #   # @param contact_identifier_type [String]
              #   #
              #   def initialize(contact_identifier: nil, contact_identifier_type: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case contact_identifier_type
              # in :email
              #   # ...
              # in :phone_number
              #   # ...
              # in :website
              #   # ...
              # end
              # ```
              class ContactIdentifierType < ModernTreasury::Enum
                EMAIL = :email
                PHONE_NUMBER = :phone_number
                WEBSITE = :website

                finalize!
              end
            end

            # @example
            #
            # ```ruby
            # ledger_account => {
            #   currency: String,
            #   ledger_id: String,
            #   name: String,
            #   normal_balance: ModernTreasury::Models::TransactionDirection,
            #   currency_exponent: Integer,
            #   **_
            # }
            # ```
            class LedgerAccount < ModernTreasury::BaseModel
              # @!attribute currency
              #   The currency of the ledger account.
              #
              #   @return [String]
              required :currency, String

              # @!attribute ledger_id
              #   The id of the ledger that this account belongs to.
              #
              #   @return [String]
              required :ledger_id, String

              # @!attribute name
              #   The name of the ledger account.
              #
              #   @return [String]
              required :name, String

              # @!attribute normal_balance
              #   The normal balance of the ledger account.
              #
              #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
              required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

              # @!attribute currency_exponent
              #   The currency exponent of the ledger account.
              #
              #   @return [Integer, nil]
              optional :currency_exponent, Integer

              # @!attribute description
              #   The description of the ledger account.
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ledger_account_category_ids
              #   The array of ledger account category ids that this ledger account should be a child of.
              #
              #   @return [Array<String>]
              optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

              # @!attribute ledgerable_id
              #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
              #
              #   @return [String]
              optional :ledgerable_id, String

              # @!attribute ledgerable_type
              #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType]
              optional :ledgerable_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType
                       }

              # @!attribute metadata
              #   Additional data represented as key-value pairs. Both the key and value must be strings.
              #
              #   @return [Hash{Symbol => String}]
              optional :metadata, ModernTreasury::HashOf[String]

              # @!parse
              #   # Specifies a ledger account object that will be created with the external
              #   #   account. The resulting ledger account is linked to the external account for
              #   #   auto-ledgering Payment objects. See
              #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
              #   #   for more details.
              #   #
              #   # @param currency [String] The currency of the ledger account.
              #   #
              #   # @param ledger_id [String] The id of the ledger that this account belongs to.
              #   #
              #   # @param name [String] The name of the ledger account.
              #   #
              #   # @param normal_balance [String] The normal balance of the ledger account.
              #   #
              #   # @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
              #   #
              #   # @param description [String, nil] The description of the ledger account.
              #   #
              #   # @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account should be a
              #   #   child of.
              #   #
              #   # @param ledgerable_id [String] If the ledger account links to another object in Modern Treasury, the id will be
              #   #   populated here, otherwise null.
              #   #
              #   # @param ledgerable_type [String] If the ledger account links to another object in Modern Treasury, the type will
              #   #   be populated here, otherwise null. The value is one of internal_account or
              #   #   external_account.
              #   #
              #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
              #   #   strings.
              #   #
              #   def initialize(
              #     currency:,
              #     ledger_id:,
              #     name:,
              #     normal_balance:,
              #     currency_exponent: nil,
              #     description: nil,
              #     ledger_account_category_ids: nil,
              #     ledgerable_id: nil,
              #     ledgerable_type: nil,
              #     metadata: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
              #
              # @example
              #
              # ```ruby
              # case ledgerable_type
              # in :counterparty
              #   # ...
              # in :external_account
              #   # ...
              # in :internal_account
              #   # ...
              # in :virtual_account
              #   # ...
              # end
              # ```
              class LedgerableType < ModernTreasury::Enum
                COUNTERPARTY = :counterparty
                EXTERNAL_ACCOUNT = :external_account
                INTERNAL_ACCOUNT = :internal_account
                VIRTUAL_ACCOUNT = :virtual_account

                finalize!
              end
            end

            # @example
            #
            # ```ruby
            # party_address => {
            #   country: String,
            #   line1: String,
            #   line2: String,
            #   locality: String,
            #   postal_code: String
            # }
            # ```
            class PartyAddress < ModernTreasury::BaseModel
              # @!attribute country
              #   Country code conforms to [ISO 3166-1 alpha-2]
              #
              #   @return [String, nil]
              optional :country, String

              # @!attribute line1
              #
              #   @return [String, nil]
              optional :line1, String

              # @!attribute line2
              #
              #   @return [String, nil]
              optional :line2, String

              # @!attribute locality
              #   Locality or City.
              #
              #   @return [String, nil]
              optional :locality, String

              # @!attribute postal_code
              #   The postal code of the address.
              #
              #   @return [String, nil]
              optional :postal_code, String

              # @!attribute region
              #   Region or State.
              #
              #   @return [String, nil]
              optional :region, String

              # @!parse
              #   # Required if receiving wire payments.
              #   #
              #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
              #   #
              #   # @param line1 [String, nil]
              #   #
              #   # @param line2 [String, nil]
              #   #
              #   # @param locality [String, nil] Locality or City.
              #   #
              #   # @param postal_code [String, nil] The postal code of the address.
              #   #
              #   # @param region [String, nil] Region or State.
              #   #
              #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end

            # Either `individual` or `business`.
            #
            # @example
            #
            # ```ruby
            # case party_type
            # in :business
            #   # ...
            # in :individual
            #   # ...
            # end
            # ```
            class PartyType < ModernTreasury::Enum
              BUSINESS = :business
              INDIVIDUAL = :individual

              finalize!
            end

            # @example
            #
            # ```ruby
            # routing_detail => {
            #   routing_number: String,
            #   routing_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType,
            #   payment_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType
            # }
            # ```
            class RoutingDetail < ModernTreasury::BaseModel
              # @!attribute routing_number
              #
              #   @return [String]
              required :routing_number, String

              # @!attribute routing_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType]
              required :routing_number_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType
                       }

              # @!attribute payment_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType]
              optional :payment_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType
                       }

              # @!parse
              #   # @param routing_number [String]
              #   # @param routing_number_type [String]
              #   # @param payment_type [String]
              #   #
              #   def initialize(routing_number:, routing_number_type:, payment_type: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case routing_number_type
              # in :aba
              #   # ...
              # in :au_bsb
              #   # ...
              # in :br_codigo
              #   # ...
              # in :ca_cpa
              #   # ...
              # in :chips
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class RoutingNumberType < ModernTreasury::Enum
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
                IN_IFSC = :in_ifsc
                JP_ZENGIN_CODE = :jp_zengin_code
                MY_BRANCH_CODE = :my_branch_code
                MX_BANK_IDENTIFIER = :mx_bank_identifier
                NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
                PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
                SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
                SWIFT = :swift
                ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

                finalize!
              end

              # @example
              #
              # ```ruby
              # case payment_type
              # in :ach
              #   # ...
              # in :au_becs
              #   # ...
              # in :bacs
              #   # ...
              # in :book
              #   # ...
              # in :card
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class PaymentType < ModernTreasury::Enum
                ACH = :ach
                AU_BECS = :au_becs
                BACS = :bacs
                BOOK = :book
                CARD = :card
                CHATS = :chats
                CHECK = :check
                CROSS_BORDER = :cross_border
                DK_NETS = :dk_nets
                EFT = :eft
                HU_ICS = :hu_ics
                INTERAC = :interac
                MASAV = :masav
                MX_CCEN = :mx_ccen
                NEFT = :neft
                NICS = :nics
                NZ_BECS = :nz_becs
                PL_ELIXIR = :pl_elixir
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
                WIRE = :wire
                ZENGIN = :zengin

                finalize!
              end
            end
          end
        end

        # @example
        #
        # ```ruby
        # expected_payment_create_request => {
        #   amount_lower_bound: Integer,
        #   amount_upper_bound: Integer,
        #   counterparty_id: String,
        #   currency: ModernTreasury::Models::Currency,
        #   date_lower_bound: Date,
        #   **_
        # }
        # ```
        class ExpectedPaymentCreateRequest < ModernTreasury::BaseModel
          # @!attribute amount_lower_bound
          #   The lowest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_lower_bound, Integer

          # @!attribute amount_upper_bound
          #   The highest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_upper_bound, Integer

          # @!attribute counterparty_id
          #   The ID of the counterparty you expect for this payment.
          #
          #   @return [String, nil]
          optional :counterparty_id, String

          # @!attribute currency
          #   Must conform to ISO 4217. Defaults to the currency of the internal account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency, nil]
          optional :currency, enum: -> { ModernTreasury::Models::Currency }

          # @!attribute date_lower_bound
          #   The earliest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_lower_bound, Date

          # @!attribute date_upper_bound
          #   The latest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_upper_bound, Date

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute direction
          #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction, nil]
          optional :direction,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction
                   }

          # @!attribute internal_account_id
          #   The ID of the Internal Account for the expected payment.
          #
          #   @return [String, nil]
          optional :internal_account_id, String

          # @!attribute ledger_transaction
          #   Specifies a ledger transaction object that will be created with the expected payment. If the ledger transaction cannot be created, then the expected payment creation will fail. The resulting ledger transaction will mirror the status of the expected payment.
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction]
          optional :ledger_transaction,
                   -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction }

          # @!attribute ledger_transaction_id
          #   Either ledger_transaction or ledger_transaction_id can be provided. Only a pending ledger transaction can be attached upon expected payment creation. Once the expected payment is created, the status of the ledger transaction tracks the expected payment automatically.
          #
          #   @return [String]
          optional :ledger_transaction_id, String

          # @!attribute line_items
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem>]
          optional :line_items,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem
                   }]

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute reconciliation_filters
          #   The reconciliation filters you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_filters, ModernTreasury::Unknown

          # @!attribute reconciliation_groups
          #   The reconciliation groups you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_groups, ModernTreasury::Unknown

          # @!attribute reconciliation_rule_variables
          #   An array of reconciliation rule variables for this payment.
          #
          #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
          optional :reconciliation_rule_variables,
                   ModernTreasury::ArrayOf[-> { ModernTreasury::Models::ReconciliationRule }]

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String

          # @!attribute statement_descriptor
          #   The statement description you expect to see on the transaction. For ACH payments, this will be the full line item passed from the bank. For wire payments, this will be the OBI field on the wire. For check payments, this will be the memo field.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String

          # @!attribute type
          #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet, wire.
          #
          #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
          optional :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }

          # @!parse
          #   # @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified
          #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #   #
          #   # @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified
          #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #   #
          #   # @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
          #   #
          #   # @param currency [String, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
          #   #
          #   # @param date_lower_bound [String, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
          #   #
          #   # @param date_upper_bound [String, nil] The latest date the payment may come in. Format: yyyy-mm-dd
          #   #
          #   # @param description [String, nil] An optional description for internal use.
          #   #
          #   # @param direction [String, nil] One of credit or debit. When you are receiving money, use credit. When you are
          #   #   being charged, use debit.
          #   #
          #   # @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
          #   #
          #   # @param ledger_transaction [ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction] Specifies a ledger transaction object that will be created with the expected
          #   #   payment. If the ledger transaction cannot be created, then the expected payment
          #   #   creation will fail. The resulting ledger transaction will mirror the status of
          #   #   the expected payment.
          #   #
          #   # @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a
          #   #   pending ledger transaction can be attached upon expected payment creation. Once
          #   #   the expected payment is created, the status of the ledger transaction tracks the
          #   #   expected payment automatically.
          #   #
          #   # @param line_items [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem>]
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
          #   #
          #   # @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
          #   #
          #   # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
          #   #
          #   # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire`
          #   #   payments the field will be passed through as the "Originator to Beneficiary
          #   #   Information", also known as OBI or Fedwire tag 6000.
          #   #
          #   # @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH
          #   #   payments, this will be the full line item passed from the bank. For wire
          #   #   payments, this will be the OBI field on the wire. For check payments, this will
          #   #   be the memo field.
          #   #
          #   # @param type [String, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
          #   #   sepa, signet, wire.
          #   #
          #   def initialize(
          #     amount_lower_bound: nil,
          #     amount_upper_bound: nil,
          #     counterparty_id: nil,
          #     currency: nil,
          #     date_lower_bound: nil,
          #     date_upper_bound: nil,
          #     description: nil,
          #     direction: nil,
          #     internal_account_id: nil,
          #     ledger_transaction: nil,
          #     ledger_transaction_id: nil,
          #     line_items: nil,
          #     metadata: nil,
          #     reconciliation_filters: nil,
          #     reconciliation_groups: nil,
          #     reconciliation_rule_variables: nil,
          #     remittance_information: nil,
          #     statement_descriptor: nil,
          #     type: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
          #
          # @example
          #
          # ```ruby
          # case direction
          # in :credit
          #   # ...
          # in :debit
          #   # ...
          # end
          # ```
          class Direction < ModernTreasury::Enum
            CREDIT = :credit
            DEBIT = :debit

            finalize!
          end

          # @example
          #
          # ```ruby
          # ledger_transaction => {
          #   ledger_entries: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry] === _1 },
          #   description: String,
          #   effective_at: Time,
          #   effective_date: Date,
          #   external_id: String,
          #   **_
          # }
          # ```
          class LedgerTransaction < ModernTreasury::BaseModel
            # @!attribute ledger_entries
            #   An array of ledger entry objects.
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry>]
            required :ledger_entries,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                     }]

            # @!attribute description
            #   An optional description for internal use.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute effective_at
            #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
            #
            #   @return [Time]
            optional :effective_at, Time

            # @!attribute effective_date
            #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
            #
            #   @return [Date]
            optional :effective_date, Date

            # @!attribute external_id
            #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
            #
            #   @return [String]
            optional :external_id, String

            # @!attribute ledgerable_id
            #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
            #
            #   @return [String]
            optional :ledgerable_id, String

            # @!attribute ledgerable_type
            #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType]
            optional :ledgerable_type,
                     enum: -> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType
                     }

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!attribute status
            #   To post a ledger transaction at creation, use `posted`.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status]
            optional :status,
                     enum: -> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status
                     }

            # @!parse
            #   # Specifies a ledger transaction object that will be created with the expected
            #   #   payment. If the ledger transaction cannot be created, then the expected payment
            #   #   creation will fail. The resulting ledger transaction will mirror the status of
            #   #   the expected payment.
            #   #
            #   # @param ledger_entries [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry>] An array of ledger entry objects.
            #   #
            #   # @param description [String, nil] An optional description for internal use.
            #   #
            #   # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
            #   #   reporting purposes.
            #   #
            #   # @param effective_date [String] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
            #   #   purposes.
            #   #
            #   # @param external_id [String] A unique string to represent the ledger transaction. Only one pending or posted
            #   #   ledger transaction may have this ID in the ledger.
            #   #
            #   # @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern
            #   #   Treasury, the id will be populated here, otherwise null.
            #   #
            #   # @param ledgerable_type [String] If the ledger transaction can be reconciled to another object in Modern
            #   #   Treasury, the type will be populated here, otherwise null. This can be one of
            #   #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
            #   #   reversal.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   # @param status [String] To post a ledger transaction at creation, use `posted`.
            #   #
            #   def initialize(
            #     ledger_entries:,
            #     description: nil,
            #     effective_at: nil,
            #     effective_date: nil,
            #     external_id: nil,
            #     ledgerable_id: nil,
            #     ledgerable_type: nil,
            #     metadata: nil,
            #     status: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # @example
            #
            # ```ruby
            # ledger_entry => {
            #   amount: Integer,
            #   direction: ModernTreasury::Models::TransactionDirection,
            #   ledger_account_id: String,
            #   available_balance_amount: -> { ModernTreasury::HashOf[Integer] === _1 },
            #   lock_version: Integer,
            #   **_
            # }
            # ```
            class LedgerEntry < ModernTreasury::BaseModel
              # @!attribute amount
              #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
              #
              #   @return [Integer]
              required :amount, Integer

              # @!attribute direction
              #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
              #
              #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
              required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

              # @!attribute ledger_account_id
              #   The ledger account that this ledger entry is associated with.
              #
              #   @return [String]
              required :ledger_account_id, String

              # @!attribute available_balance_amount
              #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s available balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
              #
              #   @return [Hash{Symbol => Integer}, nil]
              optional :available_balance_amount, ModernTreasury::HashOf[Integer]

              # @!attribute lock_version
              #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
              #
              #   @return [Integer, nil]
              optional :lock_version, Integer

              # @!attribute metadata
              #   Additional data represented as key-value pairs. Both the key and value must be strings.
              #
              #   @return [Hash{Symbol => String}]
              optional :metadata, ModernTreasury::HashOf[String]

              # @!attribute pending_balance_amount
              #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s pending balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
              #
              #   @return [Hash{Symbol => Integer}, nil]
              optional :pending_balance_amount, ModernTreasury::HashOf[Integer]

              # @!attribute posted_balance_amount
              #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s posted balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
              #
              #   @return [Hash{Symbol => Integer}, nil]
              optional :posted_balance_amount, ModernTreasury::HashOf[Integer]

              # @!attribute show_resulting_ledger_account_balances
              #   If true, response will include the balance of the associated ledger account for the entry.
              #
              #   @return [Boolean, nil]
              optional :show_resulting_ledger_account_balances, ModernTreasury::BooleanModel

              # @!parse
              #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
              #   #   as 1000. Can be any integer up to 36 digits.
              #   #
              #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
              #   #   transaction. A `credit` moves money from your account to someone else's. A
              #   #   `debit` pulls money from someone else's account to your own. Note that wire,
              #   #   rtp, and check payments will always be `credit`.
              #   #
              #   # @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
              #   #
              #   # @param available_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   #   account’s available balance. If any of these conditions would be false after the
              #   #   transaction is created, the entire call will fail with error code 422.
              #   #
              #   # @param lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger
              #   #   transaction to only succeed if no ledger transactions have posted since the
              #   #   given version. See our post about Designing the Ledgers API with Optimistic
              #   #   Locking for more details.
              #   #
              #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
              #   #   strings.
              #   #
              #   # @param pending_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   #   account’s pending balance. If any of these conditions would be false after the
              #   #   transaction is created, the entire call will fail with error code 422.
              #   #
              #   # @param posted_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   #   account’s posted balance. If any of these conditions would be false after the
              #   #   transaction is created, the entire call will fail with error code 422.
              #   #
              #   # @param show_resulting_ledger_account_balances [Boolean, nil] If true, response will include the balance of the associated ledger account for
              #   #   the entry.
              #   #
              #   def initialize(
              #     amount:,
              #     direction:,
              #     ledger_account_id:,
              #     available_balance_amount: nil,
              #     lock_version: nil,
              #     metadata: nil,
              #     pending_balance_amount: nil,
              #     posted_balance_amount: nil,
              #     show_resulting_ledger_account_balances: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end

            # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
            #
            # @example
            #
            # ```ruby
            # case ledgerable_type
            # in :expected_payment
            #   # ...
            # in :incoming_payment_detail
            #   # ...
            # in :paper_item
            #   # ...
            # in :payment_order
            #   # ...
            # in :return
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class LedgerableType < ModernTreasury::Enum
              EXPECTED_PAYMENT = :expected_payment
              INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
              PAPER_ITEM = :paper_item
              PAYMENT_ORDER = :payment_order
              RETURN = :return
              REVERSAL = :reversal

              finalize!
            end

            # To post a ledger transaction at creation, use `posted`.
            #
            # @example
            #
            # ```ruby
            # case status
            # in :archived
            #   # ...
            # in :pending
            #   # ...
            # in :posted
            #   # ...
            # end
            # ```
            class Status < ModernTreasury::Enum
              ARCHIVED = :archived
              PENDING = :pending
              POSTED = :posted

              finalize!
            end
          end

          # @example
          #
          # ```ruby
          # line_item => {
          #   amount: Integer,
          #   accounting_category_id: String,
          #   description: String,
          #   metadata: -> { ModernTreasury::HashOf[String] === _1 }
          # }
          # ```
          class LineItem < ModernTreasury::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute accounting_category_id
            #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :accounting_category_id, String

            # @!attribute description
            #   A free-form description of the line item.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!parse
            #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
            #   #   as 1000.
            #   #
            #   # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be
            #   #   accessible if your accounting system has been connected.
            #   #
            #   # @param description [String, nil] A free-form description of the line item.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end
        end

        # @example
        #
        # ```ruby
        # ledger_transaction_create_request => {
        #   ledger_entries: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry] === _1 },
        #   description: String,
        #   effective_at: Time,
        #   effective_date: Date,
        #   external_id: String,
        #   **_
        # }
        # ```
        class LedgerTransactionCreateRequest < ModernTreasury::BaseModel
          # @!attribute ledger_entries
          #   An array of ledger entry objects.
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry>]
          required :ledger_entries,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry
                   }]

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute effective_at
          #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
          #
          #   @return [Time]
          optional :effective_at, Time

          # @!attribute effective_date
          #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
          #
          #   @return [Date]
          optional :effective_date, Date

          # @!attribute external_id
          #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
          #
          #   @return [String]
          optional :external_id, String

          # @!attribute ledgerable_id
          #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
          #
          #   @return [String]
          optional :ledgerable_id, String

          # @!attribute ledgerable_type
          #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType]
          optional :ledgerable_type,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType
                   }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute status
          #   To post a ledger transaction at creation, use `posted`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status]
          optional :status,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status
                   }

          # @!parse
          #   # @param ledger_entries [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry>] An array of ledger entry objects.
          #   #
          #   # @param description [String, nil] An optional description for internal use.
          #   #
          #   # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
          #   #   reporting purposes.
          #   #
          #   # @param effective_date [String] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
          #   #   purposes.
          #   #
          #   # @param external_id [String] A unique string to represent the ledger transaction. Only one pending or posted
          #   #   ledger transaction may have this ID in the ledger.
          #   #
          #   # @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern
          #   #   Treasury, the id will be populated here, otherwise null.
          #   #
          #   # @param ledgerable_type [String] If the ledger transaction can be reconciled to another object in Modern
          #   #   Treasury, the type will be populated here, otherwise null. This can be one of
          #   #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          #   #   reversal.
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param status [String] To post a ledger transaction at creation, use `posted`.
          #   #
          #   def initialize(
          #     ledger_entries:,
          #     description: nil,
          #     effective_at: nil,
          #     effective_date: nil,
          #     external_id: nil,
          #     ledgerable_id: nil,
          #     ledgerable_type: nil,
          #     metadata: nil,
          #     status: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @example
          #
          # ```ruby
          # ledger_entry => {
          #   amount: Integer,
          #   direction: ModernTreasury::Models::TransactionDirection,
          #   ledger_account_id: String,
          #   available_balance_amount: -> { ModernTreasury::HashOf[Integer] === _1 },
          #   lock_version: Integer,
          #   **_
          # }
          # ```
          class LedgerEntry < ModernTreasury::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute direction
            #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
            #
            #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
            required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

            # @!attribute ledger_account_id
            #   The ledger account that this ledger entry is associated with.
            #
            #   @return [String]
            required :ledger_account_id, String

            # @!attribute available_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s available balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol => Integer}, nil]
            optional :available_balance_amount, ModernTreasury::HashOf[Integer]

            # @!attribute lock_version
            #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
            #
            #   @return [Integer, nil]
            optional :lock_version, Integer

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!attribute pending_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s pending balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol => Integer}, nil]
            optional :pending_balance_amount, ModernTreasury::HashOf[Integer]

            # @!attribute posted_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s posted balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol => Integer}, nil]
            optional :posted_balance_amount, ModernTreasury::HashOf[Integer]

            # @!attribute show_resulting_ledger_account_balances
            #   If true, response will include the balance of the associated ledger account for the entry.
            #
            #   @return [Boolean, nil]
            optional :show_resulting_ledger_account_balances, ModernTreasury::BooleanModel

            # @!parse
            #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
            #   #   as 1000. Can be any integer up to 36 digits.
            #   #
            #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
            #   #   transaction. A `credit` moves money from your account to someone else's. A
            #   #   `debit` pulls money from someone else's account to your own. Note that wire,
            #   #   rtp, and check payments will always be `credit`.
            #   #
            #   # @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
            #   #
            #   # @param available_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   #   account’s available balance. If any of these conditions would be false after the
            #   #   transaction is created, the entire call will fail with error code 422.
            #   #
            #   # @param lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger
            #   #   transaction to only succeed if no ledger transactions have posted since the
            #   #   given version. See our post about Designing the Ledgers API with Optimistic
            #   #   Locking for more details.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   # @param pending_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   #   account’s pending balance. If any of these conditions would be false after the
            #   #   transaction is created, the entire call will fail with error code 422.
            #   #
            #   # @param posted_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   #   account’s posted balance. If any of these conditions would be false after the
            #   #   transaction is created, the entire call will fail with error code 422.
            #   #
            #   # @param show_resulting_ledger_account_balances [Boolean, nil] If true, response will include the balance of the associated ledger account for
            #   #   the entry.
            #   #
            #   def initialize(
            #     amount:,
            #     direction:,
            #     ledger_account_id:,
            #     available_balance_amount: nil,
            #     lock_version: nil,
            #     metadata: nil,
            #     pending_balance_amount: nil,
            #     posted_balance_amount: nil,
            #     show_resulting_ledger_account_balances: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
          #
          # @example
          #
          # ```ruby
          # case ledgerable_type
          # in :expected_payment
          #   # ...
          # in :incoming_payment_detail
          #   # ...
          # in :paper_item
          #   # ...
          # in :payment_order
          #   # ...
          # in :return
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class LedgerableType < ModernTreasury::Enum
            EXPECTED_PAYMENT = :expected_payment
            INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
            PAPER_ITEM = :paper_item
            PAYMENT_ORDER = :payment_order
            RETURN = :return
            REVERSAL = :reversal

            finalize!
          end

          # To post a ledger transaction at creation, use `posted`.
          #
          # @example
          #
          # ```ruby
          # case status
          # in :archived
          #   # ...
          # in :pending
          #   # ...
          # in :posted
          #   # ...
          # end
          # ```
          class Status < ModernTreasury::Enum
            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # transaction_create_request => {
        #   amount: Integer,
        #   as_of_date: Date,
        #   direction: String,
        #   internal_account_id: String,
        #   vendor_code: String,
        #   **_
        # }
        # ```
        class TransactionCreateRequest < ModernTreasury::BaseModel
          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute as_of_date
          #   The date on which the transaction occurred.
          #
          #   @return [Date, nil]
          required :as_of_date, Date

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
          #   When applicable, the bank-given code that determines the transaction's category. For most banks this is the BAI2/BTRS transaction code.
          #
          #   @return [String, nil]
          required :vendor_code, String

          # @!attribute vendor_code_type
          #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, `us_bank`, or others.
          #
          #   @return [String, nil]
          required :vendor_code_type, String

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute posted
          #   This field will be `true` if the transaction has posted to the account.
          #
          #   @return [Boolean]
          optional :posted, ModernTreasury::BooleanModel

          # @!attribute type
          #   The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type, nil]
          optional :type,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type
                   }

          # @!attribute vendor_description
          #   The transaction detail text that often appears in on your bank statement and in your banking portal.
          #
          #   @return [String, nil]
          optional :vendor_description, String

          # @!parse
          #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
          #   #   as 1000.
          #   #
          #   # @param as_of_date [String, nil] The date on which the transaction occurred.
          #   #
          #   # @param direction [String] Either `credit` or `debit`.
          #   #
          #   # @param internal_account_id [String] The ID of the relevant Internal Account.
          #   #
          #   # @param vendor_code [String, nil] When applicable, the bank-given code that determines the transaction's category.
          #   #   For most banks this is the BAI2/BTRS transaction code.
          #   #
          #   # @param vendor_code_type [String, nil] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #   #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   #   `swift`, `us_bank`, or others.
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param posted [Boolean] This field will be `true` if the transaction has posted to the account.
          #   #
          #   # @param type [String, nil] The type of the transaction. Examples could be
          #   #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          #   #
          #   # @param vendor_description [String, nil] The transaction detail text that often appears in on your bank statement and in
          #   #   your banking portal.
          #   #
          #   def initialize(
          #     amount:,
          #     as_of_date:,
          #     direction:,
          #     internal_account_id:,
          #     vendor_code:,
          #     vendor_code_type:,
          #     metadata: nil,
          #     posted: nil,
          #     type: nil,
          #     vendor_description: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          #
          # @example
          #
          # ```ruby
          # case type
          # in :ach
          #   # ...
          # in :au_becs
          #   # ...
          # in :bacs
          #   # ...
          # in :book
          #   # ...
          # in :card
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Type < ModernTreasury::Enum
            ACH = :ach
            AU_BECS = :au_becs
            BACS = :bacs
            BOOK = :book
            CARD = :card
            CHATS = :chats
            CHECK = :check
            CROSS_BORDER = :cross_border
            DK_NETS = :dk_nets
            EFT = :eft
            HU_ICS = :hu_ics
            INTERAC = :interac
            MASAV = :masav
            MX_CCEN = :mx_ccen
            NEFT = :neft
            NICS = :nics
            NZ_BECS = :nz_becs
            PL_ELIXIR = :pl_elixir
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
            WIRE = :wire
            ZENGIN = :zengin
            OTHER = :other

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # id => {
        #   id: String
        # }
        # ```
        class ID < ModernTreasury::BaseModel
          # @!attribute id
          #
          #   @return [String]
          optional :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # payment_order_update_request_with_id => {
        #   id: String,
        #   accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
        #   accounting_category_id: String,
        #   accounting_ledger_class_id: String,
        #   amount: Integer,
        #   **_
        # }
        # ```
        class PaymentOrderUpdateRequestWithID < ModernTreasury::BaseModel
          # @!attribute id
          #
          #   @return [String]
          optional :id, String

          # @!attribute accounting
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting]
          optional :accounting,
                   -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting }

          # @!attribute accounting_category_id
          #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_category_id, String

          # @!attribute accounting_ledger_class_id
          #   The ID of one of your accounting ledger classes. Note that these will only be accessible if your accounting system has been connected.
          #
          #   @return [String, nil]
          optional :accounting_ledger_class_id, String

          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          #
          #   @return [Integer]
          optional :amount, Integer

          # @!attribute charge_bearer
          #   The party that will pay the fees for the payment order. Only applies to wire payment orders. Can be one of shared, sender, or receiver, which correspond respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer, nil]
          optional :charge_bearer,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer
                   }

          # @!attribute counterparty_id
          #   Required when receiving_account_id is passed the ID of an external account.
          #
          #   @return [String, nil]
          optional :counterparty_id, String

          # @!attribute currency
          #   Defaults to the currency of the originating account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency]
          optional :currency, enum: -> { ModernTreasury::Models::Currency }

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute direction
          #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction]
          optional :direction,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction
                   }

          # @!attribute effective_date
          #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
          #
          #   @return [Date]
          optional :effective_date, Date

          # @!attribute expires_at
          #   RFP payments require an expires_at. This value must be past the effective_date.
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute fallback_type
          #   A payment type to fallback to if the original type is not valid for the receiving account. Currently, this only supports falling back from RTP to ACH (type=rtp and fallback_type=ach)
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType]
          optional :fallback_type,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType
                   }

          # @!attribute foreign_exchange_contract
          #   If present, indicates a specific foreign exchange contract number that has been generated by your financial institution.
          #
          #   @return [String, nil]
          optional :foreign_exchange_contract, String

          # @!attribute foreign_exchange_indicator
          #   Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order currency matches the originating account currency.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator, nil]
          optional :foreign_exchange_indicator,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator
                   }

          # @!attribute line_items
          #   An array of line items that must sum up to the amount of the payment order.
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem>]
          optional :line_items,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem
                   }]

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute nsf_protected
          #   A boolean to determine if NSF Protection is enabled for this payment order. Note that this setting must also be turned on in your organization settings page.
          #
          #   @return [Boolean]
          optional :nsf_protected, ModernTreasury::BooleanModel

          # @!attribute originating_account_id
          #   The ID of one of your organization's internal accounts.
          #
          #   @return [String]
          optional :originating_account_id, String

          # @!attribute originating_party_name
          #   If present, this will replace your default company name on receiver's bank statement. This field can only be used for ACH payments currently. For ACH, only the first 16 characters of this string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :originating_party_name, String

          # @!attribute priority
          #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-day ACH or EFT transfer, respectively. For check payments, `high` can mean an overnight check rather than standard mail.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority]
          optional :priority,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority
                   }

          # @!attribute process_after
          #   If present, Modern Treasury will not process the payment until after this time. If `process_after` is past the cutoff for `effective_date`, `process_after` will take precedence and `effective_date` will automatically update to reflect the earliest possible sending date after `process_after`. Format is ISO8601 timestamp.
          #
          #   @return [Time, nil]
          optional :process_after, Time

          # @!attribute purpose
          #   For `wire`, this is usually the purpose which is transmitted via the "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3 digit CPA Code that will be attached to the payment.
          #
          #   @return [String, nil]
          optional :purpose, String

          # @!attribute receiving_account
          #   Either `receiving_account` or `receiving_account_id` must be present. When using `receiving_account_id`, you may pass the id of an external account or an internal account.
          #
          #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount]
          optional :receiving_account,
                   -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount }

          # @!attribute receiving_account_id
          #   Either `receiving_account` or `receiving_account_id` must be present. When using `receiving_account_id`, you may pass the id of an external account or an internal account.
          #
          #   @return [String]
          optional :receiving_account_id, String

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String

          # @!attribute send_remittance_advice
          #   Send an email to the counterparty when the payment order is sent to the bank. If `null`, `send_remittance_advice` on the Counterparty is used.
          #
          #   @return [Boolean, nil]
          optional :send_remittance_advice, ModernTreasury::BooleanModel

          # @!attribute statement_descriptor
          #   An optional descriptor which will appear in the receiver's statement. For `check` payments this field will be used as the memo line. For `ach` the maximum length is 10 characters. Note that for ACH payments, the name on your bank account will be included automatically by the bank, so you can use the characters for other useful information. For `eft` the maximum length is 15 characters.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String

          # @!attribute status
          #   To cancel a payment order, use `cancelled`. To redraft a returned payment order, use `approved`. To undo approval on a denied or approved payment order, use `needs_approval`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status]
          optional :status,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status
                   }

          # @!attribute subtype
          #   An additional layer of classification for the type of payment order you are doing. This field is only used for `ach` payment orders currently. For `ach`  payment orders, the `subtype`  represents the SEC code. We currently support `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
          optional :subtype, enum: -> { ModernTreasury::Models::PaymentOrderSubtype }

          # @!attribute type
          #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderType]
          optional :type, enum: -> { ModernTreasury::Models::PaymentOrderType }

          # @!attribute ultimate_originating_party_identifier
          #   This represents the identifier by which the person is known to the receiver when using the CIE subtype for ACH payments. Only the first 22 characters of this string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_identifier, String

          # @!attribute ultimate_originating_party_name
          #   This represents the name of the person that the payment is on behalf of when using the CIE subtype for ACH payments. Only the first 15 characters of this string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_originating_party_name, String

          # @!attribute ultimate_receiving_party_identifier
          #   This represents the name of the merchant that the payment is being sent to when using the CIE subtype for ACH payments. Only the first 22 characters of this string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_identifier, String

          # @!attribute ultimate_receiving_party_name
          #   This represents the identifier by which the merchant is known to the person initiating an ACH payment with CIE subtype. Only the first 15 characters of this string will be used. Any additional characters will be truncated.
          #
          #   @return [String, nil]
          optional :ultimate_receiving_party_name, String

          # @!parse
          #   # @param id [String]
          #   #
          #   # @param accounting [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting]
          #   #
          #   # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be
          #   #   accessible if your accounting system has been connected.
          #   #
          #   # @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be
          #   #   accessible if your accounting system has been connected.
          #   #
          #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as
          #   #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          #   #
          #   # @param charge_bearer [String, nil] The party that will pay the fees for the payment order. Only applies to wire
          #   #   payment orders. Can be one of shared, sender, or receiver, which correspond
          #   #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
          #   #
          #   # @param counterparty_id [String, nil] Required when receiving_account_id is passed the ID of an external account.
          #   #
          #   # @param currency [String] Defaults to the currency of the originating account.
          #   #
          #   # @param description [String, nil] An optional description for internal use.
          #   #
          #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
          #   #   transaction. A `credit` moves money from your account to someone else's. A
          #   #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   #   rtp, and check payments will always be `credit`.
          #   #
          #   # @param effective_date [String] Date transactions are to be posted to the participants' account. Defaults to the
          #   #   current business day or the next business day if the current day is a bank
          #   #   holiday or weekend. Format: yyyy-mm-dd.
          #   #
          #   # @param expires_at [String, nil] RFP payments require an expires_at. This value must be past the effective_date.
          #   #
          #   # @param fallback_type [String] A payment type to fallback to if the original type is not valid for the
          #   #   receiving account. Currently, this only supports falling back from RTP to ACH
          #   #   (type=rtp and fallback_type=ach)
          #   #
          #   # @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
          #   #   generated by your financial institution.
          #   #
          #   # @param foreign_exchange_indicator [String, nil] Indicates the type of FX transfer to initiate, can be either
          #   #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          #   #   currency matches the originating account currency.
          #   #
          #   # @param line_items [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem>] An array of line items that must sum up to the amount of the payment order.
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
          #   #   that this setting must also be turned on in your organization settings page.
          #   #
          #   # @param originating_account_id [String] The ID of one of your organization's internal accounts.
          #   #
          #   # @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank
          #   #   statement. This field can only be used for ACH payments currently. For ACH, only
          #   #   the first 16 characters of this string will be used. Any additional characters
          #   #   will be truncated.
          #   #
          #   # @param priority [String] Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          #   #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          #   #   an overnight check rather than standard mail.
          #   #
          #   # @param process_after [String, nil] If present, Modern Treasury will not process the payment until after this time.
          #   #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
          #   #   take precedence and `effective_date` will automatically update to reflect the
          #   #   earliest possible sending date after `process_after`. Format is ISO8601
          #   #   timestamp.
          #   #
          #   # @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the
          #   #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
          #   #   digit CPA Code that will be attached to the payment.
          #   #
          #   # @param receiving_account [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
          #   #   `receiving_account_id`, you may pass the id of an external account or an
          #   #   internal account.
          #   #
          #   # @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
          #   #   `receiving_account_id`, you may pass the id of an external account or an
          #   #   internal account.
          #   #
          #   # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire`
          #   #   payments the field will be passed through as the "Originator to Beneficiary
          #   #   Information", also known as OBI or Fedwire tag 6000.
          #   #
          #   # @param send_remittance_advice [Boolean, nil] Send an email to the counterparty when the payment order is sent to the bank. If
          #   #   `null`, `send_remittance_advice` on the Counterparty is used.
          #   #
          #   # @param statement_descriptor [String, nil] An optional descriptor which will appear in the receiver's statement. For
          #   #   `check` payments this field will be used as the memo line. For `ach` the maximum
          #   #   length is 10 characters. Note that for ACH payments, the name on your bank
          #   #   account will be included automatically by the bank, so you can use the
          #   #   characters for other useful information. For `eft` the maximum length is 15
          #   #   characters.
          #   #
          #   # @param status [String] To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          #   #   use `approved`. To undo approval on a denied or approved payment order, use
          #   #   `needs_approval`.
          #   #
          #   # @param subtype [String, nil] An additional layer of classification for the type of payment order you are
          #   #   doing. This field is only used for `ach` payment orders currently. For `ach`
          #   #   payment orders, the `subtype` represents the SEC code. We currently support
          #   #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          #   #
          #   # @param type [String] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
          #   #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
          #   #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          #   #
          #   # @param ultimate_originating_party_identifier [String, nil] This represents the identifier by which the person is known to the receiver when
          #   #   using the CIE subtype for ACH payments. Only the first 22 characters of this
          #   #   string will be used. Any additional characters will be truncated.
          #   #
          #   # @param ultimate_originating_party_name [String, nil] This represents the name of the person that the payment is on behalf of when
          #   #   using the CIE subtype for ACH payments. Only the first 15 characters of this
          #   #   string will be used. Any additional characters will be truncated.
          #   #
          #   # @param ultimate_receiving_party_identifier [String, nil] This represents the name of the merchant that the payment is being sent to when
          #   #   using the CIE subtype for ACH payments. Only the first 22 characters of this
          #   #   string will be used. Any additional characters will be truncated.
          #   #
          #   # @param ultimate_receiving_party_name [String, nil] This represents the identifier by which the merchant is known to the person
          #   #   initiating an ACH payment with CIE subtype. Only the first 15 characters of this
          #   #   string will be used. Any additional characters will be truncated.
          #   #
          #   def initialize(
          #     id: nil,
          #     accounting: nil,
          #     accounting_category_id: nil,
          #     accounting_ledger_class_id: nil,
          #     amount: nil,
          #     charge_bearer: nil,
          #     counterparty_id: nil,
          #     currency: nil,
          #     description: nil,
          #     direction: nil,
          #     effective_date: nil,
          #     expires_at: nil,
          #     fallback_type: nil,
          #     foreign_exchange_contract: nil,
          #     foreign_exchange_indicator: nil,
          #     line_items: nil,
          #     metadata: nil,
          #     nsf_protected: nil,
          #     originating_account_id: nil,
          #     originating_party_name: nil,
          #     priority: nil,
          #     process_after: nil,
          #     purpose: nil,
          #     receiving_account: nil,
          #     receiving_account_id: nil,
          #     remittance_information: nil,
          #     send_remittance_advice: nil,
          #     statement_descriptor: nil,
          #     status: nil,
          #     subtype: nil,
          #     type: nil,
          #     ultimate_originating_party_identifier: nil,
          #     ultimate_originating_party_name: nil,
          #     ultimate_receiving_party_identifier: nil,
          #     ultimate_receiving_party_name: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @example
          #
          # ```ruby
          # accounting => {
          #   account_id: String,
          #   class_id: String
          # }
          # ```
          class Accounting < ModernTreasury::BaseModel
            # @!attribute account_id
            #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :account_id, String

            # @!attribute class_id
            #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :class_id, String

            # @!parse
            #   # @param account_id [String, nil] The ID of one of your accounting categories. Note that these will only be
            #   #   accessible if your accounting system has been connected.
            #   #
            #   # @param class_id [String, nil] The ID of one of the class objects in your accounting system. Class objects
            #   #   track segments of your business independent of client or project. Note that
            #   #   these will only be accessible if your accounting system has been connected.
            #   #
            #   def initialize(account_id: nil, class_id: nil, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # The party that will pay the fees for the payment order. Only applies to wire payment orders. Can be one of shared, sender, or receiver, which correspond respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
          #
          # @example
          #
          # ```ruby
          # case charge_bearer
          # in :shared
          #   # ...
          # in :sender
          #   # ...
          # in :receiver
          #   # ...
          # end
          # ```
          class ChargeBearer < ModernTreasury::Enum
            SHARED = :shared
            SENDER = :sender
            RECEIVER = :receiver

            finalize!
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
          #
          # @example
          #
          # ```ruby
          # case direction
          # in :credit
          #   # ...
          # in :debit
          #   # ...
          # end
          # ```
          class Direction < ModernTreasury::Enum
            CREDIT = :credit
            DEBIT = :debit

            finalize!
          end

          # A payment type to fallback to if the original type is not valid for the receiving account. Currently, this only supports falling back from RTP to ACH (type=rtp and fallback_type=ach)
          #
          # @example
          #
          # ```ruby
          # case fallback_type
          # in :ach
          #   # ...
          # end
          # ```
          class FallbackType < ModernTreasury::Enum
            ACH = :ach

            finalize!
          end

          # Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order currency matches the originating account currency.
          #
          # @example
          #
          # ```ruby
          # case foreign_exchange_indicator
          # in :fixed_to_variable
          #   # ...
          # in :variable_to_fixed
          #   # ...
          # end
          # ```
          class ForeignExchangeIndicator < ModernTreasury::Enum
            FIXED_TO_VARIABLE = :fixed_to_variable
            VARIABLE_TO_FIXED = :variable_to_fixed

            finalize!
          end

          # @example
          #
          # ```ruby
          # line_item => {
          #   amount: Integer,
          #   accounting_category_id: String,
          #   description: String,
          #   metadata: -> { ModernTreasury::HashOf[String] === _1 }
          # }
          # ```
          class LineItem < ModernTreasury::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute accounting_category_id
            #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
            #
            #   @return [String, nil]
            optional :accounting_category_id, String

            # @!attribute description
            #   A free-form description of the line item.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!parse
            #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
            #   #   as 1000.
            #   #
            #   # @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be
            #   #   accessible if your accounting system has been connected.
            #   #
            #   # @param description [String, nil] A free-form description of the line item.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-day ACH or EFT transfer, respectively. For check payments, `high` can mean an overnight check rather than standard mail.
          #
          # @example
          #
          # ```ruby
          # case priority
          # in :high
          #   # ...
          # in :normal
          #   # ...
          # end
          # ```
          class Priority < ModernTreasury::Enum
            HIGH = :high
            NORMAL = :normal

            finalize!
          end

          # @example
          #
          # ```ruby
          # receiving_account => {
          #   account_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail] === _1 },
          #   account_type: ModernTreasury::Models::ExternalAccountType,
          #   contact_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail] === _1 },
          #   ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
          #   metadata: -> { ModernTreasury::HashOf[String] === _1 },
          #   **_
          # }
          # ```
          class ReceivingAccount < ModernTreasury::BaseModel
            # @!attribute account_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail>]
            optional :account_details,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                     }]

            # @!attribute account_type
            #   Can be `checking`, `savings` or `other`.
            #
            #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
            optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

            # @!attribute contact_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail>]
            optional :contact_details,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                     }]

            # @!attribute ledger_account
            #   Specifies a ledger account object that will be created with the external account. The resulting ledger account is linked to the external account for auto-ledgering Payment objects. See https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects for more details.
            #
            #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount]
            optional :ledger_account,
                     -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount }

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!attribute name
            #   A nickname for the external account. This is only for internal usage and won't affect any payments
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute party_address
            #   Required if receiving wire payments.
            #
            #   @return [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress]
            optional :party_address,
                     -> { ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress }

            # @!attribute party_identifier
            #
            #   @return [String]
            optional :party_identifier, String

            # @!attribute party_name
            #   If this value isn't provided, it will be inherited from the counterparty's name.
            #
            #   @return [String]
            optional :party_name, String

            # @!attribute party_type
            #   Either `individual` or `business`.
            #
            #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType, nil]
            optional :party_type,
                     enum: -> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType
                     }

            # @!attribute plaid_processor_token
            #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account, you can pass the processor token in this field.
            #
            #   @return [String]
            optional :plaid_processor_token, String

            # @!attribute routing_details
            #
            #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail>]
            optional :routing_details,
                     ModernTreasury::ArrayOf[-> {
                       ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                     }]

            # @!parse
            #   # Either `receiving_account` or `receiving_account_id` must be present. When using
            #   #   `receiving_account_id`, you may pass the id of an external account or an
            #   #   internal account.
            #   #
            #   # @param account_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail>]
            #   #
            #   # @param account_type [String] Can be `checking`, `savings` or `other`.
            #   #
            #   # @param contact_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail>]
            #   #
            #   # @param ledger_account [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount] Specifies a ledger account object that will be created with the external
            #   #   account. The resulting ledger account is linked to the external account for
            #   #   auto-ledgering Payment objects. See
            #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            #   #   for more details.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   # @param name [String, nil] A nickname for the external account. This is only for internal usage and won't
            #   #   affect any payments
            #   #
            #   # @param party_address [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress] Required if receiving wire payments.
            #   #
            #   # @param party_identifier [String]
            #   #
            #   # @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
            #   #
            #   # @param party_type [String, nil] Either `individual` or `business`.
            #   #
            #   # @param plaid_processor_token [String] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            #   #   you can pass the processor token in this field.
            #   #
            #   # @param routing_details [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail>]
            #   #
            #   def initialize(
            #     account_details: nil,
            #     account_type: nil,
            #     contact_details: nil,
            #     ledger_account: nil,
            #     metadata: nil,
            #     name: nil,
            #     party_address: nil,
            #     party_identifier: nil,
            #     party_name: nil,
            #     party_type: nil,
            #     plaid_processor_token: nil,
            #     routing_details: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # @example
            #
            # ```ruby
            # account_detail => {
            #   account_number: String,
            #   account_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType
            # }
            # ```
            class AccountDetail < ModernTreasury::BaseModel
              # @!attribute account_number
              #
              #   @return [String]
              required :account_number, String

              # @!attribute account_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType]
              optional :account_number_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType
                       }

              # @!parse
              #   # @param account_number [String]
              #   # @param account_number_type [String]
              #   #
              #   def initialize(account_number:, account_number_type: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case account_number_type
              # in :au_number
              #   # ...
              # in :clabe
              #   # ...
              # in :hk_number
              #   # ...
              # in :iban
              #   # ...
              # in :id_number
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class AccountNumberType < ModernTreasury::Enum
                AU_NUMBER = :au_number
                CLABE = :clabe
                HK_NUMBER = :hk_number
                IBAN = :iban
                ID_NUMBER = :id_number
                NZ_NUMBER = :nz_number
                OTHER = :other
                PAN = :pan
                SG_NUMBER = :sg_number
                WALLET_ADDRESS = :wallet_address

                finalize!
              end
            end

            # @example
            #
            # ```ruby
            # contact_detail => {
            #   contact_identifier: String,
            #   contact_identifier_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType
            # }
            # ```
            class ContactDetail < ModernTreasury::BaseModel
              # @!attribute contact_identifier
              #
              #   @return [String]
              optional :contact_identifier, String

              # @!attribute contact_identifier_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType]
              optional :contact_identifier_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType
                       }

              # @!parse
              #   # @param contact_identifier [String]
              #   # @param contact_identifier_type [String]
              #   #
              #   def initialize(contact_identifier: nil, contact_identifier_type: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case contact_identifier_type
              # in :email
              #   # ...
              # in :phone_number
              #   # ...
              # in :website
              #   # ...
              # end
              # ```
              class ContactIdentifierType < ModernTreasury::Enum
                EMAIL = :email
                PHONE_NUMBER = :phone_number
                WEBSITE = :website

                finalize!
              end
            end

            # @example
            #
            # ```ruby
            # ledger_account => {
            #   currency: String,
            #   ledger_id: String,
            #   name: String,
            #   normal_balance: ModernTreasury::Models::TransactionDirection,
            #   currency_exponent: Integer,
            #   **_
            # }
            # ```
            class LedgerAccount < ModernTreasury::BaseModel
              # @!attribute currency
              #   The currency of the ledger account.
              #
              #   @return [String]
              required :currency, String

              # @!attribute ledger_id
              #   The id of the ledger that this account belongs to.
              #
              #   @return [String]
              required :ledger_id, String

              # @!attribute name
              #   The name of the ledger account.
              #
              #   @return [String]
              required :name, String

              # @!attribute normal_balance
              #   The normal balance of the ledger account.
              #
              #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
              required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

              # @!attribute currency_exponent
              #   The currency exponent of the ledger account.
              #
              #   @return [Integer, nil]
              optional :currency_exponent, Integer

              # @!attribute description
              #   The description of the ledger account.
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ledger_account_category_ids
              #   The array of ledger account category ids that this ledger account should be a child of.
              #
              #   @return [Array<String>]
              optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

              # @!attribute ledgerable_id
              #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
              #
              #   @return [String]
              optional :ledgerable_id, String

              # @!attribute ledgerable_type
              #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType]
              optional :ledgerable_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType
                       }

              # @!attribute metadata
              #   Additional data represented as key-value pairs. Both the key and value must be strings.
              #
              #   @return [Hash{Symbol => String}]
              optional :metadata, ModernTreasury::HashOf[String]

              # @!parse
              #   # Specifies a ledger account object that will be created with the external
              #   #   account. The resulting ledger account is linked to the external account for
              #   #   auto-ledgering Payment objects. See
              #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
              #   #   for more details.
              #   #
              #   # @param currency [String] The currency of the ledger account.
              #   #
              #   # @param ledger_id [String] The id of the ledger that this account belongs to.
              #   #
              #   # @param name [String] The name of the ledger account.
              #   #
              #   # @param normal_balance [String] The normal balance of the ledger account.
              #   #
              #   # @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
              #   #
              #   # @param description [String, nil] The description of the ledger account.
              #   #
              #   # @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account should be a
              #   #   child of.
              #   #
              #   # @param ledgerable_id [String] If the ledger account links to another object in Modern Treasury, the id will be
              #   #   populated here, otherwise null.
              #   #
              #   # @param ledgerable_type [String] If the ledger account links to another object in Modern Treasury, the type will
              #   #   be populated here, otherwise null. The value is one of internal_account or
              #   #   external_account.
              #   #
              #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
              #   #   strings.
              #   #
              #   def initialize(
              #     currency:,
              #     ledger_id:,
              #     name:,
              #     normal_balance:,
              #     currency_exponent: nil,
              #     description: nil,
              #     ledger_account_category_ids: nil,
              #     ledgerable_id: nil,
              #     ledgerable_type: nil,
              #     metadata: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
              #
              # @example
              #
              # ```ruby
              # case ledgerable_type
              # in :counterparty
              #   # ...
              # in :external_account
              #   # ...
              # in :internal_account
              #   # ...
              # in :virtual_account
              #   # ...
              # end
              # ```
              class LedgerableType < ModernTreasury::Enum
                COUNTERPARTY = :counterparty
                EXTERNAL_ACCOUNT = :external_account
                INTERNAL_ACCOUNT = :internal_account
                VIRTUAL_ACCOUNT = :virtual_account

                finalize!
              end
            end

            # @example
            #
            # ```ruby
            # party_address => {
            #   country: String,
            #   line1: String,
            #   line2: String,
            #   locality: String,
            #   postal_code: String
            # }
            # ```
            class PartyAddress < ModernTreasury::BaseModel
              # @!attribute country
              #   Country code conforms to [ISO 3166-1 alpha-2]
              #
              #   @return [String, nil]
              optional :country, String

              # @!attribute line1
              #
              #   @return [String, nil]
              optional :line1, String

              # @!attribute line2
              #
              #   @return [String, nil]
              optional :line2, String

              # @!attribute locality
              #   Locality or City.
              #
              #   @return [String, nil]
              optional :locality, String

              # @!attribute postal_code
              #   The postal code of the address.
              #
              #   @return [String, nil]
              optional :postal_code, String

              # @!attribute region
              #   Region or State.
              #
              #   @return [String, nil]
              optional :region, String

              # @!parse
              #   # Required if receiving wire payments.
              #   #
              #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
              #   #
              #   # @param line1 [String, nil]
              #   #
              #   # @param line2 [String, nil]
              #   #
              #   # @param locality [String, nil] Locality or City.
              #   #
              #   # @param postal_code [String, nil] The postal code of the address.
              #   #
              #   # @param region [String, nil] Region or State.
              #   #
              #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end

            # Either `individual` or `business`.
            #
            # @example
            #
            # ```ruby
            # case party_type
            # in :business
            #   # ...
            # in :individual
            #   # ...
            # end
            # ```
            class PartyType < ModernTreasury::Enum
              BUSINESS = :business
              INDIVIDUAL = :individual

              finalize!
            end

            # @example
            #
            # ```ruby
            # routing_detail => {
            #   routing_number: String,
            #   routing_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType,
            #   payment_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType
            # }
            # ```
            class RoutingDetail < ModernTreasury::BaseModel
              # @!attribute routing_number
              #
              #   @return [String]
              required :routing_number, String

              # @!attribute routing_number_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType]
              required :routing_number_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType
                       }

              # @!attribute payment_type
              #
              #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType]
              optional :payment_type,
                       enum: -> {
                         ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType
                       }

              # @!parse
              #   # @param routing_number [String]
              #   # @param routing_number_type [String]
              #   # @param payment_type [String]
              #   #
              #   def initialize(routing_number:, routing_number_type:, payment_type: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case routing_number_type
              # in :aba
              #   # ...
              # in :au_bsb
              #   # ...
              # in :br_codigo
              #   # ...
              # in :ca_cpa
              #   # ...
              # in :chips
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class RoutingNumberType < ModernTreasury::Enum
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
                IN_IFSC = :in_ifsc
                JP_ZENGIN_CODE = :jp_zengin_code
                MY_BRANCH_CODE = :my_branch_code
                MX_BANK_IDENTIFIER = :mx_bank_identifier
                NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
                PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
                SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
                SWIFT = :swift
                ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

                finalize!
              end

              # @example
              #
              # ```ruby
              # case payment_type
              # in :ach
              #   # ...
              # in :au_becs
              #   # ...
              # in :bacs
              #   # ...
              # in :book
              #   # ...
              # in :card
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class PaymentType < ModernTreasury::Enum
                ACH = :ach
                AU_BECS = :au_becs
                BACS = :bacs
                BOOK = :book
                CARD = :card
                CHATS = :chats
                CHECK = :check
                CROSS_BORDER = :cross_border
                DK_NETS = :dk_nets
                EFT = :eft
                HU_ICS = :hu_ics
                INTERAC = :interac
                MASAV = :masav
                MX_CCEN = :mx_ccen
                NEFT = :neft
                NICS = :nics
                NZ_BECS = :nz_becs
                PL_ELIXIR = :pl_elixir
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
                WIRE = :wire
                ZENGIN = :zengin

                finalize!
              end
            end
          end

          # To cancel a payment order, use `cancelled`. To redraft a returned payment order, use `approved`. To undo approval on a denied or approved payment order, use `needs_approval`.
          #
          # @example
          #
          # ```ruby
          # case status
          # in :approved
          #   # ...
          # in :cancelled
          #   # ...
          # in :completed
          #   # ...
          # in :denied
          #   # ...
          # in :failed
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Status < ModernTreasury::Enum
            APPROVED = :approved
            CANCELLED = :cancelled
            COMPLETED = :completed
            DENIED = :denied
            FAILED = :failed
            NEEDS_APPROVAL = :needs_approval
            PENDING = :pending
            PROCESSING = :processing
            RETURNED = :returned
            REVERSED = :reversed
            SENT = :sent

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # expected_payment_update_request_with_id => {
        #   id: String,
        #   amount_lower_bound: Integer,
        #   amount_upper_bound: Integer,
        #   counterparty_id: String,
        #   currency: ModernTreasury::Models::Currency,
        #   **_
        # }
        # ```
        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::BaseModel
          # @!attribute id
          #
          #   @return [String]
          optional :id, String

          # @!attribute amount_lower_bound
          #   The lowest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_lower_bound, Integer

          # @!attribute amount_upper_bound
          #   The highest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
          #
          #   @return [Integer, nil]
          optional :amount_upper_bound, Integer

          # @!attribute counterparty_id
          #   The ID of the counterparty you expect for this payment.
          #
          #   @return [String, nil]
          optional :counterparty_id, String

          # @!attribute currency
          #   Must conform to ISO 4217. Defaults to the currency of the internal account.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency, nil]
          optional :currency, enum: -> { ModernTreasury::Models::Currency }

          # @!attribute date_lower_bound
          #   The earliest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_lower_bound, Date

          # @!attribute date_upper_bound
          #   The latest date the payment may come in. Format: yyyy-mm-dd
          #
          #   @return [Date, nil]
          optional :date_upper_bound, Date

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute direction
          #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction, nil]
          optional :direction,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction
                   }

          # @!attribute internal_account_id
          #   The ID of the Internal Account for the expected payment.
          #
          #   @return [String, nil]
          optional :internal_account_id, String

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute reconciliation_filters
          #   The reconciliation filters you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_filters, ModernTreasury::Unknown

          # @!attribute reconciliation_groups
          #   The reconciliation groups you have for this payment.
          #
          #   @return [Object, nil]
          optional :reconciliation_groups, ModernTreasury::Unknown

          # @!attribute reconciliation_rule_variables
          #   An array of reconciliation rule variables for this payment.
          #
          #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
          optional :reconciliation_rule_variables,
                   ModernTreasury::ArrayOf[-> { ModernTreasury::Models::ReconciliationRule }]

          # @!attribute remittance_information
          #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
          #
          #   @return [String, nil]
          optional :remittance_information, String

          # @!attribute statement_descriptor
          #   The statement description you expect to see on the transaction. For ACH payments, this will be the full line item passed from the bank. For wire payments, this will be the OBI field on the wire. For check payments, this will be the memo field.
          #
          #   @return [String, nil]
          optional :statement_descriptor, String

          # @!attribute status
          #   The Expected Payment's status can be updated from partially_reconciled to reconciled.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status, nil]
          optional :status,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status
                   }

          # @!attribute type
          #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet, wire.
          #
          #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
          optional :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }

          # @!parse
          #   # @param id [String]
          #   #
          #   # @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified
          #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #   #
          #   # @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified
          #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
          #   #
          #   # @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
          #   #
          #   # @param currency [String, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
          #   #
          #   # @param date_lower_bound [String, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
          #   #
          #   # @param date_upper_bound [String, nil] The latest date the payment may come in. Format: yyyy-mm-dd
          #   #
          #   # @param description [String, nil] An optional description for internal use.
          #   #
          #   # @param direction [String, nil] One of credit or debit. When you are receiving money, use credit. When you are
          #   #   being charged, use debit.
          #   #
          #   # @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
          #   #
          #   # @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
          #   #
          #   # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
          #   #
          #   # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire`
          #   #   payments the field will be passed through as the "Originator to Beneficiary
          #   #   Information", also known as OBI or Fedwire tag 6000.
          #   #
          #   # @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH
          #   #   payments, this will be the full line item passed from the bank. For wire
          #   #   payments, this will be the OBI field on the wire. For check payments, this will
          #   #   be the memo field.
          #   #
          #   # @param status [String, nil] The Expected Payment's status can be updated from partially_reconciled to
          #   #   reconciled.
          #   #
          #   # @param type [String, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
          #   #   sepa, signet, wire.
          #   #
          #   def initialize(
          #     id: nil,
          #     amount_lower_bound: nil,
          #     amount_upper_bound: nil,
          #     counterparty_id: nil,
          #     currency: nil,
          #     date_lower_bound: nil,
          #     date_upper_bound: nil,
          #     description: nil,
          #     direction: nil,
          #     internal_account_id: nil,
          #     metadata: nil,
          #     reconciliation_filters: nil,
          #     reconciliation_groups: nil,
          #     reconciliation_rule_variables: nil,
          #     remittance_information: nil,
          #     statement_descriptor: nil,
          #     status: nil,
          #     type: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
          #
          # @example
          #
          # ```ruby
          # case direction
          # in :credit
          #   # ...
          # in :debit
          #   # ...
          # end
          # ```
          class Direction < ModernTreasury::Enum
            CREDIT = :credit
            DEBIT = :debit

            finalize!
          end

          # The Expected Payment's status can be updated from partially_reconciled to reconciled.
          #
          # @example
          #
          # ```ruby
          # case status
          # in :reconciled
          #   # ...
          # end
          # ```
          class Status < ModernTreasury::Enum
            RECONCILED = :reconciled

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # transaction_update_request_with_id => {
        #   id: String,
        #   metadata: -> { ModernTreasury::HashOf[String] === _1 }
        # }
        # ```
        class TransactionUpdateRequestWithID < ModernTreasury::BaseModel
          # @!attribute id
          #
          #   @return [String]
          optional :id, String

          # @!attribute metadata
          #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!parse
          #   # @param id [String]
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
          #   #   an empty string or `null` as the value.
          #   #
          #   def initialize(id: nil, metadata: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # ledger_transaction_update_request_with_id => {
        #   id: String,
        #   description: String,
        #   effective_at: Time,
        #   ledger_entries: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry] === _1 },
        #   ledgerable_id: String,
        #   **_
        # }
        # ```
        class LedgerTransactionUpdateRequestWithID < ModernTreasury::BaseModel
          # @!attribute id
          #
          #   @return [String]
          optional :id, String

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute effective_at
          #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
          #
          #   @return [Time]
          optional :effective_at, Time

          # @!attribute ledger_entries
          #   An array of ledger entry objects.
          #
          #   @return [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry>]
          optional :ledger_entries,
                   ModernTreasury::ArrayOf[-> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
                   }]

          # @!attribute ledgerable_id
          #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
          #
          #   @return [String]
          optional :ledgerable_id, String

          # @!attribute ledgerable_type
          #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType]
          optional :ledgerable_type,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType
                   }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol => String}]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!attribute status
          #   To post a ledger transaction at creation, use `posted`.
          #
          #   @return [Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status]
          optional :status,
                   enum: -> {
                     ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status
                   }

          # @!parse
          #   # @param id [String]
          #   #
          #   # @param description [String, nil] An optional description for internal use.
          #   #
          #   # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
          #   #   reporting purposes.
          #   #
          #   # @param ledger_entries [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry>] An array of ledger entry objects.
          #   #
          #   # @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern
          #   #   Treasury, the id will be populated here, otherwise null.
          #   #
          #   # @param ledgerable_type [String] If the ledger transaction can be reconciled to another object in Modern
          #   #   Treasury, the type will be populated here, otherwise null. This can be one of
          #   #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          #   #   reversal.
          #   #
          #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param status [String] To post a ledger transaction at creation, use `posted`.
          #   #
          #   def initialize(
          #     id: nil,
          #     description: nil,
          #     effective_at: nil,
          #     ledger_entries: nil,
          #     ledgerable_id: nil,
          #     ledgerable_type: nil,
          #     metadata: nil,
          #     status: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @example
          #
          # ```ruby
          # ledger_entry => {
          #   amount: Integer,
          #   direction: ModernTreasury::Models::TransactionDirection,
          #   ledger_account_id: String,
          #   available_balance_amount: -> { ModernTreasury::HashOf[Integer] === _1 },
          #   lock_version: Integer,
          #   **_
          # }
          # ```
          class LedgerEntry < ModernTreasury::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute direction
            #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
            #
            #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
            required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

            # @!attribute ledger_account_id
            #   The ledger account that this ledger entry is associated with.
            #
            #   @return [String]
            required :ledger_account_id, String

            # @!attribute available_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s available balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol => Integer}, nil]
            optional :available_balance_amount, ModernTreasury::HashOf[Integer]

            # @!attribute lock_version
            #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
            #
            #   @return [Integer, nil]
            optional :lock_version, Integer

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #
            #   @return [Hash{Symbol => String}]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!attribute pending_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s pending balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol => Integer}, nil]
            optional :pending_balance_amount, ModernTreasury::HashOf[Integer]

            # @!attribute posted_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s posted balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol => Integer}, nil]
            optional :posted_balance_amount, ModernTreasury::HashOf[Integer]

            # @!attribute show_resulting_ledger_account_balances
            #   If true, response will include the balance of the associated ledger account for the entry.
            #
            #   @return [Boolean, nil]
            optional :show_resulting_ledger_account_balances, ModernTreasury::BooleanModel

            # @!parse
            #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
            #   #   as 1000. Can be any integer up to 36 digits.
            #   #
            #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
            #   #   transaction. A `credit` moves money from your account to someone else's. A
            #   #   `debit` pulls money from someone else's account to your own. Note that wire,
            #   #   rtp, and check payments will always be `credit`.
            #   #
            #   # @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
            #   #
            #   # @param available_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   #   account’s available balance. If any of these conditions would be false after the
            #   #   transaction is created, the entire call will fail with error code 422.
            #   #
            #   # @param lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger
            #   #   transaction to only succeed if no ledger transactions have posted since the
            #   #   given version. See our post about Designing the Ledgers API with Optimistic
            #   #   Locking for more details.
            #   #
            #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
            #   #   strings.
            #   #
            #   # @param pending_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   #   account’s pending balance. If any of these conditions would be false after the
            #   #   transaction is created, the entire call will fail with error code 422.
            #   #
            #   # @param posted_balance_amount [Hash{Symbol => Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   #   account’s posted balance. If any of these conditions would be false after the
            #   #   transaction is created, the entire call will fail with error code 422.
            #   #
            #   # @param show_resulting_ledger_account_balances [Boolean, nil] If true, response will include the balance of the associated ledger account for
            #   #   the entry.
            #   #
            #   def initialize(
            #     amount:,
            #     direction:,
            #     ledger_account_id:,
            #     available_balance_amount: nil,
            #     lock_version: nil,
            #     metadata: nil,
            #     pending_balance_amount: nil,
            #     posted_balance_amount: nil,
            #     show_resulting_ledger_account_balances: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
          #
          # @example
          #
          # ```ruby
          # case ledgerable_type
          # in :expected_payment
          #   # ...
          # in :incoming_payment_detail
          #   # ...
          # in :paper_item
          #   # ...
          # in :payment_order
          #   # ...
          # in :return
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class LedgerableType < ModernTreasury::Enum
            EXPECTED_PAYMENT = :expected_payment
            INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
            PAPER_ITEM = :paper_item
            PAYMENT_ORDER = :payment_order
            RETURN = :return
            REVERSAL = :reversal

            finalize!
          end

          # To post a ledger transaction at creation, use `posted`.
          #
          # @example
          #
          # ```ruby
          # case status
          # in :archived
          #   # ...
          # in :pending
          #   # ...
          # in :posted
          #   # ...
          # end
          # ```
          class Status < ModernTreasury::Enum
            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            finalize!
          end
        end
      end
    end
  end
end
