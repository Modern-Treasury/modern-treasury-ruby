# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # For example, if you want the balances as of a particular time (ISO8601), the
      # encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      # The balances as of a time are inclusive of entries with that exact time.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances)) }
      attr_reader :balances

      sig do
        params(
          balances: T.any(
            ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :balances

      sig do
        params(
          balances: T.any(
            ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
            ModernTreasury::Internal::AnyHash
          ),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # For example, if you want the balances as of a particular time (ISO8601), the
        # encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        # The balances as of a time are inclusive of entries with that exact time.
        balances: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      class Balances < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(Date)) }
        attr_reader :as_of_date

        sig { params(as_of_date: Date).void }
        attr_writer :as_of_date

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        # For example, if you want the balances as of a particular time (ISO8601), the
        # encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        # The balances as of a time are inclusive of entries with that exact time.
        sig { params(as_of_date: Date, effective_at: Time).returns(T.attached_class) }
        def self.new(as_of_date: nil, effective_at: nil); end

        sig { override.returns({as_of_date: Date, effective_at: Time}) }
        def to_hash; end
      end
    end
  end
end
