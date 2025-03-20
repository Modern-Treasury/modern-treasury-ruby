# typed: strong

module ModernTreasury
  module Models
    module TransactionDirection
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::TransactionDirection) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::TransactionDirection::TaggedSymbol) }

      CREDIT = T.let(:credit, ModernTreasury::Models::TransactionDirection::TaggedSymbol)
      DEBIT = T.let(:debit, ModernTreasury::Models::TransactionDirection::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[ModernTreasury::Models::TransactionDirection::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end
