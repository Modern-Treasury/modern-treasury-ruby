# typed: strong

module ModernTreasury
  module Models
    module AccountsType
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountsType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EXTERNAL_ACCOUNTS = T.let(:external_accounts, ModernTreasury::Models::AccountsType::TaggedSymbol)
      INTERNAL_ACCOUNTS = T.let(:internal_accounts, ModernTreasury::Models::AccountsType::TaggedSymbol)

      sig { override.returns(T::Array[ModernTreasury::Models::AccountsType::TaggedSymbol]) }
      def self.values; end
    end
  end
end
