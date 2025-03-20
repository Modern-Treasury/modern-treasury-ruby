# typed: strong

module ModernTreasury
  module Models
    module TransactionDirection
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::TransactionDirection) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::TransactionDirection::TaggedSymbol) }

      CREDIT = T.let(:credit, ModernTreasury::Models::TransactionDirection::OrSymbol)
      DEBIT = T.let(:debit, ModernTreasury::Models::TransactionDirection::OrSymbol)
    end
  end
end
