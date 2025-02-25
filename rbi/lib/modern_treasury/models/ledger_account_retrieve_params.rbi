# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountRetrieveParams::Balances)) }
      def balances
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountRetrieveParams::Balances)
          .returns(ModernTreasury::Models::LedgerAccountRetrieveParams::Balances)
      end
      def balances=(_)
      end

      sig do
        params(
          balances: ModernTreasury::Models::LedgerAccountRetrieveParams::Balances,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(balances: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              balances: ModernTreasury::Models::LedgerAccountRetrieveParams::Balances,
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

        sig { returns(T.nilable(Integer)) }
        def as_of_lock_version
        end

        sig { params(_: Integer).returns(Integer) }
        def as_of_lock_version=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at_lower_bound
        end

        sig { params(_: Time).returns(Time) }
        def effective_at_lower_bound=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at_upper_bound
        end

        sig { params(_: Time).returns(Time) }
        def effective_at_upper_bound=(_)
        end

        sig do
          params(
            as_of_date: Date,
            as_of_lock_version: Integer,
            effective_at: Time,
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time
          )
            .void
        end
        def initialize(
          as_of_date: nil,
          as_of_lock_version: nil,
          effective_at: nil,
          effective_at_lower_bound: nil,
          effective_at_upper_bound: nil
        )
        end

        sig do
          override
            .returns(
              {
                as_of_date: Date,
                as_of_lock_version: Integer,
                effective_at: Time,
                effective_at_lower_bound: Time,
                effective_at_upper_bound: Time
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
