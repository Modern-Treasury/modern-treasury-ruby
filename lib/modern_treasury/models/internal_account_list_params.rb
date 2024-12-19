# frozen_string_literal: true

module ModernTreasury
  module Models
    class InternalAccountListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute counterparty_id
      #   Only return internal accounts associated with this counterparty.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute currency
      #   Only return internal accounts with this currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute legal_entity_id
      #   Only return internal accounts associated with this legal entity.
      #
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute payment_direction
      #   Only return internal accounts that can originate payments with this direction.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :payment_direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute payment_type
      #   Only return internal accounts that can make this type of payment.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType]
      optional :payment_type, enum: -> { ModernTreasury::Models::InternalAccountListParams::PaymentType }

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param counterparty_id [String, nil] Only return internal accounts associated with this counterparty.
      #   #
      #   # @param currency [String, nil] Only return internal accounts with this currency.
      #   #
      #   # @param legal_entity_id [String, nil] Only return internal accounts associated with this legal entity.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param payment_direction [String, nil] Only return internal accounts that can originate payments with this direction.
      #   #
      #   # @param payment_type [String, nil] Only return internal accounts that can make this type of payment.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     counterparty_id: nil,
      #     currency: nil,
      #     legal_entity_id: nil,
      #     metadata: nil,
      #     payment_direction: nil,
      #     payment_type: nil,
      #     per_page: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Only return internal accounts that can make this type of payment.
      #
      # @example
      #
      # ```ruby
      # case enum
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
      class PaymentType < ModernTreasury::Enum
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
      end
    end
  end
end
