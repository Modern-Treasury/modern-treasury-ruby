# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentOrders#list
    class PaymentOrderListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] created_at_end
      #   An inclusive upper bound for searching created_at
      #
      #   @return [Date, nil]
      optional :created_at_end, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :created_at_end

      # @!attribute [r] created_at_start
      #   An inclusive lower bound for searching created_at
      #
      #   @return [Date, nil]
      optional :created_at_start, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :created_at_start

      # @!attribute [r] direction
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::TransactionDirection]
      #   attr_writer :direction

      # @!attribute [r] effective_date_end
      #   An inclusive upper bound for searching effective_date
      #
      #   @return [Date, nil]
      optional :effective_date_end, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :effective_date_end

      # @!attribute [r] effective_date_start
      #   An inclusive lower bound for searching effective_date
      #
      #   @return [Date, nil]
      optional :effective_date_start, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :effective_date_start

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] originating_account_id
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originating_account_id

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] priority
      #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #     same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #     an overnight check rather than standard mail.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority, nil]
      optional :priority, enum: -> { ModernTreasury::Models::PaymentOrderListParams::Priority }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority]
      #   attr_writer :priority

      # @!attribute [r] process_after_end
      #   An inclusive upper bound for searching process_after
      #
      #   @return [Time, nil]
      optional :process_after_end, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :process_after_end

      # @!attribute [r] process_after_start
      #   An inclusive lower bound for searching process_after
      #
      #   @return [Time, nil]
      optional :process_after_start, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :process_after_start

      # @!attribute [r] reference_number
      #   Query for records with the provided reference number
      #
      #   @return [String, nil]
      optional :reference_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :reference_number

      # @!attribute [r] status
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::PaymentOrderListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status]
      #   attr_writer :status

      # @!attribute [r] transaction_id
      #   The ID of a transaction that the payment order has been reconciled to.
      #
      #   @return [String, nil]
      optional :transaction_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :transaction_id

      # @!attribute [r] type
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::Models::PaymentOrderListParams::Type }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type]
      #   attr_writer :type

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param counterparty_id [String]
      #   # @param created_at_end [Date]
      #   # @param created_at_start [Date]
      #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param effective_date_end [Date]
      #   # @param effective_date_start [Date]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param originating_account_id [String]
      #   # @param per_page [Integer]
      #   # @param priority [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority]
      #   # @param process_after_end [Time]
      #   # @param process_after_start [Time]
      #   # @param reference_number [String]
      #   # @param status [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status]
      #   # @param transaction_id [String]
      #   # @param type [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     counterparty_id: nil,
      #     created_at_end: nil,
      #     created_at_start: nil,
      #     direction: nil,
      #     effective_date_end: nil,
      #     effective_date_start: nil,
      #     metadata: nil,
      #     originating_account_id: nil,
      #     per_page: nil,
      #     priority: nil,
      #     process_after_end: nil,
      #     process_after_start: nil,
      #     reference_number: nil,
      #     status: nil,
      #     transaction_id: nil,
      #     type: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      module Priority
        extend ModernTreasury::Enum

        HIGH = :high
        NORMAL = :normal

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module Status
        extend ModernTreasury::Enum

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

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module Type
        extend ModernTreasury::Enum

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

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
