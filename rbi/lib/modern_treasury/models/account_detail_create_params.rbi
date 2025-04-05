# typed: strong

module ModernTreasury
  module Models
    class AccountDetailCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      # The account number for the bank account.
      sig { returns(String) }
      attr_accessor :account_number

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      sig { returns(T.nilable(ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)) }
      attr_reader :account_number_type

      sig do
        params(
          account_number_type: ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol
        )
          .void
      end
      attr_writer :account_number_type

      sig do
        params(
          accounts_type: ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol,
          account_number: String,
          account_number_type: ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, account_number:, account_number_type: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              accounts_type: ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol,
              account_number: String,
              account_number_type: ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::AccountDetailCreateParams::AccountsType::TaggedSymbol) }

        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::AccountDetailCreateParams::AccountsType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::AccountDetailCreateParams::AccountsType::TaggedSymbol]) }
        def self.values; end
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol) }

        AU_NUMBER =
          T.let(:au_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        CLABE = T.let(:clabe, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        HK_NUMBER =
          T.let(:hk_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        IBAN = T.let(:iban, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        ID_NUMBER =
          T.let(:id_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        NZ_NUMBER =
          T.let(:nz_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        PAN = T.let(:pan, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        SG_NUMBER =
          T.let(:sg_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)
        WALLET_ADDRESS =
          T.let(:wallet_address, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
