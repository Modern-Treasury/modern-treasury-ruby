# frozen_string_literal: true

module ModernTreasury
  module Models
    class InternalAccountListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] counterparty_id
      #   Only return internal accounts associated with this counterparty.
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] currency
      #   Only return internal accounts with this currency.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] legal_entity_id
      #   Only return internal accounts associated with this legal entity.
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] payment_direction
      #   Only return internal accounts that can originate payments with this direction.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :payment_direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] payment_type
      #   Only return internal accounts that can make this type of payment.
      #   @return [Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType]
      optional :payment_type, enum: -> { ModernTreasury::Models::InternalAccountListParams::PaymentType }

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # Only return internal accounts that can make this type of payment.
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
