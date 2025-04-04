# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #     as 1000.
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
      #   An optional parameter to associate the incoming payment detail to a virtual
      #     account.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String, nil?: true

      # @!parse
      #   # @param amount [Integer]
      #   # @param as_of_date [Date, nil]
      #   # @param currency [Symbol, ModernTreasury::Models::Currency, nil]
      #   # @param description [String, nil]
      #   # @param direction [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction]
      #   # @param internal_account_id [String]
      #   # @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type]
      #   # @param virtual_account_id [String, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of `credit`, `debit`.
      module Direction
        extend ModernTreasury::Enum

        CREDIT = :credit
        DEBIT = :debit

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # One of `ach`, `wire`, `check`.
      module Type
        extend ModernTreasury::Enum

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
        #   def self.values; end
      end
    end
  end
end
