# typed: strong

module ModernTreasury
  module Models
    class AccountDetailCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :accounts_type

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(T.nilable(Symbol)) }
      attr_reader :account_number_type

      sig { params(account_number_type: Symbol).void }
      attr_writer :account_number_type

      sig do
        params(
          accounts_type: Symbol,
          account_number: String,
          account_number_type: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(accounts_type:, account_number:, account_number_type: nil, request_options: {}); end

      sig do
        override.returns(
          {
            accounts_type: Symbol,
            account_number: String,
            account_number_type: Symbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class AccountsType < ModernTreasury::Enum
        abstract!

        EXTERNAL_ACCOUNTS = :external_accounts

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
