# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetail < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The date on which the corresponding transaction will occur.
      sig { returns(Date) }
      def as_of_date
      end

      sig { params(_: Date).returns(Date) }
      def as_of_date=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The currency of the incoming payment detail.
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: ModernTreasury::Models::Currency::TaggedSymbol)
          .returns(ModernTreasury::Models::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # The raw data from the payment pre-notification file that we get from the bank.
      sig { returns(T::Hash[Symbol, T.anything]) }
      def data
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def data=(_)
      end

      # One of `credit` or `debit`.
      sig { returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::TaggedSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol)
      end
      def direction=(_)
      end

      # The ID of the Internal Account for the incoming payment detail. This is always
      #   present.
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # The ID of the ledger transaction linked to the incoming payment detail or
      #   `null`.
      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_transaction_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The last 4 digits of the originating account_number for the incoming payment
      #   detail.
      sig { returns(T.nilable(String)) }
      def originating_account_number_safe
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_account_number_safe=(_)
      end

      # The type of the originating account number for the incoming payment detail.
      sig do
        returns(
          T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol)
        )
      end
      def originating_account_number_type
      end

      sig do
        params(
          _: T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol)
        )
          .returns(
            T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol)
          )
      end
      def originating_account_number_type=(_)
      end

      # The routing number of the originating account for the incoming payment detail.
      sig { returns(T.nilable(String)) }
      def originating_routing_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_routing_number=(_)
      end

      # The type of the originating routing number for the incoming payment detail.
      sig do
        returns(
          T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        )
      end
      def originating_routing_number_type
      end

      sig do
        params(
          _: T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        )
          .returns(
            T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
          )
      end
      def originating_routing_number_type=(_)
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      sig { returns(ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # The ID of the reconciled Transaction or `null`.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # The ID of the reconciled Transaction Line Item or `null`.
      sig { returns(T.nilable(String)) }
      def transaction_line_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_line_item_id=(_)
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      sig { returns(ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
          .returns(ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
      end
      def type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # The identifier of the vendor bank.
      sig { returns(T.nilable(String)) }
      def vendor_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_id=(_)
      end

      # If the incoming payment detail is in a virtual account, the serialized virtual
      #   account object.
      sig { returns(T.nilable(ModernTreasury::Models::VirtualAccount)) }
      def virtual_account
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::VirtualAccount))
          .returns(T.nilable(ModernTreasury::Models::VirtualAccount))
      end
      def virtual_account=(_)
      end

      # If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   Account.
      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def virtual_account_id=(_)
      end

      # The account number of the originating account for the incoming payment detail.
      sig { returns(T.nilable(String)) }
      def originating_account_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_account_number=(_)
      end

      sig do
        params(
          id: String,
          amount: Integer,
          as_of_date: Date,
          created_at: Time,
          currency: ModernTreasury::Models::Currency::TaggedSymbol,
          data: T::Hash[Symbol, T.anything],
          direction: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
          internal_account_id: String,
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          originating_account_number_safe: T.nilable(String),
          originating_account_number_type: T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol),
          originating_routing_number: T.nilable(String),
          originating_routing_number_type: T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol),
          status: ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol,
          updated_at: Time,
          vendor_id: T.nilable(String),
          virtual_account: T.nilable(ModernTreasury::Models::VirtualAccount),
          virtual_account_id: T.nilable(String),
          originating_account_number: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        as_of_date:,
        created_at:,
        currency:,
        data:,
        direction:,
        internal_account_id:,
        ledger_transaction_id:,
        live_mode:,
        metadata:,
        object:,
        originating_account_number_safe:,
        originating_account_number_type:,
        originating_routing_number:,
        originating_routing_number_type:,
        status:,
        transaction_id:,
        transaction_line_item_id:,
        type:,
        updated_at:,
        vendor_id:,
        virtual_account:,
        virtual_account_id:,
        originating_account_number: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: Integer,
              as_of_date: Date,
              created_at: Time,
              currency: ModernTreasury::Models::Currency::TaggedSymbol,
              data: T::Hash[Symbol, T.anything],
              direction: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
              internal_account_id: String,
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              originating_account_number_safe: T.nilable(String),
              originating_account_number_type: T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol),
              originating_routing_number: T.nilable(String),
              originating_routing_number_type: T.nilable(ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol),
              status: ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol,
              transaction_id: T.nilable(String),
              transaction_line_item_id: T.nilable(String),
              type: ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol,
              updated_at: Time,
              vendor_id: T.nilable(String),
              virtual_account: T.nilable(ModernTreasury::Models::VirtualAccount),
              virtual_account_id: T.nilable(String),
              originating_account_number: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # The type of the originating account number for the incoming payment detail.
      module OriginatingAccountNumberType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol) }

        AU_NUMBER =
          T.let(
            :au_number,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        CLABE =
          T.let(:clabe, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol)
        HK_NUMBER =
          T.let(
            :hk_number,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        IBAN =
          T.let(:iban, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol)
        ID_NUMBER =
          T.let(
            :id_number,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        NZ_NUMBER =
          T.let(
            :nz_number,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        OTHER =
          T.let(:other, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol)
        PAN =
          T.let(:pan, ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol)
        SG_NUMBER =
          T.let(
            :sg_number,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        WALLET_ADDRESS =
          T.let(
            :wallet_address,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
      end

      # The type of the originating routing number for the incoming payment detail.
      module OriginatingRoutingNumberType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol) }

        ABA =
          T.let(:aba, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        AU_BSB =
          T.let(:au_bsb, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        BR_CODIGO =
          T.let(
            :br_codigo,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(:ca_cpa, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        CHIPS =
          T.let(:chips, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        CNAPS =
          T.let(:cnaps, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(
            :id_sknbi_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(:in_ifsc, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        JP_ZENGIN_CODE =
          T.let(
            :jp_zengin_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :my_branch_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(:swift, ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol)
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetail::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol) }

        COMPLETED = T.let(:completed, ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol)
        RETURNED = T.let(:returned, ModernTreasury::Models::IncomingPaymentDetail::Status::TaggedSymbol)
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetail::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::IncomingPaymentDetail::Type::TaggedSymbol)
      end
    end
  end
end
