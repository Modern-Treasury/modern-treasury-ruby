# typed: strong

module ModernTreasury
  module Models
    class InternalAccount < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # An array of account detail objects.
      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      def account_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::AccountDetail])
          .returns(T::Array[ModernTreasury::Models::AccountDetail])
      end
      def account_details=(_)
      end

      # Can be checking, savings or other.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)) }
      def account_type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol))
      end
      def account_type=(_)
      end

      # Specifies which financial institution the accounts belong to.
      sig { returns(ModernTreasury::Models::Connection) }
      def connection
      end

      sig { params(_: ModernTreasury::Models::Connection).returns(ModernTreasury::Models::Connection) }
      def connection=(_)
      end

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The currency of the account.
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: ModernTreasury::Models::Currency::TaggedSymbol)
          .returns(ModernTreasury::Models::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # If the internal account links to a ledger account in Modern Treasury, the id of
      #   the ledger account will be populated here.
      sig { returns(T.nilable(String)) }
      def ledger_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_account_id=(_)
      end

      # The Legal Entity associated to this account
      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def legal_entity_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # A nickname for the account.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The parent InternalAccount of this account.
      sig { returns(T.nilable(String)) }
      def parent_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def parent_account_id=(_)
      end

      # The address associated with the owner or null.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress)) }
      def party_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress))
          .returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyAddress))
      end
      def party_address=(_)
      end

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      def party_name
      end

      sig { params(_: String).returns(String) }
      def party_name=(_)
      end

      # Either individual or business.
      sig { returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol)) }
      def party_type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol))
      end
      def party_type=(_)
      end

      # An array of routing detail objects.
      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      def routing_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::RoutingDetail])
          .returns(T::Array[ModernTreasury::Models::RoutingDetail])
      end
      def routing_details=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
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
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_details:,
        account_type:,
        connection:,
        counterparty_id:,
        created_at:,
        currency:,
        ledger_account_id:,
        legal_entity_id:,
        live_mode:,
        metadata:,
        name:,
        object:,
        parent_account_id:,
        party_address:,
        party_name:,
        party_type:,
        routing_details:,
        updated_at:
      )
      end

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
      def to_hash
      end

      # Can be checking, savings or other.
      module AccountType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccount::AccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol) }

        CASH = T.let(:cash, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        CHECKING = T.let(:checking, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        GENERAL_LEDGER =
          T.let(:general_ledger, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        LOAN = T.let(:loan, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        NON_RESIDENT = T.let(:non_resident, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        OVERDRAFT = T.let(:overdraft, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
        SAVINGS = T.let(:savings, ModernTreasury::Models::InternalAccount::AccountType::TaggedSymbol)
      end

      class PartyAddress < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        # Locality or City.
        sig { returns(T.nilable(String)) }
        def locality
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def locality=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        # Region or State.
        sig { returns(T.nilable(String)) }
        def region
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def region=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

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
          country:,
          created_at:,
          line1:,
          line2:,
          live_mode:,
          locality:,
          object:,
          postal_code:,
          region:,
          updated_at:
        )
        end

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
        def to_hash
        end
      end

      # Either individual or business.
      module PartyType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccount::PartyType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol) }

        BUSINESS = T.let(:business, ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol)
        INDIVIDUAL = T.let(:individual, ModernTreasury::Models::InternalAccount::PartyType::TaggedSymbol)
      end
    end
  end
end
