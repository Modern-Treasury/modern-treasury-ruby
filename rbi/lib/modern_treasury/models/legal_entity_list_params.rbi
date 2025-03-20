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

      sig { returns(T.nilable(ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol)) }
      def legal_entity_type
      end

      sig do
        params(_: ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol)
          .returns(ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol)
      end
      def legal_entity_type=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
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
          legal_entity_type: ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol,
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
              legal_entity_type: ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              show_deleted: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module LegalEntityType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol) }

        BUSINESS = T.let(:business, ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol)
        INDIVIDUAL =
          T.let(:individual, ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
