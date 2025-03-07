# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentOrder < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute accounting
      #
      #   @return [ModernTreasury::Models::PaymentOrder::Accounting]
      required :accounting, -> { ModernTreasury::Models::PaymentOrder::Accounting }

      # @!attribute accounting_category_id
      #   The ID of one of your accounting categories. Note that these will only be
      #     accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      required :accounting_category_id, String, nil?: true

      # @!attribute accounting_ledger_class_id
      #   The ID of one of your accounting ledger classes. Note that these will only be
      #     accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      required :accounting_ledger_class_id, String, nil?: true

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as
      #     1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute charge_bearer
      #   The party that will pay the fees for the payment order. Only applies to wire
      #     payment orders. Can be one of shared, sender, or receiver, which correspond
      #     respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrder::ChargeBearer, nil]
      required :charge_bearer, enum: -> { ModernTreasury::Models::PaymentOrder::ChargeBearer }, nil?: true

      # @!attribute compliance_rule_metadata
      #   Custom key-value pair for usage in compliance rules. Please contact support
      #     before making changes to this field.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :compliance_rule_metadata, ModernTreasury::HashOf[ModernTreasury::Unknown], nil?: true

      # @!attribute counterparty_id
      #   If the payment order is tied to a specific Counterparty, their id will appear,
      #     otherwise `null`.
      #
      #   @return [String, nil]
      required :counterparty_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Defaults to the currency of the originating account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute current_return
      #   If the payment order's status is `returned`, this will include the return
      #     object's data.
      #
      #   @return [ModernTreasury::Models::ReturnObject, nil]
      required :current_return, -> { ModernTreasury::Models::ReturnObject }, nil?: true

      # @!attribute decision_id
      #   The ID of the compliance decision for the payment order, if transaction
      #     monitoring is enabled.
      #
      #   @return [String, nil]
      required :decision_id, String, nil?: true

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute direction
      #   One of `credit`, `debit`. Describes the direction money is flowing in the
      #     transaction. A `credit` moves money from your account to someone else's. A
      #     `debit` pulls money from someone else's account to your own. Note that wire,
      #     rtp, and check payments will always be `credit`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrder::Direction]
      required :direction, enum: -> { ModernTreasury::Models::PaymentOrder::Direction }

      # @!attribute effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the
      #     current business day or the next business day if the current day is a bank
      #     holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute expires_at
      #   RFP payments require an expires_at. This value must be past the effective_date.
      #
      #   @return [Time, nil]
      required :expires_at, Time, nil?: true

      # @!attribute foreign_exchange_contract
      #   If present, indicates a specific foreign exchange contract number that has been
      #     generated by your financial institution.
      #
      #   @return [String, nil]
      required :foreign_exchange_contract, String, nil?: true

      # @!attribute foreign_exchange_indicator
      #   Indicates the type of FX transfer to initiate, can be either
      #     `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #     currency matches the originating account currency.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator, nil]
      required :foreign_exchange_indicator,
               enum: -> { ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator },
               nil?: true

      # @!attribute foreign_exchange_rate
      #   Associated serialized foreign exchange rate information.
      #
      #   @return [ModernTreasury::Models::PaymentOrder::ForeignExchangeRate, nil]
      required :foreign_exchange_rate,
               -> { ModernTreasury::Models::PaymentOrder::ForeignExchangeRate },
               nil?: true

      # @!attribute ledger_transaction_id
      #   The ID of the ledger transaction linked to the payment order.
      #
      #   @return [String, nil]
      required :ledger_transaction_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute nsf_protected
      #   A boolean to determine if NSF Protection is enabled for this payment order. Note
      #     that this setting must also be turned on in your organization settings page.
      #
      #   @return [Boolean]
      required :nsf_protected, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute originating_account_id
      #   The ID of one of your organization's internal accounts.
      #
      #   @return [String]
      required :originating_account_id, String

      # @!attribute originating_party_name
      #   If present, this will replace your default company name on receiver's bank
      #     statement. This field can only be used for ACH payments currently. For ACH, only
      #     the first 16 characters of this string will be used. Any additional characters
      #     will be truncated.
      #
      #   @return [String, nil]
      required :originating_party_name, String, nil?: true

      # @!attribute priority
      #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #     same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #     an overnight check rather than standard mail.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrder::Priority]
      required :priority, enum: -> { ModernTreasury::Models::PaymentOrder::Priority }

      # @!attribute process_after
      #   If present, Modern Treasury will not process the payment until after this time.
      #     If `process_after` is past the cutoff for `effective_date`, `process_after` will
      #     take precedence and `effective_date` will automatically update to reflect the
      #     earliest possible sending date after `process_after`. Format is ISO8601
      #     timestamp.
      #
      #   @return [Time, nil]
      required :process_after, Time, nil?: true

      # @!attribute purpose
      #   For `wire`, this is usually the purpose which is transmitted via the
      #     "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
      #     digit CPA Code that will be attached to the payment.
      #
      #   @return [String, nil]
      required :purpose, String, nil?: true

      # @!attribute receiving_account_id
      #   The receiving account ID. Can be an `external_account` or `internal_account`.
      #
      #   @return [String]
      required :receiving_account_id, String

      # @!attribute receiving_account_type
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrder::ReceivingAccountType]
      required :receiving_account_type, enum: -> { ModernTreasury::Models::PaymentOrder::ReceivingAccountType }

      # @!attribute reference_numbers
      #
      #   @return [Array<ModernTreasury::Models::PaymentOrder::ReferenceNumber>]
      required :reference_numbers,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder::ReferenceNumber] }

      # @!attribute remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire`
      #     payments the field will be passed through as the "Originator to Beneficiary
      #     Information", also known as OBI or Fedwire tag 6000.
      #
      #   @return [String, nil]
      required :remittance_information, String, nil?: true

      # @!attribute send_remittance_advice
      #   Send an email to the counterparty when the payment order is sent to the bank. If
      #     `null`, `send_remittance_advice` on the Counterparty is used.
      #
      #   @return [Boolean, nil]
      required :send_remittance_advice, ModernTreasury::BooleanModel, nil?: true

      # @!attribute statement_descriptor
      #   An optional descriptor which will appear in the receiver's statement. For
      #     `check` payments this field will be used as the memo line. For `ach` the maximum
      #     length is 10 characters. Note that for ACH payments, the name on your bank
      #     account will be included automatically by the bank, so you can use the
      #     characters for other useful information. For `eft` the maximum length is 15
      #     characters.
      #
      #   @return [String, nil]
      required :statement_descriptor, String, nil?: true

      # @!attribute status
      #   The current status of the payment order.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrder::Status]
      required :status, enum: -> { ModernTreasury::Models::PaymentOrder::Status }

      # @!attribute subtype
      #   An additional layer of classification for the type of payment order you are
      #     doing. This field is only used for `ach` payment orders currently. For `ach`
      #     payment orders, the `subtype` represents the SEC code. We currently support
      #     `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
      required :subtype, enum: -> { ModernTreasury::Models::PaymentOrderSubtype }, nil?: true

      # @!attribute transaction_ids
      #   The IDs of all the transactions associated to this payment order. Usually, you
      #     will only have a single transaction ID. However, if a payment order initially
      #     results in a Return, but gets redrafted and is later successfully completed, it
      #     can have many transactions.
      #
      #   @return [Array<String>]
      required :transaction_ids, ModernTreasury::ArrayOf[String]

      # @!attribute transaction_monitoring_enabled
      #   A flag that determines whether a payment order should go through transaction
      #     monitoring.
      #
      #   @return [Boolean]
      required :transaction_monitoring_enabled, ModernTreasury::BooleanModel

      # @!attribute type
      #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #     `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #     `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderType]
      required :type, enum: -> { ModernTreasury::Models::PaymentOrderType }

      # @!attribute ultimate_originating_account
      #   The account to which the originating of this payment should be attributed to.
      #     Can be a `virtual_account` or `internal_account`.
      #
      #   @return [ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount, nil]
      required :ultimate_originating_account,
               union: -> { ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccount },
               nil?: true

      # @!attribute ultimate_originating_account_id
      #   The ultimate originating account ID. Can be a `virtual_account` or
      #     `internal_account`.
      #
      #   @return [String, nil]
      required :ultimate_originating_account_id, String, nil?: true

      # @!attribute ultimate_originating_account_type
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType, nil]
      required :ultimate_originating_account_type,
               enum: -> { ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType },
               nil?: true

      # @!attribute ultimate_originating_party_identifier
      #   Identifier of the ultimate originator of the payment order.
      #
      #   @return [String, nil]
      required :ultimate_originating_party_identifier, String, nil?: true

      # @!attribute ultimate_originating_party_name
      #   Name of the ultimate originator of the payment order.
      #
      #   @return [String, nil]
      required :ultimate_originating_party_name, String, nil?: true

      # @!attribute ultimate_receiving_party_identifier
      #
      #   @return [String, nil]
      required :ultimate_receiving_party_identifier, String, nil?: true

      # @!attribute ultimate_receiving_party_name
      #
      #   @return [String, nil]
      required :ultimate_receiving_party_name, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_attributes
      #   Additional vendor specific fields for this payment. Data must be represented as
      #     key-value pairs.
      #
      #   @return [Object, nil]
      required :vendor_attributes, ModernTreasury::Unknown, nil?: true

      # @!attribute vendor_failure_reason
      #   This field will be populated if a vendor failure occurs. Logic shouldn't be
      #     built on its value as it is free-form.
      #
      #   @return [String, nil]
      required :vendor_failure_reason, String, nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param accounting [ModernTreasury::Models::PaymentOrder::Accounting]
      #   # @param accounting_category_id [String, nil]
      #   # @param accounting_ledger_class_id [String, nil]
      #   # @param amount [Integer]
      #   # @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrder::ChargeBearer, nil]
      #   # @param compliance_rule_metadata [Hash{Symbol=>Object}, nil]
      #   # @param counterparty_id [String, nil]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, ModernTreasury::Models::Currency]
      #   # @param current_return [ModernTreasury::Models::ReturnObject, nil]
      #   # @param decision_id [String, nil]
      #   # @param description [String, nil]
      #   # @param direction [Symbol, ModernTreasury::Models::PaymentOrder::Direction]
      #   # @param effective_date [Date]
      #   # @param expires_at [Time, nil]
      #   # @param foreign_exchange_contract [String, nil]
      #   # @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator, nil]
      #   # @param foreign_exchange_rate [ModernTreasury::Models::PaymentOrder::ForeignExchangeRate, nil]
      #   # @param ledger_transaction_id [String, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param nsf_protected [Boolean]
      #   # @param object [String]
      #   # @param originating_account_id [String]
      #   # @param originating_party_name [String, nil]
      #   # @param priority [Symbol, ModernTreasury::Models::PaymentOrder::Priority]
      #   # @param process_after [Time, nil]
      #   # @param purpose [String, nil]
      #   # @param receiving_account_id [String]
      #   # @param receiving_account_type [Symbol, ModernTreasury::Models::PaymentOrder::ReceivingAccountType]
      #   # @param reference_numbers [Array<ModernTreasury::Models::PaymentOrder::ReferenceNumber>]
      #   # @param remittance_information [String, nil]
      #   # @param send_remittance_advice [Boolean, nil]
      #   # @param statement_descriptor [String, nil]
      #   # @param status [Symbol, ModernTreasury::Models::PaymentOrder::Status]
      #   # @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
      #   # @param transaction_ids [Array<String>]
      #   # @param transaction_monitoring_enabled [Boolean]
      #   # @param type [Symbol, ModernTreasury::Models::PaymentOrderType]
      #   # @param ultimate_originating_account [ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount, nil]
      #   # @param ultimate_originating_account_id [String, nil]
      #   # @param ultimate_originating_account_type [Symbol, ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType, nil]
      #   # @param ultimate_originating_party_identifier [String, nil]
      #   # @param ultimate_originating_party_name [String, nil]
      #   # @param ultimate_receiving_party_identifier [String, nil]
      #   # @param ultimate_receiving_party_name [String, nil]
      #   # @param updated_at [Time]
      #   # @param vendor_attributes [Object, nil]
      #   # @param vendor_failure_reason [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     accounting:,
      #     accounting_category_id:,
      #     accounting_ledger_class_id:,
      #     amount:,
      #     charge_bearer:,
      #     compliance_rule_metadata:,
      #     counterparty_id:,
      #     created_at:,
      #     currency:,
      #     current_return:,
      #     decision_id:,
      #     description:,
      #     direction:,
      #     effective_date:,
      #     expires_at:,
      #     foreign_exchange_contract:,
      #     foreign_exchange_indicator:,
      #     foreign_exchange_rate:,
      #     ledger_transaction_id:,
      #     live_mode:,
      #     metadata:,
      #     nsf_protected:,
      #     object:,
      #     originating_account_id:,
      #     originating_party_name:,
      #     priority:,
      #     process_after:,
      #     purpose:,
      #     receiving_account_id:,
      #     receiving_account_type:,
      #     reference_numbers:,
      #     remittance_information:,
      #     send_remittance_advice:,
      #     statement_descriptor:,
      #     status:,
      #     subtype:,
      #     transaction_ids:,
      #     transaction_monitoring_enabled:,
      #     type:,
      #     ultimate_originating_account:,
      #     ultimate_originating_account_id:,
      #     ultimate_originating_account_type:,
      #     ultimate_originating_party_identifier:,
      #     ultimate_originating_party_name:,
      #     ultimate_receiving_party_identifier:,
      #     ultimate_receiving_party_name:,
      #     updated_at:,
      #     vendor_attributes:,
      #     vendor_failure_reason:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Accounting < ModernTreasury::BaseModel
        # @!attribute account_id
        #   The ID of one of your accounting categories. Note that these will only be
        #     accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :account_id, String, nil?: true

        # @!attribute class_id
        #   The ID of one of the class objects in your accounting system. Class objects
        #     track segments of your business independent of client or project. Note that
        #     these will only be accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :class_id, String, nil?: true

        # @!parse
        #   # @param account_id [String, nil]
        #   # @param class_id [String, nil]
        #   #
        #   def initialize(account_id: nil, class_id: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @abstract
      #
      # The party that will pay the fees for the payment order. Only applies to wire
      #   payment orders. Can be one of shared, sender, or receiver, which correspond
      #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      class ChargeBearer < ModernTreasury::Enum
        SHARED = :shared
        SENDER = :sender
        RECEIVER = :receiver

        finalize!
      end

      # @abstract
      #
      # One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit

        finalize!
      end

      # @abstract
      #
      # Indicates the type of FX transfer to initiate, can be either
      #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #   currency matches the originating account currency.
      class ForeignExchangeIndicator < ModernTreasury::Enum
        FIXED_TO_VARIABLE = :fixed_to_variable
        VARIABLE_TO_FIXED = :variable_to_fixed

        finalize!
      end

      class ForeignExchangeRate < ModernTreasury::BaseModel
        # @!attribute base_amount
        #   Amount in the lowest denomination of the `base_currency` to convert, often
        #     called the "sell" amount.
        #
        #   @return [Integer]
        required :base_amount, Integer

        # @!attribute base_currency
        #   Currency to convert, often called the "sell" currency.
        #
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :base_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute exponent
        #   The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #     `exponent`).
        #
        #   @return [Integer]
        required :exponent, Integer

        # @!attribute rate_string
        #   A string representation of the rate.
        #
        #   @return [String]
        required :rate_string, String

        # @!attribute target_amount
        #   Amount in the lowest denomination of the `target_currency`, often called the
        #     "buy" amount.
        #
        #   @return [Integer]
        required :target_amount, Integer

        # @!attribute target_currency
        #   Currency to convert the `base_currency` to, often called the "buy" currency.
        #
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :target_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute value
        #   The whole number component of the rate. The decimal is calculated as `value` /
        #     (10 ^ `exponent`).
        #
        #   @return [Integer]
        required :value, Integer

        # @!parse
        #   # Associated serialized foreign exchange rate information.
        #   #
        #   # @param base_amount [Integer]
        #   # @param base_currency [Symbol, ModernTreasury::Models::Currency]
        #   # @param exponent [Integer]
        #   # @param rate_string [String]
        #   # @param target_amount [Integer]
        #   # @param target_currency [Symbol, ModernTreasury::Models::Currency]
        #   # @param value [Integer]
        #   #
        #   def initialize(base_amount:, base_currency:, exponent:, rate_string:, target_amount:, target_currency:, value:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @abstract
      #
      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      class Priority < ModernTreasury::Enum
        HIGH = :high
        NORMAL = :normal

        finalize!
      end

      # @abstract
      #
      class ReceivingAccountType < ModernTreasury::Enum
        INTERNAL_ACCOUNT = :internal_account
        EXTERNAL_ACCOUNT = :external_account

        finalize!
      end

      class ReferenceNumber < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #     if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute reference_number
        #   The vendor reference number.
        #
        #   @return [String]
        required :reference_number, String

        # @!attribute reference_number_type
        #   The type of the reference number. Referring to the vendor payment id.
        #
        #   @return [Symbol, ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType]
        required :reference_number_type,
                 enum: -> { ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   # @param created_at [Time]
        #   # @param live_mode [Boolean]
        #   # @param object [String]
        #   # @param reference_number [String]
        #   # @param reference_number_type [Symbol, ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType]
        #   # @param updated_at [Time]
        #   #
        #   def initialize(id:, created_at:, live_mode:, object:, reference_number:, reference_number_type:, updated_at:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @abstract
        #
        # The type of the reference number. Referring to the vendor payment id.
        class ReferenceNumberType < ModernTreasury::Enum
          ACH_ORIGINAL_TRACE_NUMBER = :ach_original_trace_number
          ACH_TRACE_NUMBER = :ach_trace_number
          BANKPROV_PAYMENT_ACTIVITY_DATE = :bankprov_payment_activity_date
          BANKPROV_PAYMENT_ID = :bankprov_payment_id
          BNK_DEV_PRENOTIFICATION_ID = :bnk_dev_prenotification_id
          BNK_DEV_TRANSFER_ID = :bnk_dev_transfer_id
          BOFA_END_TO_END_ID = :bofa_end_to_end_id
          BOFA_TRANSACTION_ID = :bofa_transaction_id
          CHECK_NUMBER = :check_number
          CITIBANK_REFERENCE_NUMBER = :citibank_reference_number
          CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER = :citibank_worldlink_clearing_system_reference_number
          COLUMN_FX_QUOTE_ID = :column_fx_quote_id
          COLUMN_REVERSAL_PAIR_TRANSFER_ID = :column_reversal_pair_transfer_id
          COLUMN_TRANSFER_ID = :column_transfer_id
          CROSS_RIVER_PAYMENT_ID = :cross_river_payment_id
          CROSS_RIVER_SERVICE_MESSAGE = :cross_river_service_message
          CROSS_RIVER_TRANSACTION_ID = :cross_river_transaction_id
          CURRENCYCLOUD_CONVERSION_ID = :currencycloud_conversion_id
          CURRENCYCLOUD_PAYMENT_ID = :currencycloud_payment_id
          DC_BANK_TRANSACTION_ID = :dc_bank_transaction_id
          DWOLLA_TRANSACTION_ID = :dwolla_transaction_id
          EFT_TRACE_NUMBER = :eft_trace_number
          EVOLVE_TRANSACTION_ID = :evolve_transaction_id
          FEDWIRE_IMAD = :fedwire_imad
          FEDWIRE_OMAD = :fedwire_omad
          FIRST_REPUBLIC_INTERNAL_ID = :first_republic_internal_id
          GOLDMAN_SACHS_COLLECTION_REQUEST_ID = :goldman_sachs_collection_request_id
          GOLDMAN_SACHS_END_TO_END_ID = :goldman_sachs_end_to_end_id
          GOLDMAN_SACHS_PAYMENT_REQUEST_ID = :goldman_sachs_payment_request_id
          GOLDMAN_SACHS_REQUEST_ID = :goldman_sachs_request_id
          GOLDMAN_SACHS_UNIQUE_PAYMENT_ID = :goldman_sachs_unique_payment_id
          INTERAC_MESSAGE_ID = :interac_message_id
          JPMC_CCN = :jpmc_ccn
          JPMC_CLEARING_SYSTEM_REFERENCE = :jpmc_clearing_system_reference
          JPMC_CUSTOMER_REFERENCE_ID = :jpmc_customer_reference_id
          JPMC_END_TO_END_ID = :jpmc_end_to_end_id
          JPMC_FIRM_ROOT_ID = :jpmc_firm_root_id
          JPMC_FX_TRN_ID = :jpmc_fx_trn_id
          JPMC_P3_ID = :jpmc_p3_id
          JPMC_PAYMENT_BATCH_ID = :jpmc_payment_batch_id
          JPMC_PAYMENT_INFORMATION_ID = :jpmc_payment_information_id
          JPMC_PAYMENT_RETURNED_DATETIME = :jpmc_payment_returned_datetime
          LOB_CHECK_ID = :lob_check_id
          OTHER = :other
          PARTIAL_SWIFT_MIR = :partial_swift_mir
          PNC_CLEARING_REFERENCE = :pnc_clearing_reference
          PNC_INSTRUCTION_ID = :pnc_instruction_id
          PNC_MULTIPAYMENT_ID = :pnc_multipayment_id
          PNC_PAYMENT_TRACE_ID = :pnc_payment_trace_id
          PNC_TRANSACTION_REFERENCE_NUMBER = :pnc_transaction_reference_number
          RSPEC_VENDOR_PAYMENT_ID = :rspec_vendor_payment_id
          RTP_INSTRUCTION_ID = :rtp_instruction_id
          SIGNET_API_REFERENCE_ID = :signet_api_reference_id
          SIGNET_CONFIRMATION_ID = :signet_confirmation_id
          SIGNET_REQUEST_ID = :signet_request_id
          SILVERGATE_PAYMENT_ID = :silvergate_payment_id
          SVB_END_TO_END_ID = :svb_end_to_end_id
          SVB_PAYMENT_ID = :svb_payment_id
          SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW = :svb_transaction_cleared_for_sanctions_review
          SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW = :svb_transaction_held_for_sanctions_review
          SWIFT_MIR = :swift_mir
          SWIFT_UETR = :swift_uetr
          UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER = :umb_product_partner_account_number
          USBANK_PAYMENT_APPLICATION_REFERENCE_ID = :usbank_payment_application_reference_id
          USBANK_PAYMENT_ID = :usbank_payment_id
          USBANK_PENDING_RTP_PAYMENT_ID = :usbank_pending_rtp_payment_id
          USBANK_POSTED_RTP_PAYMENT_ID = :usbank_posted_rtp_payment_id
          WELLS_FARGO_END_TO_END_ID = :wells_fargo_end_to_end_id
          WELLS_FARGO_PAYMENT_ID = :wells_fargo_payment_id
          WELLS_FARGO_TRACE_NUMBER = :wells_fargo_trace_number
          WELLS_FARGO_UETR = :wells_fargo_uetr

          finalize!
        end
      end

      # @abstract
      #
      # The current status of the payment order.
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

      # @abstract
      #
      # The account to which the originating of this payment should be attributed to.
      #   Can be a `virtual_account` or `internal_account`.
      class UltimateOriginatingAccount < ModernTreasury::Union
        variant -> { ModernTreasury::Models::VirtualAccount }

        variant -> { ModernTreasury::Models::InternalAccount }
      end

      # @abstract
      #
      class UltimateOriginatingAccountType < ModernTreasury::Enum
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account

        finalize!
      end
    end
  end
end
