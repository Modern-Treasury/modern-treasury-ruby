# typed: strong

module ModernTreasury
  module Models
    module TransactionDirection
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, ModernTreasury::TransactionDirection) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CREDIT =
        T.let(:credit, ModernTreasury::TransactionDirection::TaggedSymbol)
      DEBIT = T.let(:debit, ModernTreasury::TransactionDirection::TaggedSymbol)

      sig do
        override.returns(
          T::Array[ModernTreasury::TransactionDirection::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
