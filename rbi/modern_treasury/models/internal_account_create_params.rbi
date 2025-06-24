# typed: strong

module ModernTreasury
  module Models
    class InternalAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InternalAccountCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The identifier of the financial institution the account belongs to.
      sig { returns(String) }
      attr_accessor :connection_id

      # Either "USD" or "CAD". Internal accounts created at Increase only supports
      # "USD".
      sig do
        returns(ModernTreasury::InternalAccountCreateParams::Currency::OrSymbol)
      end
      attr_accessor :currency

      # The nickname of the account.
      sig { returns(String) }
      attr_accessor :name

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      attr_accessor :party_name

      # An array of AccountCapability objects that list the originating abilities of the
      # internal account and any relevant information for them.
      sig do
        returns(
          T.nilable(
            T::Array[
              ModernTreasury::InternalAccountCreateParams::AccountCapability
            ]
          )
        )
      end
      attr_reader :account_capabilities

      sig do
        params(
          account_capabilities:
            T::Array[
              ModernTreasury::InternalAccountCreateParams::AccountCapability::OrHash
            ]
        ).void
      end
      attr_writer :account_capabilities

      # The account type, used to provision the appropriate account at the financial
      # institution.
      sig do
        returns(
          T.nilable(
            ModernTreasury::InternalAccountCreateParams::AccountType::OrSymbol
          )
        )
      end
      attr_reader :account_type

      sig do
        params(
          account_type:
            ModernTreasury::InternalAccountCreateParams::AccountType::OrSymbol
        ).void
      end
      attr_writer :account_type

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The LegalEntity associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      # The parent internal account of this new account.
      sig { returns(T.nilable(String)) }
      attr_reader :parent_account_id

      sig { params(parent_account_id: String).void }
      attr_writer :parent_account_id

      # The address associated with the owner or null.
      sig do
        returns(
          T.nilable(ModernTreasury::InternalAccountCreateParams::PartyAddress)
        )
      end
      attr_reader :party_address

      sig do
        params(
          party_address:
            ModernTreasury::InternalAccountCreateParams::PartyAddress::OrHash
        ).void
      end
      attr_writer :party_address

      # A hash of vendor specific attributes that will be used when creating the account
      # at the vendor specified by the given connection.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :vendor_attributes

      sig { params(vendor_attributes: T::Hash[Symbol, String]).void }
      attr_writer :vendor_attributes

      sig do
        params(
          connection_id: String,
          currency:
            ModernTreasury::InternalAccountCreateParams::Currency::OrSymbol,
          name: String,
          party_name: String,
          account_capabilities:
            T::Array[
              ModernTreasury::InternalAccountCreateParams::AccountCapability::OrHash
            ],
          account_type:
            ModernTreasury::InternalAccountCreateParams::AccountType::OrSymbol,
          counterparty_id: String,
          legal_entity_id: String,
          parent_account_id: String,
          party_address:
            ModernTreasury::InternalAccountCreateParams::PartyAddress::OrHash,
          vendor_attributes: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The identifier of the financial institution the account belongs to.
        connection_id:,
        # Either "USD" or "CAD". Internal accounts created at Increase only supports
        # "USD".
        currency:,
        # The nickname of the account.
        name:,
        # The legal name of the entity which owns the account.
        party_name:,
        # An array of AccountCapability objects that list the originating abilities of the
        # internal account and any relevant information for them.
        account_capabilities: nil,
        # The account type, used to provision the appropriate account at the financial
        # institution.
        account_type: nil,
        # The Counterparty associated to this account.
        counterparty_id: nil,
        # The LegalEntity associated to this account.
        legal_entity_id: nil,
        # The parent internal account of this new account.
        parent_account_id: nil,
        # The address associated with the owner or null.
        party_address: nil,
        # A hash of vendor specific attributes that will be used when creating the account
        # at the vendor specified by the given connection.
        vendor_attributes: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            currency:
              ModernTreasury::InternalAccountCreateParams::Currency::OrSymbol,
            name: String,
            party_name: String,
            account_capabilities:
              T::Array[
                ModernTreasury::InternalAccountCreateParams::AccountCapability
              ],
            account_type:
              ModernTreasury::InternalAccountCreateParams::AccountType::OrSymbol,
            counterparty_id: String,
            legal_entity_id: String,
            parent_account_id: String,
            party_address:
              ModernTreasury::InternalAccountCreateParams::PartyAddress,
            vendor_attributes: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Either "USD" or "CAD". Internal accounts created at Increase only supports
      # "USD".
      module Currency
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InternalAccountCreateParams::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD =
          T.let(
            :USD,
            ModernTreasury::InternalAccountCreateParams::Currency::TaggedSymbol
          )
        CAD =
          T.let(
            :CAD,
            ModernTreasury::InternalAccountCreateParams::Currency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::InternalAccountCreateParams::Currency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class AccountCapability < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InternalAccountCreateParams::AccountCapability,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # One of `debit` or `credit`. Indicates the direction of money movement this
        # capability is responsible for.
        sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
        attr_accessor :direction

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # A unique reference assigned by your bank for tracking and recognizing payment
        # files. It is important this is formatted exactly how the bank assigned it.
        sig { returns(T.nilable(String)) }
        attr_accessor :identifier

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        # Indicates the the type of payment this capability is responsible for
        # originating.
        sig do
          returns(
            ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::OrSymbol
          )
        end
        attr_accessor :payment_type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            discarded_at: T.nilable(Time),
            identifier: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            payment_type:
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # One of `debit` or `credit`. Indicates the direction of money movement this
          # capability is responsible for.
          direction:,
          discarded_at:,
          # A unique reference assigned by your bank for tracking and recognizing payment
          # files. It is important this is formatted exactly how the bank assigned it.
          identifier:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          # Indicates the the type of payment this capability is responsible for
          # originating.
          payment_type:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              direction: ModernTreasury::TransactionDirection::OrSymbol,
              discarded_at: T.nilable(Time),
              identifier: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              payment_type:
                ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::OrSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Indicates the the type of payment this capability is responsible for
        # originating.
        module PaymentType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ach,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          AU_BECS =
            T.let(
              :au_becs,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          BACS =
            T.let(
              :bacs,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          BASE =
            T.let(
              :base,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          BOOK =
            T.let(
              :book,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          CARD =
            T.let(
              :card,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          CHATS =
            T.let(
              :chats,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          CHECK =
            T.let(
              :check,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          DK_NETS =
            T.let(
              :dk_nets,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          EFT =
            T.let(
              :eft,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          ETHEREUM =
            T.let(
              :ethereum,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          HU_ICS =
            T.let(
              :hu_ics,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          INTERAC =
            T.let(
              :interac,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          MASAV =
            T.let(
              :masav,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          MX_CCEN =
            T.let(
              :mx_ccen,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          NEFT =
            T.let(
              :neft,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          NICS =
            T.let(
              :nics,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          NZ_BECS =
            T.let(
              :nz_becs,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          POLYGON =
            T.let(
              :polygon,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          RO_SENT =
            T.let(
              :ro_sent,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          RTP =
            T.let(
              :rtp,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SEN =
            T.let(
              :sen,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SEPA =
            T.let(
              :sepa,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SG_GIRO =
            T.let(
              :sg_giro,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SIC =
            T.let(
              :sic,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SIGNET =
            T.let(
              :signet,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SKNBI =
            T.let(
              :sknbi,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          SOLANA =
            T.let(
              :solana,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          WIRE =
            T.let(
              :wire,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )
          ZENGIN =
            T.let(
              :zengin,
              ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The account type, used to provision the appropriate account at the financial
      # institution.
      module AccountType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::InternalAccountCreateParams::AccountType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE_WALLET =
          T.let(
            :base_wallet,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        CASH =
          T.let(
            :cash,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        CHECKING =
          T.let(
            :checking,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        CRYPTO_WALLET =
          T.let(
            :crypto_wallet,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        ETHEREUM_WALLET =
          T.let(
            :ethereum_wallet,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        GENERAL_LEDGER =
          T.let(
            :general_ledger,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        LOAN =
          T.let(
            :loan,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        NON_RESIDENT =
          T.let(
            :non_resident,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        OVERDRAFT =
          T.let(
            :overdraft,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        POLYGON_WALLET =
          T.let(
            :polygon_wallet,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        SAVINGS =
          T.let(
            :savings,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )
        SOLANA_WALLET =
          T.let(
            :solana_wallet,
            ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::InternalAccountCreateParams::AccountType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InternalAccountCreateParams::PartyAddress,
              ModernTreasury::Internal::AnyHash
            )
          end

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        # Locality or City.
        sig { returns(String) }
        attr_accessor :locality

        # The postal code of the address.
        sig { returns(String) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # The address associated with the owner or null.
        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Country code conforms to [ISO 3166-1 alpha-2]
          country:,
          line1:,
          # Locality or City.
          locality:,
          # The postal code of the address.
          postal_code:,
          # Region or State.
          region:,
          line2: nil
        )
        end

        sig do
          override.returns(
            {
              country: String,
              line1: String,
              locality: String,
              postal_code: String,
              region: String,
              line2: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
