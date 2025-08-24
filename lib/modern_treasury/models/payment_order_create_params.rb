# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentOrders#create
    class PaymentOrderCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Direction]
      required :direction, enum: -> { ModernTreasury::PaymentOrderCreateParams::Direction }

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
      #
      #   @return [ModernTreasury::Models::Accounting, nil]
      optional :accounting, -> { ModernTreasury::Accounting }

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
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ChargeBearer, nil]
      optional :charge_bearer, enum: -> { ModernTreasury::PaymentOrderCreateParams::ChargeBearer }, nil?: true

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

      # @!attribute documents
      #   An array of documents to be attached to the payment order. Note that if you
      #   attach documents, the request's content type must be `multipart/form-data`.
      #
      #   @return [Array<ModernTreasury::Models::PaymentOrderCreateParams::Document>, nil]
      optional :documents,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::PaymentOrderCreateParams::Document] }

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
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::FallbackType, nil]
      optional :fallback_type, enum: -> { ModernTreasury::PaymentOrderCreateParams::FallbackType }

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
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ForeignExchangeIndicator, nil]
      optional :foreign_exchange_indicator,
               enum: -> { ModernTreasury::PaymentOrderCreateParams::ForeignExchangeIndicator },
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
      #   @return [Array<ModernTreasury::Models::PaymentOrderCreateParams::LineItem>, nil]
      optional :line_items,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::PaymentOrderCreateParams::LineItem] }

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
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Priority, nil]
      optional :priority, enum: -> { ModernTreasury::PaymentOrderCreateParams::Priority }

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
      #   @return [ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount, nil]
      optional :receiving_account, -> { ModernTreasury::PaymentOrderCreateParams::ReceivingAccount }

      # @!attribute receiving_account_id
      #   Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      #
      #   @return [String, nil]
      optional :receiving_account_id, String

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

      # @!method initialize(amount:, direction:, originating_account_id:, type:, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, charge_bearer: nil, currency: nil, description: nil, documents: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, subtype: nil, transaction_monitoring_enabled: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentOrderCreateParams} for more details.
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param direction [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
      #
      #   @param originating_account_id [String] The ID of one of your organization's internal accounts.
      #
      #   @param type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
      #
      #   @param accounting [ModernTreasury::Models::Accounting]
      #
      #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
      #
      #   @param accounting_ledger_class_id [String, nil] The ID of one of your accounting ledger classes. Note that these will only be ac
      #
      #   @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ChargeBearer, nil] The party that will pay the fees for the payment order. See https://docs.modernt
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency] Defaults to the currency of the originating account.
      #
      #   @param description [String, nil] An optional description for internal use.
      #
      #   @param documents [Array<ModernTreasury::Models::PaymentOrderCreateParams::Document>] An array of documents to be attached to the payment order. Note that if you atta
      #
      #   @param effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
      #
      #   @param expires_at [Time, nil] RFP payments require an expires_at. This value must be past the effective_date.
      #
      #   @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::FallbackType] A payment type to fallback to if the original type is not valid for the receivin
      #
      #   @param foreign_exchange_contract [String, nil] If present, indicates a specific foreign exchange contract number that has been
      #
      #   @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ForeignExchangeIndicator, nil] Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`
      #
      #   @param ledger_transaction [ModernTreasury::Models::LedgerTransactionCreateRequest] Specifies a ledger transaction object that will be created with the payment orde
      #
      #   @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a pendi
      #
      #   @param line_items [Array<ModernTreasury::Models::PaymentOrderCreateParams::LineItem>] An array of line items that must sum up to the amount of the payment order.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param nsf_protected [Boolean] A boolean to determine if NSF Protection is enabled for this payment order. Note
      #
      #   @param originating_party_name [String, nil] If present, this will replace your default company name on receiver's bank state
      #
      #   @param priority [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
      #
      #   @param process_after [Time, nil] If present, Modern Treasury will not process the payment until after this time.
      #
      #   @param purpose [String, nil] For `wire`, this is usually the purpose which is transmitted via the "InstrForDb
      #
      #   @param receiving_account [ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount] Either `receiving_account` or `receiving_account_id` must be present. When using
      #
      #   @param receiving_account_id [String] Either `receiving_account` or `receiving_account_id` must be present. When using
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
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of `credit`, `debit`. Describes the direction money is flowing in the
      # transaction. A `credit` moves money from your account to someone else's. A
      # `debit` pulls money from someone else's account to your own. Note that wire,
      # rtp, and check payments will always be `credit`.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The party that will pay the fees for the payment order. See
      # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
      # differences between the options.
      module ChargeBearer
        extend ModernTreasury::Internal::Type::Enum

        SHARED = :shared
        SENDER = :sender
        RECEIVER = :receiver

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Document < ModernTreasury::Internal::Type::BaseModel
        # @!attribute documentable_id
        #   The unique identifier for the associated object.
        #
        #   @return [String]
        required :documentable_id, String

        # @!attribute documentable_type
        #
        #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Document::DocumentableType]
        required :documentable_type,
                 enum: -> { ModernTreasury::PaymentOrderCreateParams::Document::DocumentableType }

        # @!attribute file
        #
        #   @return [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
        required :file, ModernTreasury::Internal::Type::FileInput

        # @!attribute document_type
        #   A category given to the document, can be `null`.
        #
        #   @return [String, nil]
        optional :document_type, String

        # @!method initialize(documentable_id:, documentable_type:, file:, document_type: nil)
        #   @param documentable_id [String] The unique identifier for the associated object.
        #
        #   @param documentable_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::Document::DocumentableType]
        #
        #   @param file [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
        #
        #   @param document_type [String] A category given to the document, can be `null`.

        # @see ModernTreasury::Models::PaymentOrderCreateParams::Document#documentable_type
        module DocumentableType
          extend ModernTreasury::Internal::Type::Enum

          COUNTERPARTIES = :counterparties
          EXPECTED_PAYMENTS = :expected_payments
          EXTERNAL_ACCOUNTS = :external_accounts
          IDENTIFICATIONS = :identifications
          INCOMING_PAYMENT_DETAILS = :incoming_payment_details
          INTERNAL_ACCOUNTS = :internal_accounts
          ORGANIZATIONS = :organizations
          PAYMENT_ORDERS = :payment_orders
          TRANSACTIONS = :transactions
          CONNECTIONS = :connections

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # A payment type to fallback to if the original type is not valid for the
      # receiving account. Currently, this only supports falling back from RTP to ACH
      # (type=rtp and fallback_type=ach)
      module FallbackType
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Indicates the type of FX transfer to initiate, can be either
      # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      # currency matches the originating account currency.
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
        #   {ModernTreasury::Models::PaymentOrderCreateParams::LineItem} for more details.
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
      module Priority
        extend ModernTreasury::Internal::Type::Enum

        HIGH = :high
        NORMAL = :normal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ReceivingAccount < ModernTreasury::Internal::Type::BaseModel
        # @!attribute account_details
        #
        #   @return [Array<ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail>, nil]
        optional :account_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::PaymentOrderCreateParams::ReceivingAccount::AccountDetail] }

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
        #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::PartyType, nil]
        optional :party_type,
                 enum: -> { ModernTreasury::PaymentOrderCreateParams::ReceivingAccount::PartyType },
                 nil?: true

        # @!attribute plaid_processor_token
        #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   you can pass the processor token in this field.
        #
        #   @return [String, nil]
        optional :plaid_processor_token, String

        # @!attribute routing_details
        #
        #   @return [Array<ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail>, nil]
        optional :routing_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail] }

        # @!method initialize(account_details: nil, account_type: nil, contact_details: nil, external_id: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount} for more
        #   details.
        #
        #   Either `receiving_account` or `receiving_account_id` must be present. When using
        #   `receiving_account_id`, you may pass the id of an external account or an
        #   internal account.
        #
        #   @param account_details [Array<ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail>]
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
        #   @param party_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::PartyType, nil] Either `individual` or `business`.
        #
        #   @param plaid_processor_token [String] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #
        #   @param routing_details [Array<ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail>]

        class AccountDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute account_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail::AccountNumberType, nil]
          optional :account_number_type,
                   enum: -> { ModernTreasury::PaymentOrderCreateParams::ReceivingAccount::AccountDetail::AccountNumberType }

          # @!method initialize(account_number:, account_number_type: nil)
          #   @param account_number [String]
          #   @param account_number_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail::AccountNumberType]

          # @see ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail#account_number_type
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
        # @see ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount#party_type
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
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail::RoutingNumberType]
          required :routing_number_type,
                   enum: -> { ModernTreasury::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail::RoutingNumberType }

          # @!attribute payment_type
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail::PaymentType, nil]
          optional :payment_type,
                   enum: -> { ModernTreasury::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail::PaymentType }

          # @!method initialize(routing_number:, routing_number_type:, payment_type: nil)
          #   @param routing_number [String]
          #   @param routing_number_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail::RoutingNumberType]
          #   @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail::PaymentType]

          # @see ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail#routing_number_type
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

          # @see ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail#payment_type
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
    end
  end
end
