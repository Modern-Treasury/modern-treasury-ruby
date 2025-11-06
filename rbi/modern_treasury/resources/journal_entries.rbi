# typed: strong

module ModernTreasury
  module Resources
    class JournalEntries
      # Retrieve a specific journal entry
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def retrieve(
        # The ID of the journal entry
        id,
        request_options: {}
      )
      end

      # Retrieve a list of journal entries
      sig do
        params(
          journal_report_id: String,
          page: Integer,
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def list(
        # The ID of the journal report
        journal_report_id:,
        # Page number for pagination
        page: nil,
        # Number of items per page
        per_page: nil,
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
