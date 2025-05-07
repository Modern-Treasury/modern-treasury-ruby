# typed: strong

module ModernTreasury
  module Models
    class ExternalAccount < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[ModernTreasury::AccountDetail]) }
      attr_accessor :account_details

      # Can be `checking`, `savings` or `other`.
      sig { returns(ModernTreasury::ExternalAccountType::TaggedSymbol) }
      attr_accessor :account_type

      sig { returns(T::Array[ModernTreasury::ExternalAccount::ContactDetail]) }
      attr_accessor :contact_details

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # If the external account links to a ledger account in Modern Treasury, the id of
      # the ledger account will be populated here.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # A nickname for the external account. This is only for internal usage and won't
      # affect any payments
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      # The address associated with the owner or `null`.
      sig { returns(T.nilable(ModernTreasury::ExternalAccount::PartyAddress)) }
      attr_reader :party_address

      sig do
        params(
          party_address:
            T.nilable(ModernTreasury::ExternalAccount::PartyAddress::OrHash)
        ).void
      end
      attr_writer :party_address

      # The legal name of the entity which owns the account.
      sig { returns(String) }
      attr_accessor :party_name

      # Either `individual` or `business`.
      sig do
        returns(
          T.nilable(ModernTreasury::ExternalAccount::PartyType::TaggedSymbol)
        )
      end
      attr_accessor :party_type

      sig { returns(T::Array[ModernTreasury::RoutingDetail]) }
      attr_accessor :routing_details

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        returns(
          T.nilable(
            ModernTreasury::ExternalAccount::VerificationSource::TaggedSymbol
          )
        )
      end
      attr_accessor :verification_source

      sig do
        returns(
          ModernTreasury::ExternalAccount::VerificationStatus::TaggedSymbol
        )
      end
      attr_accessor :verification_status

      sig do
        params(
          id: String,
          account_details: T::Array[ModernTreasury::AccountDetail::OrHash],
          account_type: ModernTreasury::ExternalAccountType::OrSymbol,
          contact_details:
            T::Array[ModernTreasury::ExternalAccount::ContactDetail::OrHash],
          counterparty_id: T.nilable(String),
          created_at: Time,
          discarded_at: T.nilable(Time),
          ledger_account_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          object: String,
          party_address:
            T.nilable(ModernTreasury::ExternalAccount::PartyAddress::OrHash),
          party_name: String,
          party_type:
            T.nilable(ModernTreasury::ExternalAccount::PartyType::OrSymbol),
          routing_details: T::Array[ModernTreasury::RoutingDetail::OrHash],
          updated_at: Time,
          verification_source:
            T.nilable(
              ModernTreasury::ExternalAccount::VerificationSource::OrSymbol
            ),
          verification_status:
            ModernTreasury::ExternalAccount::VerificationStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        account_details:,
        # Can be `checking`, `savings` or `other`.
        account_type:,
        contact_details:,
        counterparty_id:,
        created_at:,
        discarded_at:,
        # If the external account links to a ledger account in Modern Treasury, the id of
        # the ledger account will be populated here.
        ledger_account_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # A nickname for the external account. This is only for internal usage and won't
        # affect any payments
        name:,
        object:,
        # The address associated with the owner or `null`.
        party_address:,
        # The legal name of the entity which owns the account.
        party_name:,
        # Either `individual` or `business`.
        party_type:,
        routing_details:,
        updated_at:,
        verification_source:,
        verification_status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_details: T::Array[ModernTreasury::AccountDetail],
            account_type: ModernTreasury::ExternalAccountType::TaggedSymbol,
            contact_details:
              T::Array[ModernTreasury::ExternalAccount::ContactDetail],
            counterparty_id: T.nilable(String),
            created_at: Time,
            discarded_at: T.nilable(Time),
            ledger_account_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            object: String,
            party_address:
              T.nilable(ModernTreasury::ExternalAccount::PartyAddress),
            party_name: String,
            party_type:
              T.nilable(
                ModernTreasury::ExternalAccount::PartyType::TaggedSymbol
              ),
            routing_details: T::Array[ModernTreasury::RoutingDetail],
            updated_at: Time,
            verification_source:
              T.nilable(
                ModernTreasury::ExternalAccount::VerificationSource::TaggedSymbol
              ),
            verification_status:
              ModernTreasury::ExternalAccount::VerificationStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class ContactDetail < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :contact_identifier

        sig do
          returns(
            ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
          )
        end
        attr_accessor :contact_identifier_type

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
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
            contact_identifier_type:
              ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType::OrSymbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          contact_identifier:,
          contact_identifier_type:,
          created_at:,
          discarded_at:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              contact_identifier: String,
              contact_identifier_type:
                ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol,
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
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          WEBSITE =
            T.let(
              :website,
              ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExternalAccount::PartyType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::ExternalAccount::PartyType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::ExternalAccount::PartyType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::ExternalAccount::PartyType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module VerificationSource
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExternalAccount::VerificationSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_PRENOTE =
          T.let(
            :ach_prenote,
            ModernTreasury::ExternalAccount::VerificationSource::TaggedSymbol
          )
        MICRODEPOSITS =
          T.let(
            :microdeposits,
            ModernTreasury::ExternalAccount::VerificationSource::TaggedSymbol
          )
        PLAID =
          T.let(
            :plaid,
            ModernTreasury::ExternalAccount::VerificationSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExternalAccount::VerificationSource::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::ExternalAccount::VerificationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING_VERIFICATION =
          T.let(
            :pending_verification,
            ModernTreasury::ExternalAccount::VerificationStatus::TaggedSymbol
          )
        UNVERIFIED =
          T.let(
            :unverified,
            ModernTreasury::ExternalAccount::VerificationStatus::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            ModernTreasury::ExternalAccount::VerificationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExternalAccount::VerificationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
