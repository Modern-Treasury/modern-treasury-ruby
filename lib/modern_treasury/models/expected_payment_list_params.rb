# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExpectedPayments#list
    class ExpectedPaymentListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute counterparty_id
      #   Specify counterparty_id to see expected_payments for a specific account.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute created_at_lower_bound
      #   Used to return expected payments created after some datetime
      #
      #   @return [Time, nil]
      optional :created_at_lower_bound, Time

      # @!attribute created_at_upper_bound
      #   Used to return expected payments created before some datetime
      #
      #   @return [Time, nil]
      optional :created_at_upper_bound, Time

      # @!attribute direction
      #   One of credit, debit
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute internal_account_id
      #   Specify internal_account_id to see expected_payments for a specific account.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #   One of unreconciled, reconciled, or archived.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::ExpectedPaymentListParams::Status }

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::ExpectedPaymentListParams::Type }

      # @!attribute updated_at_lower_bound
      #   Used to return expected payments updated after some datetime
      #
      #   @return [Time, nil]
      optional :updated_at_lower_bound, Time

      # @!attribute updated_at_upper_bound
      #   Used to return expected payments updated before some datetime
      #
      #   @return [Time, nil]
      optional :updated_at_upper_bound, Time

      # @!method initialize(after_cursor: nil, counterparty_id: nil, created_at_lower_bound: nil, created_at_upper_bound: nil, direction: nil, internal_account_id: nil, metadata: nil, per_page: nil, status: nil, type: nil, updated_at_lower_bound: nil, updated_at_upper_bound: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ExpectedPaymentListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param counterparty_id [String] Specify counterparty_id to see expected_payments for a specific account.
      #
      #   @param created_at_lower_bound [Time] Used to return expected payments created after some datetime
      #
      #   @param created_at_upper_bound [Time] Used to return expected payments created before some datetime
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of credit, debit
      #
      #   @param internal_account_id [String] Specify internal_account_id to see expected_payments for a specific account.
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param per_page [Integer]
      #
      #   @param status [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status] One of unreconciled, reconciled, or archived.
      #
      #   @param type [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen, sep
      #
      #   @param updated_at_lower_bound [Time] Used to return expected payments updated after some datetime
      #
      #   @param updated_at_upper_bound [Time] Used to return expected payments updated before some datetime
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of unreconciled, reconciled, or archived.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      # sepa, signet, wire
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
