# typed: strong

module ModernTreasury
  module Models
    class Counterparty < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The accounts for this counterparty.
      sig { returns(T::Array[ModernTreasury::Models::Counterparty::Account]) }
      attr_accessor :accounts

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The counterparty's email.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The id of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # A human friendly name for this counterparty.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      # Send an email to the counterparty whenever an associated payment order is sent
      #   to the bank.
      sig { returns(T::Boolean) }
      attr_accessor :send_remittance_advice

      sig { returns(Time) }
      attr_accessor :updated_at

      # The verification status of the counterparty.
      sig { returns(ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol) }
      attr_accessor :verification_status

      sig do
        params(
          id: String,
          accounts: T::Array[T.any(ModernTreasury::Models::Counterparty::Account, ModernTreasury::Internal::AnyHash)],
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

      class Account < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::AccountDetail])) }
        attr_reader :account_details

        sig do
          params(
            account_details: T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :account_details

        # Can be `checking`, `savings` or `other`.
        sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::TaggedSymbol)) }
        attr_reader :account_type

        sig { params(account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol).void }
        attr_writer :account_type

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail])) }
        attr_reader :contact_details

        sig do
          params(
            contact_details: T::Array[T.any(ModernTreasury::Models::Counterparty::Account::ContactDetail, ModernTreasury::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :contact_details

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # If the external account links to a ledger account in Modern Treasury, the id of
        #   the ledger account will be populated here.
        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_account_id

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :live_mode

        sig { params(live_mode: T::Boolean).void }
        attr_writer :live_mode

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :object

        sig { params(object: String).void }
        attr_writer :object

        # The address associated with the owner or `null`.
        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyAddress)) }
        attr_reader :party_address

        sig do
          params(
            party_address: T.nilable(
              T.any(ModernTreasury::Models::Counterparty::Account::PartyAddress, ModernTreasury::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :party_address

        # The legal name of the entity which owns the account.
        sig { returns(T.nilable(String)) }
        attr_reader :party_name

        sig { params(party_name: String).void }
        attr_writer :party_name

        # Either `individual` or `business`.
        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol)) }
        attr_accessor :party_type

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::RoutingDetail])) }
        attr_reader :routing_details

        sig do
          params(
            routing_details: T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :routing_details

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)) }
        attr_accessor :verification_source

        sig { returns(T.nilable(ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol)) }
        attr_reader :verification_status

        sig do
          params(verification_status: ModernTreasury::Models::Counterparty::Account::VerificationStatus::OrSymbol)
            .void
        end
        attr_writer :verification_status

        sig do
          params(
            id: String,
            account_details: T::Array[T.any(ModernTreasury::Models::AccountDetail, ModernTreasury::Internal::AnyHash)],
            account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
            contact_details: T::Array[T.any(ModernTreasury::Models::Counterparty::Account::ContactDetail, ModernTreasury::Internal::AnyHash)],
            created_at: Time,
            discarded_at: T.nilable(Time),
            ledger_account_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            party_address: T.nilable(
              T.any(ModernTreasury::Models::Counterparty::Account::PartyAddress, ModernTreasury::Internal::AnyHash)
            ),
            party_name: String,
            party_type: T.nilable(ModernTreasury::Models::Counterparty::Account::PartyType::OrSymbol),
            routing_details: T::Array[T.any(ModernTreasury::Models::RoutingDetail, ModernTreasury::Internal::AnyHash)],
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

        class ContactDetail < ModernTreasury::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :contact_identifier

          sig { returns(ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol) }
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
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType::TaggedSymbol]
                )
            end
            def self.values
            end
          end
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
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::PartyType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol) }

          BUSINESS = T.let(:business, ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol)
          INDIVIDUAL = T.let(:individual, ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol)

          sig { override.returns(T::Array[ModernTreasury::Models::Counterparty::Account::PartyType::TaggedSymbol]) }
          def self.values
          end
        end

        module VerificationSource
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol) }

          ACH_PRENOTE =
            T.let(:ach_prenote, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)
          MICRODEPOSITS =
            T.let(:microdeposits, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)
          PLAID = T.let(:plaid, ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol)

          sig do
            override.returns(T::Array[ModernTreasury::Models::Counterparty::Account::VerificationSource::TaggedSymbol])
          end
          def self.values
          end
        end

        module VerificationStatus
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol) }

          PENDING_VERIFICATION =
            T.let(
              :pending_verification,
              ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol
            )
          UNVERIFIED =
            T.let(:unverified, ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol)
          VERIFIED =
            T.let(:verified, ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol)

          sig do
            override.returns(T::Array[ModernTreasury::Models::Counterparty::Account::VerificationStatus::TaggedSymbol])
          end
          def self.values
          end
        end
      end

      # The verification status of the counterparty.
      module VerificationStatus
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Counterparty::VerificationStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol) }

        DENIED = T.let(:denied, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
        NEEDS_APPROVAL =
          T.let(:needs_approval, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
        UNVERIFIED = T.let(:unverified, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)
        VERIFIED = T.let(:verified, ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::Counterparty::VerificationStatus::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
