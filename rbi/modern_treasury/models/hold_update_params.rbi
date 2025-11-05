# typed: strong

module ModernTreasury
  module Models
    class HoldUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::HoldUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The new status of the hold
      sig { returns(ModernTreasury::HoldUpdateParams::Status::OrSymbol) }
      attr_accessor :status

      # The resolution of the hold
      sig { returns(T.nilable(String)) }
      attr_accessor :resolution

      sig do
        params(
          status: ModernTreasury::HoldUpdateParams::Status::OrSymbol,
          resolution: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The new status of the hold
        status:,
        # The resolution of the hold
        resolution: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: ModernTreasury::HoldUpdateParams::Status::OrSymbol,
            resolution: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The new status of the hold
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::HoldUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RESOLVED =
          T.let(
            :resolved,
            ModernTreasury::HoldUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::HoldUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
