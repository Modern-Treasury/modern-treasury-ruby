# typed: strong

module ModernTreasury
  module Models
    class AccountDetail < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_number_safe

      sig { returns(Symbol) }
      attr_accessor :account_number_type

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { params(account_number: String).void }
      attr_writer :account_number

      sig do
        params(
          id: String,
          account_number_safe: String,
          account_number_type: Symbol,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time,
          account_number: String
        ).void
      end
      def initialize(
        id:,
        account_number_safe:,
        account_number_type:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        updated_at:,
        account_number: nil
      ); end

      sig do
        override.returns(
          {
            id: String,
            account_number_safe: String,
            account_number_type: Symbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time,
            account_number: String
          }
        )
      end
      def to_hash; end

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
