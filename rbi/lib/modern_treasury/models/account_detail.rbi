# typed: strong

module ModernTreasury
  module Models
    class AccountDetail < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The last 4 digits of the account_number.
      sig { returns(String) }
      def account_number_safe
      end

      sig { params(_: String).returns(String) }
      def account_number_safe=(_)
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      sig { returns(Symbol) }
      def account_number_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def account_number_type=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # The account number for the bank account.
      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

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
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_number_safe:,
        account_number_type:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        updated_at:,
        account_number: nil
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
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
