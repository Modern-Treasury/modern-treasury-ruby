# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::VirtualAccountUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The ledger account that you'd like to link to the virtual account.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The address of the owner of the virtual account. Omit to leave it unchanged;
      # pass `null` to clear it, after which the internal account's party address is
      # used.
      sig { returns(T.nilable(ModernTreasury::AddressRequest)) }
      attr_reader :party_address

      sig do
        params(
          party_address: T.nilable(ModernTreasury::AddressRequest::OrHash)
        ).void
      end
      attr_writer :party_address

      sig do
        params(
          id: String,
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: T.nilable(ModernTreasury::AddressRequest::OrHash),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        counterparty_id: nil,
        # The ledger account that you'd like to link to the virtual account.
        ledger_account_id: nil,
        metadata: nil,
        name: nil,
        # The address of the owner of the virtual account. Omit to leave it unchanged;
        # pass `null` to clear it, after which the internal account's party address is
        # used.
        party_address: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            counterparty_id: String,
            ledger_account_id: String,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: T.nilable(ModernTreasury::AddressRequest),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
