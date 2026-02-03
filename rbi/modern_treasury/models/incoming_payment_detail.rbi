# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetail < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::IncomingPaymentDetail,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(Integer) }
      attr_accessor :amount

      # The date on which the corresponding transaction will occur.
      sig { returns(Date) }
      attr_accessor :as_of_date

      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the incoming payment detail.
      sig { returns(ModernTreasury::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The raw data from the payment pre-notification file that we get from the bank.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :data

      # One of `credit` or `debit`.
      sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
      attr_accessor :direction

      # The ID of the Internal Account for the incoming payment detail. This is always
      # present.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # The ID of the ledger transaction linked to the incoming payment detail or
      # `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_transaction_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # The last 4 digits of the originating account_number for the incoming payment
      # detail.
      sig { returns(T.nilable(String)) }
      attr_accessor :originating_account_number_safe

      # The type of the originating account number for the incoming payment detail.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        )
      end
      attr_accessor :originating_account_number_type

      # The routing number of the originating account for the incoming payment detail.
      sig { returns(T.nilable(String)) }
      attr_accessor :originating_routing_number

      # The type of the originating routing number for the incoming payment detail.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        )
      end
      attr_accessor :originating_routing_number_type

      # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
      sig do
        returns(
          ModernTreasury::IncomingPaymentDetail::ReconciliationStatus::TaggedSymbol
        )
      end
      attr_accessor :reconciliation_status

      # The current status of the incoming payment order. One of `pending`, `completed`,
      # or `returned`.
      sig do
        returns(ModernTreasury::IncomingPaymentDetail::Status::TaggedSymbol)
      end
      attr_accessor :status

      # The ID of the reconciled Transaction or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # The ID of the reconciled Transaction Line Item or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_line_item_id

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      # `wire`.
      sig { returns(ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      # The identifier of the vendor bank.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_id

      # If the incoming payment detail is in a virtual account, the serialized virtual
      # account object.
      sig { returns(T.nilable(ModernTreasury::VirtualAccount)) }
      attr_reader :virtual_account

      sig do
        params(
          virtual_account: T.nilable(ModernTreasury::VirtualAccount::OrHash)
        ).void
      end
      attr_writer :virtual_account

      # If the incoming payment detail is in a virtual account, the ID of the Virtual
      # Account.
      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      # The account number of the originating account for the incoming payment detail.
      sig { returns(T.nilable(String)) }
      attr_accessor :originating_account_number

      # The address of the originating party for the incoming payment detail, or `null`.
      sig { returns(T.nilable(ModernTreasury::Address)) }
      attr_reader :originating_party_address

      sig do
        params(
          originating_party_address: T.nilable(ModernTreasury::Address::OrHash)
        ).void
      end
      attr_writer :originating_party_address

      # The name of the originating party for the incoming payment detail.
      sig { returns(T.nilable(String)) }
      attr_accessor :originating_party_name

      # The vendor-assigned identifier for the originating party of the incoming payment
      # detail, or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :originating_party_vendor_identifier

      sig do
        params(
          id: String,
          amount: Integer,
          as_of_date: Date,
          created_at: Time,
          currency: ModernTreasury::Currency::OrSymbol,
          data: T::Hash[Symbol, T.anything],
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          internal_account_id: String,
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          originating_account_number_safe: T.nilable(String),
          originating_account_number_type:
            T.nilable(
              ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::OrSymbol
            ),
          originating_routing_number: T.nilable(String),
          originating_routing_number_type:
            T.nilable(
              ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::OrSymbol
            ),
          reconciliation_status:
            ModernTreasury::IncomingPaymentDetail::ReconciliationStatus::OrSymbol,
          status: ModernTreasury::IncomingPaymentDetail::Status::OrSymbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: ModernTreasury::IncomingPaymentDetail::Type::OrSymbol,
          updated_at: Time,
          vendor_id: T.nilable(String),
          virtual_account: T.nilable(ModernTreasury::VirtualAccount::OrHash),
          virtual_account_id: T.nilable(String),
          originating_account_number: T.nilable(String),
          originating_party_address: T.nilable(ModernTreasury::Address::OrHash),
          originating_party_name: T.nilable(String),
          originating_party_vendor_identifier: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount:,
        # The date on which the corresponding transaction will occur.
        as_of_date:,
        created_at:,
        # The currency of the incoming payment detail.
        currency:,
        # The raw data from the payment pre-notification file that we get from the bank.
        data:,
        # One of `credit` or `debit`.
        direction:,
        # The ID of the Internal Account for the incoming payment detail. This is always
        # present.
        internal_account_id:,
        # The ID of the ledger transaction linked to the incoming payment detail or
        # `null`.
        ledger_transaction_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        # The last 4 digits of the originating account_number for the incoming payment
        # detail.
        originating_account_number_safe:,
        # The type of the originating account number for the incoming payment detail.
        originating_account_number_type:,
        # The routing number of the originating account for the incoming payment detail.
        originating_routing_number:,
        # The type of the originating routing number for the incoming payment detail.
        originating_routing_number_type:,
        # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
        reconciliation_status:,
        # The current status of the incoming payment order. One of `pending`, `completed`,
        # or `returned`.
        status:,
        # The ID of the reconciled Transaction or `null`.
        transaction_id:,
        # The ID of the reconciled Transaction Line Item or `null`.
        transaction_line_item_id:,
        # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
        # `wire`.
        type:,
        updated_at:,
        # The identifier of the vendor bank.
        vendor_id:,
        # If the incoming payment detail is in a virtual account, the serialized virtual
        # account object.
        virtual_account:,
        # If the incoming payment detail is in a virtual account, the ID of the Virtual
        # Account.
        virtual_account_id:,
        # The account number of the originating account for the incoming payment detail.
        originating_account_number: nil,
        # The address of the originating party for the incoming payment detail, or `null`.
        originating_party_address: nil,
        # The name of the originating party for the incoming payment detail.
        originating_party_name: nil,
        # The vendor-assigned identifier for the originating party of the incoming payment
        # detail, or `null`.
        originating_party_vendor_identifier: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            as_of_date: Date,
            created_at: Time,
            currency: ModernTreasury::Currency::TaggedSymbol,
            data: T::Hash[Symbol, T.anything],
            direction: ModernTreasury::TransactionDirection::TaggedSymbol,
            internal_account_id: String,
            ledger_transaction_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            originating_account_number_safe: T.nilable(String),
            originating_account_number_type:
              T.nilable(
                ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
              ),
            originating_routing_number: T.nilable(String),
            originating_routing_number_type:
              T.nilable(
                ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
              ),
            reconciliation_status:
              ModernTreasury::IncomingPaymentDetail::ReconciliationStatus::TaggedSymbol,
            status: ModernTreasury::IncomingPaymentDetail::Status::TaggedSymbol,
            transaction_id: T.nilable(String),
            transaction_line_item_id: T.nilable(String),
            type: ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol,
            updated_at: Time,
            vendor_id: T.nilable(String),
            virtual_account: T.nilable(ModernTreasury::VirtualAccount),
            virtual_account_id: T.nilable(String),
            originating_account_number: T.nilable(String),
            originating_party_address: T.nilable(ModernTreasury::Address),
            originating_party_name: T.nilable(String),
            originating_party_vendor_identifier: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The type of the originating account number for the incoming payment detail.
      module OriginatingAccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AU_NUMBER =
          T.let(
            :au_number,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        BASE_ADDRESS =
          T.let(
            :base_address,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        CARD_TOKEN =
          T.let(
            :card_token,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        CLABE =
          T.let(
            :clabe,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        ETHEREUM_ADDRESS =
          T.let(
            :ethereum_address,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        HK_NUMBER =
          T.let(
            :hk_number,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        IBAN =
          T.let(
            :iban,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        ID_NUMBER =
          T.let(
            :id_number,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        NZ_NUMBER =
          T.let(
            :nz_number,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        PAN =
          T.let(
            :pan,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        POLYGON_ADDRESS =
          T.let(
            :polygon_address,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        SG_NUMBER =
          T.let(
            :sg_number,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        SOLANA_ADDRESS =
          T.let(
            :solana_address,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )
        WALLET_ADDRESS =
          T.let(
            :wallet_address,
            ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetail::OriginatingAccountNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of the originating routing number for the incoming payment detail.
      module OriginatingRoutingNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABA =
          T.let(
            :aba,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :au_bsb,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        BR_CODIGO =
          T.let(
            :br_codigo,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :ca_cpa,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        CHIPS =
          T.let(
            :chips,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        CNAPS =
          T.let(
            :cnaps,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(
            :id_sknbi_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        IL_BANK_CODE =
          T.let(
            :il_bank_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :in_ifsc,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        JP_ZENGIN_CODE =
          T.let(
            :jp_zengin_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :my_branch_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetail::OriginatingRoutingNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
      module ReconciliationStatus
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetail::ReconciliationStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNRECONCILED =
          T.let(
            :unreconciled,
            ModernTreasury::IncomingPaymentDetail::ReconciliationStatus::TaggedSymbol
          )
        TENTATIVELY_RECONCILED =
          T.let(
            :tentatively_reconciled,
            ModernTreasury::IncomingPaymentDetail::ReconciliationStatus::TaggedSymbol
          )
        RECONCILED =
          T.let(
            :reconciled,
            ModernTreasury::IncomingPaymentDetail::ReconciliationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetail::ReconciliationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      # or `returned`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::IncomingPaymentDetail::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::IncomingPaymentDetail::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::IncomingPaymentDetail::Status::TaggedSymbol
          )
        RETURNED =
          T.let(
            :returned,
            ModernTreasury::IncomingPaymentDetail::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetail::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      # `wire`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::IncomingPaymentDetail::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(:ach, ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol)
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        EFT =
          T.let(:eft, ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol)
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        RTP =
          T.let(:rtp, ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol)
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::IncomingPaymentDetail::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
