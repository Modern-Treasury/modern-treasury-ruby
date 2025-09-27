# typed: strong

module ModernTreasury
  module Models
    class Counterparty < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Counterparty, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The accounts for this counterparty.
      sig { returns(T::Array[ModernTreasury::Counterparty::Account]) }
      attr_accessor :accounts

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The counterparty's email.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The id of the legal entity.
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

      # A human friendly name for this counterparty.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      # Send an email to the counterparty whenever an associated payment order is sent
      # to the bank.
      sig { returns(T::Boolean) }
      attr_accessor :send_remittance_advice

      sig { returns(Time) }
      attr_accessor :updated_at

      # The verification status of the counterparty.
      sig { returns(String) }
      attr_accessor :verification_status

      sig do
        params(
          id: String,
          accounts: T::Array[ModernTreasury::Counterparty::Account::OrHash],
          created_at: Time,
          discarded_at: T.nilable(Time),
          email: T.nilable(String),
          external_id: T.nilable(String),
          legal_entity_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          send_remittance_advice: T::Boolean,
          updated_at: Time,
          verification_status: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The accounts for this counterparty.
        accounts:,
        created_at:,
        discarded_at:,
        # The counterparty's email.
        email:,
        # An optional user-defined 180 character unique identifier.
        external_id:,
        # The id of the legal entity.
        legal_entity_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # A human friendly name for this counterparty.
        name:,
        object:,
        # Send an email to the counterparty whenever an associated payment order is sent
        # to the bank.
        send_remittance_advice:,
        updated_at:,
        # The verification status of the counterparty.
        verification_status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accounts: T::Array[ModernTreasury::Counterparty::Account],
            created_at: Time,
            discarded_at: T.nilable(Time),
            email: T.nilable(String),
            external_id: T.nilable(String),
            legal_entity_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            send_remittance_advice: T::Boolean,
            updated_at: Time,
            verification_status: String
          }
        )
      end
      def to_hash
      end

      class Account < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Counterparty::Account,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(T::Array[ModernTreasury::AccountDetail])) }
        attr_reader :account_details

        sig do
          params(
            account_details: T::Array[ModernTreasury::AccountDetail::OrHash]
          ).void
        end
        attr_writer :account_details

        # Can be `checking`, `savings` or `other`.
        sig do
          returns(T.nilable(ModernTreasury::ExternalAccountType::TaggedSymbol))
        end
        attr_reader :account_type

        sig do
          params(
            account_type: ModernTreasury::ExternalAccountType::OrSymbol
          ).void
        end
        attr_writer :account_type

        sig { returns(T.nilable(T::Array[ModernTreasury::ContactDetail])) }
        attr_reader :contact_details

        sig do
          params(
            contact_details: T::Array[ModernTreasury::ContactDetail::OrHash]
          ).void
        end
        attr_writer :contact_details

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # An optional user-defined 180 character unique identifier.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # If the external account links to a ledger account in Modern Treasury, the id of
        # the ledger account will be populated here.
        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_account_id

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :live_mode

        sig { params(live_mode: T::Boolean).void }
        attr_writer :live_mode

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # A nickname for the external account. This is only for internal usage and won't
        # affect any payments
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :object

        sig { params(object: String).void }
        attr_writer :object

        # The address associated with the owner or `null`.
        sig { returns(T.nilable(ModernTreasury::Address)) }
        attr_reader :party_address

        sig do
          params(party_address: T.nilable(ModernTreasury::Address::OrHash)).void
        end
        attr_writer :party_address

        # The legal name of the entity which owns the account.
        sig { returns(T.nilable(String)) }
        attr_reader :party_name

        sig { params(party_name: String).void }
        attr_writer :party_name

        # Either `individual` or `business`.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Counterparty::Account::PartyType::TaggedSymbol
            )
          )
        end
        attr_accessor :party_type

        sig { returns(T.nilable(T::Array[ModernTreasury::RoutingDetail])) }
        attr_reader :routing_details

        sig do
          params(
            routing_details: T::Array[ModernTreasury::RoutingDetail::OrHash]
          ).void
        end
        attr_writer :routing_details

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          returns(
            T.nilable(
              ModernTreasury::Counterparty::Account::VerificationSource::TaggedSymbol
            )
          )
        end
        attr_accessor :verification_source

        sig do
          returns(
            T.nilable(
              ModernTreasury::Counterparty::Account::VerificationStatus::TaggedSymbol
            )
          )
        end
        attr_reader :verification_status

        sig do
          params(
            verification_status:
              ModernTreasury::Counterparty::Account::VerificationStatus::OrSymbol
          ).void
        end
        attr_writer :verification_status

        sig do
          params(
            id: String,
            account_details: T::Array[ModernTreasury::AccountDetail::OrHash],
            account_type: ModernTreasury::ExternalAccountType::OrSymbol,
            contact_details: T::Array[ModernTreasury::ContactDetail::OrHash],
            created_at: Time,
            discarded_at: T.nilable(Time),
            external_id: T.nilable(String),
            ledger_account_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            party_address: T.nilable(ModernTreasury::Address::OrHash),
            party_name: String,
            party_type:
              T.nilable(
                ModernTreasury::Counterparty::Account::PartyType::OrSymbol
              ),
            routing_details: T::Array[ModernTreasury::RoutingDetail::OrHash],
            updated_at: Time,
            verification_source:
              T.nilable(
                ModernTreasury::Counterparty::Account::VerificationSource::OrSymbol
              ),
            verification_status:
              ModernTreasury::Counterparty::Account::VerificationStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          account_details: nil,
          # Can be `checking`, `savings` or `other`.
          account_type: nil,
          contact_details: nil,
          created_at: nil,
          discarded_at: nil,
          # An optional user-defined 180 character unique identifier.
          external_id: nil,
          # If the external account links to a ledger account in Modern Treasury, the id of
          # the ledger account will be populated here.
          ledger_account_id: nil,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          # A nickname for the external account. This is only for internal usage and won't
          # affect any payments
          name: nil,
          object: nil,
          # The address associated with the owner or `null`.
          party_address: nil,
          # The legal name of the entity which owns the account.
          party_name: nil,
          # Either `individual` or `business`.
          party_type: nil,
          routing_details: nil,
          updated_at: nil,
          verification_source: nil,
          verification_status: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account_details: T::Array[ModernTreasury::AccountDetail],
              account_type: ModernTreasury::ExternalAccountType::TaggedSymbol,
              contact_details: T::Array[ModernTreasury::ContactDetail],
              created_at: Time,
              discarded_at: T.nilable(Time),
              external_id: T.nilable(String),
              ledger_account_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              object: String,
              party_address: T.nilable(ModernTreasury::Address),
              party_name: String,
              party_type:
                T.nilable(
                  ModernTreasury::Counterparty::Account::PartyType::TaggedSymbol
                ),
              routing_details: T::Array[ModernTreasury::RoutingDetail],
              updated_at: Time,
              verification_source:
                T.nilable(
                  ModernTreasury::Counterparty::Account::VerificationSource::TaggedSymbol
                ),
              verification_status:
                ModernTreasury::Counterparty::Account::VerificationStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Either `individual` or `business`.
        module PartyType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Counterparty::Account::PartyType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::Counterparty::Account::PartyType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::Counterparty::Account::PartyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Counterparty::Account::PartyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module VerificationSource
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::Counterparty::Account::VerificationSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_PRENOTE =
            T.let(
              :ach_prenote,
              ModernTreasury::Counterparty::Account::VerificationSource::TaggedSymbol
            )
          MICRODEPOSITS =
            T.let(
              :microdeposits,
              ModernTreasury::Counterparty::Account::VerificationSource::TaggedSymbol
            )
          PLAID =
            T.let(
              :plaid,
              ModernTreasury::Counterparty::Account::VerificationSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Counterparty::Account::VerificationSource::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module VerificationStatus
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::Counterparty::Account::VerificationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING_VERIFICATION =
            T.let(
              :pending_verification,
              ModernTreasury::Counterparty::Account::VerificationStatus::TaggedSymbol
            )
          UNVERIFIED =
            T.let(
              :unverified,
              ModernTreasury::Counterparty::Account::VerificationStatus::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              ModernTreasury::Counterparty::Account::VerificationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Counterparty::Account::VerificationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
