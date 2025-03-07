# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] counterparty_id
      #   Specify counterparty_id to see expected_payments for a specific account.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] created_at_lower_bound
      #   Used to return expected payments created after some datetime
      #
      #   @return [Time, nil]
      optional :created_at_lower_bound, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created_at_lower_bound

      # @!attribute [r] created_at_upper_bound
      #   Used to return expected payments created before some datetime
      #
      #   @return [Time, nil]
      optional :created_at_upper_bound, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created_at_upper_bound

      # @!attribute [r] direction
      #   One of credit, debit
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::TransactionDirection]
      #   attr_writer :direction

      # @!attribute [r] internal_account_id
      #   Specify internal_account_id to see expected_payments for a specific account.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :internal_account_id

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

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] status
      #   One of unreconciled, reconciled, or archived.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::ExpectedPaymentListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status]
      #   attr_writer :status

      # @!attribute [r] type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #     sepa, signet, wire
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::Models::ExpectedPaymentListParams::Type }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type]
      #   attr_writer :type

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param counterparty_id [String]
      #   # @param created_at_lower_bound [Time]
      #   # @param created_at_upper_bound [Time]
      #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param internal_account_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param per_page [Integer]
      #   # @param status [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status]
      #   # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     counterparty_id: nil,
      #     created_at_lower_bound: nil,
      #     created_at_upper_bound: nil,
      #     direction: nil,
      #     internal_account_id: nil,
      #     metadata: nil,
      #     per_page: nil,
      #     status: nil,
      #     type: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # One of unreconciled, reconciled, or archived.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled

        finalize!
      end

      # @abstract
      #
      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
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

        finalize!
      end
    end
  end
end
