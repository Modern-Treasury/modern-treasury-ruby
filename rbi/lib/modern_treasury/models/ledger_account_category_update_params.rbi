# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {description: T.nilable(String), metadata: T::Hash[Symbol, String], name: String},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(description: nil, metadata: nil, name: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerAccountCategoryUpdateParams::Shape) }
      def to_h; end
    end
  end
end
