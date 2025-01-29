# typed: strong

module ModernTreasury
  module Models
    class LegalEntityListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            legal_entity_type: Symbol,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            show_deleted: String
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Symbol)) }
      attr_reader :legal_entity_type

      sig { params(legal_entity_type: Symbol).void }
      attr_writer :legal_entity_type

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :show_deleted

      sig { params(show_deleted: String).void }
      attr_writer :show_deleted

      sig do
        params(
          after_cursor: T.nilable(String),
          legal_entity_type: Symbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          show_deleted: String,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        legal_entity_type: nil,
        metadata: nil,
        per_page: nil,
        show_deleted: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LegalEntityListParams::Shape) }
      def to_h; end

      class LegalEntityType < ModernTreasury::Enum
        abstract!

        BUSINESS = :business
        INDIVIDUAL = :individual

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
