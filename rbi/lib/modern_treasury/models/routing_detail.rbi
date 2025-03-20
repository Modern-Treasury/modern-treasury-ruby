# typed: strong

module ModernTreasury
  module Models
    class RoutingDetail < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress)) }
      def bank_address
      end

      sig do
        params(
          _: T.nilable(T.any(ModernTreasury::Models::RoutingDetail::BankAddress, ModernTreasury::Util::AnyHash))
        )
          .returns(
            T.nilable(T.any(ModernTreasury::Models::RoutingDetail::BankAddress, ModernTreasury::Util::AnyHash))
          )
      end
      def bank_address=(_)
      end

      # The name of the bank.
      sig { returns(String) }
      def bank_name
      end

      sig { params(_: String).returns(String) }
      def bank_name=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      sig { returns(T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)) }
      def payment_type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol))
      end
      def payment_type=(_)
      end

      # The routing number of the bank.
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details.
      sig { returns(ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol) }
      def routing_number_type
      end

      sig do
        params(_: ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
          .returns(ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
      end
      def routing_number_type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          bank_address: T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress),
          bank_name: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          payment_type: T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol),
          routing_number: String,
          routing_number_type: ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              bank_address: T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress),
              bank_name: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              payment_type: T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol),
              routing_number: String,
              routing_number_type: ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class BankAddress < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        # Locality or City.
        sig { returns(T.nilable(String)) }
        def locality
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def locality=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        # Region or State.
        sig { returns(T.nilable(String)) }
        def region
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def region=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

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
          )
            .returns(T.attached_class)
        end
        def self.new(
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
        )
        end

        sig do
          override
            .returns(
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
            )
        end
        def to_hash
        end
      end

      # If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      module PaymentType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetail::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
      end

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details.
      module RoutingNumberType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetail::RoutingNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol) }

        ABA = T.let(:aba, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        AU_BSB = T.let(:au_bsb, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        BR_CODIGO = T.let(:br_codigo, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        CA_CPA = T.let(:ca_cpa, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        CHIPS = T.let(:chips, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        CNAPS = T.let(:cnaps, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        DK_INTERBANK_CLEARING_CODE =
          T.let(:dk_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        GB_SORT_CODE =
          T.let(:gb_sort_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        HK_INTERBANK_CLEARING_CODE =
          T.let(:hk_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        HU_INTERBANK_CLEARING_CODE =
          T.let(:hu_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        ID_SKNBI_CODE =
          T.let(:id_sknbi_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        IN_IFSC = T.let(:in_ifsc, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        JP_ZENGIN_CODE =
          T.let(:jp_zengin_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        MX_BANK_IDENTIFIER =
          T.let(:mx_bank_identifier, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        MY_BRANCH_CODE =
          T.let(:my_branch_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        NZ_NATIONAL_CLEARING_CODE =
          T.let(:nz_national_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        PL_NATIONAL_CLEARING_CODE =
          T.let(:pl_national_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        SE_BANKGIRO_CLEARING_CODE =
          T.let(:se_bankgiro_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        SG_INTERBANK_CLEARING_CODE =
          T.let(:sg_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        SWIFT = T.let(:swift, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        ZA_NATIONAL_CLEARING_CODE =
          T.let(:za_national_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
      end
    end
  end
end
