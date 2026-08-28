# typed: strong

module ModernTreasury
  module Resources
    class JournalSources
      # Retrieve a specific journal source
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def retrieve(
        # The ID of the journal source
        id,
        request_options: {}
      )
      end

      # Retrieve a list of journal sources
      sig do
        params(
          journal_entry_id: String,
          journal_report_id: String,
          page: Integer,
          per_page: Integer,
          source_id: String,
          source_type: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def list(
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

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
