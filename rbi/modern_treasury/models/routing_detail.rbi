# typed: strong

module ModernTreasury
  module Models
    class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::RoutingDetail,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(ModernTreasury::RoutingDetail::BankAddress)) }
      attr_reader :bank_address

      sig do
        params(
          bank_address:
            T.nilable(ModernTreasury::RoutingDetail::BankAddress::OrHash)
        ).void
      end
      attr_writer :bank_address

      # The name of the bank.
      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      sig do
        returns(
          T.nilable(ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        )
      end
      attr_accessor :payment_type

      # The routing number of the bank.
      sig { returns(String) }
      attr_accessor :routing_number

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      sig do
        returns(ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol)
      end
      attr_accessor :routing_number_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          bank_address:
            T.nilable(ModernTreasury::RoutingDetail::BankAddress::OrHash),
          bank_name: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          payment_type:
            T.nilable(ModernTreasury::RoutingDetail::PaymentType::OrSymbol),
          routing_number: String,
          routing_number_type:
            ModernTreasury::RoutingDetail::RoutingNumberType::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        bank_address:,
        # The name of the bank.
        bank_name:,
        created_at:,
        discarded_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # If the routing detail is to be used for a specific payment type this field will
        # be populated, otherwise null.
        payment_type:,
        # The routing number of the bank.
        routing_number:,
        # The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details.
        routing_number_type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bank_address: T.nilable(ModernTreasury::RoutingDetail::BankAddress),
            bank_name: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            payment_type:
              T.nilable(
                ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
              ),
            routing_number: String,
            routing_number_type:
              ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class BankAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::RoutingDetail::BankAddress,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Locality or City.
        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :object

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Region or State.
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
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Country code conforms to [ISO 3166-1 alpha-2]
          country:,
          created_at:,
          line1:,
          line2:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          # Locality or City.
          locality:,
          object:,
          # The postal code of the address.
          postal_code:,
          # Region or State.
          region:,
          updated_at:
        )
        end

        sig do
          override.returns(
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
      # be populated, otherwise null.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::RoutingDetail::PaymentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(:ach, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(:bacs, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        BOOK =
          T.let(:book, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        CARD =
          T.let(:card, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        CHATS =
          T.let(
            :chats,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(:eft, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(:neft, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        NICS =
          T.let(:nics, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(:rtp, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        SEN =
          T.let(:sen, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        SEPA =
          T.let(:sepa, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(:sic, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(:wire, ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol)
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::RoutingDetail::PaymentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      module RoutingNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::RoutingDetail::RoutingNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABA =
          T.let(
            :aba,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :au_bsb,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        BR_CODIGO =
          T.let(
            :br_codigo,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :ca_cpa,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        CHIPS =
          T.let(
            :chips,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        CNAPS =
          T.let(
            :cnaps,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(
            :id_sknbi_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :in_ifsc,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        JP_ZENGIN_CODE =
          T.let(
            :jp_zengin_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :my_branch_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetail::RoutingNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
