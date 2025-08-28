# typed: strong

module ModernTreasury
  module Models
    class RoutingNumberLookupRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::RoutingNumberLookupRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The address of the bank.
      sig { returns(T.nilable(ModernTreasury::AddressRequest)) }
      attr_reader :bank_address

      sig { params(bank_address: ModernTreasury::AddressRequest::OrHash).void }
      attr_writer :bank_address

      # The name of the bank.
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { params(bank_name: String).void }
      attr_writer :bank_name

      # The routing number of the bank.
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { params(routing_number: String).void }
      attr_writer :routing_number

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details. In sandbox mode we currently only support `aba` and `swift` with
      # routing numbers '123456789' and 'GRINUST0XXX' respectively.
      sig do
        returns(
          T.nilable(
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        )
      end
      attr_reader :routing_number_type

      sig do
        params(
          routing_number_type:
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::OrSymbol
        ).void
      end
      attr_writer :routing_number_type

      # An object containing key-value pairs, each with a sanctions list as the key and
      # a boolean value representing whether the bank is on that particular sanctions
      # list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :sanctions

      sig { params(sanctions: T::Hash[Symbol, T.anything]).void }
      attr_writer :sanctions

      # An array of payment types that are supported for this routing number. This can
      # include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs`, and 'fednow' currently.
      sig do
        returns(
          T.nilable(
            T::Array[
              ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :supported_payment_types

      sig do
        params(
          supported_payment_types:
            T::Array[
              ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::OrSymbol
            ]
        ).void
      end
      attr_writer :supported_payment_types

      sig do
        params(
          bank_address: ModernTreasury::AddressRequest::OrHash,
          bank_name: String,
          routing_number: String,
          routing_number_type:
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::OrSymbol,
          sanctions: T::Hash[Symbol, T.anything],
          supported_payment_types:
            T::Array[
              ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The address of the bank.
        bank_address: nil,
        # The name of the bank.
        bank_name: nil,
        # The routing number of the bank.
        routing_number: nil,
        # The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details. In sandbox mode we currently only support `aba` and `swift` with
        # routing numbers '123456789' and 'GRINUST0XXX' respectively.
        routing_number_type: nil,
        # An object containing key-value pairs, each with a sanctions list as the key and
        # a boolean value representing whether the bank is on that particular sanctions
        # list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
        sanctions: nil,
        # An array of payment types that are supported for this routing number. This can
        # include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs`, and 'fednow' currently.
        supported_payment_types: nil
      )
      end

      sig do
        override.returns(
          {
            bank_address: ModernTreasury::AddressRequest,
            bank_name: String,
            routing_number: String,
            routing_number_type:
              ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol,
            sanctions: T::Hash[Symbol, T.anything],
            supported_payment_types:
              T::Array[
                ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
              ]
          }
        )
      end
      def to_hash
      end

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details. In sandbox mode we currently only support `aba` and `swift` with
      # routing numbers '123456789' and 'GRINUST0XXX' respectively.
      module RoutingNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABA =
          T.let(
            :aba,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :au_bsb,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :ca_cpa,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :in_ifsc,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module SupportedPaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        GB_FPS =
          T.let(
            :gb_fps,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
