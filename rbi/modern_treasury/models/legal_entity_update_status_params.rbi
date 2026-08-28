# typed: strong

module ModernTreasury
  module Models
    class LegalEntityUpdateStatusParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityUpdateStatusParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The target status for the legal entity. One of `active`, `suspended`, or
      # `denied`. Valid transitions depend on the current status.
      sig do
        returns(ModernTreasury::LegalEntityUpdateStatusParams::Status::OrSymbol)
      end
      attr_accessor :status

      sig do
        params(
          id: String,
          status:
            ModernTreasury::LegalEntityUpdateStatusParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The target status for the legal entity. One of `active`, `suspended`, or
        # `denied`. Valid transitions depend on the current status.
        status:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            status:
              ModernTreasury::LegalEntityUpdateStatusParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The target status for the legal entity. One of `active`, `suspended`, or
      # `denied`. Valid transitions depend on the current status.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LegalEntityUpdateStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            ModernTreasury::LegalEntityUpdateStatusParams::Status::TaggedSymbol
          )
        SUSPENDED =
          T.let(
            :suspended,
            ModernTreasury::LegalEntityUpdateStatusParams::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            ModernTreasury::LegalEntityUpdateStatusParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityUpdateStatusParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
