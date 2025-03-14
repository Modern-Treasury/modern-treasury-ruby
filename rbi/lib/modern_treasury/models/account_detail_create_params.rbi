# typed: strong

module ModernTreasury
  module Models
    class AccountDetailCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      def accounts_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(T.nilable(Symbol)) }
      def account_number_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def account_number_type=(_)
      end

      sig do
        params(
          accounts_type: Symbol,
          account_number: String,
          account_number_type: Symbol,
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
              accounts_type: Symbol,
              account_number: String,
              account_number_type: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AccountsType < ModernTreasury::Enum
        abstract!

        EXTERNAL_ACCOUNTS = :external_accounts

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      class AccountNumberType < ModernTreasury::Enum
        abstract!

        AU_NUMBER = :au_number
        CLABE = :clabe
        HK_NUMBER = :hk_number
        IBAN = :iban
        ID_NUMBER = :id_number
        NZ_NUMBER = :nz_number
        OTHER = :other
        PAN = :pan
        SG_NUMBER = :sg_number
        WALLET_ADDRESS = :wallet_address

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
