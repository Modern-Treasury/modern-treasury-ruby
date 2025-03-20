# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntity < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The ID of the connection.
      sig { returns(String) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      # The ID of the legal entity.
      sig { returns(String) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The status of the connection legal entity.
      sig { returns(ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
      end
      def status=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # The ID of the legal entity at the vendor.
      sig { returns(String) }
      def vendor_id
      end

      sig { params(_: String).returns(String) }
      def vendor_id=(_)
      end

      sig do
        params(
          id: String,
          connection_id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          legal_entity_id: String,
          live_mode: T::Boolean,
          object: String,
          status: ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol,
          updated_at: Time,
          vendor_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        connection_id:,
        created_at:,
        discarded_at:,
        legal_entity_id:,
        live_mode:,
        object:,
        status:,
        updated_at:,
        vendor_id:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              connection_id: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              legal_entity_id: String,
              live_mode: T::Boolean,
              object: String,
              status: ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol,
              updated_at: Time,
              vendor_id: String
            }
          )
      end
      def to_hash
      end

      # The status of the connection legal entity.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ConnectionLegalEntity::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol) }

        COMPLETED = T.let(:completed, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
        DENIED = T.let(:denied, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
