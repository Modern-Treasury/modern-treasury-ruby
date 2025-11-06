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

      # Page number for pagination
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Number of items per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          journal_report_id: String,
          page: Integer,
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the journal report
        journal_report_id:,
        # Page number for pagination
        page: nil,
        # Number of items per page
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            journal_report_id: String,
            page: Integer,
            per_page: Integer,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
