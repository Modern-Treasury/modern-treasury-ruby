# typed: strong

module ModernTreasury
  module Models
    class AccountDetailCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol) }
      def accounts_type
      end

      sig do
        params(_: ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol)
          .returns(ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol)
      end
      def accounts_type=(_)
      end

      # The account number for the bank account.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      sig { returns(T.nilable(ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)) }
      def account_number_type
      end

      sig do
        params(_: ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
          .returns(ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
      end
      def account_number_type=(_)
      end

      sig do
        params(
          accounts_type: ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol,
          account_number: String,
          account_number_type: ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, account_number:, account_number_type: nil, request_options: {})
      end

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
      def to_hash
      end

      module AccountsType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType::TaggedSymbol) }

        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol)
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      module AccountNumberType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::TaggedSymbol) }

        AU_NUMBER =
          T.let(:au_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        CLABE = T.let(:clabe, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        HK_NUMBER =
          T.let(:hk_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        IBAN = T.let(:iban, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        ID_NUMBER =
          T.let(:id_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        NZ_NUMBER =
          T.let(:nz_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        PAN = T.let(:pan, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        SG_NUMBER =
          T.let(:sg_number, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
        WALLET_ADDRESS =
          T.let(:wallet_address, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol)
      end
    end
  end
end
