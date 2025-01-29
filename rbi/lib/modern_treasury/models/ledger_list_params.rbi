# typed: strong

module ModernTreasury
  module Models
    class LedgerListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            id: T::Array[String],
            after_cursor: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            updated_at: T::Hash[Symbol, Time]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T::Array[String]) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        id: nil,
        after_cursor: nil,
        metadata: nil,
        per_page: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      sig { returns(ModernTreasury::Models::LedgerListParams::Shape) }
      def to_h; end
    end
  end
end
