# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # For example, if you want the balances as of a particular time (ISO8601), the
      #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #   The balances as of a time are inclusive of entries with that exact time.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances)) }
      def balances
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def balances=(_)
      end

      sig do
        params(
          balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(balances: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Balances < ModernTreasury::BaseModel
        sig { returns(T.nilable(Date)) }
        def as_of_date
        end

        sig { params(_: Date).returns(Date) }
        def as_of_date=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        # For example, if you want the balances as of a particular time (ISO8601), the
        #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   The balances as of a time are inclusive of entries with that exact time.
        sig { params(as_of_date: Date, effective_at: Time).returns(T.attached_class) }
        def self.new(as_of_date: nil, effective_at: nil)
        end

        sig { override.returns({as_of_date: Date, effective_at: Time}) }
        def to_hash
        end
      end
    end
  end
end
