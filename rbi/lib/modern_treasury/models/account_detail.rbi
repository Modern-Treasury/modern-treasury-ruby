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

      sig { returns(String) }
      def account_number_safe
      end

      sig { params(_: String).returns(String) }
      def account_number_safe=(_)
      end

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
          .void
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
        def self.values
        end
      end
    end
  end
end
