# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::BaseModel
      # @!attribute [r] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :amount

      # @!attribute as_of_date
      #   Defaults to today.
      #
      #   @return [Date, nil]
      optional :as_of_date, Date, nil?: true

      # @!attribute currency
      #   Defaults to the currency of the originating account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }, nil?: true

      # @!attribute description
      #   Defaults to a random description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] direction
      #   One of `credit`, `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction, nil]
      optional :direction,
               enum: -> { ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction]
      #   attr_writer :direction

      # @!attribute [r] internal_account_id
      #   The ID of one of your internal accounts.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :internal_account_id

      # @!attribute [r] type
      #   One of `ach`, `wire`, `check`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type]
      #   attr_writer :type

      # @!attribute virtual_account_id
      #   An optional parameter to associate the incoming payment detail to a virtual account.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String, nil?: true

      # @!parse
      #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
      #   #   as 1000.
      #   #
      #   # @param as_of_date [String, nil] Defaults to today.
      #   #
      #   # @param currency [String, nil] Defaults to the currency of the originating account.
      #   #
      #   # @param description [String, nil] Defaults to a random description.
      #   #
      #   # @param direction [String] One of `credit`, `debit`.
      #   #
      #   # @param internal_account_id [String] The ID of one of your internal accounts.
      #   #
      #   # @param type [String] One of `ach`, `wire`, `check`.
      #   #
      #   # @param virtual_account_id [String, nil] An optional parameter to associate the incoming payment detail to a virtual
      #   #   account.
      #   #
      #   def initialize(
      #     amount: nil,
      #     as_of_date: nil,
      #     currency: nil,
      #     description: nil,
      #     direction: nil,
      #     internal_account_id: nil,
      #     type: nil,
      #     virtual_account_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of `credit`, `debit`.
      #
      # @example
      # ```ruby
      # case direction
      # in :credit
      #   # ...
      # in :debit
      #   # ...
      # end
      # ```
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit

        finalize!
      end

      # One of `ach`, `wire`, `check`.
      #
      # @example
      # ```ruby
      # case type
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

        finalize!
      end
    end
  end
end
