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
      #     as 1000.
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
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute data
      #   The raw data from the payment pre-notification file that we get from the bank.
      #
      #   @return [Hash{Symbol=>Object}]
      required :data, ModernTreasury::Internal::Type::HashOf[ModernTreasury::Internal::Type::Unknown]

      # @!attribute direction
      #   One of `credit` or `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the incoming payment detail. This is always
      #     present.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute ledger_transaction_id
      #   The ID of the ledger transaction linked to the incoming payment detail or
      #     `null`.
      #
      #   @return [String, nil]
      required :ledger_transaction_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute originating_account_number_safe
      #   The last 4 digits of the originating account_number for the incoming payment
      #     detail.
      #
      #   @return [String, nil]
      required :originating_account_number_safe, String, nil?: true

      # @!attribute originating_account_number_type
      #   The type of the originating account number for the incoming payment detail.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType, nil]
      required :originating_account_number_type,
               enum: -> { ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType },
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
               enum: -> { ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType },
               nil?: true

      # @!attribute status
      #   The current status of the incoming payment order. One of `pending`, `completed`,
      #     or `returned`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Status]
      required :status, enum: -> { ModernTreasury::Models::IncomingPaymentDetail::Status }

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
      #     `wire`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Type]
      required :type, enum: -> { ModernTreasury::Models::IncomingPaymentDetail::Type }

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
      #     account object.
      #
      #   @return [ModernTreasury::Models::VirtualAccount, nil]
      required :virtual_account, -> { ModernTreasury::Models::VirtualAccount }, nil?: true

      # @!attribute virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual
      #     Account.
      #
      #   @return [String, nil]
      required :virtual_account_id, String, nil?: true

      # @!attribute originating_account_number
      #   The account number of the originating account for the incoming payment detail.
      #
      #   @return [String, nil]
      optional :originating_account_number, String, nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param amount [Integer]
      #   # @param as_of_date [Date]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, ModernTreasury::Models::Currency]
      #   # @param data [Hash{Symbol=>Object}]
      #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param internal_account_id [String]
      #   # @param ledger_transaction_id [String, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param object [String]
      #   # @param originating_account_number_safe [String, nil]
      #   # @param originating_account_number_type [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType, nil]
      #   # @param originating_routing_number [String, nil]
      #   # @param originating_routing_number_type [Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType, nil]
      #   # @param status [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Status]
      #   # @param transaction_id [String, nil]
      #   # @param transaction_line_item_id [String, nil]
      #   # @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetail::Type]
      #   # @param updated_at [Time]
      #   # @param vendor_id [String, nil]
      #   # @param virtual_account [ModernTreasury::Models::VirtualAccount, nil]
      #   # @param virtual_account_id [String, nil]
      #   # @param originating_account_number [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     amount:,
      #     as_of_date:,
      #     created_at:,
      #     currency:,
      #     data:,
      #     direction:,
      #     internal_account_id:,
      #     ledger_transaction_id:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     originating_account_number_safe:,
      #     originating_account_number_type:,
      #     originating_routing_number:,
      #     originating_routing_number_type:,
      #     status:,
      #     transaction_id:,
      #     transaction_line_item_id:,
      #     type:,
      #     updated_at:,
      #     vendor_id:,
      #     virtual_account:,
      #     virtual_account_id:,
      #     originating_account_number: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # The type of the originating account number for the incoming payment detail.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#originating_account_number_type
      module OriginatingAccountNumberType
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      #
      # @see ModernTreasury::Models::IncomingPaymentDetail#type
      module Type
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BOOK = :book
        CHECK = :check
        EFT = :eft
        INTERAC = :interac
        NEFT = :neft
        NZ_BECS = :nz_becs
        RTP = :rtp
        SEPA = :sepa
        SIGNET = :signet
        WIRE = :wire

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
