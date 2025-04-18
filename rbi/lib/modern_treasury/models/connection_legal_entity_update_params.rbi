# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # The status of the connection legal entity.
      sig { returns(T.nilable(ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          status: ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(status: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              status: ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # The status of the connection legal entity.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROCESSING =
          T.let(:processing, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
