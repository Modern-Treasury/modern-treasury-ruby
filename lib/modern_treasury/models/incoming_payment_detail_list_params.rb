# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetailListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] as_of_date_end
      #   Filters incoming payment details with an as_of_date starting on or before the
      #     specified date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :as_of_date_end, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :as_of_date_end

      # @!attribute [r] as_of_date_start
      #   Filters incoming payment details with an as_of_date starting on or after the
      #     specified date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :as_of_date_start, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :as_of_date_start

      # @!attribute [r] direction
      #   One of `credit` or `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::TransactionDirection]
      #   attr_writer :direction

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
      #   The current status of the incoming payment order. One of `pending`, `completed`,
      #     or `returned`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::IncomingPaymentDetailListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status]
      #   attr_writer :status

      # @!attribute [r] type
      #   One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #     `wire`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::Models::IncomingPaymentDetailListParams::Type }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type]
      #   attr_writer :type

      # @!attribute [r] virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual
      #     Account.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :virtual_account_id

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param as_of_date_end [Date]
      #   # @param as_of_date_start [Date]
      #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param per_page [Integer]
      #   # @param status [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status]
      #   # @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type]
      #   # @param virtual_account_id [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     as_of_date_end: nil,
      #     as_of_date_start: nil,
      #     direction: nil,
      #     metadata: nil,
      #     per_page: nil,
      #     status: nil,
      #     type: nil,
      #     virtual_account_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
