# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # Use `balances[effective_at_lower_bound]` and
      #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   not including that bound. Use `balances[as_of_lock_version]` to retrieve a
      #   balance as of a specific Ledger Account `lock_version`.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountRetrieveParams::Balances)) }
      attr_reader :balances

      sig do
        params(
          balances: T.any(ModernTreasury::Models::LedgerAccountRetrieveParams::Balances, ModernTreasury::Internal::AnyHash)
        )
          .void
      end
      attr_writer :balances

      sig do
        params(
          balances: T.any(ModernTreasury::Models::LedgerAccountRetrieveParams::Balances, ModernTreasury::Internal::AnyHash),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(balances: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              balances: ModernTreasury::Models::LedgerAccountRetrieveParams::Balances,
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

        sig { returns(T.nilable(Integer)) }
        attr_reader :as_of_lock_version

        sig { params(as_of_lock_version: Integer).void }
        attr_writer :as_of_lock_version

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at_lower_bound

        sig { params(effective_at_lower_bound: Time).void }
        attr_writer :effective_at_lower_bound

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at_upper_bound

        sig { params(effective_at_upper_bound: Time).void }
        attr_writer :effective_at_upper_bound

        # Use `balances[effective_at_lower_bound]` and
        #   `balances[effective_at_upper_bound]` to get the balances change between the two
        #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
        #   the provided timestamps. If no value is supplied the balances will be retrieved
        #   not including that bound. Use `balances[as_of_lock_version]` to retrieve a
        #   balance as of a specific Ledger Account `lock_version`.
        sig do
          params(
            as_of_date: Date,
            as_of_lock_version: Integer,
            effective_at: Time,
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          as_of_date: nil,
          as_of_lock_version: nil,
          effective_at: nil,
          effective_at_lower_bound: nil,
          effective_at_upper_bound: nil
        ); end
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
        def to_hash; end
      end
    end
  end
end
