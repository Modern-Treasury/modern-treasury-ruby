# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances)) }
      def balances
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances)
          .returns(ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances)
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
