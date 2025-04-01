# typed: strong

module ModernTreasury
  module Models
    class LegalEntityListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol)) }
      attr_reader :legal_entity_type

      sig { params(legal_entity_type: ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol).void }
      attr_writer :legal_entity_type

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
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
          legal_entity_type: ModernTreasury::Models::LegalEntityListParams::LegalEntityType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          show_deleted: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol) }

        BUSINESS = T.let(:business, ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol)
        INDIVIDUAL =
          T.let(:individual, ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LegalEntityListParams::LegalEntityType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
