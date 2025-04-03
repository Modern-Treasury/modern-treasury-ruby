# typed: strong

module ModernTreasury
  module Models
    module TransactionDirection
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::TransactionDirection) }
      OrSymbol =
        T.type_alias { T.any(Symbol, String, ModernTreasury::Models::TransactionDirection::TaggedSymbol) }

      CREDIT = T.let(:credit, ModernTreasury::Models::TransactionDirection::TaggedSymbol)
      DEBIT = T.let(:debit, ModernTreasury::Models::TransactionDirection::TaggedSymbol)

      sig { override.returns(T::Array[ModernTreasury::Models::TransactionDirection::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
