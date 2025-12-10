# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociation < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityAssociation,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The child legal entity.
      sig { returns(T.anything) }
      attr_accessor :child_legal_entity

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :ownership_percentage

      # The ID of the parent legal entity. This must be a business or joint legal
      # entity.
      sig { returns(String) }
      attr_accessor :parent_legal_entity_id

      sig do
        returns(
          T::Array[
            ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
          ]
        )
      end
      attr_accessor :relationship_types

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          child_legal_entity: T.anything,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          ownership_percentage: T.nilable(Integer),
          parent_legal_entity_id: String,
          relationship_types:
            T::Array[
              ModernTreasury::LegalEntityAssociation::RelationshipType::OrSymbol
            ],
          title: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The child legal entity.
        child_legal_entity:,
        created_at:,
        discarded_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The child entity's ownership percentage iff they are a beneficial owner.
        ownership_percentage:,
        # The ID of the parent legal entity. This must be a business or joint legal
        # entity.
        parent_legal_entity_id:,
        relationship_types:,
        # The job title of the child entity at the parent entity.
        title:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            child_legal_entity: T.anything,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            ownership_percentage: T.nilable(Integer),
            parent_legal_entity_id: String,
            relationship_types:
              T::Array[
                ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
              ],
            title: T.nilable(String),
            updated_at: Time
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
              ModernTreasury::LegalEntityAssociation::RelationshipType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZED_SIGNER =
          T.let(
            :authorized_signer,
            ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
          )
        BENEFICIAL_OWNER =
          T.let(
            :beneficial_owner,
            ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
          )
        CONTROL_PERSON =
          T.let(
            :control_person,
            ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
