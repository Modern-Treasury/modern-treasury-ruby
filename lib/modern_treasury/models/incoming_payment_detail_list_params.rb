# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetailListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] as_of_date_end
      #   Filters incoming payment details with an as_of_date starting on or before the specified date (YYYY-MM-DD).
      #   @return [Date]
      optional :as_of_date_end, Date

      # @!attribute [rw] as_of_date_start
      #   Filters incoming payment details with an as_of_date starting on or after the specified date (YYYY-MM-DD).
      #   @return [Date]
      optional :as_of_date_start, Date

      # @!attribute [rw] direction
      #   One of `credit` or `debit`.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] status
      #   The current status of the incoming payment order. One of `pending`, `completed`, or `returned`.
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::IncomingPaymentDetailListParams::Status }

      # @!attribute [rw] type
      #   One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `wire`.
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type]
      optional :type, enum: -> { ModernTreasury::Models::IncomingPaymentDetailListParams::Type }

      # @!attribute [rw] virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual Account.
      #   @return [String]
      optional :virtual_account_id, String

      # The current status of the incoming payment order. One of `pending`, `completed`, or `returned`.
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `wire`.
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
      end
    end
  end
end
