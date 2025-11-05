# typed: strong

module ModernTreasury
  module Models
    class JournalEntryListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::JournalEntryListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the journal report
      sig { returns(String) }
      attr_accessor :journal_report_id

      sig do
        params(
          journal_report_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the journal report
        journal_report_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            journal_report_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
