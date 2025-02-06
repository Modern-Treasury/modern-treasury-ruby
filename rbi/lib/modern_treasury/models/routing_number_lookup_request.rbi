# typed: strong

module ModernTreasury
  module Models
    class RoutingNumberLookupRequest < ModernTreasury::BaseModel
      sig { returns(T.nilable(ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress)) }
      attr_reader :bank_address

      sig { params(bank_address: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress).void }
      attr_writer :bank_address

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { params(bank_name: String).void }
      attr_writer :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { params(routing_number: String).void }
      attr_writer :routing_number

      sig { returns(T.nilable(Symbol)) }
      attr_reader :routing_number_type

      sig { params(routing_number_type: Symbol).void }
      attr_writer :routing_number_type

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :sanctions

      sig { params(sanctions: T::Hash[Symbol, T.anything]).void }
      attr_writer :sanctions

      sig { returns(T.nilable(T::Array[Symbol])) }
      attr_reader :supported_payment_types

      sig { params(supported_payment_types: T::Array[Symbol]).void }
      attr_writer :supported_payment_types

      sig do
        params(
          bank_address: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress,
          bank_name: String,
          routing_number: String,
          routing_number_type: Symbol,
          sanctions: T::Hash[Symbol, T.anything],
          supported_payment_types: T::Array[Symbol]
        ).void
      end
      def initialize(
        bank_address: nil,
        bank_name: nil,
        routing_number: nil,
        routing_number_type: nil,
        sanctions: nil,
        supported_payment_types: nil
      ); end

      sig do
        override.returns(
          {
            bank_address: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress,
            bank_name: String,
            routing_number: String,
            routing_number_type: Symbol,
            sanctions: T::Hash[Symbol, T.anything],
            supported_payment_types: T::Array[Symbol]
          }
        )
      end
      def to_hash; end

      class BankAddress < ModernTreasury::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig do
          params(
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          ).void
        end
        def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
        end

        sig do
          override.returns(
            {
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            }
          )
        end
        def to_hash; end
      end

      class RoutingNumberType < ModernTreasury::Enum
        abstract!

        ABA = :aba
        AU_BSB = :au_bsb
        CA_CPA = :ca_cpa
        GB_SORT_CODE = :gb_sort_code
        IN_IFSC = :in_ifsc
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SWIFT = :swift

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class SupportedPaymentType < ModernTreasury::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
