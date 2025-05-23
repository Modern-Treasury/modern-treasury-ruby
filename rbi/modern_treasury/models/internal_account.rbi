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

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the account.
      sig { returns(ModernTreasury::Currency::TaggedSymbol) }
      attr_accessor :currency

      # If the internal account links to a ledger account in Modern Treasury, the id of
      # the ledger account will be populated here.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      # The Legal Entity associated to this account
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
      sig { returns(T.nilable(ModernTreasury::InternalAccount::PartyAddress)) }
      attr_reader :party_address

      sig do
        params(
          party_address:
            T.nilable(ModernTreasury::InternalAccount::PartyAddress::OrHash)
        ).void
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

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_details: T::Array[ModernTreasury::AccountDetail::OrHash],
          account_type:
            T.nilable(ModernTreasury::InternalAccount::AccountType::OrSymbol),
          connection: ModernTreasury::Connection::OrHash,
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: ModernTreasury::Currency::OrSymbol,
          ledger_account_id: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          parent_account_id: T.nilable(String),
          party_address:
            T.nilable(ModernTreasury::InternalAccount::PartyAddress::OrHash),
          party_name: String,
          party_type:
            T.nilable(ModernTreasury::InternalAccount::PartyType::OrSymbol),
          routing_details: T::Array[ModernTreasury::RoutingDetail::OrHash],
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # An array of account detail objects.
        account_details:,
        # Can be checking, savings or other.
        account_type:,
        # Specifies which financial institution the accounts belong to.
        connection:,
        # The Counterparty associated to this account.
        counterparty_id:,
        created_at:,
        # The currency of the account.
        currency:,
        # If the internal account links to a ledger account in Modern Treasury, the id of
        # the ledger account will be populated here.
        ledger_account_id:,
        # The Legal Entity associated to this account
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
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_details: T::Array[ModernTreasury::AccountDetail],
            account_type:
              T.nilable(
                ModernTreasury::InternalAccount::AccountType::TaggedSymbol
              ),
            connection: ModernTreasury::Connection,
            counterparty_id: T.nilable(String),
            created_at: Time,
            currency: ModernTreasury::Currency::TaggedSymbol,
            ledger_account_id: T.nilable(String),
            legal_entity_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            parent_account_id: T.nilable(String),
            party_address:
              T.nilable(ModernTreasury::InternalAccount::PartyAddress),
            party_name: String,
            party_type:
              T.nilable(
                ModernTreasury::InternalAccount::PartyType::TaggedSymbol
              ),
            routing_details: T::Array[ModernTreasury::RoutingDetail],
            updated_at: Time
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

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InternalAccount::PartyAddress,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Locality or City.
        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :object

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig { returns(Time) }
        attr_accessor :updated_at

        # The address associated with the owner or null.
        sig do
          params(
            id: String,
            country: T.nilable(String),
            created_at: Time,
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Country code conforms to [ISO 3166-1 alpha-2]
          country:,
          created_at:,
          line1:,
          line2:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          # Locality or City.
          locality:,
          object:,
          # The postal code of the address.
          postal_code:,
          # Region or State.
          region:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              country: T.nilable(String),
              created_at: Time,
              line1: T.nilable(String),
              line2: T.nilable(String),
              live_mode: T::Boolean,
              locality: T.nilable(String),
              object: String,
              postal_code: T.nilable(String),
              region: T.nilable(String),
              updated_at: Time
            }
          )
        end
        def to_hash
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
    end
  end
end
