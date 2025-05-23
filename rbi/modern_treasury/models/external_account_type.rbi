# typed: strong

module ModernTreasury
  module Models
    # Can be `checking`, `savings` or `other`.
    module ExternalAccountType
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, ModernTreasury::ExternalAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BASE_WALLET =
        T.let(:base_wallet, ModernTreasury::ExternalAccountType::TaggedSymbol)
      CASH = T.let(:cash, ModernTreasury::ExternalAccountType::TaggedSymbol)
      CHECKING =
        T.let(:checking, ModernTreasury::ExternalAccountType::TaggedSymbol)
      CRYPTO_WALLET =
        T.let(:crypto_wallet, ModernTreasury::ExternalAccountType::TaggedSymbol)
      ETHEREUM_WALLET =
        T.let(
          :ethereum_wallet,
          ModernTreasury::ExternalAccountType::TaggedSymbol
        )
      GENERAL_LEDGER =
        T.let(
          :general_ledger,
          ModernTreasury::ExternalAccountType::TaggedSymbol
        )
      LOAN = T.let(:loan, ModernTreasury::ExternalAccountType::TaggedSymbol)
      NON_RESIDENT =
        T.let(:non_resident, ModernTreasury::ExternalAccountType::TaggedSymbol)
      OTHER = T.let(:other, ModernTreasury::ExternalAccountType::TaggedSymbol)
      OVERDRAFT =
        T.let(:overdraft, ModernTreasury::ExternalAccountType::TaggedSymbol)
      POLYGON_WALLET =
        T.let(
          :polygon_wallet,
          ModernTreasury::ExternalAccountType::TaggedSymbol
        )
      SAVINGS =
        T.let(:savings, ModernTreasury::ExternalAccountType::TaggedSymbol)
      SOLANA_WALLET =
        T.let(:solana_wallet, ModernTreasury::ExternalAccountType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[ModernTreasury::ExternalAccountType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
