# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute counterparty_id
      #   Specify counterparty_id to see expected_payments for a specific account.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute created_at_lower_bound
      #   Used to return expected payments created after some datetime
      #
      #   @return [Time]
      optional :created_at_lower_bound, Time

      # @!attribute created_at_upper_bound
      #   Used to return expected payments created before some datetime
      #
      #   @return [Time]
      optional :created_at_upper_bound, Time

      # @!attribute direction
      #   One of credit, debit
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute internal_account_id
      #   Specify internal_account_id to see expected_payments for a specific account.
      #
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute status
      #   One of unreconciled, reconciled, or archived.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::ExpectedPaymentListParams::Status }

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen, sepa, signet, wire
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type]
      optional :type, enum: -> { ModernTreasury::Models::ExpectedPaymentListParams::Type }

      # One of unreconciled, reconciled, or archived.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen, sepa, signet, wire
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
