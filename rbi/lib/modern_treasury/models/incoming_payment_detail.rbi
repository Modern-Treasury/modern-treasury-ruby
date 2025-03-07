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

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

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

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def data
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def data=(_)
      end

      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_transaction_id=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

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

      sig { returns(T.nilable(String)) }
      def originating_account_number_safe
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_account_number_safe=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def originating_account_number_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def originating_account_number_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_routing_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_routing_number=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def originating_routing_number_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def originating_routing_number_type=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_line_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_line_item_id=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def vendor_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::VirtualAccount)) }
      def virtual_account
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::VirtualAccount))
          .returns(T.nilable(ModernTreasury::Models::VirtualAccount))
      end
      def virtual_account=(_)
      end

      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def virtual_account_id=(_)
      end

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
          currency: Symbol,
          data: T::Hash[Symbol, T.anything],
          direction: Symbol,
          internal_account_id: String,
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          originating_account_number_safe: T.nilable(String),
          originating_account_number_type: T.nilable(Symbol),
          originating_routing_number: T.nilable(String),
          originating_routing_number_type: T.nilable(Symbol),
          status: Symbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: Symbol,
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
              currency: Symbol,
              data: T::Hash[Symbol, T.anything],
              direction: Symbol,
              internal_account_id: String,
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              originating_account_number_safe: T.nilable(String),
              originating_account_number_type: T.nilable(Symbol),
              originating_routing_number: T.nilable(String),
              originating_routing_number_type: T.nilable(Symbol),
              status: Symbol,
              transaction_id: T.nilable(String),
              transaction_line_item_id: T.nilable(String),
              type: Symbol,
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

      class OriginatingAccountNumberType < ModernTreasury::Enum
        abstract!

        AU_NUMBER = T.let(:au_number, T.nilable(Symbol))
        CLABE = T.let(:clabe, T.nilable(Symbol))
        HK_NUMBER = T.let(:hk_number, T.nilable(Symbol))
        IBAN = T.let(:iban, T.nilable(Symbol))
        ID_NUMBER = T.let(:id_number, T.nilable(Symbol))
        NZ_NUMBER = T.let(:nz_number, T.nilable(Symbol))
        OTHER = T.let(:other, T.nilable(Symbol))
        PAN = T.let(:pan, T.nilable(Symbol))
        SG_NUMBER = T.let(:sg_number, T.nilable(Symbol))
        WALLET_ADDRESS = T.let(:wallet_address, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class OriginatingRoutingNumberType < ModernTreasury::Enum
        abstract!

        ABA = T.let(:aba, T.nilable(Symbol))
        AU_BSB = T.let(:au_bsb, T.nilable(Symbol))
        BR_CODIGO = T.let(:br_codigo, T.nilable(Symbol))
        CA_CPA = T.let(:ca_cpa, T.nilable(Symbol))
        CHIPS = T.let(:chips, T.nilable(Symbol))
        CNAPS = T.let(:cnaps, T.nilable(Symbol))
        DK_INTERBANK_CLEARING_CODE = T.let(:dk_interbank_clearing_code, T.nilable(Symbol))
        GB_SORT_CODE = T.let(:gb_sort_code, T.nilable(Symbol))
        HK_INTERBANK_CLEARING_CODE = T.let(:hk_interbank_clearing_code, T.nilable(Symbol))
        HU_INTERBANK_CLEARING_CODE = T.let(:hu_interbank_clearing_code, T.nilable(Symbol))
        ID_SKNBI_CODE = T.let(:id_sknbi_code, T.nilable(Symbol))
        IN_IFSC = T.let(:in_ifsc, T.nilable(Symbol))
        JP_ZENGIN_CODE = T.let(:jp_zengin_code, T.nilable(Symbol))
        MX_BANK_IDENTIFIER = T.let(:mx_bank_identifier, T.nilable(Symbol))
        MY_BRANCH_CODE = T.let(:my_branch_code, T.nilable(Symbol))
        NZ_NATIONAL_CLEARING_CODE = T.let(:nz_national_clearing_code, T.nilable(Symbol))
        PL_NATIONAL_CLEARING_CODE = T.let(:pl_national_clearing_code, T.nilable(Symbol))
        SE_BANKGIRO_CLEARING_CODE = T.let(:se_bankgiro_clearing_code, T.nilable(Symbol))
        SG_INTERBANK_CLEARING_CODE = T.let(:sg_interbank_clearing_code, T.nilable(Symbol))
        SWIFT = T.let(:swift, T.nilable(Symbol))
        ZA_NATIONAL_CLEARING_CODE = T.let(:za_national_clearing_code, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < ModernTreasury::Enum
        abstract!

        ACH = :ach
        BOOK = :book
        CHECK = :check
        EFT = :eft
        INTERAC = :interac
        RTP = :rtp
        SEPA = :sepa
        SIGNET = :signet
        WIRE = :wire

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
