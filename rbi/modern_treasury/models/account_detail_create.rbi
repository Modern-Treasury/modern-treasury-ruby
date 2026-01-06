# typed: strong

module ModernTreasury
  module Models
    class AccountDetailCreate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountDetailCreate,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The account number for the bank account.
      sig { returns(String) }
      attr_accessor :account_number

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      sig do
        returns(
          T.nilable(
            ModernTreasury::AccountDetailCreate::AccountNumberType::OrSymbol
          )
        )
      end
      attr_reader :account_number_type

      sig do
        params(
          account_number_type:
            ModernTreasury::AccountDetailCreate::AccountNumberType::OrSymbol
        ).void
      end
      attr_writer :account_number_type

      sig do
        params(
          account_number: String,
          account_number_type:
            ModernTreasury::AccountDetailCreate::AccountNumberType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The account number for the bank account.
        account_number:,
        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        # account number is in a generic format.
        account_number_type: nil
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            account_number_type:
              ModernTreasury::AccountDetailCreate::AccountNumberType::OrSymbol
          }
        )
      end
      def to_hash
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountDetailCreate::AccountNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AU_NUMBER =
          T.let(
            :au_number,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        BASE_ADDRESS =
          T.let(
            :base_address,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        CLABE =
          T.let(
            :clabe,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        ETHEREUM_ADDRESS =
          T.let(
            :ethereum_address,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        HK_NUMBER =
          T.let(
            :hk_number,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        IBAN =
          T.let(
            :iban,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        ID_NUMBER =
          T.let(
            :id_number,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        NZ_NUMBER =
          T.let(
            :nz_number,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        PAN =
          T.let(
            :pan,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        POLYGON_ADDRESS =
          T.let(
            :polygon_address,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        SG_NUMBER =
          T.let(
            :sg_number,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        SOLANA_ADDRESS =
          T.let(
            :solana_address,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )
        WALLET_ADDRESS =
          T.let(
            :wallet_address,
            ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountDetailCreate::AccountNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
