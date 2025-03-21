# typed: strong

module ModernTreasury
  module Models
    class ExternalAccount < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      attr_accessor :account_details

      # Can be `checking`, `savings` or `other`.
      sig { returns(ModernTreasury::Models::ExternalAccountType::TaggedSymbol) }
      attr_accessor :account_type

      sig { returns(T::Array[ModernTreasury::Models::ExternalAccount::ContactDetail]) }
      attr_accessor :contact_details

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # If the external account links to a ledger account in Modern Treasury, the id of
      #   the ledger account will be populated here.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # A nickname for the external account. This is only for internal usage and won't
      #   affect any payments
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      # The address associated with the owner or `null`.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccount::PartyAddress)) }
      attr_reader :party_address

      sig do
        params(
          party_address: T.nilable(T.any(ModernTreasury::Models::ExternalAccount::PartyAddress, ModernTreasury::Util::AnyHash))
        )
          .void
      end
      attr_writer :party_address

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      attr_accessor :party_name

      # Either `individual` or `business`.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccount::PartyType::TaggedSymbol)) }
      attr_accessor :party_type

      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      attr_accessor :routing_details

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccount::VerificationSource::TaggedSymbol)) }
      attr_accessor :verification_source

      sig { returns(ModernTreasury::Models::ExternalAccount::VerificationStatus::TaggedSymbol) }
      attr_accessor :verification_status

      sig do
        params(
          id: String,
          account_details: T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Util::AnyHash)],
          account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
          contact_details: T::Array[T.any(ModernTreasury::Models::ExternalAccount::ContactDetail, ModernTreasury::Util::AnyHash)],
          counterparty_id: T.nilable(String),
          created_at: Time,
          discarded_at: T.nilable(Time),
          ledger_account_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          party_address: T.nilable(T.any(ModernTreasury::Models::ExternalAccount::PartyAddress, ModernTreasury::Util::AnyHash)),
          party_name: String,
          party_type: T.nilable(ModernTreasury::Models::ExternalAccount::PartyType::OrSymbol),
          routing_details: T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Util::AnyHash)],
          updated_at: Time,
          verification_source: T.nilable(ModernTreasury::Models::ExternalAccount::VerificationSource::OrSymbol),
          verification_status: ModernTreasury::Models::ExternalAccount::VerificationStatus::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_details:,
        account_type:,
        contact_details:,
        counterparty_id:,
        created_at:,
        discarded_at:,
        ledger_account_id:,
        live_mode:,
        metadata:,
        name:,
        object:,
        party_address:,
        party_name:,
        party_type:,
        routing_details:,
        updated_at:,
        verification_source:,
        verification_status:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_details: T::Array[ModernTreasury::Models::AccountDetail],
              account_type: ModernTreasury::Models::ExternalAccountType::TaggedSymbol,
              contact_details: T::Array[ModernTreasury::Models::ExternalAccount::ContactDetail],
              counterparty_id: T.nilable(String),
              created_at: Time,
              discarded_at: T.nilable(Time),
              ledger_account_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              object: String,
              party_address: T.nilable(ModernTreasury::Models::ExternalAccount::PartyAddress),
              party_name: String,
              party_type: T.nilable(ModernTreasury::Models::ExternalAccount::PartyType::TaggedSymbol),
              routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
              updated_at: Time,
              verification_source: T.nilable(ModernTreasury::Models::ExternalAccount::VerificationSource::TaggedSymbol),
              verification_status: ModernTreasury::Models::ExternalAccount::VerificationStatus::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class ContactDetail < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :contact_identifier

        sig { returns(ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol) }
        attr_accessor :contact_identifier_type

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            contact_identifier: String,
            contact_identifier_type: ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::OrSymbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          contact_identifier:,
          contact_identifier_type:,
          created_at:,
          discarded_at:,
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                contact_identifier: String,
                contact_identifier_type: ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol,
                created_at: Time,
                discarded_at: T.nilable(Time),
                live_mode: T::Boolean,
                object: String,
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        module ContactIdentifierType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol) }

          EMAIL =
            T.let(:email, ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol)
          PHONE_NUMBER =
            T.let(
              :phone_number,
              ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          WEBSITE =
            T.let(
              :website,
              ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
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
        #   if it exists in the test environment.
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

        # The address associated with the owner or `null`.
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

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccount::PartyType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExternalAccount::PartyType::TaggedSymbol) }

        BUSINESS = T.let(:business, ModernTreasury::Models::ExternalAccount::PartyType::TaggedSymbol)
        INDIVIDUAL = T.let(:individual, ModernTreasury::Models::ExternalAccount::PartyType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccount::PartyType::TaggedSymbol]) }
        def self.values
        end
      end

      module VerificationSource
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccount::VerificationSource) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExternalAccount::VerificationSource::TaggedSymbol) }

        ACH_PRENOTE =
          T.let(:ach_prenote, ModernTreasury::Models::ExternalAccount::VerificationSource::TaggedSymbol)
        MICRODEPOSITS =
          T.let(:microdeposits, ModernTreasury::Models::ExternalAccount::VerificationSource::TaggedSymbol)
        PLAID = T.let(:plaid, ModernTreasury::Models::ExternalAccount::VerificationSource::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccount::VerificationSource::TaggedSymbol]) }
        def self.values
        end
      end

      module VerificationStatus
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccount::VerificationStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExternalAccount::VerificationStatus::TaggedSymbol) }

        PENDING_VERIFICATION =
          T.let(:pending_verification, ModernTreasury::Models::ExternalAccount::VerificationStatus::TaggedSymbol)
        UNVERIFIED =
          T.let(:unverified, ModernTreasury::Models::ExternalAccount::VerificationStatus::TaggedSymbol)
        VERIFIED = T.let(:verified, ModernTreasury::Models::ExternalAccount::VerificationStatus::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccount::VerificationStatus::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
