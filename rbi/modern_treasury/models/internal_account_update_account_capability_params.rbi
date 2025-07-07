# typed: strong

module ModernTreasury
  module Models
    class InternalAccountUpdateAccountCapabilityParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InternalAccountUpdateAccountCapabilityParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :internal_account_id

      # A unique reference assigned by your bank for tracking and recognizing payment
      # files. It is important this is formatted exactly how the bank assigned it.
      sig { returns(String) }
      attr_accessor :identifier

      sig do
        params(
          internal_account_id: String,
          identifier: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        internal_account_id:,
        # A unique reference assigned by your bank for tracking and recognizing payment
        # files. It is important this is formatted exactly how the bank assigned it.
        identifier:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            internal_account_id: String,
            identifier: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
