# typed: strong

module ModernTreasury
  module Models
    class InternalAccount < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InternalAccount,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # An array of AccountCapability objects that list the originating abilities of the
      # internal account and any relevant information for them.
      sig do
        returns(T::Array[ModernTreasury::InternalAccount::AccountCapability])
      end
      attr_accessor :account_capabilities

      # An array of account detail objects.
      sig { returns(T::Array[ModernTreasury::AccountDetail]) }
      attr_accessor :account_details

      # Can be checking, savings or other.
      sig do
        returns(
          T.nilable(ModernTreasury::InternalAccount::AccountType::TaggedSymbol)
        )
      end
      attr_accessor :account_type

      # Specifies which financial institution the accounts belong to.
      sig { returns(ModernTreasury::Connection) }
      attr_reader :connection

      sig { params(connection: ModernTreasury::Connection::OrHash).void }
      attr_writer :connection

      # If the internal account links to a contra ledger account in Modern Treasury, the
      # id of the contra ledger account will be populated here.
      sig { returns(T.nilable(String)) }
      attr_accessor :contra_ledger_account_id

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the account.
      sig { returns(ModernTreasury::Currency::TaggedSymbol) }
      attr_accessor :currency

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # If the internal account links to a ledger account in Modern Treasury, the id of
      # the ledger account will be populated here.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      # The Legal Entity associated to this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # A nickname for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      # The parent InternalAccount of this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_account_id

      # The address associated with the owner or null.
      sig { returns(T.nilable(ModernTreasury::Address)) }
      attr_reader :party_address

      sig do
        params(party_address: T.nilable(ModernTreasury::Address::OrHash)).void
      end
      attr_writer :party_address

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      attr_accessor :party_name

      # Either individual or business.
      sig do
        returns(
          T.nilable(ModernTreasury::InternalAccount::PartyType::TaggedSymbol)
        )
      end
      attr_accessor :party_type

      # An array of routing detail objects.
      sig { returns(T::Array[ModernTreasury::RoutingDetail]) }
      attr_accessor :routing_details

      # The internal account status.
      sig do
        returns(
          T.nilable(ModernTreasury::InternalAccount::Status::TaggedSymbol)
        )
      end
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      # The vendor ID associated with this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_id

      sig do
        params(
          id: String,
          account_capabilities:
            T::Array[
              ModernTreasury::InternalAccount::AccountCapability::OrHash
            ],
          account_details: T::Array[ModernTreasury::AccountDetail::OrHash],
          account_type:
            T.nilable(ModernTreasury::InternalAccount::AccountType::OrSymbol),
          connection: ModernTreasury::Connection::OrHash,
          contra_ledger_account_id: T.nilable(String),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: ModernTreasury::Currency::OrSymbol,
          external_id: T.nilable(String),
          ledger_account_id: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          parent_account_id: T.nilable(String),
          party_address: T.nilable(ModernTreasury::Address::OrHash),
          party_name: String,
          party_type:
            T.nilable(ModernTreasury::InternalAccount::PartyType::OrSymbol),
          routing_details: T::Array[ModernTreasury::RoutingDetail::OrHash],
          status: T.nilable(ModernTreasury::InternalAccount::Status::OrSymbol),
          updated_at: Time,
          vendor_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # An array of AccountCapability objects that list the originating abilities of the
        # internal account and any relevant information for them.
        account_capabilities:,
        # An array of account detail objects.
        account_details:,
        # Can be checking, savings or other.
        account_type:,
        # Specifies which financial institution the accounts belong to.
        connection:,
        # If the internal account links to a contra ledger account in Modern Treasury, the
        # id of the contra ledger account will be populated here.
        contra_ledger_account_id:,
        # The Counterparty associated to this account.
        counterparty_id:,
        created_at:,
        # The currency of the account.
        currency:,
        # An optional user-defined 180 character unique identifier.
        external_id:,
        # If the internal account links to a ledger account in Modern Treasury, the id of
        # the ledger account will be populated here.
        ledger_account_id:,
        # The Legal Entity associated to this account.
        legal_entity_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # A nickname for the account.
        name:,
        object:,
        # The parent InternalAccount of this account.
        parent_account_id:,
        # The address associated with the owner or null.
        party_address:,
        # The legal name of the entity which owns the account.
        party_name:,
        # Either individual or business.
        party_type:,
        # An array of routing detail objects.
        routing_details:,
        # The internal account status.
        status:,
        updated_at:,
        # The vendor ID associated with this account.
        vendor_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_capabilities:
              T::Array[ModernTreasury::InternalAccount::AccountCapability],
            account_details: T::Array[ModernTreasury::AccountDetail],
            account_type:
              T.nilable(
                ModernTreasury::InternalAccount::AccountType::TaggedSymbol
              ),
            connection: ModernTreasury::Connection,
            contra_ledger_account_id: T.nilable(String),
            counterparty_id: T.nilable(String),
            created_at: Time,
            currency: ModernTreasury::Currency::TaggedSymbol,
            external_id: T.nilable(String),
            ledger_account_id: T.nilable(String),
            legal_entity_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            parent_account_id: T.nilable(String),
            party_address: T.nilable(ModernTreasury::Address),
            party_name: String,
            party_type:
              T.nilable(
                ModernTreasury::InternalAccount::PartyType::TaggedSymbol
              ),
            routing_details: T::Array[ModernTreasury::RoutingDetail],
            status:
              T.nilable(ModernTreasury::InternalAccount::Status::TaggedSymbol),
            updated_at: Time,
            vendor_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class AccountCapability < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InternalAccount::AccountCapability,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # One of `debit` or `credit`. Indicates the direction of money movement this
        # capability is responsible for.
        sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
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
            ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
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
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::OrSymbol,
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
              direction: ModernTreasury::TransactionDirection::TaggedSymbol,
              discarded_at: T.nilable(Time),
              identifier: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              payment_type:
                ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol,
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
                ModernTreasury::InternalAccount::AccountCapability::PaymentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ach,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          AU_BECS =
            T.let(
              :au_becs,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          BACS =
            T.let(
              :bacs,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          BASE =
            T.let(
              :base,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          BOOK =
            T.let(
              :book,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          CARD =
            T.let(
              :card,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          CHATS =
            T.let(
              :chats,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          CHECK =
            T.let(
              :check,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          DK_NETS =
            T.let(
              :dk_nets,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          EFT =
            T.let(
              :eft,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          ETHEREUM =
            T.let(
              :ethereum,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          GB_FPS =
            T.let(
              :gb_fps,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          HU_ICS =
            T.let(
              :hu_ics,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          INTERAC =
            T.let(
              :interac,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          MASAV =
            T.let(
              :masav,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          MX_CCEN =
            T.let(
              :mx_ccen,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          NEFT =
            T.let(
              :neft,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          NICS =
            T.let(
              :nics,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          NZ_BECS =
            T.let(
              :nz_becs,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          POLYGON =
            T.let(
              :polygon,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          RO_SENT =
            T.let(
              :ro_sent,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          RTP =
            T.let(
              :rtp,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SEN =
            T.let(
              :sen,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SEPA =
            T.let(
              :sepa,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SG_GIRO =
            T.let(
              :sg_giro,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SIC =
            T.let(
              :sic,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SIGNET =
            T.let(
              :signet,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SKNBI =
            T.let(
              :sknbi,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          SOLANA =
            T.let(
              :solana,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          WIRE =
            T.let(
              :wire,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )
          ZENGIN =
            T.let(
              :zengin,
              ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::InternalAccount::AccountCapability::PaymentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Can be checking, savings or other.
      module AccountType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InternalAccount::AccountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE_WALLET =
          T.let(
            :base_wallet,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        CASH =
          T.let(
            :cash,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        CHECKING =
          T.let(
            :checking,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        CRYPTO_WALLET =
          T.let(
            :crypto_wallet,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        ETHEREUM_WALLET =
          T.let(
            :ethereum_wallet,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        GENERAL_LEDGER =
          T.let(
            :general_ledger,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        LOAN =
          T.let(
            :loan,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        NON_RESIDENT =
          T.let(
            :non_resident,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        OVERDRAFT =
          T.let(
            :overdraft,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        POLYGON_WALLET =
          T.let(
            :polygon_wallet,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        SAVINGS =
          T.let(
            :savings,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )
        SOLANA_WALLET =
          T.let(
            :solana_wallet,
            ModernTreasury::InternalAccount::AccountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::InternalAccount::AccountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Either individual or business.
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InternalAccount::PartyType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::InternalAccount::PartyType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::InternalAccount::PartyType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::InternalAccount::PartyType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The internal account status.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InternalAccount::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, ModernTreasury::InternalAccount::Status::TaggedSymbol)
        CLOSED =
          T.let(:closed, ModernTreasury::InternalAccount::Status::TaggedSymbol)
        PENDING_ACTIVATION =
          T.let(
            :pending_activation,
            ModernTreasury::InternalAccount::Status::TaggedSymbol
          )
        PENDING_CLOSURE =
          T.let(
            :pending_closure,
            ModernTreasury::InternalAccount::Status::TaggedSymbol
          )
        SUSPENDED =
          T.let(
            :suspended,
            ModernTreasury::InternalAccount::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::InternalAccount::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
