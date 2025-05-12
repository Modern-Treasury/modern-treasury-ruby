# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ConnectionLegalEntityUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The status of the connection legal entity.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ConnectionLegalEntityUpdateParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            ModernTreasury::ConnectionLegalEntityUpdateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          status:
            ModernTreasury::ConnectionLegalEntityUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The status of the connection legal entity.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status:
              ModernTreasury::ConnectionLegalEntityUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
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
            T.all(
              Symbol,
              ModernTreasury::ConnectionLegalEntityUpdateParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROCESSING =
          T.let(
            :processing,
            ModernTreasury::ConnectionLegalEntityUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ConnectionLegalEntityUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
