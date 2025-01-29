# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {description: T.nilable(String), metadata: T::Hash[Symbol, String], status: Symbol},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(description: nil, metadata: nil, status: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        POSTED = :posted
        ARCHIVED = :archived

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
