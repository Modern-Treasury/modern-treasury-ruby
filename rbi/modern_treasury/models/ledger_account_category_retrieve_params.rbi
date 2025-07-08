# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountCategoryRetrieveParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # For example, if you want the balances as of a particular time (ISO8601), the
      # encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      # The balances as of a time are inclusive of entries with that exact time, but
      # with respect to the ledger accounts that are currently present in the category.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerAccountCategoryRetrieveParams::Balances
          )
        )
      end
      attr_reader :balances

      sig do
        params(
          balances:
            ModernTreasury::LedgerAccountCategoryRetrieveParams::Balances::OrHash
        ).void
      end
      attr_writer :balances

      sig do
        params(
          balances:
            ModernTreasury::LedgerAccountCategoryRetrieveParams::Balances::OrHash,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # For example, if you want the balances as of a particular time (ISO8601), the
        # encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        # The balances as of a time are inclusive of entries with that exact time, but
        # with respect to the ledger accounts that are currently present in the category.
        balances: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            balances:
              ModernTreasury::LedgerAccountCategoryRetrieveParams::Balances,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Balances < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountCategoryRetrieveParams::Balances,
              ModernTreasury::Internal::AnyHash
            )
          end

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
        # The balances as of a time are inclusive of entries with that exact time, but
        # with respect to the ledger accounts that are currently present in the category.
        sig do
          params(as_of_date: Date, effective_at: Time).returns(T.attached_class)
        end
        def self.new(as_of_date: nil, effective_at: nil)
        end

        sig { override.returns({ as_of_date: Date, effective_at: Time }) }
        def to_hash
        end
      end
    end
  end
end
