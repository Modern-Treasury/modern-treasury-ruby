# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::IncomingPaymentDetails#list
    class IncomingPaymentDetailListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute as_of_date_end
      #   Filters incoming payment details with an as_of_date starting on or before the
      #   specified date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :as_of_date_end, Date

      # @!attribute as_of_date_start
      #   Filters incoming payment details with an as_of_date starting on or after the
      #   specified date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :as_of_date_start, Date

      # @!attribute direction
      #   One of `credit` or `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::TransactionDirection }

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
      #   The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::IncomingPaymentDetailListParams::Status }

      # @!attribute type
      #   One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::IncomingPaymentDetailListParams::Type }

      # @!attribute virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   Account.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String

      # @!method initialize(after_cursor: nil, as_of_date_end: nil, as_of_date_start: nil, direction: nil, metadata: nil, per_page: nil, status: nil, type: nil, virtual_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::IncomingPaymentDetailListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param as_of_date_end [Date] Filters incoming payment details with an as_of_date starting on or before the sp
      #
      #   @param as_of_date_start [Date] Filters incoming payment details with an as_of_date starting on or after the spe
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit` or `debit`.
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param per_page [Integer]
      #
      #   @param status [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status] The current status of the incoming payment order. One of `pending`, `completed`,
      #
      #   @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type] One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `w
      #
      #   @param virtual_account_id [String] If the incoming payment detail is in a virtual account, the ID of the Virtual Ac
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The current status of the incoming payment order. One of `pending`, `completed`,
      # or `returned`.
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
