# typed: strong

module ModernTreasury
  module Models
    class RoutingDetail < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          bank_address: T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress),
          bank_name: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          payment_type: T.nilable(Symbol),
          routing_number: String,
          routing_number_type: Symbol,
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress)) }
      attr_accessor :bank_address

      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :payment_type

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(Symbol) }
      attr_accessor :routing_number_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          bank_address: T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress),
          bank_name: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          payment_type: T.nilable(Symbol),
          routing_number: String,
          routing_number_type: Symbol,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        bank_address:,
        bank_name:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        payment_type:,
        routing_number:,
        routing_number_type:,
        updated_at:
      ); end

      sig { returns(ModernTreasury::Models::RoutingDetail::Shape) }
      def to_h; end

      class BankAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            country: T.nilable(String),
            created_at: Time,
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :object

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            country: T.nilable(String),
            created_at: Time,
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          ).void
        end
        def initialize(
          id:,
          country:,
          created_at:,
          line1:,
          line2:,
          live_mode:,
          locality:,
          object:,
          postal_code:,
          region:,
          updated_at:
        ); end

        sig { returns(ModernTreasury::Models::RoutingDetail::BankAddress::Shape) }
        def to_h; end
      end

      class PaymentType < ModernTreasury::Enum
        abstract!

        ACH = T.let(:ach, T.nilable(Symbol))
        AU_BECS = T.let(:au_becs, T.nilable(Symbol))
        BACS = T.let(:bacs, T.nilable(Symbol))
        BOOK = T.let(:book, T.nilable(Symbol))
        CARD = T.let(:card, T.nilable(Symbol))
        CHATS = T.let(:chats, T.nilable(Symbol))
        CHECK = T.let(:check, T.nilable(Symbol))
        CROSS_BORDER = T.let(:cross_border, T.nilable(Symbol))
        DK_NETS = T.let(:dk_nets, T.nilable(Symbol))
        EFT = T.let(:eft, T.nilable(Symbol))
        HU_ICS = T.let(:hu_ics, T.nilable(Symbol))
        INTERAC = T.let(:interac, T.nilable(Symbol))
        MASAV = T.let(:masav, T.nilable(Symbol))
        MX_CCEN = T.let(:mx_ccen, T.nilable(Symbol))
        NEFT = T.let(:neft, T.nilable(Symbol))
        NICS = T.let(:nics, T.nilable(Symbol))
        NZ_BECS = T.let(:nz_becs, T.nilable(Symbol))
        PL_ELIXIR = T.let(:pl_elixir, T.nilable(Symbol))
        PROVXCHANGE = T.let(:provxchange, T.nilable(Symbol))
        RO_SENT = T.let(:ro_sent, T.nilable(Symbol))
        RTP = T.let(:rtp, T.nilable(Symbol))
        SE_BANKGIROT = T.let(:se_bankgirot, T.nilable(Symbol))
        SEN = T.let(:sen, T.nilable(Symbol))
        SEPA = T.let(:sepa, T.nilable(Symbol))
        SG_GIRO = T.let(:sg_giro, T.nilable(Symbol))
        SIC = T.let(:sic, T.nilable(Symbol))
        SIGNET = T.let(:signet, T.nilable(Symbol))
        SKNBI = T.let(:sknbi, T.nilable(Symbol))
        WIRE = T.let(:wire, T.nilable(Symbol))
        ZENGIN = T.let(:zengin, T.nilable(Symbol))

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class RoutingNumberType < ModernTreasury::Enum
        abstract!

        ABA = :aba
        AU_BSB = :au_bsb
        BR_CODIGO = :br_codigo
        CA_CPA = :ca_cpa
        CHIPS = :chips
        CNAPS = :cnaps
        DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
        GB_SORT_CODE = :gb_sort_code
        HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
        HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
        ID_SKNBI_CODE = :id_sknbi_code
        IN_IFSC = :in_ifsc
        JP_ZENGIN_CODE = :jp_zengin_code
        MX_BANK_IDENTIFIER = :mx_bank_identifier
        MY_BRANCH_CODE = :my_branch_code
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
        SWIFT = :swift
        ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
