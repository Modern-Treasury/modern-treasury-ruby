# typed: strong

module ModernTreasury
  module Models
    class InternalAccountListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Only return internal accounts associated with this counterparty.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # Only return internal accounts with this currency.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      def currency
      end

      sig { params(_: ModernTreasury::Models::Currency::OrSymbol).returns(ModernTreasury::Models::Currency::OrSymbol) }
      def currency=(_)
      end

      # Only return internal accounts associated with this legal entity.
      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Only return internal accounts that can originate payments with this direction.
      sig { returns(T.nilable(ModernTreasury::Models::TransactionDirection::OrSymbol)) }
      def payment_direction
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
      end
      def payment_direction=(_)
      end

      # Only return internal accounts that can make this type of payment.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccountListParams::PaymentType::OrSymbol)) }
      def payment_type
      end

      sig do
        params(_: ModernTreasury::Models::InternalAccountListParams::PaymentType::OrSymbol)
          .returns(ModernTreasury::Models::InternalAccountListParams::PaymentType::OrSymbol)
      end
      def payment_type=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          currency: ModernTreasury::Models::Currency::OrSymbol,
          legal_entity_id: String,
          metadata: T::Hash[Symbol, String],
          payment_direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          payment_type: ModernTreasury::Models::InternalAccountListParams::PaymentType::OrSymbol,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        counterparty_id: nil,
        currency: nil,
        legal_entity_id: nil,
        metadata: nil,
        payment_direction: nil,
        payment_type: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              counterparty_id: String,
              currency: ModernTreasury::Models::Currency::OrSymbol,
              legal_entity_id: String,
              metadata: T::Hash[Symbol, String],
              payment_direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
              payment_type: ModernTreasury::Models::InternalAccountListParams::PaymentType::OrSymbol,
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Only return internal accounts that can make this type of payment.
      module PaymentType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        CROSS_BORDER =
          T.let(:cross_border, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        PL_ELIXIR =
          T.let(:pl_elixir, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        PROVXCHANGE =
          T.let(:provxchange, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        SE_BANKGIROT =
          T.let(:se_bankgirot, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::InternalAccountListParams::PaymentType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
