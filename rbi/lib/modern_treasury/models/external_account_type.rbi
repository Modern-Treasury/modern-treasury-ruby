# typed: strong

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    module ExternalAccountType
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ExternalAccountType::TaggedSymbol) }

      CASH = T.let(:cash, ModernTreasury::Models::ExternalAccountType::OrSymbol)
      CHECKING = T.let(:checking, ModernTreasury::Models::ExternalAccountType::OrSymbol)
      GENERAL_LEDGER = T.let(:general_ledger, ModernTreasury::Models::ExternalAccountType::OrSymbol)
      LOAN = T.let(:loan, ModernTreasury::Models::ExternalAccountType::OrSymbol)
      NON_RESIDENT = T.let(:non_resident, ModernTreasury::Models::ExternalAccountType::OrSymbol)
      OTHER = T.let(:other, ModernTreasury::Models::ExternalAccountType::OrSymbol)
      OVERDRAFT = T.let(:overdraft, ModernTreasury::Models::ExternalAccountType::OrSymbol)
      SAVINGS = T.let(:savings, ModernTreasury::Models::ExternalAccountType::OrSymbol)
    end
  end
end
