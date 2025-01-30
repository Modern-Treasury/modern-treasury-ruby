# typed: strong

module ModernTreasury
  module Models
    class TransactionCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            amount: Integer,
            as_of_date: T.nilable(Date),
            direction: String,
            internal_account_id: String,
            vendor_code: T.nilable(String),
            vendor_code_type: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            posted: T::Boolean,
            type: T.nilable(Symbol),
            vendor_description: T.nilable(String)
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      sig { returns(String) }
      attr_accessor :direction

      sig { returns(String) }
      attr_accessor :internal_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code_type

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :posted

      sig { params(posted: T::Boolean).void }
      attr_writer :posted

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_description

      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          direction: String,
          internal_account_id: String,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          posted: T::Boolean,
          type: T.nilable(Symbol),
          vendor_description: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        amount:,
        as_of_date:,
        direction:,
        internal_account_id:,
        vendor_code:,
        vendor_code_type:,
        metadata: nil,
        posted: nil,
        type: nil,
        vendor_description: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::TransactionCreateParams::Shape) }
      def to_h; end

      class Type < ModernTreasury::Enum
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
        OTHER = T.let(:other, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
