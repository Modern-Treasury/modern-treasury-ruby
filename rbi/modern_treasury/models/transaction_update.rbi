# typed: strong

module ModernTreasury
  module Models
    class TransactionUpdate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::TransactionUpdate,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      # an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(metadata: T::Hash[Symbol, String]).returns(T.attached_class)
      end
      def self.new(
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        # an empty string or `null` as the value.
        metadata: nil
      )
      end

      sig { override.returns({ metadata: T::Hash[Symbol, String] }) }
      def to_hash
      end
    end
  end
end
