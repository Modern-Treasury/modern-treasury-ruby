# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetailListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute as_of_date_end
      #   Filters incoming payment details with an as_of_date starting on or before the specified date (YYYY-MM-DD).
      #
      #   @return [Date]
      optional :as_of_date_end, Date

      # @!attribute as_of_date_start
      #   Filters incoming payment details with an as_of_date starting on or after the specified date (YYYY-MM-DD).
      #
      #   @return [Date]
      optional :as_of_date_start, Date

      # @!attribute direction
      #   One of `credit` or `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

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
      #   The current status of the incoming payment order. One of `pending`, `completed`, or `returned`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::IncomingPaymentDetailListParams::Status }

      # @!attribute type
      #   One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `wire`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type]
      optional :type, enum: -> { ModernTreasury::Models::IncomingPaymentDetailListParams::Type }

      # @!attribute virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual Account.
      #
      #   @return [String]
      optional :virtual_account_id, String

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param as_of_date_end [String, nil] Filters incoming payment details with an as_of_date starting on or before the
      #   #   specified date (YYYY-MM-DD).
      #   #
      #   # @param as_of_date_start [String, nil] Filters incoming payment details with an as_of_date starting on or after the
      #   #   specified date (YYYY-MM-DD).
      #   #
      #   # @param direction [String, nil] One of `credit` or `debit`.
      #   #
      #   # @param metadata [Hash, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   # @param status [String, nil] The current status of the incoming payment order. One of `pending`, `completed`,
      #   #   or `returned`.
      #   #
      #   # @param type [String, nil] One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   #   `wire`.
      #   #
      #   # @param virtual_account_id [String, nil] If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   #   Account.
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
      #     virtual_account_id: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The current status of the incoming payment order. One of `pending`, `completed`, or `returned`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :completed
      #   # ...
      # in :pending
      #   # ...
      # in :returned
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `wire`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :ach
      #   # ...
      # in :book
      #   # ...
      # in :check
      #   # ...
      # in :eft
      #   # ...
      # in :interac
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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
