# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::CounterpartyCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # A human friendly name for this counterparty.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :body_external_id

      sig do
        returns(T.nilable(ModernTreasury::CounterpartyCreateParams::Accounting))
      end
      attr_reader :accounting

      sig do
        params(
          accounting:
            ModernTreasury::CounterpartyCreateParams::Accounting::OrHash
        ).void
      end
      attr_writer :accounting

      # The accounts for this counterparty.
      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::CounterpartyCreateParams::Account])
        )
      end
      attr_reader :accounts

      sig do
        params(
          accounts:
            T::Array[ModernTreasury::CounterpartyCreateParams::Account::OrHash]
        ).void
      end
      attr_writer :accounts

      # The counterparty's email.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      # or `vendor`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::CounterpartyCreateParams::LedgerType::OrSymbol
          )
        )
      end
      attr_reader :ledger_type

      sig do
        params(
          ledger_type:
            ModernTreasury::CounterpartyCreateParams::LedgerType::OrSymbol
        ).void
      end
      attr_writer :ledger_type

      sig do
        returns(
          T.nilable(ModernTreasury::CounterpartyCreateParams::LegalEntity)
        )
      end
      attr_reader :legal_entity

      sig do
        params(
          legal_entity:
            ModernTreasury::CounterpartyCreateParams::LegalEntity::OrHash
        ).void
      end
      attr_writer :legal_entity

      # The id of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Send an email to the counterparty whenever an associated payment order is sent
      # to the bank.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_remittance_advice

      sig { params(send_remittance_advice: T::Boolean).void }
      attr_writer :send_remittance_advice

      # Either a valid SSN or EIN.
      sig { returns(T.nilable(String)) }
      attr_reader :taxpayer_identifier

      sig { params(taxpayer_identifier: String).void }
      attr_writer :taxpayer_identifier

      # The verification status of the counterparty.
      sig do
        returns(
          T.nilable(
            ModernTreasury::CounterpartyCreateParams::VerificationStatus::OrSymbol
          )
        )
      end
      attr_reader :verification_status

      sig do
        params(
          verification_status:
            ModernTreasury::CounterpartyCreateParams::VerificationStatus::OrSymbol
        ).void
      end
      attr_writer :verification_status

      sig do
        params(
          name: T.nilable(String),
          body_external_id: T.nilable(String),
          accounting:
            ModernTreasury::CounterpartyCreateParams::Accounting::OrHash,
          accounts:
            T::Array[ModernTreasury::CounterpartyCreateParams::Account::OrHash],
          email: T.nilable(String),
          ledger_type:
            ModernTreasury::CounterpartyCreateParams::LedgerType::OrSymbol,
          legal_entity:
            ModernTreasury::CounterpartyCreateParams::LegalEntity::OrHash,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          verification_status:
            ModernTreasury::CounterpartyCreateParams::VerificationStatus::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A human friendly name for this counterparty.
        name:,
        # An optional user-defined 180 character unique identifier.
        body_external_id: nil,
        accounting: nil,
        # The accounts for this counterparty.
        accounts: nil,
        # The counterparty's email.
        email: nil,
        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        # or `vendor`.
        ledger_type: nil,
        legal_entity: nil,
        # The id of the legal entity.
        legal_entity_id: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # Send an email to the counterparty whenever an associated payment order is sent
        # to the bank.
        send_remittance_advice: nil,
        # Either a valid SSN or EIN.
        taxpayer_identifier: nil,
        # The verification status of the counterparty.
        verification_status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: T.nilable(String),
            body_external_id: T.nilable(String),
            accounting: ModernTreasury::CounterpartyCreateParams::Accounting,
            accounts:
              T::Array[ModernTreasury::CounterpartyCreateParams::Account],
            email: T.nilable(String),
            ledger_type:
              ModernTreasury::CounterpartyCreateParams::LedgerType::OrSymbol,
            legal_entity: ModernTreasury::CounterpartyCreateParams::LegalEntity,
            legal_entity_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            send_remittance_advice: T::Boolean,
            taxpayer_identifier: String,
            verification_status:
              ModernTreasury::CounterpartyCreateParams::VerificationStatus::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Accounting < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::CounterpartyCreateParams::Accounting,
              ModernTreasury::Internal::AnyHash
            )
          end

        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        # or `vendor`.
        sig do
          returns(
            T.nilable(
              ModernTreasury::CounterpartyCreateParams::Accounting::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              ModernTreasury::CounterpartyCreateParams::Accounting::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            type:
              ModernTreasury::CounterpartyCreateParams::Accounting::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # An optional type to auto-sync the counterparty to your ledger. Either `customer`
          # or `vendor`.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              type:
                ModernTreasury::CounterpartyCreateParams::Accounting::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        # or `vendor`.
        module Type
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::CounterpartyCreateParams::Accounting::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              ModernTreasury::CounterpartyCreateParams::Accounting::Type::TaggedSymbol
            )
          VENDOR =
            T.let(
              :vendor,
              ModernTreasury::CounterpartyCreateParams::Accounting::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Accounting::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Account < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::CounterpartyCreateParams::Account,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail
              ]
            )
          )
        end
        attr_reader :account_details

        sig do
          params(
            account_details:
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::OrHash
              ]
          ).void
        end
        attr_writer :account_details

        # Can be `checking`, `savings` or `other`.
        sig do
          returns(T.nilable(ModernTreasury::ExternalAccountType::OrSymbol))
        end
        attr_reader :account_type

        sig do
          params(
            account_type: ModernTreasury::ExternalAccountType::OrSymbol
          ).void
        end
        attr_writer :account_type

        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::ContactDetailCreateRequest])
          )
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

        sig do
          params(party_address: ModernTreasury::AddressRequest::OrHash).void
        end
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
              ModernTreasury::CounterpartyCreateParams::Account::PartyType::OrSymbol
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
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail
              ]
            )
          )
        end
        attr_reader :routing_details

        sig do
          params(
            routing_details:
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::OrHash
              ]
          ).void
        end
        attr_writer :routing_details

        sig do
          params(
            account_details:
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::OrHash
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
                ModernTreasury::CounterpartyCreateParams::Account::PartyType::OrSymbol
              ),
            plaid_processor_token: String,
            routing_details:
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
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
          routing_details: nil
        )
        end

        sig do
          override.returns(
            {
              account_details:
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::Account::AccountDetail
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
                  ModernTreasury::CounterpartyCreateParams::Account::PartyType::OrSymbol
                ),
              plaid_processor_token: String,
              routing_details:
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail
                ]
            }
          )
        end
        def to_hash
        end

        class AccountDetail < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account_number

          sig do
            returns(
              T.nilable(
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
              )
            )
          end
          attr_reader :account_number_type

          sig do
            params(
              account_number_type:
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
            ).void
          end
          attr_writer :account_number_type

          sig do
            params(
              account_number: String,
              account_number_type:
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(account_number:, account_number_type: nil)
          end

          sig do
            override.returns(
              {
                account_number: String,
                account_number_type:
                  ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
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
                  ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AU_NUMBER =
              T.let(
                :au_number,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            BASE_ADDRESS =
              T.let(
                :base_address,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            CLABE =
              T.let(
                :clabe,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            ETHEREUM_ADDRESS =
              T.let(
                :ethereum_address,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            HK_NUMBER =
              T.let(
                :hk_number,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            IBAN =
              T.let(
                :iban,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            ID_NUMBER =
              T.let(
                :id_number,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            NZ_NUMBER =
              T.let(
                :nz_number,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            PAN =
              T.let(
                :pan,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            POLYGON_ADDRESS =
              T.let(
                :polygon_address,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            SG_NUMBER =
              T.let(
                :sg_number,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            SOLANA_ADDRESS =
              T.let(
                :solana_address,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            WALLET_ADDRESS =
              T.let(
                :wallet_address,
                ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
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
                ModernTreasury::CounterpartyCreateParams::Account::PartyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::CounterpartyCreateParams::Account::PartyType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::CounterpartyCreateParams::Account::PartyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::Account::PartyType::TaggedSymbol
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
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :routing_number

          sig do
            returns(
              ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol
            )
          end
          attr_accessor :routing_number_type

          sig do
            returns(
              T.nilable(
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
              )
            )
          end
          attr_reader :payment_type

          sig do
            params(
              payment_type:
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
            ).void
          end
          attr_writer :payment_type

          sig do
            params(
              routing_number: String,
              routing_number_type:
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol,
              payment_type:
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(routing_number:, routing_number_type:, payment_type: nil)
          end

          sig do
            override.returns(
              {
                routing_number: String,
                routing_number_type:
                  ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol,
                payment_type:
                  ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
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
                  ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ABA =
              T.let(
                :aba,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            AU_BSB =
              T.let(
                :au_bsb,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            BR_CODIGO =
              T.let(
                :br_codigo,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            CA_CPA =
              T.let(
                :ca_cpa,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            CHIPS =
              T.let(
                :chips,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            CNAPS =
              T.let(
                :cnaps,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            DK_INTERBANK_CLEARING_CODE =
              T.let(
                :dk_interbank_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            GB_SORT_CODE =
              T.let(
                :gb_sort_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            HK_INTERBANK_CLEARING_CODE =
              T.let(
                :hk_interbank_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            HU_INTERBANK_CLEARING_CODE =
              T.let(
                :hu_interbank_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            ID_SKNBI_CODE =
              T.let(
                :id_sknbi_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            IL_BANK_CODE =
              T.let(
                :il_bank_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            IN_IFSC =
              T.let(
                :in_ifsc,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            JP_ZENGIN_CODE =
              T.let(
                :jp_zengin_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            MY_BRANCH_CODE =
              T.let(
                :my_branch_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            MX_BANK_IDENTIFIER =
              T.let(
                :mx_bank_identifier,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            NZ_NATIONAL_CLEARING_CODE =
              T.let(
                :nz_national_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            PL_NATIONAL_CLEARING_CODE =
              T.let(
                :pl_national_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            SE_BANKGIRO_CLEARING_CODE =
              T.let(
                :se_bankgiro_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            SG_INTERBANK_CLEARING_CODE =
              T.let(
                :sg_interbank_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            SWIFT =
              T.let(
                :swift,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            ZA_NATIONAL_CLEARING_CODE =
              T.let(
                :za_national_clearing_code,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
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
                  ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACH =
              T.let(
                :ach,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            AU_BECS =
              T.let(
                :au_becs,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            BACS =
              T.let(
                :bacs,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            BASE =
              T.let(
                :base,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            BOOK =
              T.let(
                :book,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CARD =
              T.let(
                :card,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CHATS =
              T.let(
                :chats,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CHECK =
              T.let(
                :check,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CROSS_BORDER =
              T.let(
                :cross_border,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            DK_NETS =
              T.let(
                :dk_nets,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            EFT =
              T.let(
                :eft,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            ETHEREUM =
              T.let(
                :ethereum,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            GB_FPS =
              T.let(
                :gb_fps,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            HU_ICS =
              T.let(
                :hu_ics,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            INTERAC =
              T.let(
                :interac,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            MASAV =
              T.let(
                :masav,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            MX_CCEN =
              T.let(
                :mx_ccen,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            NEFT =
              T.let(
                :neft,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            NICS =
              T.let(
                :nics,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            NZ_BECS =
              T.let(
                :nz_becs,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            PL_ELIXIR =
              T.let(
                :pl_elixir,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            POLYGON =
              T.let(
                :polygon,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            PROVXCHANGE =
              T.let(
                :provxchange,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            RO_SENT =
              T.let(
                :ro_sent,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            RTP =
              T.let(
                :rtp,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SE_BANKGIROT =
              T.let(
                :se_bankgirot,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SEN =
              T.let(
                :sen,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SEPA =
              T.let(
                :sepa,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SG_GIRO =
              T.let(
                :sg_giro,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SIC =
              T.let(
                :sic,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SIGNET =
              T.let(
                :signet,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SKNBI =
              T.let(
                :sknbi,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SOLANA =
              T.let(
                :solana,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            WIRE =
              T.let(
                :wire,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            ZENGIN =
              T.let(
                :zengin,
                ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      # or `vendor`.
      module LedgerType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::CounterpartyCreateParams::LedgerType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER =
          T.let(
            :customer,
            ModernTreasury::CounterpartyCreateParams::LedgerType::TaggedSymbol
          )
        VENDOR =
          T.let(
            :vendor,
            ModernTreasury::CounterpartyCreateParams::LedgerType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::CounterpartyCreateParams::LedgerType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class LegalEntity < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::CounterpartyCreateParams::LegalEntity,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The type of legal entity.
        sig do
          returns(
            ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol
          )
        end
        attr_accessor :legal_entity_type

        # A list of addresses for the entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::LegalEntityAddressCreateRequest])
          )
        end
        attr_reader :addresses

        sig do
          params(
            addresses:
              T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash]
          ).void
        end
        attr_writer :addresses

        sig { returns(T.nilable(ModernTreasury::LegalEntityBankSettings)) }
        attr_reader :bank_settings

        sig do
          params(
            bank_settings:
              T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash)
          ).void
        end
        attr_writer :bank_settings

        # The business's legal business name.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # The country of citizenship for an individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :citizenship_country

        sig { returns(T.nilable(ModernTreasury::LegalEntityComplianceDetail)) }
        attr_reader :compliance_details

        sig do
          params(
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash)
          ).void
        end
        attr_writer :compliance_details

        # A business's formation date (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_formed

        # An individual's date of birth (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_of_birth

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :doing_business_as_names

        sig { params(doing_business_as_names: T::Array[String]).void }
        attr_writer :doing_business_as_names

        # The entity's primary email.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # An individual's first name.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # A list of identifications for the legal entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::IdentificationCreateRequest])
          )
        end
        attr_reader :identifications

        sig do
          params(
            identifications:
              T::Array[ModernTreasury::IdentificationCreateRequest::OrHash]
          ).void
        end
        attr_writer :identifications

        # A list of industry classifications for the legal entity.
        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::LegalEntityIndustryClassification]
            )
          )
        end
        attr_reader :industry_classifications

        sig do
          params(
            industry_classifications:
              T::Array[
                ModernTreasury::LegalEntityIndustryClassification::OrHash
              ]
          ).void
        end
        attr_writer :industry_classifications

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The legal entity associations and its child legal entities.
        sig do
          returns(
            T.nilable(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation
              ]
            )
          )
        end
        attr_accessor :legal_entity_associations

        # The business's legal structure.
        sig do
          returns(
            T.nilable(
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol
            )
          )
        end
        attr_accessor :legal_structure

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig do
          returns(
            T.nilable(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::PhoneNumber
              ]
            )
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers:
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::PhoneNumber::OrHash
              ]
          ).void
        end
        attr_writer :phone_numbers

        # Whether the individual is a politically exposed person.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :politically_exposed_person

        # An individual's preferred name.
        sig { returns(T.nilable(String)) }
        attr_accessor :preferred_name

        # An individual's prefix.
        sig { returns(T.nilable(String)) }
        attr_accessor :prefix

        # The risk rating of the legal entity. One of low, medium, high.
        sig do
          returns(
            T.nilable(
              ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol
            )
          )
        end
        attr_accessor :risk_rating

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig do
          returns(T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail))
        end
        attr_reader :wealth_and_employment_details

        sig do
          params(
            wealth_and_employment_details:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
              )
          ).void
        end
        attr_writer :wealth_and_employment_details

        # The entity's primary website URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        sig do
          params(
            legal_entity_type:
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol,
            addresses:
              T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash],
            bank_settings:
              T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications:
              T::Array[ModernTreasury::IdentificationCreateRequest::OrHash],
            industry_classifications:
              T::Array[
                ModernTreasury::LegalEntityIndustryClassification::OrHash
              ],
            last_name: T.nilable(String),
            legal_entity_associations:
              T.nilable(
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::OrHash
                ]
              ),
            legal_structure:
              T.nilable(
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol
              ),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers:
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::PhoneNumber::OrHash
              ],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating:
              T.nilable(
                ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol
              ),
            suffix: T.nilable(String),
            wealth_and_employment_details:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
              ),
            website: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of legal entity.
          legal_entity_type:,
          # A list of addresses for the entity.
          addresses: nil,
          bank_settings: nil,
          # The business's legal business name.
          business_name: nil,
          # The country of citizenship for an individual.
          citizenship_country: nil,
          compliance_details: nil,
          # A business's formation date (YYYY-MM-DD).
          date_formed: nil,
          # An individual's date of birth (YYYY-MM-DD).
          date_of_birth: nil,
          doing_business_as_names: nil,
          # The entity's primary email.
          email: nil,
          # An individual's first name.
          first_name: nil,
          # A list of identifications for the legal entity.
          identifications: nil,
          # A list of industry classifications for the legal entity.
          industry_classifications: nil,
          # An individual's last name.
          last_name: nil,
          # The legal entity associations and its child legal entities.
          legal_entity_associations: nil,
          # The business's legal structure.
          legal_structure: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          # An individual's middle name.
          middle_name: nil,
          phone_numbers: nil,
          # Whether the individual is a politically exposed person.
          politically_exposed_person: nil,
          # An individual's preferred name.
          preferred_name: nil,
          # An individual's prefix.
          prefix: nil,
          # The risk rating of the legal entity. One of low, medium, high.
          risk_rating: nil,
          # An individual's suffix.
          suffix: nil,
          wealth_and_employment_details: nil,
          # The entity's primary website URL.
          website: nil
        )
        end

        sig do
          override.returns(
            {
              legal_entity_type:
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol,
              addresses:
                T::Array[ModernTreasury::LegalEntityAddressCreateRequest],
              bank_settings: T.nilable(ModernTreasury::LegalEntityBankSettings),
              business_name: T.nilable(String),
              citizenship_country: T.nilable(String),
              compliance_details:
                T.nilable(ModernTreasury::LegalEntityComplianceDetail),
              date_formed: T.nilable(Date),
              date_of_birth: T.nilable(Date),
              doing_business_as_names: T::Array[String],
              email: T.nilable(String),
              first_name: T.nilable(String),
              identifications:
                T::Array[ModernTreasury::IdentificationCreateRequest],
              industry_classifications:
                T::Array[ModernTreasury::LegalEntityIndustryClassification],
              last_name: T.nilable(String),
              legal_entity_associations:
                T.nilable(
                  T::Array[
                    ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation
                  ]
                ),
              legal_structure:
                T.nilable(
                  ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol
                ),
              metadata: T::Hash[Symbol, String],
              middle_name: T.nilable(String),
              phone_numbers:
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::LegalEntity::PhoneNumber
                ],
              politically_exposed_person: T.nilable(T::Boolean),
              preferred_name: T.nilable(String),
              prefix: T.nilable(String),
              risk_rating:
                T.nilable(
                  ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol
                ),
              suffix: T.nilable(String),
              wealth_and_employment_details:
                T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail),
              website: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The type of legal entity.
        module LegalEntityType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class LegalEntityAssociation < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
              ]
            )
          end
          attr_accessor :relationship_types

          # The child legal entity.
          sig { returns(T.nilable(ModernTreasury::ChildLegalEntityCreate)) }
          attr_reader :child_legal_entity

          sig do
            params(
              child_legal_entity: ModernTreasury::ChildLegalEntityCreate::OrHash
            ).void
          end
          attr_writer :child_legal_entity

          # The ID of the child legal entity.
          sig { returns(T.nilable(String)) }
          attr_reader :child_legal_entity_id

          sig { params(child_legal_entity_id: String).void }
          attr_writer :child_legal_entity_id

          # The child entity's ownership percentage iff they are a beneficial owner.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :ownership_percentage

          # The job title of the child entity at the parent entity.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig do
            params(
              relationship_types:
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
                ],
              child_legal_entity:
                ModernTreasury::ChildLegalEntityCreate::OrHash,
              child_legal_entity_id: String,
              ownership_percentage: T.nilable(Integer),
              title: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            relationship_types:,
            # The child legal entity.
            child_legal_entity: nil,
            # The ID of the child legal entity.
            child_legal_entity_id: nil,
            # The child entity's ownership percentage iff they are a beneficial owner.
            ownership_percentage: nil,
            # The job title of the child entity at the parent entity.
            title: nil
          )
          end

          sig do
            override.returns(
              {
                relationship_types:
                  T::Array[
                    ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
                  ],
                child_legal_entity: ModernTreasury::ChildLegalEntityCreate,
                child_legal_entity_id: String,
                ownership_percentage: T.nilable(Integer),
                title: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # A list of relationship types for how the child entity relates to parent entity.
          module RelationshipType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTHORIZED_SIGNER =
              T.let(
                :authorized_signer,
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
              )
            BENEFICIAL_OWNER =
              T.let(
                :beneficial_owner,
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
              )
            CONTROL_PERSON =
              T.let(
                :control_person,
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The business's legal structure.
        module LegalStructure
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CORPORATION =
            T.let(
              :corporation,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          LLC =
            T.let(
              :llc,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          TRUST =
            T.let(
              :trust,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::CounterpartyCreateParams::LegalEntity::PhoneNumber,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # A list of phone numbers in E.164 format.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number: nil)
          end

          sig { override.returns({ phone_number: String }) }
          def to_hash
          end
        end

        # The risk rating of the legal entity. One of low, medium, high.
        module RiskRating
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOW =
            T.let(
              :low,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The verification status of the counterparty.
      module VerificationStatus
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::CounterpartyCreateParams::VerificationStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DENIED =
          T.let(
            :denied,
            ModernTreasury::CounterpartyCreateParams::VerificationStatus::TaggedSymbol
          )
        NEEDS_APPROVAL =
          T.let(
            :needs_approval,
            ModernTreasury::CounterpartyCreateParams::VerificationStatus::TaggedSymbol
          )
        UNVERIFIED =
          T.let(
            :unverified,
            ModernTreasury::CounterpartyCreateParams::VerificationStatus::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            ModernTreasury::CounterpartyCreateParams::VerificationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::CounterpartyCreateParams::VerificationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
