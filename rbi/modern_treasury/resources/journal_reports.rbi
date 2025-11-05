# typed: strong

module ModernTreasury
  module Resources
    class JournalReports
      # Retrieve a specific journal report
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def retrieve(
        # The ID of the journal report
        id,
        request_options: {}
      )
      end

      # Update a journal report
      sig do
        params(
          id: String,
          metadata: T.anything,
          status: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def update(
        # The ID of the journal report
        id,
        metadata: nil,
        status: nil,
        request_options: {}
      )
      end

      # Retrieve a list of journal reports
      sig do
        params(request_options: ModernTreasury::RequestOptions::OrHash).void
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
