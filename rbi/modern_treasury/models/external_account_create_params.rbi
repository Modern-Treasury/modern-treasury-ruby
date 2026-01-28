# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExternalAccountCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::ExternalAccountCreateParams::AccountDetail]
          )
        )
      end
      attr_reader :account_details

      sig do
        params(
          account_details:
            T::Array[
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::OrHash
            ]
        ).void
      end
      attr_writer :account_details

      # Can be `checking`, `savings` or `other`.
      sig { returns(T.nilable(ModernTreasury::ExternalAccountType::OrSymbol)) }
      attr_reader :account_type

      sig do
        params(account_type: ModernTreasury::ExternalAccountType::OrSymbol).void
      end
      attr_writer :account_type

      sig do
        returns(T.nilable(T::Array[ModernTreasury::ContactDetailCreateRequest]))
      end
      attr_reader :contact_details

      sig do
        params(
          contact_details:
            T::Array[ModernTreasury::ContactDetailCreateRequest::OrHash]
        ).void
      end
      attr_writer :contact_details

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Specifies a ledger account object that will be created with the external
      # account. The resulting ledger account is linked to the external account for
      # auto-ledgering Payment objects. See
      # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
      # for more details.
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

      # A nickname for the external account. This is only for internal usage and won't
      # affect any payments
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Required if receiving wire payments.
      sig { returns(T.nilable(ModernTreasury::AddressRequest)) }
      attr_reader :party_address

      sig { params(party_address: ModernTreasury::AddressRequest::OrHash).void }
      attr_writer :party_address

      sig { returns(T.nilable(String)) }
      attr_reader :party_identifier

      sig { params(party_identifier: String).void }
      attr_writer :party_identifier

      # If this value isn't provided, it will be inherited from the counterparty's name.
      sig { returns(T.nilable(String)) }
      attr_reader :party_name

      sig { params(party_name: String).void }
      attr_writer :party_name

      # Either `individual` or `business`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExternalAccountCreateParams::PartyType::OrSymbol
          )
        )
      end
      attr_accessor :party_type

      # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
      # you can pass the processor token in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :plaid_processor_token

      sig { params(plaid_processor_token: String).void }
      attr_writer :plaid_processor_token

      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::ExternalAccountCreateParams::RoutingDetail]
          )
        )
      end
      attr_reader :routing_details

      sig do
        params(
          routing_details:
            T::Array[
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::OrHash
            ]
        ).void
      end
      attr_writer :routing_details

      sig do
        params(
          counterparty_id: T.nilable(String),
          account_details:
            T::Array[
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::OrHash
            ],
          account_type: ModernTreasury::ExternalAccountType::OrSymbol,
          contact_details:
            T::Array[ModernTreasury::ContactDetailCreateRequest::OrHash],
          external_id: T.nilable(String),
          ledger_account: ModernTreasury::LedgerAccountCreateRequest::OrHash,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: ModernTreasury::AddressRequest::OrHash,
          party_identifier: String,
          party_name: String,
          party_type:
            T.nilable(
              ModernTreasury::ExternalAccountCreateParams::PartyType::OrSymbol
            ),
          plaid_processor_token: String,
          routing_details:
            T::Array[
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::OrHash
            ],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        counterparty_id:,
        account_details: nil,
        # Can be `checking`, `savings` or `other`.
        account_type: nil,
        contact_details: nil,
        # An optional user-defined 180 character unique identifier.
        external_id: nil,
        # Specifies a ledger account object that will be created with the external
        # account. The resulting ledger account is linked to the external account for
        # auto-ledgering Payment objects. See
        # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        # for more details.
        ledger_account: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # A nickname for the external account. This is only for internal usage and won't
        # affect any payments
        name: nil,
        # Required if receiving wire payments.
        party_address: nil,
        party_identifier: nil,
        # If this value isn't provided, it will be inherited from the counterparty's name.
        party_name: nil,
        # Either `individual` or `business`.
        party_type: nil,
        # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        # you can pass the processor token in this field.
        plaid_processor_token: nil,
        routing_details: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            counterparty_id: T.nilable(String),
            account_details:
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::AccountDetail
              ],
            account_type: ModernTreasury::ExternalAccountType::OrSymbol,
            contact_details:
              T::Array[ModernTreasury::ContactDetailCreateRequest],
            external_id: T.nilable(String),
            ledger_account: ModernTreasury::LedgerAccountCreateRequest,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: ModernTreasury::AddressRequest,
            party_identifier: String,
            party_name: String,
            party_type:
              T.nilable(
                ModernTreasury::ExternalAccountCreateParams::PartyType::OrSymbol
              ),
            plaid_processor_token: String,
            routing_details:
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::RoutingDetail
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
              ModernTreasury::ExternalAccountCreateParams::AccountDetail,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account_number

        sig do
          returns(
            T.nilable(
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            )
          )
        end
        attr_reader :account_number_type

        sig do
          params(
            account_number_type:
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
          ).void
        end
        attr_writer :account_number_type

        sig do
          params(
            account_number: String,
            account_number_type:
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(account_number:, account_number_type: nil)
        end

        sig do
          override.returns(
            {
              account_number: String,
              account_number_type:
                ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module AccountNumberType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AU_NUMBER =
            T.let(
              :au_number,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          BASE_ADDRESS =
            T.let(
              :base_address,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          CARD_TOKEN =
            T.let(
              :card_token,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          CLABE =
            T.let(
              :clabe,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          ETHEREUM_ADDRESS =
            T.let(
              :ethereum_address,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          HK_NUMBER =
            T.let(
              :hk_number,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          IBAN =
            T.let(
              :iban,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          ID_NUMBER =
            T.let(
              :id_number,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          NZ_NUMBER =
            T.let(
              :nz_number,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          PAN =
            T.let(
              :pan,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          POLYGON_ADDRESS =
            T.let(
              :polygon_address,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          SG_NUMBER =
            T.let(
              :sg_number,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          SOLANA_ADDRESS =
            T.let(
              :solana_address,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          WALLET_ADDRESS =
            T.let(
              :wallet_address,
              ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExternalAccountCreateParams::PartyType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::ExternalAccountCreateParams::PartyType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::ExternalAccountCreateParams::PartyType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExternalAccountCreateParams::PartyType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :routing_number

        sig do
          returns(
            ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol
          )
        end
        attr_accessor :routing_number_type

        sig do
          returns(
            T.nilable(
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
            )
          )
        end
        attr_reader :payment_type

        sig do
          params(
            payment_type:
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
          ).void
        end
        attr_writer :payment_type

        sig do
          params(
            routing_number: String,
            routing_number_type:
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
            payment_type:
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(routing_number:, routing_number_type:, payment_type: nil)
        end

        sig do
          override.returns(
            {
              routing_number: String,
              routing_number_type:
                ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
              payment_type:
                ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module RoutingNumberType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABA =
            T.let(
              :aba,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          AU_BSB =
            T.let(
              :au_bsb,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          BR_CODIGO =
            T.let(
              :br_codigo,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CA_CPA =
            T.let(
              :ca_cpa,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CHIPS =
            T.let(
              :chips,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CNAPS =
            T.let(
              :cnaps,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          DK_INTERBANK_CLEARING_CODE =
            T.let(
              :dk_interbank_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          GB_SORT_CODE =
            T.let(
              :gb_sort_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HK_INTERBANK_CLEARING_CODE =
            T.let(
              :hk_interbank_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HU_INTERBANK_CLEARING_CODE =
            T.let(
              :hu_interbank_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ID_SKNBI_CODE =
            T.let(
              :id_sknbi_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          IL_BANK_CODE =
            T.let(
              :il_bank_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          IN_IFSC =
            T.let(
              :in_ifsc,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          JP_ZENGIN_CODE =
            T.let(
              :jp_zengin_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MY_BRANCH_CODE =
            T.let(
              :my_branch_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MX_BANK_IDENTIFIER =
            T.let(
              :mx_bank_identifier,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          NZ_NATIONAL_CLEARING_CODE =
            T.let(
              :nz_national_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          PL_NATIONAL_CLEARING_CODE =
            T.let(
              :pl_national_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SE_BANKGIRO_CLEARING_CODE =
            T.let(
              :se_bankgiro_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SG_INTERBANK_CLEARING_CODE =
            T.let(
              :sg_interbank_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SWIFT =
            T.let(
              :swift,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ZA_NATIONAL_CLEARING_CODE =
            T.let(
              :za_national_clearing_code,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PaymentType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ach,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          AU_BECS =
            T.let(
              :au_becs,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BACS =
            T.let(
              :bacs,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BASE =
            T.let(
              :base,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BOOK =
            T.let(
              :book,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CARD =
            T.let(
              :card,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CHATS =
            T.let(
              :chats,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CHECK =
            T.let(
              :check,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          DK_NETS =
            T.let(
              :dk_nets,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          EFT =
            T.let(
              :eft,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          ETHEREUM =
            T.let(
              :ethereum,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          GB_FPS =
            T.let(
              :gb_fps,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          HU_ICS =
            T.let(
              :hu_ics,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          INTERAC =
            T.let(
              :interac,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MASAV =
            T.let(
              :masav,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MX_CCEN =
            T.let(
              :mx_ccen,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NEFT =
            T.let(
              :neft,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NICS =
            T.let(
              :nics,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NZ_BECS =
            T.let(
              :nz_becs,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          POLYGON =
            T.let(
              :polygon,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RO_SENT =
            T.let(
              :ro_sent,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RTP =
            T.let(
              :rtp,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SEN =
            T.let(
              :sen,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SEPA =
            T.let(
              :sepa,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SG_GIRO =
            T.let(
              :sg_giro,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SIC =
            T.let(
              :sic,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SIGNET =
            T.let(
              :signet,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SKNBI =
            T.let(
              :sknbi,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SOLANA =
            T.let(
              :solana,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          WIRE =
            T.let(
              :wire,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          ZENGIN =
            T.let(
              :zengin,
              ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
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
