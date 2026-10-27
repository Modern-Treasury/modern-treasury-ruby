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
      sig { returns(T::Array[ModernTreasury::AccountCapability]) }
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

      # The ACH Company IDs allowed to debit this account. `null` allows every company.
      # An empty array allows none. Debits from any other company are returned with code
      # R10. Only applicable to debitable accounts under a Modern Treasury PSP
      # connection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :allowed_ach_debit_company_ids

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

      # Whether this account can receive ACH debits. Only applicable to accounts created
      # under a Modern Treasury PSP connection, or `null` for Bring Your Own Bank
      # accounts. Defaults to `false`. Configurable only on creation. Please reach out
      # to your customer success manager to enable this capability for your connection.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :debitable

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

      # Either individual or business. Inherits from associated LegalEntity
      # legal_entity_type, if one exists.
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

      # The account title at the financial institution. Defaults to the party name
      # unless a custom title was set on creation. Custom titles are only applicable to
      # accounts created under supported connections.
      sig { returns(String) }
      attr_accessor :title

      sig { returns(Time) }
      attr_accessor :updated_at

      # The vendor ID associated with this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_id

      sig do
        params(
          id: String,
          account_capabilities:
            T::Array[ModernTreasury::AccountCapability::OrHash],
          account_details: T::Array[ModernTreasury::AccountDetail::OrHash],
          account_type:
            T.nilable(ModernTreasury::InternalAccount::AccountType::OrSymbol),
          allowed_ach_debit_company_ids: T.nilable(T::Array[String]),
          connection: ModernTreasury::Connection::OrHash,
          contra_ledger_account_id: T.nilable(String),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: ModernTreasury::Currency::OrSymbol,
          debitable: T.nilable(T::Boolean),
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
          title: String,
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
        # The ACH Company IDs allowed to debit this account. `null` allows every company.
        # An empty array allows none. Debits from any other company are returned with code
        # R10. Only applicable to debitable accounts under a Modern Treasury PSP
        # connection.
        allowed_ach_debit_company_ids:,
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
        # Whether this account can receive ACH debits. Only applicable to accounts created
        # under a Modern Treasury PSP connection, or `null` for Bring Your Own Bank
        # accounts. Defaults to `false`. Configurable only on creation. Please reach out
        # to your customer success manager to enable this capability for your connection.
        debitable:,
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
        # Either individual or business. Inherits from associated LegalEntity
        # legal_entity_type, if one exists.
        party_type:,
        # An array of routing detail objects.
        routing_details:,
        # The internal account status.
        status:,
        # The account title at the financial institution. Defaults to the party name
        # unless a custom title was set on creation. Custom titles are only applicable to
        # accounts created under supported connections.
        title:,
        updated_at:,
        # The vendor ID associated with this account.
        vendor_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_capabilities: T::Array[ModernTreasury::AccountCapability],
            account_details: T::Array[ModernTreasury::AccountDetail],
            account_type:
              T.nilable(
                ModernTreasury::InternalAccount::AccountType::TaggedSymbol
              ),
            allowed_ach_debit_company_ids: T.nilable(T::Array[String]),
            connection: ModernTreasury::Connection,
            contra_ledger_account_id: T.nilable(String),
            counterparty_id: T.nilable(String),
            created_at: Time,
            currency: ModernTreasury::Currency::TaggedSymbol,
            debitable: T.nilable(T::Boolean),
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
            title: String,
            updated_at: Time,
            vendor_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Can be checking, savings or other.
      module AccountType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InternalAccount::AccountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

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
        SAVINGS =
          T.let(
            :savings,
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

      # Either individual or business. Inherits from associated LegalEntity
      # legal_entity_type, if one exists.
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
