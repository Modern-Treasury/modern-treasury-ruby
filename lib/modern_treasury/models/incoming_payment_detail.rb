# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetail < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] as_of_date
      #   The date on which the corresponding transaction will occur.
      #   @return [Date]
      required :as_of_date, Date

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   The currency of the incoming payment detail.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] data
      #   The raw data from the payment pre-notification file that we get from the bank.
      #   @return [Hash]
      required :data, Hash

      # @!attribute [rw] direction
      #   One of `credit` or `debit`.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] internal_account_id
      #   The ID of the Internal Account for the incoming payment detail. This is always present.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] ledger_transaction_id
      #   The ID of the ledger transaction linked to the incoming payment detail or `null`.
      #   @return [String]
      required :ledger_transaction_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] originating_account_number_safe
      #   The last 4 digits of the originating account_number for the incoming payment detail.
      #   @return [String]
      required :originating_account_number_safe, String

      # @!attribute [rw] originating_account_number_type
      #   The type of the originating account number for the incoming payment detail.
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType]
      required :originating_account_number_type,
               enum: -> { ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType }

      # @!attribute [rw] originating_routing_number
      #   The routing number of the originating account for the incoming payment detail.
      #   @return [String]
      required :originating_routing_number, String

      # @!attribute [rw] originating_routing_number_type
      #   The type of the originating routing number for the incoming payment detail.
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType]
      required :originating_routing_number_type,
               enum: -> { ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType }

      # @!attribute [rw] status
      #   The current status of the incoming payment order. One of `pending`, `completed`, or `returned`.
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Status]
      required :status, enum: -> { ModernTreasury::Models::IncomingPaymentDetail::Status }

      # @!attribute [rw] transaction_id
      #   The ID of the reconciled Transaction or `null`.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] transaction_line_item_id
      #   The ID of the reconciled Transaction Line Item or `null`.
      #   @return [String]
      required :transaction_line_item_id, String

      # @!attribute [rw] type
      #   One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `wire`.
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Type]
      required :type, enum: -> { ModernTreasury::Models::IncomingPaymentDetail::Type }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] vendor_id
      #   The identifier of the vendor bank.
      #   @return [String]
      required :vendor_id, String

      # @!attribute [rw] virtual_account
      #   If the incoming payment detail is in a virtual account, the serialized virtual account object.
      #   @return [ModernTreasury::Models::VirtualAccount]
      required :virtual_account, -> { ModernTreasury::Models::VirtualAccount }

      # @!attribute [rw] virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual Account.
      #   @return [String]
      required :virtual_account_id, String

      # @!attribute [rw] originating_account_number
      #   The account number of the originating account for the incoming payment detail.
      #   @return [String]
      optional :originating_account_number, String

      # The type of the originating account number for the incoming payment detail.
      class OriginatingAccountNumberType < ModernTreasury::Enum
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
      end

      # The type of the originating routing number for the incoming payment detail.
      class OriginatingRoutingNumberType < ModernTreasury::Enum
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
        MX_BANK_IDENTIFIER = :mx_bank_identifier
        MY_BRANCH_CODE = :my_branch_code
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SWIFT = :swift
        ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code
      end

      # The current status of the incoming payment order. One of `pending`, `completed`, or `returned`.
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `wire`.
      class Type < ModernTreasury::Enum
        ACH = :ach
        BOOK = :book
        CHECK = :check
        EFT = :eft
        INTERAC = :interac
        RTP = :rtp
        SEPA = :sepa
        SIGNET = :signet
        WIRE = :wire
      end

      # Create a new instance of IncomingPaymentDetail from a Hash of raw data.
      #
      # @overload initialize(id: nil, amount: nil, as_of_date: nil, created_at: nil, currency: nil, data: nil, direction: nil, internal_account_id: nil, ledger_transaction_id: nil, live_mode: nil, metadata: nil, object: nil, originating_account_number_safe: nil, originating_account_number_type: nil, originating_routing_number: nil, originating_routing_number_type: nil, status: nil, transaction_id: nil, transaction_line_item_id: nil, type: nil, updated_at: nil, vendor_id: nil, virtual_account: nil, virtual_account_id: nil, originating_account_number: nil)
      # @param id [String]
      # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      # @param as_of_date [String] The date on which the corresponding transaction will occur.
      # @param created_at [String]
      # @param currency [String] The currency of the incoming payment detail.
      # @param data [Hash] The raw data from the payment pre-notification file that we get from the bank.
      # @param direction [String] One of `credit` or `debit`.
      # @param internal_account_id [String] The ID of the Internal Account for the incoming payment detail. This is always
      #   present.
      # @param ledger_transaction_id [String] The ID of the ledger transaction linked to the incoming payment detail or
      #   `null`.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param object [String]
      # @param originating_account_number_safe [String] The last 4 digits of the originating account_number for the incoming payment
      #   detail.
      # @param originating_account_number_type [String] The type of the originating account number for the incoming payment detail.
      # @param originating_routing_number [String] The routing number of the originating account for the incoming payment detail.
      # @param originating_routing_number_type [String] The type of the originating routing number for the incoming payment detail.
      # @param status [String] The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      # @param transaction_id [String] The ID of the reconciled Transaction or `null`.
      # @param transaction_line_item_id [String] The ID of the reconciled Transaction Line Item or `null`.
      # @param type [String] One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      # @param updated_at [String]
      # @param vendor_id [String] The identifier of the vendor bank.
      # @param virtual_account [Object] If the incoming payment detail is in a virtual account, the serialized virtual
      #   account object.
      # @param virtual_account_id [String] If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   Account.
      # @param originating_account_number [String] The account number of the originating account for the incoming payment detail.
      def initialize(data = {})
        super
      end
    end
  end
end
