# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#list
    class InternalAccountListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute counterparty_id
      #   Only return internal accounts associated with this counterparty.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute currency
      #   Only return internal accounts with this currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute legal_entity_id
      #   Only return internal accounts associated with this legal entity.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute payment_direction
      #   Only return internal accounts that can originate payments with this direction.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :payment_direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute payment_type
      #   Only return internal accounts that can make this type of payment.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType, nil]
      optional :payment_type, enum: -> { ModernTreasury::Models::InternalAccountListParams::PaymentType }

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(after_cursor: nil, counterparty_id: nil, currency: nil, legal_entity_id: nil, metadata: nil, payment_direction: nil, payment_type: nil, per_page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::InternalAccountListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param counterparty_id [String] Only return internal accounts associated with this counterparty.
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency] Only return internal accounts with this currency.
      #
      #   @param legal_entity_id [String] Only return internal accounts associated with this legal entity.
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   ...
      #
      #   @param payment_direction [Symbol, ModernTreasury::Models::TransactionDirection] Only return internal accounts that can originate payments with this direction.
      #
      #   @param payment_type [Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType] Only return internal accounts that can make this type of payment.
      #
      #   @param per_page [Integer]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Only return internal accounts that can make this type of payment.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
