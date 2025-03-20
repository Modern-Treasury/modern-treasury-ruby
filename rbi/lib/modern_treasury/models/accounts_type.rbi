# typed: strong

module ModernTreasury
  module Models
    module AccountsType
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountsType) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountsType::TaggedSymbol) }

      EXTERNAL_ACCOUNTS = T.let(:external_accounts, ModernTreasury::Models::AccountsType::TaggedSymbol)
      INTERNAL_ACCOUNTS = T.let(:internal_accounts, ModernTreasury::Models::AccountsType::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[ModernTreasury::Models::AccountsType::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end
