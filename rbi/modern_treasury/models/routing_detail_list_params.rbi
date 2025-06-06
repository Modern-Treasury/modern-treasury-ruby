# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::RoutingDetailListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(ModernTreasury::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          accounts_type: ModernTreasury::AccountsType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        accounts_type:,
        after_cursor: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            accounts_type: ModernTreasury::AccountsType::OrSymbol,
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
