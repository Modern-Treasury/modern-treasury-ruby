# typed: strong

module ModernTreasury
  module Models
    class LegalEntityListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig do
        returns(
          T.nilable(
            ModernTreasury::LegalEntityListParams::LegalEntityType::OrSymbol
          )
        )
      end
      attr_reader :legal_entity_type

      sig do
        params(
          legal_entity_type:
            ModernTreasury::LegalEntityListParams::LegalEntityType::OrSymbol
        ).void
      end
      attr_writer :legal_entity_type

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
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
        returns(
          T.nilable(ModernTreasury::LegalEntityListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::LegalEntityListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          legal_entity_type:
            ModernTreasury::LegalEntityListParams::LegalEntityType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          show_deleted: String,
          status: ModernTreasury::LegalEntityListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        legal_entity_type: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        show_deleted: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            legal_entity_type:
              ModernTreasury::LegalEntityListParams::LegalEntityType::OrSymbol,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            show_deleted: String,
            status: ModernTreasury::LegalEntityListParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module LegalEntityType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LegalEntityListParams::LegalEntityType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::LegalEntityListParams::LegalEntityType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::LegalEntityListParams::LegalEntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityListParams::LegalEntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LegalEntityListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            ModernTreasury::LegalEntityListParams::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            ModernTreasury::LegalEntityListParams::Status::TaggedSymbol
          )
        SUSPENDED =
          T.let(
            :suspended,
            ModernTreasury::LegalEntityListParams::Status::TaggedSymbol
          )
        CLOSED =
          T.let(
            :closed,
            ModernTreasury::LegalEntityListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
