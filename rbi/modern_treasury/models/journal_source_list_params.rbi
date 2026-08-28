# typed: strong

module ModernTreasury
  module Models
    class JournalSourceListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::JournalSourceListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the journal entry
      sig { returns(T.nilable(String)) }
      attr_reader :journal_entry_id

      sig { params(journal_entry_id: String).void }
      attr_writer :journal_entry_id

      # The ID of the journal report
      sig { returns(T.nilable(String)) }
      attr_reader :journal_report_id

      sig { params(journal_report_id: String).void }
      attr_writer :journal_report_id

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

      # The ID of the source object
      sig { returns(T.nilable(String)) }
      attr_reader :source_id

      sig { params(source_id: String).void }
      attr_writer :source_id

      # The type of the source object
      sig { returns(T.nilable(String)) }
      attr_reader :source_type

      sig { params(source_type: String).void }
      attr_writer :source_type

      sig do
        params(
          journal_entry_id: String,
          journal_report_id: String,
          page: Integer,
          per_page: Integer,
          source_id: String,
          source_type: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the journal entry
        journal_entry_id: nil,
        # The ID of the journal report
        journal_report_id: nil,
        # Page number for pagination
        page: nil,
        # Number of items per page
        per_page: nil,
        # The ID of the source object
        source_id: nil,
        # The type of the source object
        source_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            journal_entry_id: String,
            journal_report_id: String,
            page: Integer,
            per_page: Integer,
            source_id: String,
            source_type: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
