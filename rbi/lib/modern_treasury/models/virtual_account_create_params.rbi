# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the internal account that this virtual account is associated with.
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # The name of the virtual account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # An array of account detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])) }
      def account_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])
          .returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])
      end
      def account_details=(_)
      end

      # The ID of the counterparty that the virtual account belongs to.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # The ID of a credit normal ledger account. When money leaves the virtual account,
      #   this ledger account will be credited. Must be accompanied by a
      #   debit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      def credit_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def credit_ledger_account_id=(_)
      end

      # The ID of a debit normal ledger account. When money enters the virtual account,
      #   this ledger account will be debited. Must be accompanied by a
      #   credit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      def debit_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def debit_ledger_account_id=(_)
      end

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # Specifies a ledger account object that will be created with the virtual account.
      #   The resulting ledger account is linked to the virtual account for auto-ledgering
      #   IPDs.
      sig { returns(T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)) }
      def ledger_account
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount, ModernTreasury::Util::AnyHash)
          )
      end
      def ledger_account=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # An array of routing detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])) }
      def routing_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])
          .returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])
      end
      def routing_details=(_)
      end

      sig do
        params(
          internal_account_id: String,
          name: String,
          account_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail],
          counterparty_id: String,
          credit_ledger_account_id: String,
          debit_ledger_account_id: String,
          description: String,
          ledger_account: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount,
          metadata: T::Hash[Symbol, String],
          routing_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        internal_account_id:,
        name:,
        account_details: nil,
        counterparty_id: nil,
        credit_ledger_account_id: nil,
        debit_ledger_account_id: nil,
        description: nil,
        ledger_account: nil,
        metadata: nil,
        routing_details: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              internal_account_id: String,
              name: String,
              account_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail],
              counterparty_id: String,
              credit_ledger_account_id: String,
              debit_ledger_account_id: String,
              description: String,
              ledger_account: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount,
              metadata: T::Hash[Symbol, String],
              routing_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AccountDetail < ModernTreasury::BaseModel
        # The account number for the bank account.
        sig { returns(String) }
        def account_number
        end

        sig { params(_: String).returns(String) }
        def account_number=(_)
        end

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   account number is in a generic format.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol)
          )
        end
        def account_number_type
        end

        sig do
          params(_: ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol)
            .returns(ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol)
        end
        def account_number_type=(_)
        end

        sig do
          params(
            account_number: String,
            account_number_type: ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(account_number:, account_number_type: nil)
        end

        sig do
          override
            .returns(
              {
                account_number: String,
                account_number_type: ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
              }
            )
        end
        def to_hash
        end

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   account number is in a generic format.
        module AccountNumberType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
              )
            end

          AU_NUMBER =
            T.let(
              :au_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          CLABE =
            T.let(
              :clabe,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          HK_NUMBER =
            T.let(
              :hk_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          IBAN =
            T.let(
              :iban,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          ID_NUMBER =
            T.let(
              :id_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          NZ_NUMBER =
            T.let(
              :nz_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          PAN =
            T.let(
              :pan,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          SG_NUMBER =
            T.let(
              :sg_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          WALLET_ADDRESS =
            T.let(
              :wallet_address,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
        end
      end

      class LedgerAccount < ModernTreasury::BaseModel
        # The currency of the ledger account.
        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        # The id of the ledger that this account belongs to.
        sig { returns(String) }
        def ledger_id
        end

        sig { params(_: String).returns(String) }
        def ledger_id=(_)
        end

        # The name of the ledger account.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The normal balance of the ledger account.
        sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
        def normal_balance
        end

        sig do
          params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
            .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
        end
        def normal_balance=(_)
        end

        # The currency exponent of the ledger account.
        sig { returns(T.nilable(Integer)) }
        def currency_exponent
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def currency_exponent=(_)
        end

        # The description of the ledger account.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # The array of ledger account category ids that this ledger account should be a
        #   child of.
        sig { returns(T.nilable(T::Array[String])) }
        def ledger_account_category_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def ledger_account_category_ids=(_)
        end

        # If the ledger account links to another object in Modern Treasury, the id will be
        #   populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        def ledgerable_id
        end

        sig { params(_: String).returns(String) }
        def ledgerable_id=(_)
        end

        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol)
          )
        end
        def ledgerable_type
        end

        sig do
          params(_: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol)
            .returns(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol)
        end
        def ledgerable_type=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # Specifies a ledger account object that will be created with the virtual account.
        #   The resulting ledger account is linked to the virtual account for auto-ledgering
        #   IPDs.
        sig do
          params(
            currency: String,
            ledger_id: String,
            name: String,
            normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
            currency_exponent: T.nilable(Integer),
            description: T.nilable(String),
            ledger_account_category_ids: T::Array[String],
            ledgerable_id: String,
            ledgerable_type: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol,
            metadata: T::Hash[Symbol, String]
          )
            .returns(T.attached_class)
        end
        def self.new(
          currency:,
          ledger_id:,
          name:,
          normal_balance:,
          currency_exponent: nil,
          description: nil,
          ledger_account_category_ids: nil,
          ledgerable_id: nil,
          ledgerable_type: nil,
          metadata: nil
        )
        end

        sig do
          override
            .returns(
              {
                currency: String,
                ledger_id: String,
                name: String,
                normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
                currency_exponent: T.nilable(Integer),
                description: T.nilable(String),
                ledger_account_category_ids: T::Array[String],
                ledgerable_id: String,
                ledgerable_type: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol,
                metadata: T::Hash[Symbol, String]
              }
            )
        end
        def to_hash
        end

        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        module LedgerableType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
              )
            end

          COUNTERPARTY =
            T.let(
              :counterparty,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
            )
          EXTERNAL_ACCOUNT =
            T.let(
              :external_account,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
            )
          INTERNAL_ACCOUNT =
            T.let(
              :internal_account,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
            )
          VIRTUAL_ACCOUNT =
            T.let(
              :virtual_account,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
            )
        end
      end

      class RoutingDetail < ModernTreasury::BaseModel
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
        sig { returns(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol) }
        def routing_number_type
        end

        sig do
          params(_: ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol)
            .returns(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol)
        end
        def routing_number_type=(_)
        end

        # If the routing detail is to be used for a specific payment type this field will
        #   be populated, otherwise null.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          )
        end
        def payment_type
        end

        sig do
          params(
            _: T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          )
            .returns(
              T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
            )
        end
        def payment_type=(_)
        end

        sig do
          params(
            routing_number: String,
            routing_number_type: ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
            payment_type: T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(routing_number:, routing_number_type:, payment_type: nil)
        end

        sig do
          override
            .returns(
              {
                routing_number: String,
                routing_number_type: ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
                payment_type: T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
              }
            )
        end
        def to_hash
        end

        # The type of routing number. See
        #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   more details.
        module RoutingNumberType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            end

          ABA =
            T.let(
              :aba,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          AU_BSB =
            T.let(
              :au_bsb,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          BR_CODIGO =
            T.let(
              :br_codigo,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          CA_CPA =
            T.let(
              :ca_cpa,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          CHIPS =
            T.let(
              :chips,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          CNAPS =
            T.let(
              :cnaps,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          DK_INTERBANK_CLEARING_CODE =
            T.let(
              :dk_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          GB_SORT_CODE =
            T.let(
              :gb_sort_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          HK_INTERBANK_CLEARING_CODE =
            T.let(
              :hk_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          HU_INTERBANK_CLEARING_CODE =
            T.let(
              :hu_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          ID_SKNBI_CODE =
            T.let(
              :id_sknbi_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          IN_IFSC =
            T.let(
              :in_ifsc,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          JP_ZENGIN_CODE =
            T.let(
              :jp_zengin_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          MX_BANK_IDENTIFIER =
            T.let(
              :mx_bank_identifier,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          MY_BRANCH_CODE =
            T.let(
              :my_branch_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          NZ_NATIONAL_CLEARING_CODE =
            T.let(
              :nz_national_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          PL_NATIONAL_CLEARING_CODE =
            T.let(
              :pl_national_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          SE_BANKGIRO_CLEARING_CODE =
            T.let(
              :se_bankgiro_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          SG_INTERBANK_CLEARING_CODE =
            T.let(
              :sg_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          SWIFT =
            T.let(
              :swift,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
          ZA_NATIONAL_CLEARING_CODE =
            T.let(
              :za_national_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
            )
        end

        # If the routing detail is to be used for a specific payment type this field will
        #   be populated, otherwise null.
        module PaymentType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
              )
            end

          ACH =
            T.let(:ach, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          AU_BECS =
            T.let(:au_becs, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          BACS =
            T.let(:bacs, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          BOOK =
            T.let(:book, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          CARD =
            T.let(:card, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          CHATS =
            T.let(:chats, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          CHECK =
            T.let(:check, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
            )
          DK_NETS =
            T.let(:dk_nets, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          EFT =
            T.let(:eft, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          HU_ICS =
            T.let(:hu_ics, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          INTERAC =
            T.let(:interac, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          MASAV =
            T.let(:masav, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          MX_CCEN =
            T.let(:mx_ccen, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          NEFT =
            T.let(:neft, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          NICS =
            T.let(:nics, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          NZ_BECS =
            T.let(:nz_becs, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
            )
          RO_SENT =
            T.let(:ro_sent, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          RTP =
            T.let(:rtp, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
            )
          SEN =
            T.let(:sen, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          SEPA =
            T.let(:sepa, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          SG_GIRO =
            T.let(:sg_giro, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          SIC =
            T.let(:sic, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          SIGNET =
            T.let(:signet, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          SKNBI =
            T.let(:sknbi, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          WIRE =
            T.let(:wire, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          ZENGIN =
            T.let(:zengin, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
        end
      end
    end
  end
end
