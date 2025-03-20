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
      sig { returns(ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol) }
      def account_number_type
      end

      sig do
        params(_: ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
          .returns(ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
      end
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
          account_number_type: ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol,
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
              account_number_type: ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol,
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
      module AccountNumberType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountDetail::AccountNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol) }

        AU_NUMBER = T.let(:au_number, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        CLABE = T.let(:clabe, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        HK_NUMBER = T.let(:hk_number, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        IBAN = T.let(:iban, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        ID_NUMBER = T.let(:id_number, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        NZ_NUMBER = T.let(:nz_number, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        PAN = T.let(:pan, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        SG_NUMBER = T.let(:sg_number, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)
        WALLET_ADDRESS =
          T.let(:wallet_address, ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::AccountDetail::AccountNumberType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
