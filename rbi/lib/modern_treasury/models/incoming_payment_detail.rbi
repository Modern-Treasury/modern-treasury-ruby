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
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(T.nilable(Symbol)) }
      def originating_account_number_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
      sig { returns(T.nilable(Symbol)) }
      def originating_routing_number_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def originating_routing_number_type=(_)
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
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

      # The type of the originating account number for the incoming payment detail.
      class OriginatingAccountNumberType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        AU_NUMBER = :au_number
        CLABE = :clabe
        HK_NUMBER = :hk_number
        IBAN = :iban
        ID_NUMBER = :id_number
        NZ_NUMBER = :nz_number
        OTHER = :other
        PAN = :pan
        SG_NUMBER = :sg_number
        WALLET_ADDRESS = :wallet_address
      end

      # The type of the originating routing number for the incoming payment detail.
      class OriginatingRoutingNumberType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      class Status < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      class Type < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH = :ach
        BOOK = :book
        CHECK = :check
        EFT = :eft
        INTERAC = :interac
        RTP = :rtp
        SEPA = :sepa
        SIGNET = :signet
        WIRE = :wire
      end
    end
  end
end
