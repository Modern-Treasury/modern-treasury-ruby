# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntity < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The ID of the connection.
      sig { returns(String) }
      attr_accessor :connection_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The ID of the legal entity.
      sig { returns(String) }
      attr_accessor :legal_entity_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The status of the connection legal entity.
      sig do
        returns(ModernTreasury::ConnectionLegalEntity::Status::TaggedSymbol)
      end
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      # The ID of the legal entity at the vendor.
      sig { returns(String) }
      attr_accessor :vendor_id

      sig do
        params(
          id: String,
          connection_id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          legal_entity_id: String,
          live_mode: T::Boolean,
          object: String,
          status: ModernTreasury::ConnectionLegalEntity::Status::OrSymbol,
          updated_at: Time,
          vendor_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The ID of the connection.
        connection_id:,
        created_at:,
        discarded_at:,
        # The ID of the legal entity.
        legal_entity_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The status of the connection legal entity.
        status:,
        updated_at:,
        # The ID of the legal entity at the vendor.
        vendor_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            connection_id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            legal_entity_id: String,
            live_mode: T::Boolean,
            object: String,
            status: ModernTreasury::ConnectionLegalEntity::Status::TaggedSymbol,
            updated_at: Time,
            vendor_id: String
          }
        )
      end
      def to_hash
      end

      # The status of the connection legal entity.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ConnectionLegalEntity::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::ConnectionLegalEntity::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            ModernTreasury::ConnectionLegalEntity::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            ModernTreasury::ConnectionLegalEntity::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            ModernTreasury::ConnectionLegalEntity::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ConnectionLegalEntity::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
