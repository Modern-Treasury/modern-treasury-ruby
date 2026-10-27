# typed: strong

module ModernTreasury
  module Models
    class EmbeddableFlowListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::EmbeddableFlowListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        returns(
          T.nilable(
            ModernTreasury::EmbeddableFlowListParams::Template::OrSymbol
          )
        )
      end
      attr_reader :template

      sig do
        params(
          template: ModernTreasury::EmbeddableFlowListParams::Template::OrSymbol
        ).void
      end
      attr_writer :template

      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          status: String,
          template:
            ModernTreasury::EmbeddableFlowListParams::Template::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        per_page: nil,
        status: nil,
        template: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            per_page: Integer,
            status: String,
            template:
              ModernTreasury::EmbeddableFlowListParams::Template::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Template
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::EmbeddableFlowListParams::Template)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEGAL_ENTITY_ONBOARDING =
          T.let(
            :legal_entity_onboarding,
            ModernTreasury::EmbeddableFlowListParams::Template::TaggedSymbol
          )
        ACCOUNT_COLLECTION =
          T.let(
            :account_collection,
            ModernTreasury::EmbeddableFlowListParams::Template::TaggedSymbol
          )
        PAYMENT =
          T.let(
            :payment,
            ModernTreasury::EmbeddableFlowListParams::Template::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::EmbeddableFlowListParams::Template::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
