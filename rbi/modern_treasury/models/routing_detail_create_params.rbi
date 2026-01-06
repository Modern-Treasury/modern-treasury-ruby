# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailCreateParams < ModernTreasury::Models::RoutingDetailCreate
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::RoutingDetailCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig do
        returns(
          ModernTreasury::RoutingDetailCreateParams::AccountsType::OrSymbol
        )
      end
      attr_accessor :accounts_type

      sig do
        params(
          accounts_type:
            ModernTreasury::RoutingDetailCreateParams::AccountsType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(accounts_type:, request_options: {})
      end

      sig do
        override.returns(
          {
            accounts_type:
              ModernTreasury::RoutingDetailCreateParams::AccountsType::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::RoutingDetailCreateParams::AccountsType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_ACCOUNTS =
          T.let(
            :external_accounts,
            ModernTreasury::RoutingDetailCreateParams::AccountsType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreateParams::AccountsType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
