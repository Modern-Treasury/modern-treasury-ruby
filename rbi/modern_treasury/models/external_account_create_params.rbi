# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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
        returns(
          T.nilable(
            T::Array[ModernTreasury::ExternalAccountCreateParams::ContactDetail]
          )
        )
      end
      attr_reader :contact_details

      sig do
        params(
          contact_details:
            T::Array[
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::OrHash
            ]
        ).void
      end
      attr_writer :contact_details

      # Specifies a ledger account object that will be created with the external
      # account. The resulting ledger account is linked to the external account for
      # auto-ledgering Payment objects. See
      # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
      # for more details.
      sig do
        returns(
          T.nilable(ModernTreasury::ExternalAccountCreateParams::LedgerAccount)
        )
      end
      attr_reader :ledger_account

      sig do
        params(
          ledger_account:
            ModernTreasury::ExternalAccountCreateParams::LedgerAccount::OrHash
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
      sig do
        returns(
          T.nilable(ModernTreasury::ExternalAccountCreateParams::PartyAddress)
        )
      end
      attr_reader :party_address

      sig do
        params(
          party_address:
            ModernTreasury::ExternalAccountCreateParams::PartyAddress::OrHash
        ).void
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
            T::Array[
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::OrHash
            ],
          ledger_account:
            ModernTreasury::ExternalAccountCreateParams::LedgerAccount::OrHash,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address:
            ModernTreasury::ExternalAccountCreateParams::PartyAddress::OrHash,
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
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::ContactDetail
              ],
            ledger_account:
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address:
              ModernTreasury::ExternalAccountCreateParams::PartyAddress,
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
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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
          CLABE =
            T.let(
              :clabe,
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
          SG_NUMBER =
            T.let(
              :sg_number,
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

      class ContactDetail < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :contact_identifier

        sig { params(contact_identifier: String).void }
        attr_writer :contact_identifier

        sig do
          returns(
            T.nilable(
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
            )
          )
        end
        attr_reader :contact_identifier_type

        sig do
          params(
            contact_identifier_type:
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
          ).void
        end
        attr_writer :contact_identifier_type

        sig do
          params(
            contact_identifier: String,
            contact_identifier_type:
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(contact_identifier: nil, contact_identifier_type: nil)
        end

        sig do
          override.returns(
            {
              contact_identifier: String,
              contact_identifier_type:
                ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module ContactIdentifierType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          WEBSITE =
            T.let(
              :website,
              ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class LedgerAccount < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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
        sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
        attr_accessor :normal_balance

        # The currency exponent of the ledger account.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :currency_exponent

        # The description of the ledger account.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The array of ledger account category ids that this ledger account should be a
        # child of.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :ledger_account_category_ids

        sig { params(ledger_account_category_ids: T::Array[String]).void }
        attr_writer :ledger_account_category_ids

        # If the ledger account links to another object in Modern Treasury, the id will be
        # populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        attr_reader :ledgerable_id

        sig { params(ledgerable_id: String).void }
        attr_writer :ledgerable_id

        # If the ledger account links to another object in Modern Treasury, the type will
        # be populated here, otherwise null. The value is one of internal_account or
        # external_account.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
            )
          )
        end
        attr_reader :ledgerable_type

        sig do
          params(
            ledgerable_type:
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
          ).void
        end
        attr_writer :ledgerable_type

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # Specifies a ledger account object that will be created with the external
        # account. The resulting ledger account is linked to the external account for
        # auto-ledgering Payment objects. See
        # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        # for more details.
        sig do
          params(
            currency: String,
            ledger_id: String,
            name: String,
            normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
            currency_exponent: T.nilable(Integer),
            description: T.nilable(String),
            ledger_account_category_ids: T::Array[String],
            ledgerable_id: String,
            ledgerable_type:
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol,
            metadata: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency of the ledger account.
          currency:,
          # The id of the ledger that this account belongs to.
          ledger_id:,
          # The name of the ledger account.
          name:,
          # The normal balance of the ledger account.
          normal_balance:,
          # The currency exponent of the ledger account.
          currency_exponent: nil,
          # The description of the ledger account.
          description: nil,
          # The array of ledger account category ids that this ledger account should be a
          # child of.
          ledger_account_category_ids: nil,
          # If the ledger account links to another object in Modern Treasury, the id will be
          # populated here, otherwise null.
          ledgerable_id: nil,
          # If the ledger account links to another object in Modern Treasury, the type will
          # be populated here, otherwise null. The value is one of internal_account or
          # external_account.
          ledgerable_type: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              currency: String,
              ledger_id: String,
              name: String,
              normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              ledger_account_category_ids: T::Array[String],
              ledgerable_id: String,
              ledgerable_type:
                ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end

        # If the ledger account links to another object in Modern Treasury, the type will
        # be populated here, otherwise null. The value is one of internal_account or
        # external_account.
        module LedgerableType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COUNTERPARTY =
            T.let(
              :counterparty,
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          EXTERNAL_ACCOUNT =
            T.let(
              :external_account,
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          INTERNAL_ACCOUNT =
            T.let(
              :internal_account,
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          VIRTUAL_ACCOUNT =
            T.let(
              :virtual_account,
              ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # Locality or City.
        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(T.nilable(String)) }
        attr_accessor :region

        # Required if receiving wire payments.
        sig do
          params(
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Country code conforms to [ISO 3166-1 alpha-2]
          country: nil,
          line1: nil,
          line2: nil,
          # Locality or City.
          locality: nil,
          # The postal code of the address.
          postal_code: nil,
          # Region or State.
          region: nil
        )
        end

        sig do
          override.returns(
            {
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            }
          )
        end
        def to_hash
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
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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
