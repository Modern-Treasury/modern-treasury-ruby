# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::BaseModel
      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      optional :amount, Integer

      # @!attribute as_of_date
      #   Defaults to today.
      #
      #   @return [Date]
      optional :as_of_date, Date

      # @!attribute currency
      #   Defaults to the currency of the originating account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute description
      #   Defaults to a random description.
      #
      #   @return [String]
      optional :description, String

      # @!attribute direction
      #   One of `credit`, `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction]
      optional :direction,
               enum: -> { ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction }

      # @!attribute internal_account_id
      #   The ID of one of your internal accounts.
      #
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute type
      #   One of `ach`, `wire`, `check`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type]
      optional :type, enum: -> { ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type }

      # @!attribute virtual_account_id
      #   An optional parameter to associate the incoming payment detail to a virtual account.
      #
      #   @return [String]
      optional :virtual_account_id, String

      # One of `credit`, `debit`.
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit
      end

      # One of `ach`, `wire`, `check`.
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
