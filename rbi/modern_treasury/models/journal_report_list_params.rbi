# typed: strong

module ModernTreasury
  module Models
    class JournalReportListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::JournalReportListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(ModernTreasury::JournalReportListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::JournalReportListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          status: ModernTreasury::JournalReportListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            status: ModernTreasury::JournalReportListParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::JournalReportListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT =
          T.let(
            :draft,
            ModernTreasury::JournalReportListParams::Status::TaggedSymbol
          )
        PUBLISHED =
          T.let(
            :published,
            ModernTreasury::JournalReportListParams::Status::TaggedSymbol
          )
        READY =
          T.let(
            :ready,
            ModernTreasury::JournalReportListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::JournalReportListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
