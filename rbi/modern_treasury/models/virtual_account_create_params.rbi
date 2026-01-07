# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::VirtualAccountCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the internal account that this virtual account is associated with.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # The name of the virtual account.
      sig { returns(String) }
      attr_accessor :name

      # An array of account detail objects.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::VirtualAccountCreateParams::AccountDetail]
          )
        )
      end
      attr_reader :account_details

      sig do
        params(
          account_details:
            T::Array[
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::OrHash
            ]
        ).void
      end
      attr_writer :account_details

      # The ID of the counterparty that the virtual account belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The ID of a credit normal ledger account. When money leaves the virtual account,
      # this ledger account will be credited. Must be accompanied by a
      # debit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      attr_reader :credit_ledger_account_id

      sig { params(credit_ledger_account_id: String).void }
      attr_writer :credit_ledger_account_id

      # The ID of a debit normal ledger account. When money enters the virtual account,
      # this ledger account will be debited. Must be accompanied by a
      # credit_ledger_account_id if present.
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
      # The resulting ledger account is linked to the virtual account for auto-ledgering
      # IPDs.
      sig { returns(T.nilable(ModernTreasury::LedgerAccountCreateRequest)) }
      attr_reader :ledger_account

      sig do
        params(
          ledger_account: ModernTreasury::LedgerAccountCreateRequest::OrHash
        ).void
      end
      attr_writer :ledger_account

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # An array of routing detail objects.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::VirtualAccountCreateParams::RoutingDetail]
          )
        )
      end
      attr_reader :routing_details

      sig do
        params(
          routing_details:
            T::Array[
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::OrHash
            ]
        ).void
      end
      attr_writer :routing_details

      sig do
        params(
          internal_account_id: String,
          name: String,
          account_details:
            T::Array[
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::OrHash
            ],
          counterparty_id: String,
          credit_ledger_account_id: String,
          debit_ledger_account_id: String,
          description: String,
          ledger_account: ModernTreasury::LedgerAccountCreateRequest::OrHash,
          metadata: T::Hash[Symbol, String],
          routing_details:
            T::Array[
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::OrHash
            ],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the internal account that this virtual account is associated with.
        internal_account_id:,
        # The name of the virtual account.
        name:,
        # An array of account detail objects.
        account_details: nil,
        # The ID of the counterparty that the virtual account belongs to.
        counterparty_id: nil,
        # The ID of a credit normal ledger account. When money leaves the virtual account,
        # this ledger account will be credited. Must be accompanied by a
        # debit_ledger_account_id if present.
        credit_ledger_account_id: nil,
        # The ID of a debit normal ledger account. When money enters the virtual account,
        # this ledger account will be debited. Must be accompanied by a
        # credit_ledger_account_id if present.
        debit_ledger_account_id: nil,
        # An optional description for internal use.
        description: nil,
        # Specifies a ledger account object that will be created with the virtual account.
        # The resulting ledger account is linked to the virtual account for auto-ledgering
        # IPDs.
        ledger_account: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # An array of routing detail objects.
        routing_details: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            internal_account_id: String,
            name: String,
            account_details:
              T::Array[
                ModernTreasury::VirtualAccountCreateParams::AccountDetail
              ],
            counterparty_id: String,
            credit_ledger_account_id: String,
            debit_ledger_account_id: String,
            description: String,
            ledger_account: ModernTreasury::LedgerAccountCreateRequest,
            metadata: T::Hash[Symbol, String],
            routing_details:
              T::Array[
                ModernTreasury::VirtualAccountCreateParams::RoutingDetail
              ],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AccountDetail < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::VirtualAccountCreateParams::AccountDetail,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The account number for the bank account.
        sig { returns(String) }
        attr_accessor :account_number

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        # account number is in a generic format.
        sig do
          returns(
            T.nilable(
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          )
        end
        attr_reader :account_number_type

        sig do
          params(
            account_number_type:
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
          ).void
        end
        attr_writer :account_number_type

        sig do
          params(
            account_number: String,
            account_number_type:
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The account number for the bank account.
          account_number:,
          # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
          # account number is in a generic format.
          account_number_type: nil
        )
        end

        sig do
          override.returns(
            {
              account_number: String,
              account_number_type:
                ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        # account number is in a generic format.
        module AccountNumberType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AU_NUMBER =
            T.let(
              :au_number,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          BASE_ADDRESS =
            T.let(
              :base_address,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          CLABE =
            T.let(
              :clabe,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          ETHEREUM_ADDRESS =
            T.let(
              :ethereum_address,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          HK_NUMBER =
            T.let(
              :hk_number,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          IBAN =
            T.let(
              :iban,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          ID_NUMBER =
            T.let(
              :id_number,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          NZ_NUMBER =
            T.let(
              :nz_number,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          PAN =
            T.let(
              :pan,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          POLYGON_ADDRESS =
            T.let(
              :polygon_address,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          SG_NUMBER =
            T.let(
              :sg_number,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          SOLANA_ADDRESS =
            T.let(
              :solana_address,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          WALLET_ADDRESS =
            T.let(
              :wallet_address,
              ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::VirtualAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The routing number of the bank.
        sig { returns(String) }
        attr_accessor :routing_number

        # The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details.
        sig do
          returns(
            ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
          )
        end
        attr_accessor :routing_number_type

        # If the routing detail is to be used for a specific payment type this field will
        # be populated, otherwise null.
        sig do
          returns(
            T.nilable(
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
            )
          )
        end
        attr_accessor :payment_type

        sig do
          params(
            routing_number: String,
            routing_number_type:
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
            payment_type:
              T.nilable(
                ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The routing number of the bank.
          routing_number:,
          # The type of routing number. See
          # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
          # more details.
          routing_number_type:,
          # If the routing detail is to be used for a specific payment type this field will
          # be populated, otherwise null.
          payment_type: nil
        )
        end

        sig do
          override.returns(
            {
              routing_number: String,
              routing_number_type:
                ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
              payment_type:
                T.nilable(
                  ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        # The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details.
        module RoutingNumberType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABA =
            T.let(
              :aba,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          AU_BSB =
            T.let(
              :au_bsb,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          BR_CODIGO =
            T.let(
              :br_codigo,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CA_CPA =
            T.let(
              :ca_cpa,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CHIPS =
            T.let(
              :chips,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CNAPS =
            T.let(
              :cnaps,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          DK_INTERBANK_CLEARING_CODE =
            T.let(
              :dk_interbank_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          GB_SORT_CODE =
            T.let(
              :gb_sort_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HK_INTERBANK_CLEARING_CODE =
            T.let(
              :hk_interbank_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HU_INTERBANK_CLEARING_CODE =
            T.let(
              :hu_interbank_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ID_SKNBI_CODE =
            T.let(
              :id_sknbi_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          IL_BANK_CODE =
            T.let(
              :il_bank_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          IN_IFSC =
            T.let(
              :in_ifsc,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          JP_ZENGIN_CODE =
            T.let(
              :jp_zengin_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MX_BANK_IDENTIFIER =
            T.let(
              :mx_bank_identifier,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MY_BRANCH_CODE =
            T.let(
              :my_branch_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          NZ_NATIONAL_CLEARING_CODE =
            T.let(
              :nz_national_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          PL_NATIONAL_CLEARING_CODE =
            T.let(
              :pl_national_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SE_BANKGIRO_CLEARING_CODE =
            T.let(
              :se_bankgiro_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SG_INTERBANK_CLEARING_CODE =
            T.let(
              :sg_interbank_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SWIFT =
            T.let(
              :swift,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ZA_NATIONAL_CLEARING_CODE =
            T.let(
              :za_national_clearing_code,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # If the routing detail is to be used for a specific payment type this field will
        # be populated, otherwise null.
        module PaymentType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ach,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          AU_BECS =
            T.let(
              :au_becs,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BACS =
            T.let(
              :bacs,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BASE =
            T.let(
              :base,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BOOK =
            T.let(
              :book,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CARD =
            T.let(
              :card,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CHATS =
            T.let(
              :chats,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CHECK =
            T.let(
              :check,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          DK_NETS =
            T.let(
              :dk_nets,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          EFT =
            T.let(
              :eft,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          ETHEREUM =
            T.let(
              :ethereum,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          GB_FPS =
            T.let(
              :gb_fps,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          HU_ICS =
            T.let(
              :hu_ics,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          INTERAC =
            T.let(
              :interac,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MASAV =
            T.let(
              :masav,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MX_CCEN =
            T.let(
              :mx_ccen,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NEFT =
            T.let(
              :neft,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NICS =
            T.let(
              :nics,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NZ_BECS =
            T.let(
              :nz_becs,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          POLYGON =
            T.let(
              :polygon,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RO_SENT =
            T.let(
              :ro_sent,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RTP =
            T.let(
              :rtp,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SEN =
            T.let(
              :sen,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SEPA =
            T.let(
              :sepa,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SG_GIRO =
            T.let(
              :sg_giro,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SIC =
            T.let(
              :sic,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SIGNET =
            T.let(
              :signet,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SKNBI =
            T.let(
              :sknbi,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SOLANA =
            T.let(
              :solana,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          WIRE =
            T.let(
              :wire,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          ZENGIN =
            T.let(
              :zengin,
              ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::VirtualAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
