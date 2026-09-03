# typed: strong

module ModernTreasury
  module Models
    class InternalAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InternalAccountUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The Contra Ledger Account associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :contra_ledger_account_id

      sig { params(contra_ledger_account_id: String).void }
      attr_writer :contra_ledger_account_id

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The Ledger Account associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      # an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # The nickname for the internal account.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The parent internal account for this account.
      sig { returns(T.nilable(String)) }
      attr_reader :parent_account_id

      sig { params(parent_account_id: String).void }
      attr_writer :parent_account_id

      # The address associated with the owner of the internal account. Updating this
      # value does not guarantee that the new address matches the address on record with
      # the account's bank; you are responsible for verifying that the address is
      # accurate.
      sig { returns(T.nilable(ModernTreasury::AddressRequest)) }
      attr_reader :party_address

      sig { params(party_address: ModernTreasury::AddressRequest::OrHash).void }
      attr_writer :party_address

      # Requests closure of the internal account. The resulting status may be `closed`
      # for vendors that close synchronously.
      sig do
        returns(
          T.nilable(
            ModernTreasury::InternalAccountUpdateParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::InternalAccountUpdateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          contra_ledger_account_id: String,
          counterparty_id: String,
          external_id: T.nilable(String),
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_account_id: String,
          party_address: ModernTreasury::AddressRequest::OrHash,
          status: ModernTreasury::InternalAccountUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The Contra Ledger Account associated to this account.
        contra_ledger_account_id: nil,
        # The Counterparty associated to this account.
        counterparty_id: nil,
        # An optional user-defined 180 character unique identifier.
        external_id: nil,
        # The Ledger Account associated to this account.
        ledger_account_id: nil,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        # an empty string or `null` as the value.
        metadata: nil,
        # The nickname for the internal account.
        name: nil,
        # The parent internal account for this account.
        parent_account_id: nil,
        # The address associated with the owner of the internal account. Updating this
        # value does not guarantee that the new address matches the address on record with
        # the account's bank; you are responsible for verifying that the address is
        # accurate.
        party_address: nil,
        # Requests closure of the internal account. The resulting status may be `closed`
        # for vendors that close synchronously.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            contra_ledger_account_id: String,
            counterparty_id: String,
            external_id: T.nilable(String),
            ledger_account_id: String,
            metadata: T::Hash[Symbol, String],
            name: String,
            parent_account_id: String,
            party_address: ModernTreasury::AddressRequest,
            status:
              ModernTreasury::InternalAccountUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Requests closure of the internal account. The resulting status may be `closed`
      # for vendors that close synchronously.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InternalAccountUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING_CLOSURE =
          T.let(
            :pending_closure,
            ModernTreasury::InternalAccountUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::InternalAccountUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
