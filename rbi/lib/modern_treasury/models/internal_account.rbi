# typed: strong

module ModernTreasury
  module Models
    class InternalAccount < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # An array of account detail objects.
      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      attr_accessor :account_details

      # Can be checking, savings or other.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)) }
      attr_accessor :account_type

      # Specifies which financial institution the accounts belong to.
      sig { returns(ModernTreasury::Models::Connection) }
      attr_reader :connection

      sig { params(connection: T.any(ModernTreasury::Models::Connection, ModernTreasury::Internal::AnyHash)).void }
      attr_writer :connection

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the account.
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
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
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress)) }
      attr_reader :party_address

      sig do
        params(
          party_address: T.nilable(T.any(ModernTreasury::Models::InternalAccount::PartyAddress, ModernTreasury::Internal::AnyHash))
        )
          .void
      end
      attr_writer :party_address

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      attr_accessor :party_name

      # Either individual or business.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol)) }
      attr_accessor :party_type

      # An array of routing detail objects.
      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      attr_accessor :routing_details

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_details: T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Internal::AnyHash)],
          account_type: T.nilable(ModernTreasury::Models::InternalAccount::AccountType::OrSymbol),
          connection: T.any(ModernTreasury::Models::Connection, ModernTreasury::Internal::AnyHash),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: ModernTreasury::Models::Currency::OrSymbol,
          ledger_account_id: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          parent_account_id: T.nilable(String),
          party_address: T.nilable(T.any(ModernTreasury::Models::InternalAccount::PartyAddress, ModernTreasury::Internal::AnyHash)),
          party_name: String,
          party_type: T.nilable(ModernTreasury::Models::InternalAccount::PartyType::OrSymbol),
          routing_details: T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Internal::AnyHash)],
          updated_at: Time
        )
          .returns(T.attached_class)
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
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              account_details: T::Array[ModernTreasury::Models::AccountDetail],
              account_type: T.nilable(ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol),
              connection: ModernTreasury::Models::Connection,
              counterparty_id: T.nilable(String),
              created_at: Time,
              currency: ModernTreasury::Models::Currency::TaggedSymbol,
              ledger_account_id: T.nilable(String),
              legal_entity_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              object: String,
              parent_account_id: T.nilable(String),
              party_address: T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress),
              party_name: String,
              party_type: T.nilable(ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol),
              routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
              updated_at: Time
            }
          )
      end
      def to_hash; end

      # Can be checking, savings or other.
      module AccountType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccount::AccountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CASH = T.let(:cash, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        CHECKING = T.let(:checking, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        GENERAL_LEDGER =
          T.let(:general_ledger, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        LOAN = T.let(:loan, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        NON_RESIDENT = T.let(:non_resident, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        OVERDRAFT = T.let(:overdraft, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        SAVINGS = T.let(:savings, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol]) }
        def self.values; end
      end

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
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
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
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
        def to_hash; end
      end

      # Either individual or business.
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccount::PartyType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS = T.let(:business, ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol)
        INDIVIDUAL = T.let(:individual, ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
