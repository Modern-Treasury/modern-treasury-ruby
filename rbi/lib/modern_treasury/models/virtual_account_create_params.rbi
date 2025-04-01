# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the internal account that this virtual account is associated with.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # The name of the virtual account.
      sig { returns(String) }
      attr_accessor :name

      # An array of account detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])) }
      attr_reader :account_details

      sig do
        params(
          account_details: T::Array[T.any(ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail, ModernTreasury::Util::AnyHash)]
        )
          .void
      end
      attr_writer :account_details

      # The ID of the counterparty that the virtual account belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The ID of a credit normal ledger account. When money leaves the virtual account,
      #   this ledger account will be credited. Must be accompanied by a
      #   debit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      attr_reader :credit_ledger_account_id

      sig { params(credit_ledger_account_id: String).void }
      attr_writer :credit_ledger_account_id

      # The ID of a debit normal ledger account. When money enters the virtual account,
      #   this ledger account will be debited. Must be accompanied by a
      #   credit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      attr_reader :debit_ledger_account_id

      sig { params(debit_ledger_account_id: String).void }
      attr_writer :debit_ledger_account_id

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Specifies a ledger account object that will be created with the virtual account.
      #   The resulting ledger account is linked to the virtual account for auto-ledgering
      #   IPDs.
      sig { returns(T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)) }
      attr_reader :ledger_account

      sig do
        params(
          ledger_account: T.any(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount, ModernTreasury::Util::AnyHash)
        )
          .void
      end
      attr_writer :ledger_account

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # An array of routing detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])) }
      attr_reader :routing_details

      sig do
        params(
          routing_details: T::Array[T.any(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail, ModernTreasury::Util::AnyHash)]
        )
          .void
      end
      attr_writer :routing_details

      sig do
        params(
          internal_account_id: String,
          name: String,
          account_details: T::Array[T.any(ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail, ModernTreasury::Util::AnyHash)],
          counterparty_id: String,
          credit_ledger_account_id: String,
          debit_ledger_account_id: String,
          description: String,
          ledger_account: T.any(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount, ModernTreasury::Util::AnyHash),
          metadata: T::Hash[Symbol, String],
          routing_details: T::Array[T.any(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail, ModernTreasury::Util::AnyHash)],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
        attr_accessor :account_number

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   account number is in a generic format.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol)
          )
        end
        attr_reader :account_number_type

        sig do
          params(
            account_number_type: ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
          )
            .void
        end
        attr_writer :account_number_type

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
                String,
                ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
              )
            end

          AU_NUMBER =
            T.let(
              :au_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          CLABE =
            T.let(
              :clabe,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          HK_NUMBER =
            T.let(
              :hk_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          IBAN =
            T.let(
              :iban,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          ID_NUMBER =
            T.let(
              :id_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          NZ_NUMBER =
            T.let(
              :nz_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          PAN =
            T.let(
              :pan,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          SG_NUMBER =
            T.let(
              :sg_number,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          WALLET_ADDRESS =
            T.let(
              :wallet_address,
              ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      class LedgerAccount < ModernTreasury::BaseModel
        # The currency of the ledger account.
        sig { returns(String) }
        attr_accessor :currency

        # The id of the ledger that this account belongs to.
        sig { returns(String) }
        attr_accessor :ledger_id

        # The name of the ledger account.
        sig { returns(String) }
        attr_accessor :name

        # The normal balance of the ledger account.
        sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
        attr_accessor :normal_balance

        # The currency exponent of the ledger account.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :currency_exponent

        # The description of the ledger account.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The array of ledger account category ids that this ledger account should be a
        #   child of.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :ledger_account_category_ids

        sig { params(ledger_account_category_ids: T::Array[String]).void }
        attr_writer :ledger_account_category_ids

        # If the ledger account links to another object in Modern Treasury, the id will be
        #   populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        attr_reader :ledgerable_id

        sig { params(ledgerable_id: String).void }
        attr_writer :ledgerable_id

        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol)
          )
        end
        attr_reader :ledgerable_type

        sig do
          params(
            ledgerable_type: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
          )
            .void
        end
        attr_writer :ledgerable_type

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

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
                String,
                ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
              )
            end

          COUNTERPARTY =
            T.let(
              :counterparty,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          EXTERNAL_ACCOUNT =
            T.let(
              :external_account,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          INTERNAL_ACCOUNT =
            T.let(
              :internal_account,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          VIRTUAL_ACCOUNT =
            T.let(
              :virtual_account,
              ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      class RoutingDetail < ModernTreasury::BaseModel
        # The routing number of the bank.
        sig { returns(String) }
        attr_accessor :routing_number

        # The type of routing number. See
        #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   more details.
        sig { returns(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol) }
        attr_accessor :routing_number_type

        # If the routing detail is to be used for a specific payment type this field will
        #   be populated, otherwise null.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          )
        end
        attr_accessor :payment_type

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
                String,
                ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            end

          ABA =
            T.let(
              :aba,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          AU_BSB =
            T.let(
              :au_bsb,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          BR_CODIGO =
            T.let(
              :br_codigo,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CA_CPA =
            T.let(
              :ca_cpa,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CHIPS =
            T.let(
              :chips,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CNAPS =
            T.let(
              :cnaps,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          DK_INTERBANK_CLEARING_CODE =
            T.let(
              :dk_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          GB_SORT_CODE =
            T.let(
              :gb_sort_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HK_INTERBANK_CLEARING_CODE =
            T.let(
              :hk_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HU_INTERBANK_CLEARING_CODE =
            T.let(
              :hu_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ID_SKNBI_CODE =
            T.let(
              :id_sknbi_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          IN_IFSC =
            T.let(
              :in_ifsc,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          JP_ZENGIN_CODE =
            T.let(
              :jp_zengin_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MX_BANK_IDENTIFIER =
            T.let(
              :mx_bank_identifier,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MY_BRANCH_CODE =
            T.let(
              :my_branch_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          NZ_NATIONAL_CLEARING_CODE =
            T.let(
              :nz_national_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          PL_NATIONAL_CLEARING_CODE =
            T.let(
              :pl_national_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SE_BANKGIRO_CLEARING_CODE =
            T.let(
              :se_bankgiro_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SG_INTERBANK_CLEARING_CODE =
            T.let(
              :sg_interbank_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SWIFT =
            T.let(
              :swift,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ZA_NATIONAL_CLEARING_CODE =
            T.let(
              :za_national_clearing_code,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol]
              )
          end
          def self.values
          end
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
                String,
                ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
              )
            end

          ACH =
            T.let(:ach, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          AU_BECS =
            T.let(
              :au_becs,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BACS =
            T.let(:bacs, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          BOOK =
            T.let(:book, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          CARD =
            T.let(:card, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          CHATS =
            T.let(
              :chats,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CHECK =
            T.let(
              :check,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          DK_NETS =
            T.let(
              :dk_nets,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          EFT =
            T.let(:eft, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          HU_ICS =
            T.let(
              :hu_ics,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          INTERAC =
            T.let(
              :interac,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MASAV =
            T.let(
              :masav,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MX_CCEN =
            T.let(
              :mx_ccen,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NEFT =
            T.let(:neft, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          NICS =
            T.let(:nics, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          NZ_BECS =
            T.let(
              :nz_becs,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RO_SENT =
            T.let(
              :ro_sent,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RTP =
            T.let(:rtp, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SEN =
            T.let(:sen, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          SEPA =
            T.let(:sepa, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          SG_GIRO =
            T.let(
              :sg_giro,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SIC =
            T.let(:sic, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          SIGNET =
            T.let(
              :signet,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SKNBI =
            T.let(
              :sknbi,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          WIRE =
            T.let(:wire, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          ZENGIN =
            T.let(
              :zengin,
              ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end
    end
  end
end
