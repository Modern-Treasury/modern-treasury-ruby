# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          accounts_type: ModernTreasury::Models::AccountsType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, after_cursor: nil, per_page: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              accounts_type: ModernTreasury::Models::AccountsType::OrSymbol,
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
