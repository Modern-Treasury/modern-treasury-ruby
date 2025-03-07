# typed: strong

module ModernTreasury
  module Models
    class Counterparty < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::Counterparty::Account]) }
      def accounts
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::Counterparty::Account])
          .returns(T::Array[ModernTreasury::Models::Counterparty::Account])
      end
      def accounts=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_)
      end

      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def legal_entity_id=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

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

      sig { returns(T::Boolean) }
      def send_remittance_advice
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def send_remittance_advice=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(Symbol) }
      def verification_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def verification_status=(_)
      end

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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
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
          )
      end
      def to_hash
      end

      class Account < ModernTreasury::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::AccountDetail])) }
        def account_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::AccountDetail])
            .returns(T::Array[ModernTreasury::Models::AccountDetail])
        end
        def account_details=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def account_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def account_type=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail])) }
        def contact_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail])
            .returns(T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail])
        end
        def contact_details=(_)
        end

        sig { returns(T.nilable(Time)) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Time)) }
        def discarded_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def discarded_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def ledger_account_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ledger_account_id=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress)) }
        def party_address
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress))
            .returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress))
        end
        def party_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def party_name
        end

        sig { params(_: String).returns(String) }
        def party_name=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def party_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def party_type=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::RoutingDetail])) }
        def routing_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::RoutingDetail])
            .returns(T::Array[ModernTreasury::Models::RoutingDetail])
        end
        def routing_details=(_)
        end

        sig { returns(T.nilable(Time)) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def verification_source
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def verification_source=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def verification_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def verification_status=(_)
        end

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
          )
            .returns(T.attached_class)
        end
        def self.new(
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
        )
        end

        sig do
          override
            .returns(
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
            )
        end
        def to_hash
        end

        class ContactDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def contact_identifier
          end

          sig { params(_: String).returns(String) }
          def contact_identifier=(_)
          end

          sig { returns(Symbol) }
          def contact_identifier_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def contact_identifier_type=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(T.nilable(Time)) }
          def discarded_at
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def discarded_at=(_)
          end

          sig { returns(T::Boolean) }
          def live_mode
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def live_mode=(_)
          end

          sig { returns(String) }
          def object
          end

          sig { params(_: String).returns(String) }
          def object=(_)
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
              contact_identifier: String,
              contact_identifier_type: Symbol,
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
                  contact_identifier_type: Symbol,
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

          class ContactIdentifierType < ModernTreasury::Enum
            abstract!

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

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

          sig { returns(T::Boolean) }
          def live_mode
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def live_mode=(_)
          end

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

          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

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

        class PartyType < ModernTreasury::Enum
          abstract!

          BUSINESS = T.let(:business, T.nilable(Symbol))
          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class VerificationSource < ModernTreasury::Enum
          abstract!

          ACH_PRENOTE = T.let(:ach_prenote, T.nilable(Symbol))
          MICRODEPOSITS = T.let(:microdeposits, T.nilable(Symbol))
          PLAID = T.let(:plaid, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class VerificationStatus < ModernTreasury::Enum
          abstract!

          PENDING_VERIFICATION = :pending_verification
          UNVERIFIED = :unverified
          VERIFIED = :verified

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class VerificationStatus < ModernTreasury::Enum
        abstract!

        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
