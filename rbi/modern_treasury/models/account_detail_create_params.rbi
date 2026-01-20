# typed: strong

module ModernTreasury
  module Models
    class AccountDetailCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountDetailCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig do
        returns(
          ModernTreasury::AccountDetailCreateParams::AccountsType::OrSymbol
        )
      end
      attr_accessor :accounts_type

      # The account number for the bank account.
      sig { returns(String) }
      attr_accessor :account_number

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      sig do
        returns(
          T.nilable(
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::OrSymbol
          )
        )
      end
      attr_reader :account_number_type

      sig do
        params(
          account_number_type:
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::OrSymbol
        ).void
      end
      attr_writer :account_number_type

      sig do
        params(
          accounts_type:
            ModernTreasury::AccountDetailCreateParams::AccountsType::OrSymbol,
          account_number: String,
          account_number_type:
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        accounts_type:,
        # The account number for the bank account.
        account_number:,
        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        # account number is in a generic format.
        account_number_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            accounts_type:
              ModernTreasury::AccountDetailCreateParams::AccountsType::OrSymbol,
            account_number: String,
            account_number_type:
              ModernTreasury::AccountDetailCreateParams::AccountNumberType::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountDetailCreateParams::AccountsType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_ACCOUNTS =
          T.let(
            :external_accounts,
            ModernTreasury::AccountDetailCreateParams::AccountsType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountDetailCreateParams::AccountsType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountDetailCreateParams::AccountNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AU_NUMBER =
          T.let(
            :au_number,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        BASE_ADDRESS =
          T.let(
            :base_address,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        CARD_TOKEN =
          T.let(
            :card_token,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        CLABE =
          T.let(
            :clabe,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        ETHEREUM_ADDRESS =
          T.let(
            :ethereum_address,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        HK_NUMBER =
          T.let(
            :hk_number,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        IBAN =
          T.let(
            :iban,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        ID_NUMBER =
          T.let(
            :id_number,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        NZ_NUMBER =
          T.let(
            :nz_number,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        PAN =
          T.let(
            :pan,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        POLYGON_ADDRESS =
          T.let(
            :polygon_address,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        SG_NUMBER =
          T.let(
            :sg_number,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        SOLANA_ADDRESS =
          T.let(
            :solana_address,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )
        WALLET_ADDRESS =
          T.let(
            :wallet_address,
            ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountDetailCreateParams::AccountNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
