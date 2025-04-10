# typed: strong

module ModernTreasury
  module Models
    class AccountDetailListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, after_cursor: nil, per_page: nil, request_options: {}); end

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
      def to_hash; end
    end
  end
end
