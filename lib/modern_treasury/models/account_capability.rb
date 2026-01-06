# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCapability < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute direction
      #   One of `debit` or `credit`. Indicates the direction of money movement this
      #   capability is responsible for.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute identifier
      #   A unique reference assigned by your bank for tracking and recognizing payment
      #   files. It is important this is formatted exactly how the bank assigned it.
      #
      #   @return [String, nil]
      required :identifier, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute payment_type
      #   Indicates the the type of payment this capability is responsible for
      #   originating.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountCapability::PaymentType]
      required :payment_type, enum: -> { ModernTreasury::AccountCapability::PaymentType }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, direction:, discarded_at:, identifier:, live_mode:, object:, payment_type:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::AccountCapability} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `debit` or `credit`. Indicates the direction of money movement this capab
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param identifier [String, nil] A unique reference assigned by your bank for tracking and recognizing payment fi
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param payment_type [Symbol, ModernTreasury::Models::AccountCapability::PaymentType] Indicates the the type of payment this capability is responsible for originating
      #
      #   @param updated_at [Time]

      # Indicates the the type of payment this capability is responsible for
      # originating.
      #
      # @see ModernTreasury::Models::AccountCapability#payment_type
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BASE = :base
        BOOK = :book
        CARD = :card
        CHATS = :chats
        CHECK = :check
        CROSS_BORDER = :cross_border
        DK_NETS = :dk_nets
        EFT = :eft
        ETHEREUM = :ethereum
        GB_FPS = :gb_fps
        HU_ICS = :hu_ics
        INTERAC = :interac
        MASAV = :masav
        MX_CCEN = :mx_ccen
        NEFT = :neft
        NICS = :nics
        NZ_BECS = :nz_becs
        PL_ELIXIR = :pl_elixir
        POLYGON = :polygon
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
        SOLANA = :solana
        WIRE = :wire
        ZENGIN = :zengin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
