# typed: strong

module ModernTreasury
  module Models
    class AccountDetailCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountDetailCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The account number for the bank account.
      sig { returns(String) }
      attr_accessor :account_number

      # The type of the account number. For wallet addresses, use the chain-specific
      # type (e.g. `ethereum_address`). Use `other` if the account number is in a
      # generic format.
      sig do
        returns(
          T.nilable(
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::OrSymbol
          )
        )
      end
      attr_reader :account_number_type

      sig do
        params(
          account_number_type:
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::OrSymbol
        ).void
      end
      attr_writer :account_number_type

      sig do
        params(
          account_number: String,
          account_number_type:
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The account number for the bank account.
        account_number:,
        # The type of the account number. For wallet addresses, use the chain-specific
        # type (e.g. `ethereum_address`). Use `other` if the account number is in a
        # generic format.
        account_number_type: nil
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            account_number_type:
              ModernTreasury::AccountDetailCreateRequest::AccountNumberType::OrSymbol
          }
        )
      end
      def to_hash
      end

      # The type of the account number. For wallet addresses, use the chain-specific
      # type (e.g. `ethereum_address`). Use `other` if the account number is in a
      # generic format.
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountDetailCreateRequest::AccountNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARBITRUM_ADDRESS =
          T.let(
            :arbitrum_address,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        AU_NUMBER =
          T.let(
            :au_number,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        AVALANCHE_ADDRESS =
          T.let(
            :avalanche_address,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        BASE_ADDRESS =
          T.let(
            :base_address,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        CARD_TOKEN =
          T.let(
            :card_token,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        CLABE =
          T.let(
            :clabe,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        ETHEREUM_ADDRESS =
          T.let(
            :ethereum_address,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        HK_NUMBER =
          T.let(
            :hk_number,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        IBAN =
          T.let(
            :iban,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        ID_NUMBER =
          T.let(
            :id_number,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        NZ_NUMBER =
          T.let(
            :nz_number,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        PAN =
          T.let(
            :pan,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        POLYGON_ADDRESS =
          T.let(
            :polygon_address,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        SG_NUMBER =
          T.let(
            :sg_number,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )
        SOLANA_ADDRESS =
          T.let(
            :solana_address,
            ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountDetailCreateRequest::AccountNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
