# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociationCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityAssociationCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the child legal entity.
      sig { returns(String) }
      attr_accessor :child_legal_entity_id

      # The ID of the parent legal entity. This must be a business legal entity.
      sig { returns(String) }
      attr_accessor :parent_legal_entity_id

      sig do
        returns(
          T::Array[
            ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol
          ]
        )
      end
      attr_accessor :relationship_types

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :ownership_percentage

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          child_legal_entity_id: String,
          parent_legal_entity_id: String,
          relationship_types:
            T::Array[
              ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol
            ],
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the child legal entity.
        child_legal_entity_id:,
        # The ID of the parent legal entity. This must be a business legal entity.
        parent_legal_entity_id:,
        relationship_types:,
        # The child entity's ownership percentage iff they are a beneficial owner.
        ownership_percentage: nil,
        # The job title of the child entity at the parent entity.
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            child_legal_entity_id: String,
            parent_legal_entity_id: String,
            relationship_types:
              T::Array[
                ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol
              ],
            ownership_percentage: T.nilable(Integer),
            title: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A list of relationship types for how the child entity relates to parent entity.
      module RelationshipType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZED_SIGNER =
          T.let(
            :authorized_signer,
            ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol
          )
        BENEFICIAL_OWNER =
          T.let(
            :beneficial_owner,
            ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol
          )
        CONTROL_PERSON =
          T.let(
            :control_person,
            ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
