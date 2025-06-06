# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentOrders#list
    class PaymentOrderListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute created_at_end
      #   An inclusive upper bound for searching created_at
      #
      #   @return [Date, nil]
      optional :created_at_end, Date

      # @!attribute created_at_start
      #   An inclusive lower bound for searching created_at
      #
      #   @return [Date, nil]
      optional :created_at_start, Date

      # @!attribute direction
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute effective_date_end
      #   An inclusive upper bound for searching effective_date
      #
      #   @return [Date, nil]
      optional :effective_date_end, Date

      # @!attribute effective_date_start
      #   An inclusive lower bound for searching effective_date
      #
      #   @return [Date, nil]
      optional :effective_date_start, Date

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute originating_account_id
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute priority
      #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority, nil]
      optional :priority, enum: -> { ModernTreasury::PaymentOrderListParams::Priority }

      # @!attribute process_after_end
      #   An inclusive upper bound for searching process_after
      #
      #   @return [Time, nil]
      optional :process_after_end, Time

      # @!attribute process_after_start
      #   An inclusive lower bound for searching process_after
      #
      #   @return [Time, nil]
      optional :process_after_start, Time

      # @!attribute reference_number
      #   Query for records with the provided reference number
      #
      #   @return [String, nil]
      optional :reference_number, String

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::PaymentOrderListParams::Status }

      # @!attribute transaction_id
      #   The ID of a transaction that the payment order has been reconciled to.
      #
      #   @return [String, nil]
      optional :transaction_id, String

      # @!attribute type
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::PaymentOrderListParams::Type }

      # @!method initialize(after_cursor: nil, counterparty_id: nil, created_at_end: nil, created_at_start: nil, direction: nil, effective_date_end: nil, effective_date_start: nil, metadata: nil, originating_account_id: nil, per_page: nil, priority: nil, process_after_end: nil, process_after_start: nil, reference_number: nil, status: nil, transaction_id: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentOrderListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param counterparty_id [String]
      #
      #   @param created_at_end [Date] An inclusive upper bound for searching created_at
      #
      #   @param created_at_start [Date] An inclusive lower bound for searching created_at
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #
      #   @param effective_date_end [Date] An inclusive upper bound for searching effective_date
      #
      #   @param effective_date_start [Date] An inclusive lower bound for searching effective_date
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param originating_account_id [String]
      #
      #   @param per_page [Integer]
      #
      #   @param priority [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority] Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-da
      #
      #   @param process_after_end [Time] An inclusive upper bound for searching process_after
      #
      #   @param process_after_start [Time] An inclusive lower bound for searching process_after
      #
      #   @param reference_number [String] Query for records with the provided reference number
      #
      #   @param status [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status]
      #
      #   @param transaction_id [String] The ID of a transaction that the payment order has been reconciled to.
      #
      #   @param type [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

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
        STOPPED = :stopped

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
