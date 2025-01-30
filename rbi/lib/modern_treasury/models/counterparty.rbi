# typed: strong

module ModernTreasury
  module Models
    class Counterparty < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          accounts: T::Array[ModernTreasury::Models::Counterparty::Account],
          created_at: Time,
          discarded_at: T.nilable(Time),
          email: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          send_remittance_advice: T::Boolean,
          updated_at: Time,
          verification_status: Symbol
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[ModernTreasury::Models::Counterparty::Account]) }
      attr_accessor :accounts

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T::Boolean) }
      attr_accessor :send_remittance_advice

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(Symbol) }
      attr_accessor :verification_status

      sig do
        params(
          id: String,
          accounts: T::Array[ModernTreasury::Models::Counterparty::Account],
          created_at: Time,
          discarded_at: T.nilable(Time),
          email: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          send_remittance_advice: T::Boolean,
          updated_at: Time,
          verification_status: Symbol
        ).void
      end
      def initialize(
        id:,
        accounts:,
        created_at:,
        discarded_at:,
        email:,
        legal_entity_id:,
        live_mode:,
        metadata:,
        name:,
        object:,
        send_remittance_advice:,
        updated_at:,
        verification_status:
      ); end

      sig { returns(ModernTreasury::Models::Counterparty::Shape) }
      def to_h; end

      class Account < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            account_details: T::Array[ModernTreasury::Models::AccountDetail],
            account_type: Symbol,
            contact_details: T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail],
            created_at: Time,
            discarded_at: T.nilable(Time),
            ledger_account_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            party_address: T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress),
            party_name: String,
            party_type: T.nilable(Symbol),
            routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
            updated_at: Time,
            verification_source: T.nilable(Symbol),
            verification_status: Symbol
          }
        end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
        attr_reader :account_details

        sig { params(account_details: T::Array[ModernTreasury::Models::AccountDetail]).void }
        attr_writer :account_details

        sig { returns(T.nilable(Symbol)) }
        attr_reader :account_type

        sig { params(account_type: Symbol).void }
        attr_writer :account_type

        sig { returns(T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail]) }
        attr_reader :contact_details

        sig do
          params(contact_details: T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail]).void
        end
        attr_writer :contact_details

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_account_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :live_mode

        sig { params(live_mode: T::Boolean).void }
        attr_writer :live_mode

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :object

        sig { params(object: String).void }
        attr_writer :object

        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress)) }
        attr_accessor :party_address

        sig { returns(T.nilable(String)) }
        attr_reader :party_name

        sig { params(party_name: String).void }
        attr_writer :party_name

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :party_type

        sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
        attr_reader :routing_details

        sig { params(routing_details: T::Array[ModernTreasury::Models::RoutingDetail]).void }
        attr_writer :routing_details

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :verification_source

        sig { returns(T.nilable(Symbol)) }
        attr_reader :verification_status

        sig { params(verification_status: Symbol).void }
        attr_writer :verification_status

        sig do
          params(
            id: String,
            account_details: T::Array[ModernTreasury::Models::AccountDetail],
            account_type: Symbol,
            contact_details: T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail],
            created_at: Time,
            discarded_at: T.nilable(Time),
            ledger_account_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            party_address: T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress),
            party_name: String,
            party_type: T.nilable(Symbol),
            routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
            updated_at: Time,
            verification_source: T.nilable(Symbol),
            verification_status: Symbol
          ).void
        end
        def initialize(
          id: nil,
          account_details: nil,
          account_type: nil,
          contact_details: nil,
          created_at: nil,
          discarded_at: nil,
          ledger_account_id: nil,
          live_mode: nil,
          metadata: nil,
          name: nil,
          object: nil,
          party_address: nil,
          party_name: nil,
          party_type: nil,
          routing_details: nil,
          updated_at: nil,
          verification_source: nil,
          verification_status: nil
        ); end

        sig { returns(ModernTreasury::Models::Counterparty::Account::Shape) }
        def to_h; end

        class ContactDetail < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              contact_identifier: String,
              contact_identifier_type: Symbol,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
            }
          end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :contact_identifier

          sig { returns(Symbol) }
          attr_accessor :contact_identifier_type

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :discarded_at

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
              contact_identifier_type: Symbol,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
            ).void
          end
          def initialize(
            id:,
            contact_identifier:,
            contact_identifier_type:,
            created_at:,
            discarded_at:,
            live_mode:,
            object:,
            updated_at:
          ); end

          sig { returns(ModernTreasury::Models::Counterparty::Account::ContactDetail::Shape) }
          def to_h; end

          class ContactIdentifierType < ModernTreasury::Enum
            abstract!

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          Shape = T.type_alias do
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
          end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :country

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(T::Boolean) }
          attr_accessor :live_mode

          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          sig { returns(String) }
          attr_accessor :object

          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          sig { returns(T.nilable(String)) }
          attr_accessor :region

          sig { returns(Time) }
          attr_accessor :updated_at

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
            ).void
          end
          def initialize(
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
          ); end

          sig { returns(ModernTreasury::Models::Counterparty::Account::PartyAddress::Shape) }
          def to_h; end
        end

        class PartyType < ModernTreasury::Enum
          abstract!

          BUSINESS = T.let(:business, T.nilable(Symbol))
          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class VerificationSource < ModernTreasury::Enum
          abstract!

          ACH_PRENOTE = T.let(:ach_prenote, T.nilable(Symbol))
          MICRODEPOSITS = T.let(:microdeposits, T.nilable(Symbol))
          PLAID = T.let(:plaid, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class VerificationStatus < ModernTreasury::Enum
          abstract!

          PENDING_VERIFICATION = :pending_verification
          UNVERIFIED = :unverified
          VERIFIED = :verified

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class VerificationStatus < ModernTreasury::Enum
        abstract!

        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
