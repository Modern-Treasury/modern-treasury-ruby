# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntity < ModernTreasury::Internal::Type::BaseModel
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
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The status of the connection legal entity.
      sig { returns(ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol) }
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
          status: ModernTreasury::Models::ConnectionLegalEntity::Status::OrSymbol,
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
      ); end
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
      def to_hash; end

      # The status of the connection legal entity.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ConnectionLegalEntity::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol) }

        COMPLETED = T.let(:completed, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
        DENIED = T.let(:denied, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ConnectionLegalEntity::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
