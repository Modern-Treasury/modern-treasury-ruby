# typed: strong

module ModernTreasury
  module Models
    class LegalEntityListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def legal_entity_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def legal_entity_type=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(String)) }
      def show_deleted
      end

      sig { params(_: String).returns(String) }
      def show_deleted=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          legal_entity_type: Symbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          show_deleted: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        legal_entity_type: nil,
        metadata: nil,
        per_page: nil,
        show_deleted: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              legal_entity_type: Symbol,
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              show_deleted: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class LegalEntityType < ModernTreasury::Enum
        abstract!

        BUSINESS = :business
        INDIVIDUAL = :individual

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
