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

      # The accounts for this counterparty.
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

      # The counterparty's email.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_)
      end

      # The id of the legal entity.
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

      # A human friendly name for this counterparty.
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

      # Send an email to the counterparty whenever an associated payment order is sent
      #   to the bank.
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

      # The verification status of the counterparty.
      sig { returns(ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol) }
      def verification_status
      end

      sig do
        params(_: ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
          .returns(ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
      end
      def verification_status=(_)
      end

      sig do
        params(
          id: String,
          accounts: T::Array[T.any(ModernTreasury::Models::Counterparty::Account, ModernTreasury::Util::AnyHash)],
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
          verification_status: ModernTreasury::Models::Counterparty::VerificationStatus::OrSymbol
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
              verification_status: ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol
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
          params(_: T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Util::AnyHash)])
            .returns(T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Util::AnyHash)])
        end
        def account_details=(_)
        end

        # Can be `checking`, `savings` or `other`.
        sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::TaggedSymbol)) }
        def account_type
        end

        sig do
          params(_: ModernTreasury::Models::ExternalAccountType::OrSymbol)
            .returns(ModernTreasury::Models::ExternalAccountType::OrSymbol)
        end
        def account_type=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail])) }
        def contact_details
        end

        sig do
          params(
            _: T::Array[T.any(ModernTreasury::Models::Counterparty::Account::ContactDetail, ModernTreasury::Util::AnyHash)]
          )
            .returns(
              T::Array[T.any(ModernTreasury::Models::Counterparty::Account::ContactDetail, ModernTreasury::Util::AnyHash)]
            )
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

        # If the external account links to a ledger account in Modern Treasury, the id of
        #   the ledger account will be populated here.
        sig { returns(T.nilable(String)) }
        def ledger_account_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ledger_account_id=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T.nilable(T::Boolean)) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
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

        # The address associated with the owner or `null`.
        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress)) }
        def party_address
        end

        sig do
          params(
            _: T.nilable(
              T.any(ModernTreasury::Models::Counterparty::Account::PartyAddress, ModernTreasury::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(ModernTreasury::Models::Counterparty::Account::PartyAddress, ModernTreasury::Util::AnyHash)
              )
            )
        end
        def party_address=(_)
        end

        # The legal name of the entity which owns the account.
        sig { returns(T.nilable(String)) }
        def party_name
        end

        sig { params(_: String).returns(String) }
        def party_name=(_)
        end

        # Either `individual` or `business`.
        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol)) }
        def party_type
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol))
            .returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol))
        end
        def party_type=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::RoutingDetail])) }
        def routing_details
        end

        sig do
          params(_: T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Util::AnyHash)])
            .returns(T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Util::AnyHash)])
        end
        def routing_details=(_)
        end

        sig { returns(T.nilable(Time)) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)) }
        def verification_source
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol))
            .returns(T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol))
        end
        def verification_source=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol)) }
        def verification_status
        end

        sig do
          params(_: ModernTreasury::Models::Counterparty::Account::VerificationStatus::OrSymbol)
            .returns(ModernTreasury::Models::Counterparty::Account::VerificationStatus::OrSymbol)
        end
        def verification_status=(_)
        end

        sig do
          params(
            id: String,
            account_details: T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Util::AnyHash)],
            account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
            contact_details: T::Array[T.any(ModernTreasury::Models::Counterparty::Account::ContactDetail, ModernTreasury::Util::AnyHash)],
            created_at: Time,
            discarded_at: T.nilable(Time),
            ledger_account_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            party_address: T.nilable(
              T.any(ModernTreasury::Models::Counterparty::Account::PartyAddress, ModernTreasury::Util::AnyHash)
            ),
            party_name: String,
            party_type: T.nilable(ModernTreasury::Models::Counterparty::Account::PartyType::OrSymbol),
            routing_details: T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Util::AnyHash)],
            updated_at: Time,
            verification_source: T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationSource::OrSymbol),
            verification_status: ModernTreasury::Models::Counterparty::Account::VerificationStatus::OrSymbol
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
                account_type: ModernTreasury::Models::ExternalAccountType::TaggedSymbol,
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
                party_type: T.nilable(ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol),
                routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
                updated_at: Time,
                verification_source: T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol),
                verification_status: ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol
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

          sig { returns(ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol) }
          def contact_identifier_type
          end

          sig do
            params(
              _: ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
              .returns(ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol)
          end
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

          # This field will be true if this object exists in the live environment or false
          #   if it exists in the test environment.
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
              contact_identifier_type: ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::OrSymbol,
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
                  contact_identifier_type: ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol,
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
              T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
                )
              end

            EMAIL =
              T.let(
                :email,
                ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
              )
            PHONE_NUMBER =
              T.let(
                :phone_number,
                ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
              )
            WEBSITE =
              T.let(
                :website,
                ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol]
                  )
              end
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

          TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::PartyType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol) }

          BUSINESS = T.let(:business, ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol)
          INDIVIDUAL = T.let(:individual, ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol]) }
            def values
            end
          end
        end

        module VerificationSource
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol) }

          ACH_PRENOTE =
            T.let(:ach_prenote, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)
          MICRODEPOSITS =
            T.let(:microdeposits, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)
          PLAID = T.let(:plaid, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)

          class << self
            sig do
              override.returns(T::Array[ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol])
            end
            def values
            end
          end
        end

        module VerificationStatus
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol) }

          PENDING_VERIFICATION =
            T.let(
              :pending_verification,
              ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol
            )
          UNVERIFIED =
            T.let(:unverified, ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol)
          VERIFIED =
            T.let(:verified, ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol)

          class << self
            sig do
              override.returns(T::Array[ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol])
            end
            def values
            end
          end
        end
      end

      # The verification status of the counterparty.
      module VerificationStatus
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::VerificationStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol) }

        DENIED = T.let(:denied, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
        NEEDS_APPROVAL =
          T.let(:needs_approval, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
        UNVERIFIED = T.let(:unverified, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
        VERIFIED = T.let(:verified, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
