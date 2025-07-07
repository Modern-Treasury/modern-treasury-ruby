# typed: strong

module ModernTreasury
  module Models
    class ContactDetail < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ContactDetail,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :contact_identifier

      sig do
        returns(ModernTreasury::ContactDetail::ContactIdentifierType::OrSymbol)
      end
      attr_accessor :contact_identifier_type

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

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          contact_identifier: String,
          contact_identifier_type:
            ModernTreasury::ContactDetail::ContactIdentifierType::OrSymbol,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        contact_identifier:,
        contact_identifier_type:,
        created_at:,
        discarded_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            contact_identifier: String,
            contact_identifier_type:
              ModernTreasury::ContactDetail::ContactIdentifierType::OrSymbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      module ContactIdentifierType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ContactDetail::ContactIdentifierType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL =
          T.let(
            :email,
            ModernTreasury::ContactDetail::ContactIdentifierType::TaggedSymbol
          )
        PHONE_NUMBER =
          T.let(
            :phone_number,
            ModernTreasury::ContactDetail::ContactIdentifierType::TaggedSymbol
          )
        WEBSITE =
          T.let(
            :website,
            ModernTreasury::ContactDetail::ContactIdentifierType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ContactDetail::ContactIdentifierType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
