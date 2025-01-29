# typed: strong

module ModernTreasury
  module Models
    class ExternalAccount < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          account_details: T::Array[ModernTreasury::Models::AccountDetail],
          account_type: Symbol,
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
          party_type: T.nilable(Symbol),
          routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
          updated_at: Time,
          verification_source: T.nilable(Symbol),
          verification_status: Symbol
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      attr_accessor :account_details

      sig { returns(Symbol) }
      attr_accessor :account_type

      sig { returns(T::Array[ModernTreasury::Models::ExternalAccount::ContactDetail]) }
      attr_accessor :contact_details

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccount::PartyAddress)) }
      attr_accessor :party_address

      sig { returns(String) }
      attr_accessor :party_name

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :party_type

      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      attr_accessor :routing_details

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :verification_source

      sig { returns(Symbol) }
      attr_accessor :verification_status

      sig do
        params(
          id: String,
          account_details: T::Array[ModernTreasury::Models::AccountDetail],
          account_type: Symbol,
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
          party_type: T.nilable(Symbol),
          routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
          updated_at: Time,
          verification_source: T.nilable(Symbol),
          verification_status: Symbol
        ).void
      end
      def initialize(
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
      ); end

      sig { returns(ModernTreasury::Models::ExternalAccount::Shape) }
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

        sig { returns(ModernTreasury::Models::ExternalAccount::ContactDetail::Shape) }
        def to_h; end

        class ContactIdentifierType < ModernTreasury::Enum
          abstract!

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          sig { returns(T::Array[Symbol]) }
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

        sig { returns(ModernTreasury::Models::ExternalAccount::PartyAddress::Shape) }
        def to_h; end
      end

      class PartyType < ModernTreasury::Enum
        abstract!

        BUSINESS = T.let(:business, T.nilable(Symbol))
        INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class VerificationSource < ModernTreasury::Enum
        abstract!

        ACH_PRENOTE = T.let(:ach_prenote, T.nilable(Symbol))
        MICRODEPOSITS = T.let(:microdeposits, T.nilable(Symbol))
        PLAID = T.let(:plaid, T.nilable(Symbol))

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class VerificationStatus < ModernTreasury::Enum
        abstract!

        PENDING_VERIFICATION = :pending_verification
        UNVERIFIED = :unverified
        VERIFIED = :verified

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
