# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {description: String, metadata: T::Hash[Symbol, String]},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(description: nil, metadata: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitorUpdateParams::Shape) }
      def to_h; end
    end
  end
end
