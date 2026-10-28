# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountUpdateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountUpdateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The description of the ledger account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # The name of the ledger account.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          description: T.nilable(String),
          external_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The description of the ledger account.
        description: nil,
        # An optional user-defined 180 character unique identifier.
        external_id: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # The name of the ledger account.
        name: nil
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            external_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
