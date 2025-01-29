# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {accounts_type: Symbol, after_cursor: T.nilable(String), per_page: Integer},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(Symbol) }
      attr_accessor :accounts_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          accounts_type: Symbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(accounts_type:, after_cursor: nil, per_page: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::RoutingDetailListParams::Shape) }
      def to_h; end
    end
  end
end
