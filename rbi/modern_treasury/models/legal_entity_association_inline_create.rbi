# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociationInlineCreate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityAssociationInlineCreate,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType::OrSymbol
          ]
        )
      end
      attr_accessor :relationship_types

      # The child legal entity.
      sig { returns(T.nilable(ModernTreasury::ChildLegalEntityCreate)) }
      attr_reader :child_legal_entity

      sig do
        params(child_legal_entity: ModernTreasury::ChildLegalEntityCreate).void
      end
      attr_writer :child_legal_entity

      # The ID of the child legal entity.
      sig { returns(T.nilable(String)) }
      attr_reader :child_legal_entity_id

      sig { params(child_legal_entity_id: String).void }
      attr_writer :child_legal_entity_id

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :ownership_percentage

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          relationship_types:
            T::Array[
              ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType::OrSymbol
            ],
          child_legal_entity: ModernTreasury::ChildLegalEntityCreate,
          child_legal_entity_id: String,
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        relationship_types:,
        # The child legal entity.
        child_legal_entity: nil,
        # The ID of the child legal entity.
        child_legal_entity_id: nil,
        # The child entity's ownership percentage iff they are a beneficial owner.
        ownership_percentage: nil,
        # The job title of the child entity at the parent entity.
        title: nil
      )
      end

      sig do
        override.returns(
          {
            relationship_types:
              T::Array[
                ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType::OrSymbol
              ],
            child_legal_entity: ModernTreasury::ChildLegalEntityCreate,
            child_legal_entity_id: String,
            ownership_percentage: T.nilable(Integer),
            title: T.nilable(String)
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
              ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZED_SIGNER =
          T.let(
            :authorized_signer,
            ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType::TaggedSymbol
          )
        BENEFICIAL_OWNER =
          T.let(
            :beneficial_owner,
            ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType::TaggedSymbol
          )
        CONTROL_PERSON =
          T.let(
            :control_person,
            ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityAssociationInlineCreate::RelationshipType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
