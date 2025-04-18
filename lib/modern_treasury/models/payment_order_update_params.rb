# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentOrders#update
    class PaymentOrderUpdateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute [r] accounting
      #
      #   @return [ModernTreasury::Models::PaymentOrderUpdateParams::Accounting, nil]
      optional :accounting, -> { ModernTreasury::Models::PaymentOrderUpdateParams::Accounting }

      # @!parse
      #   # @return [ModernTreasury::Models::PaymentOrderUpdateParams::Accounting]
      #   attr_writer :accounting

      # @!attribute accounting_category_id
      #   The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      optional :accounting_category_id, String, nil?: true

      # @!attribute accounting_ledger_class_id
      #   The ID of one of your accounting ledger classes. Note that these will only be
      #   accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      optional :accounting_ledger_class_id, String, nil?: true

      # @!attribute [r] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as
      #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :amount

      # @!attribute charge_bearer
      #   The party that will pay the fees for the payment order. Only applies to wire
      #   payment orders. Can be one of shared, sender, or receiver, which correspond
      #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ChargeBearer, nil]
      optional :charge_bearer,
               enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ChargeBearer },
               nil?: true

      # @!attribute counterparty_id
      #   Required when receiving_account_id is passed the ID of an external account.
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute [r] currency
      #   Defaults to the currency of the originating account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::Currency]
      #   attr_writer :currency

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] direction
      #   One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Direction, nil]
      optional :direction, enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::Direction }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Direction]
      #   attr_writer :direction

      # @!attribute [r] effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @return [Date, nil]
      optional :effective_date, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :effective_date

      # @!attribute expires_at
      #   RFP payments require an expires_at. This value must be past the effective_date.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute [r] fallback_type
      #   A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (type=rtp and fallback_type=ach)
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::FallbackType, nil]
      optional :fallback_type, enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::FallbackType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::FallbackType]
      #   attr_writer :fallback_type

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
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ForeignExchangeIndicator, nil]
      optional :foreign_exchange_indicator,
               enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ForeignExchangeIndicator },
               nil?: true

      # @!attribute [r] line_items
      #   An array of line items that must sum up to the amount of the payment order.
      #
      #   @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::LineItem>, nil]
      optional :line_items,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::PaymentOrderUpdateParams::LineItem] }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::LineItem>]
      #   attr_writer :line_items

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] nsf_protected
      #   A boolean to determine if NSF Protection is enabled for this payment order. Note
      #   that this setting must also be turned on in your organization settings page.
      #
      #   @return [Boolean, nil]
      optional :nsf_protected, ModernTreasury::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :nsf_protected

      # @!attribute [r] originating_account_id
      #   The ID of one of your organization's internal accounts.
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originating_account_id

      # @!attribute originating_party_name
      #   If present, this will replace your default company name on receiver's bank
      #   statement. This field can only be used for ACH payments currently. For ACH, only
      #   the first 16 characters of this string will be used. Any additional characters
      #   will be truncated.
      #
      #   @return [String, nil]
      optional :originating_party_name, String, nil?: true

      # @!attribute [r] priority
      #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Priority, nil]
      optional :priority, enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::Priority }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Priority]
      #   attr_writer :priority

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

      # @!attribute [r] receiving_account
      #   Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      #
      #   @return [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount, nil]
      optional :receiving_account, -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount }

      # @!parse
      #   # @return [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount]
      #   attr_writer :receiving_account

      # @!attribute [r] receiving_account_id
      #   Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      #
      #   @return [String, nil]
      optional :receiving_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :receiving_account_id

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

      # @!attribute [r] status
      #   To cancel a payment order, use `cancelled`. To redraft a returned payment order,
      #   use `approved`. To undo approval on a denied or approved payment order, use
      #   `needs_approval`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Status]
      #   attr_writer :status

      # @!attribute subtype
      #   An additional layer of classification for the type of payment order you are
      #   doing. This field is only used for `ach` payment orders currently. For `ach`
      #   payment orders, the `subtype` represents the SEC code. We currently support
      #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
      optional :subtype, enum: -> { ModernTreasury::Models::PaymentOrderSubtype }, nil?: true

      # @!attribute [r] type
      #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderType, nil]
      optional :type, enum: -> { ModernTreasury::Models::PaymentOrderType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderType]
      #   attr_writer :type

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

      # @!method initialize(accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, amount: nil, charge_bearer: nil, counterparty_id: nil, currency: nil, description: nil, direction: nil, effective_date: nil, expires_at: nil, fallback_type: nil, foreign_exchange_contract: nil, foreign_exchange_indicator: nil, line_items: nil, metadata: nil, nsf_protected: nil, originating_account_id: nil, originating_party_name: nil, priority: nil, process_after: nil, purpose: nil, receiving_account: nil, receiving_account_id: nil, remittance_information: nil, send_remittance_advice: nil, statement_descriptor: nil, status: nil, subtype: nil, type: nil, ultimate_originating_party_identifier: nil, ultimate_originating_party_name: nil, ultimate_receiving_party_identifier: nil, ultimate_receiving_party_name: nil, request_options: {})
      #   @param accounting [ModernTreasury::Models::PaymentOrderUpdateParams::Accounting]
      #   @param accounting_category_id [String, nil]
      #   @param accounting_ledger_class_id [String, nil]
      #   @param amount [Integer]
      #   @param charge_bearer [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ChargeBearer, nil]
      #   @param counterparty_id [String, nil]
      #   @param currency [Symbol, ModernTreasury::Models::Currency]
      #   @param description [String, nil]
      #   @param direction [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Direction]
      #   @param effective_date [Date]
      #   @param expires_at [Time, nil]
      #   @param fallback_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::FallbackType]
      #   @param foreign_exchange_contract [String, nil]
      #   @param foreign_exchange_indicator [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ForeignExchangeIndicator, nil]
      #   @param line_items [Array<ModernTreasury::Models::PaymentOrderUpdateParams::LineItem>]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param nsf_protected [Boolean]
      #   @param originating_account_id [String]
      #   @param originating_party_name [String, nil]
      #   @param priority [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Priority]
      #   @param process_after [Time, nil]
      #   @param purpose [String, nil]
      #   @param receiving_account [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount]
      #   @param receiving_account_id [String]
      #   @param remittance_information [String, nil]
      #   @param send_remittance_advice [Boolean, nil]
      #   @param statement_descriptor [String, nil]
      #   @param status [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::Status]
      #   @param subtype [Symbol, ModernTreasury::Models::PaymentOrderSubtype, nil]
      #   @param type [Symbol, ModernTreasury::Models::PaymentOrderType]
      #   @param ultimate_originating_party_identifier [String, nil]
      #   @param ultimate_originating_party_name [String, nil]
      #   @param ultimate_receiving_party_identifier [String, nil]
      #   @param ultimate_receiving_party_name [String, nil]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class Accounting < ModernTreasury::Internal::Type::BaseModel
        # @!attribute account_id
        #   The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :account_id, String, nil?: true

        # @!attribute class_id
        #   The ID of one of the class objects in your accounting system. Class objects
        #   track segments of your business independent of client or project. Note that
        #   these will only be accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :class_id, String, nil?: true

        # @!method initialize(account_id: nil, class_id: nil)
        #   @param account_id [String, nil]
        #   @param class_id [String, nil]
      end

      # The party that will pay the fees for the payment order. Only applies to wire
      # payment orders. Can be one of shared, sender, or receiver, which correspond
      # respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
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

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!method initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
        #   @param amount [Integer]
        #   @param accounting_category_id [String, nil]
        #   @param description [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
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
        # @!attribute [r] account_details
        #
        #   @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail>, nil]
        optional :account_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail] }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail>]
        #   attr_writer :account_details

        # @!attribute [r] account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::ExternalAccountType]
        #   attr_writer :account_type

        # @!attribute [r] contact_details
        #
        #   @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail>, nil]
        optional :contact_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail] }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail>]
        #   attr_writer :contact_details

        # @!attribute [r] ledger_account
        #   Specifies a ledger account object that will be created with the external
        #   account. The resulting ledger account is linked to the external account for
        #   auto-ledgering Payment objects. See
        #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   for more details.
        #
        #   @return [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount, nil]
        optional :ledger_account,
                 -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount }

        # @!parse
        #   # @return [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount]
        #   attr_writer :ledger_account

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute name
        #   A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute [r] party_address
        #   Required if receiving wire payments.
        #
        #   @return [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress, nil]
        optional :party_address,
                 -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress }

        # @!parse
        #   # @return [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress]
        #   attr_writer :party_address

        # @!attribute [r] party_identifier
        #
        #   @return [String, nil]
        optional :party_identifier, String

        # @!parse
        #   # @return [String]
        #   attr_writer :party_identifier

        # @!attribute [r] party_name
        #   If this value isn't provided, it will be inherited from the counterparty's name.
        #
        #   @return [String, nil]
        optional :party_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :party_name

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyType, nil]
        optional :party_type,
                 enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyType },
                 nil?: true

        # @!attribute [r] plaid_processor_token
        #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   you can pass the processor token in this field.
        #
        #   @return [String, nil]
        optional :plaid_processor_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :plaid_processor_token

        # @!attribute [r] routing_details
        #
        #   @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail>, nil]
        optional :routing_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail] }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail>]
        #   attr_writer :routing_details

        # @!method initialize(account_details: nil, account_type: nil, contact_details: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil)
        #   Either `receiving_account` or `receiving_account_id` must be present. When using
        #   `receiving_account_id`, you may pass the id of an external account or an
        #   internal account.
        #
        #   @param account_details [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail>]
        #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType]
        #   @param contact_details [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail>]
        #   @param ledger_account [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param name [String, nil]
        #   @param party_address [ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress]
        #   @param party_identifier [String]
        #   @param party_name [String]
        #   @param party_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyType, nil]
        #   @param plaid_processor_token [String]
        #   @param routing_details [Array<ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail>]

        class AccountDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute [r] account_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail::AccountNumberType, nil]
          optional :account_number_type,
                   enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail::AccountNumberType }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail::AccountNumberType]
          #   attr_writer :account_number_type

          # @!method initialize(account_number:, account_number_type: nil)
          #   @param account_number [String]
          #   @param account_number_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail::AccountNumberType]

          # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail#account_number_type
          module AccountNumberType
            extend ModernTreasury::Internal::Type::Enum

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ContactDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute [r] contact_identifier
          #
          #   @return [String, nil]
          optional :contact_identifier, String

          # @!parse
          #   # @return [String]
          #   attr_writer :contact_identifier

          # @!attribute [r] contact_identifier_type
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail::ContactIdentifierType, nil]
          optional :contact_identifier_type,
                   enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail::ContactIdentifierType }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail::ContactIdentifierType]
          #   attr_writer :contact_identifier_type

          # @!method initialize(contact_identifier: nil, contact_identifier_type: nil)
          #   @param contact_identifier [String]
          #   @param contact_identifier_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail::ContactIdentifierType]

          # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail#contact_identifier_type
          module ContactIdentifierType
            extend ModernTreasury::Internal::Type::Enum

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount#ledger_account
        class LedgerAccount < ModernTreasury::Internal::Type::BaseModel
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
          optional :currency_exponent, Integer, nil?: true

          # @!attribute description
          #   The description of the ledger account.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute [r] ledger_account_category_ids
          #   The array of ledger account category ids that this ledger account should be a
          #   child of.
          #
          #   @return [Array<String>, nil]
          optional :ledger_account_category_ids, ModernTreasury::Internal::Type::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :ledger_account_category_ids

          # @!attribute [r] ledgerable_id
          #   If the ledger account links to another object in Modern Treasury, the id will be
          #   populated here, otherwise null.
          #
          #   @return [String, nil]
          optional :ledgerable_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :ledgerable_id

          # @!attribute [r] ledgerable_type
          #   If the ledger account links to another object in Modern Treasury, the type will
          #   be populated here, otherwise null. The value is one of internal_account or
          #   external_account.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount::LedgerableType, nil]
          optional :ledgerable_type,
                   enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount::LedgerableType }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount::LedgerableType]
          #   attr_writer :ledgerable_type

          # @!attribute [r] metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :metadata

          # @!method initialize(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil)
          #   Specifies a ledger account object that will be created with the external
          #   account. The resulting ledger account is linked to the external account for
          #   auto-ledgering Payment objects. See
          #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
          #   for more details.
          #
          #   @param currency [String]
          #   @param ledger_id [String]
          #   @param name [String]
          #   @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection]
          #   @param currency_exponent [Integer, nil]
          #   @param description [String, nil]
          #   @param ledger_account_category_ids [Array<String>]
          #   @param ledgerable_id [String]
          #   @param ledgerable_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount::LedgerableType]
          #   @param metadata [Hash{Symbol=>String}]

          # If the ledger account links to another object in Modern Treasury, the type will
          # be populated here, otherwise null. The value is one of internal_account or
          # external_account.
          #
          # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount#ledgerable_type
          module LedgerableType
            extend ModernTreasury::Internal::Type::Enum

            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount#party_address
        class PartyAddress < ModernTreasury::Internal::Type::BaseModel
          # @!attribute country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @return [String, nil]
          optional :country, String, nil?: true

          # @!attribute line1
          #
          #   @return [String, nil]
          optional :line1, String, nil?: true

          # @!attribute line2
          #
          #   @return [String, nil]
          optional :line2, String, nil?: true

          # @!attribute locality
          #   Locality or City.
          #
          #   @return [String, nil]
          optional :locality, String, nil?: true

          # @!attribute postal_code
          #   The postal code of the address.
          #
          #   @return [String, nil]
          optional :postal_code, String, nil?: true

          # @!attribute region
          #   Region or State.
          #
          #   @return [String, nil]
          optional :region, String, nil?: true

          # @!method initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          #   Required if receiving wire payments.
          #
          #   @param country [String, nil]
          #   @param line1 [String, nil]
          #   @param line2 [String, nil]
          #   @param locality [String, nil]
          #   @param postal_code [String, nil]
          #   @param region [String, nil]
        end

        # Either `individual` or `business`.
        #
        # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount#party_type
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
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail::RoutingNumberType]
          required :routing_number_type,
                   enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail::RoutingNumberType }

          # @!attribute [r] payment_type
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail::PaymentType, nil]
          optional :payment_type,
                   enum: -> { ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail::PaymentType }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail::PaymentType]
          #   attr_writer :payment_type

          # @!method initialize(routing_number:, routing_number_type:, payment_type: nil)
          #   @param routing_number [String]
          #   @param routing_number_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail::RoutingNumberType]
          #   @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail::PaymentType]

          # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail#routing_number_type
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

          # @see ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail#payment_type
          module PaymentType
            extend ModernTreasury::Internal::Type::Enum

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
      # use `approved`. To undo approval on a denied or approved payment order, use
      # `needs_approval`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
