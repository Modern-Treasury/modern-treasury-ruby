# typed: strong

module ModernTreasury
  module Models
    module AccountsType
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountsType) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountsType::TaggedSymbol) }

      EXTERNAL_ACCOUNTS = T.let(:external_accounts, ModernTreasury::Models::AccountsType::OrSymbol)
      INTERNAL_ACCOUNTS = T.let(:internal_accounts, ModernTreasury::Models::AccountsType::OrSymbol)
    end
  end
end
