# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::IncomingPaymentDetails#retrieve
    class IncomingPaymentDetail < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute as_of_date
      #   The date on which the corresponding transaction will occur.
      #
      #   @return [Date]
      required :as_of_date, Date

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the incoming payment detail.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Currency }

      # @!attribute data
      #   The raw data from the payment pre-notification file that we get from the bank.
      #
      #   @return [Hash{Symbol=>Object}]
      required :data, ModernTreasury::Internal::Type::HashOf[ModernTreasury::Internal::Type::Unknown]

      # @!attribute direction
      #   One of `credit` or `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the incoming payment detail. This is always
      #   present.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute ledger_transaction_id
      #   The ID of the ledger transaction linked to the incoming payment detail or
      #   `null`.
      #
      #   @return [String, nil]
      required :ledger_transaction_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute originating_account_number_safe
      #   The last 4 digits of the originating account_number for the incoming payment
      #   detail.
      #
      #   @return [String, nil]
      required :originating_account_number_safe, String, nil?: true

      # @!attribute originating_account_number_type
      #   The type of the originating account number for the incoming payment detail.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType, nil]
      required :originating_account_number_type,
               enum: -> { ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType },
               nil?: true

      # @!attribute originating_routing_number
      #   The routing number of the originating account for the incoming payment detail.
      #
      #   @return [String, nil]
      required :originating_routing_number, String, nil?: true

      # @!attribute originating_routing_number_type
      #   The type of the originating routing number for the incoming payment detail.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType, nil]
      required :originating_routing_number_type,
               enum: -> { ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType },
               nil?: true

      # @!attribute reconciliation_status
      #   One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::ReconciliationStatus]
      required :reconciliation_status, enum: -> { ModernTreasury::IncomingPaymentDetail::ReconciliationStatus }

      # @!attribute status
      #   The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Status]
      required :status, enum: -> { ModernTreasury::IncomingPaymentDetail::Status }

      # @!attribute transaction_id
      #   The ID of the reconciled Transaction or `null`.
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute transaction_line_item_id
      #   The ID of the reconciled Transaction Line Item or `null`.
      #
      #   @return [String, nil]
      required :transaction_line_item_id, String, nil?: true

      # @!attribute type
      #   One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Type]
      required :type, enum: -> { ModernTreasury::IncomingPaymentDetail::Type }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_id
      #   The identifier of the vendor bank.
      #
      #   @return [String, nil]
      required :vendor_id, String, nil?: true

      # @!attribute virtual_account
      #   If the incoming payment detail is in a virtual account, the serialized virtual
      #   account object.
      #
      #   @return [ModernTreasury::Models::VirtualAccount, nil]
      required :virtual_account, -> { ModernTreasury::VirtualAccount }, nil?: true

      # @!attribute virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   Account.
      #
      #   @return [String, nil]
      required :virtual_account_id, String, nil?: true

      # @!attribute originating_account_number
      #   The account number of the originating account for the incoming payment detail.
      #
      #   @return [String, nil]
      optional :originating_account_number, String, nil?: true

      # @!method initialize(id:, amount:, as_of_date:, created_at:, currency:, data:, direction:, internal_account_id:, ledger_transaction_id:, live_mode:, metadata:, object:, originating_account_number_safe:, originating_account_number_type:, originating_routing_number:, originating_routing_number_type:, reconciliation_status:, status:, transaction_id:, transaction_line_item_id:, type:, updated_at:, vendor_id:, virtual_account:, virtual_account_id:, originating_account_number: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::IncomingPaymentDetail} for more details.
      #
      #   @param id [String]
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param as_of_date [Date] The date on which the corresponding transaction will occur.
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency] The currency of the incoming payment detail.
      #
      #   @param data [Hash{Symbol=>Object}] The raw data from the payment pre-notification file that we get from the bank.
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit` or `debit`.
      #
      #   @param internal_account_id [String] The ID of the Internal Account for the incoming payment detail. This is always p
      #
      #   @param ledger_transaction_id [String, nil] The ID of the ledger transaction linked to the incoming payment detail or `null`
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param originating_account_number_safe [String, nil] The last 4 digits of the originating account_number for the incoming payment det
      #
      #   @param originating_account_number_type [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType, nil] The type of the originating account number for the incoming payment detail.
      #
      #   @param originating_routing_number [String, nil] The routing number of the originating account for the incoming payment detail.
      #
      #   @param originating_routing_number_type [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType, nil] The type of the originating routing number for the incoming payment detail.
      #
      #   @param reconciliation_status [Symbol, ModernTreasury::Models::IncomingPaymentDetail::ReconciliationStatus] One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
      #
      #   @param status [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Status] The current status of the incoming payment order. One of `pending`, `completed`,
      #
      #   @param transaction_id [String, nil] The ID of the reconciled Transaction or `null`.
      #
      #   @param transaction_line_item_id [String, nil] The ID of the reconciled Transaction Line Item or `null`.
      #
      #   @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Type] One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `w
      #
      #   @param updated_at [Time]
      #
      #   @param vendor_id [String, nil] The identifier of the vendor bank.
      #
      #   @param virtual_account [ModernTreasury::Models::VirtualAccount, nil] If the incoming payment detail is in a virtual account, the serialized virtual a
      #
      #   @param virtual_account_id [String, nil] If the incoming payment detail is in a virtual account, the ID of the Virtual Ac
      #
      #   @param originating_account_number [String, nil] The account number of the originating account for the incoming payment detail.

      # The type of the originating account number for the incoming payment detail.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#originating_account_number_type
      module OriginatingAccountNumberType
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

      # The type of the originating routing number for the incoming payment detail.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#originating_routing_number_type
      module OriginatingRoutingNumberType
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
        MX_BANK_IDENTIFIER = :mx_bank_identifier
        MY_BRANCH_CODE = :my_branch_code
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
        SWIFT = :swift
        ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#reconciliation_status
      module ReconciliationStatus
        extend ModernTreasury::Internal::Type::Enum

        UNRECONCILED = :unreconciled
        TENTATIVELY_RECONCILED = :tentatively_reconciled
        RECONCILED = :reconciled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      # or `returned`.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      # `wire`.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#type
      module Type
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BASE = :base
        BOOK = :book
        CHECK = :check
        EFT = :eft
        ETHEREUM = :ethereum
        INTERAC = :interac
        NEFT = :neft
        NZ_BECS = :nz_becs
        POLYGON = :polygon
        RTP = :rtp
        SEPA = :sepa
        SIGNET = :signet
        SOLANA = :solana
        WIRE = :wire
        ZENGIN = :zengin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
