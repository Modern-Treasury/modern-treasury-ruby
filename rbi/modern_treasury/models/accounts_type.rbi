# typed: strong

module ModernTreasury
  module Models
    module AccountsType
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, ModernTreasury::AccountsType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EXTERNAL_ACCOUNTS =
        T.let(:external_accounts, ModernTreasury::AccountsType::TaggedSymbol)
      INTERNAL_ACCOUNTS =
        T.let(:internal_accounts, ModernTreasury::AccountsType::TaggedSymbol)

      sig do
        override.returns(T::Array[ModernTreasury::AccountsType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
