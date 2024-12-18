# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentOrderListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute created_at_end
      #   An inclusive upper bound for searching created_at
      #   @return [Date]
      optional :created_at_end, Date

      # @!attribute created_at_start
      #   An inclusive lower bound for searching created_at
      #   @return [Date]
      optional :created_at_start, Date

      # @!attribute direction
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute effective_date_end
      #   An inclusive upper bound for searching effective_date
      #   @return [Date]
      optional :effective_date_end, Date

      # @!attribute effective_date_start
      #   An inclusive lower bound for searching effective_date
      #   @return [Date]
      optional :effective_date_start, Date

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute originating_account_id
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute priority
      #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-day ACH or EFT transfer, respectively. For check payments, `high` can mean an overnight check rather than standard mail.
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority]
      optional :priority, enum: -> { ModernTreasury::Models::PaymentOrderListParams::Priority }

      # @!attribute process_after_end
      #   An inclusive upper bound for searching process_after
      #   @return [Time]
      optional :process_after_end, Time

      # @!attribute process_after_start
      #   An inclusive lower bound for searching process_after
      #   @return [Time]
      optional :process_after_start, Time

      # @!attribute reference_number
      #   Query for records with the provided reference number
      #   @return [String]
      optional :reference_number, String

      # @!attribute status
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::PaymentOrderListParams::Status }

      # @!attribute transaction_id
      #   The ID of a transaction that the payment order has been reconciled to.
      #   @return [String]
      optional :transaction_id, String

      # @!attribute type
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderListParams::Type]
      optional :type, enum: -> { ModernTreasury::Models::PaymentOrderListParams::Type }

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-day ACH or EFT transfer, respectively. For check payments, `high` can mean an overnight check rather than standard mail.
      class Priority < ModernTreasury::Enum
        HIGH = :high
        NORMAL = :normal
      end

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
      end

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
      end
    end
  end
end
