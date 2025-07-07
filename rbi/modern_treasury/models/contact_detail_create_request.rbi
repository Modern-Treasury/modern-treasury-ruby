# typed: strong

module ModernTreasury
  module Models
    class ContactDetailCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ContactDetailCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :contact_identifier

      sig { params(contact_identifier: String).void }
      attr_writer :contact_identifier

      sig do
        returns(
          T.nilable(
            ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::OrSymbol
          )
        )
      end
      attr_reader :contact_identifier_type

      sig do
        params(
          contact_identifier_type:
            ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::OrSymbol
        ).void
      end
      attr_writer :contact_identifier_type

      sig do
        params(
          contact_identifier: String,
          contact_identifier_type:
            ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(contact_identifier: nil, contact_identifier_type: nil)
      end

      sig do
        override.returns(
          {
            contact_identifier: String,
            contact_identifier_type:
              ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module ContactIdentifierType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL =
          T.let(
            :email,
            ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::TaggedSymbol
          )
        PHONE_NUMBER =
          T.let(
            :phone_number,
            ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::TaggedSymbol
          )
        WEBSITE =
          T.let(
            :website,
            ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
