# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
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
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

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

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param counterparty_id [String] Specify counterparty_id to see expected_payments for a specific account.
      #   #
      #   # @param created_at_lower_bound [String] Used to return expected payments created after some datetime
      #   #
      #   # @param created_at_upper_bound [String] Used to return expected payments created before some datetime
      #   #
      #   # @param direction [String] One of credit, debit
      #   #
      #   # @param internal_account_id [String] Specify internal_account_id to see expected_payments for a specific account.
      #   #
      #   # @param metadata [Hash{Symbol => String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param status [String] One of unreconciled, reconciled, or archived.
      #   #
      #   # @param type [String] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   #   sepa, signet, wire
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
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of unreconciled, reconciled, or archived.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :archived
      #   # ...
      # in :partially_reconciled
      #   # ...
      # in :reconciled
      #   # ...
      # in :unreconciled
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled

        finalize!
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen, sepa, signet, wire
      #
      # @example
      #
      # ```ruby
      # case type
      # in :ach
      #   # ...
      # in :au_becs
      #   # ...
      # in :bacs
      #   # ...
      # in :book
      #   # ...
      # in :card
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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
