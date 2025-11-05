# typed: strong

module ModernTreasury
  module Models
    class JournalReportUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::JournalReportUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T.anything)) }
      attr_reader :metadata

      sig { params(metadata: T.anything).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          metadata: T.anything,
          status: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(metadata: nil, status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            metadata: T.anything,
            status: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
