# typed: strong

module ModernTreasury
  module Models
    class AccountDetail < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountDetail,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The last 4 digits of the account_number.
      sig { returns(String) }
      attr_accessor :account_number_safe

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      sig do
        returns(ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol)
      end
      attr_accessor :account_number_type

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      # The account number for the bank account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { params(account_number: String).void }
      attr_writer :account_number

      sig do
        params(
          id: String,
          account_number_safe: String,
          account_number_type:
            ModernTreasury::AccountDetail::AccountNumberType::OrSymbol,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time,
          account_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The last 4 digits of the account_number.
        account_number_safe:,
        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        # account number is in a generic format.
        account_number_type:,
        created_at:,
        discarded_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        updated_at:,
        # The account number for the bank account.
        account_number: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_number_safe: String,
            account_number_type:
              ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol,
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
      # account number is in a generic format.
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::AccountDetail::AccountNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AU_NUMBER =
          T.let(
            :au_number,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        CLABE =
          T.let(
            :clabe,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        HK_NUMBER =
          T.let(
            :hk_number,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        IBAN =
          T.let(
            :iban,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        ID_NUMBER =
          T.let(
            :id_number,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        NZ_NUMBER =
          T.let(
            :nz_number,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        PAN =
          T.let(
            :pan,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        SG_NUMBER =
          T.let(
            :sg_number,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )
        WALLET_ADDRESS =
          T.let(
            :wallet_address,
            ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountDetail::AccountNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
