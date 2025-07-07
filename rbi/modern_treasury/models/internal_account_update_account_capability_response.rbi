# typed: strong

module ModernTreasury
  module Models
    class InternalAccountUpdateAccountCapabilityResponse < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # One of `debit` or `credit`. Indicates the direction of money movement this
      # capability is responsible for.
      sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
      attr_accessor :direction

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # A unique reference assigned by your bank for tracking and recognizing payment
      # files. It is important this is formatted exactly how the bank assigned it.
      sig { returns(T.nilable(String)) }
      attr_accessor :identifier

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # Indicates the the type of payment this capability is responsible for
      # originating.
      sig do
        returns(
          ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
        )
      end
      attr_accessor :payment_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          discarded_at: T.nilable(Time),
          identifier: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          payment_type:
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # One of `debit` or `credit`. Indicates the direction of money movement this
        # capability is responsible for.
        direction:,
        discarded_at:,
        # A unique reference assigned by your bank for tracking and recognizing payment
        # files. It is important this is formatted exactly how the bank assigned it.
        identifier:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # Indicates the the type of payment this capability is responsible for
        # originating.
        payment_type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            direction: ModernTreasury::TransactionDirection::TaggedSymbol,
            discarded_at: T.nilable(Time),
            identifier: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            payment_type:
              ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Indicates the the type of payment this capability is responsible for
      # originating.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::Models::InternalAccountUpdateAccountCapabilityResponse::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
