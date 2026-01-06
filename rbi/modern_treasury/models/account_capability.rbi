# typed: strong

module ModernTreasury
  module Models
    class AccountCapability < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountCapability,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # One of `debit` or `credit`. Indicates the direction of money movement this
      # capability is responsible for.
      sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
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
      sig { returns(ModernTreasury::AccountCapability::PaymentType::OrSymbol) }
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
            ModernTreasury::AccountCapability::PaymentType::OrSymbol,
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
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            discarded_at: T.nilable(Time),
            identifier: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            payment_type:
              ModernTreasury::AccountCapability::PaymentType::OrSymbol,
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
            T.all(Symbol, ModernTreasury::AccountCapability::PaymentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        GB_FPS =
          T.let(
            :gb_fps,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountCapability::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
