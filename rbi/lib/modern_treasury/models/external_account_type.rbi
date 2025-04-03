# typed: strong

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    module ExternalAccountType
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountType) }
      OrSymbol =
        T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExternalAccountType::TaggedSymbol) }

      CASH = T.let(:cash, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)
      CHECKING = T.let(:checking, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)
      GENERAL_LEDGER = T.let(:general_ledger, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)
      LOAN = T.let(:loan, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)
      NON_RESIDENT = T.let(:non_resident, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)
      OTHER = T.let(:other, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)
      OVERDRAFT = T.let(:overdraft, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)
      SAVINGS = T.let(:savings, ModernTreasury::Models::ExternalAccountType::TaggedSymbol)

      sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccountType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
