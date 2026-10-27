# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::IncomingPaymentDetails#create_async
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute type
      #   One of `ach`, `wire`, `check`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type]
      required :type, enum: -> { ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type }

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!attribute as_of_date
      #   Defaults to today.
      #
      #   @return [Date, nil]
      optional :as_of_date, Date, nil?: true

      # @!attribute currency
      #   Defaults to the currency of the originating account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Currency }, nil?: true

      # @!attribute data
      #   An object passed through to the simulated IPD that could reflect what a vendor
      #   would pass. For `type: check` with `subtype: lockbox` (sandbox Modern Treasury
      #   payment accounts only), `data` must include `payor_name`, otherwise the request
      #   returns 422.
      #
      #   @return [Object, nil]
      optional :data, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute description
      #   Defaults to a random description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute direction
      #   One of `credit`, `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute internal_account_id
      #   The ID of one of your internal accounts.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!attribute subtype
      #   An additional layer of classification for the type of incoming payment detail,
      #   e.g. `ethereum` for a `stablecoin` type. For `type: check`, `subtype: lockbox`
      #   simulates a lockbox check deposit.
      #
      #   @return [String, nil]
      optional :subtype, String, nil?: true

      # @!attribute virtual_account_id
      #   An optional parameter to associate the incoming payment detail to a virtual
      #   account.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String, nil?: true

      # @!method initialize(type:, amount: nil, as_of_date: nil, currency: nil, data: nil, description: nil, direction: nil, internal_account_id: nil, subtype: nil, virtual_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams} for more
      #   details.
      #
      #   @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type] One of `ach`, `wire`, `check`.
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param as_of_date [Date, nil] Defaults to today.
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency, nil] Defaults to the currency of the originating account.
      #
      #   @param data [Object, nil] An object passed through to the simulated IPD that could reflect what a vendor w
      #
      #   @param description [String, nil] Defaults to a random description.
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit`, `debit`.
      #
      #   @param internal_account_id [String] The ID of one of your internal accounts.
      #
      #   @param subtype [String, nil] An additional layer of classification for the type of incoming payment detail, e
      #
      #   @param virtual_account_id [String, nil] An optional parameter to associate the incoming payment detail to a virtual acco
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of `ach`, `wire`, `check`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BOOK = :book
        CHECK = :check
        EFT = :eft
        NEFT = :neft
        NZ_BECS = :nz_becs
        RTP = :rtp
        SEPA = :sepa
        STABLECOIN = :stablecoin
        WIRE = :wire
        ZENGIN = :zengin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
