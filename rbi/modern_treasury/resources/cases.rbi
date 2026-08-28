# typed: strong

module ModernTreasury
  module Resources
    class Cases
      # Get details on a single case.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Case)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Get a list of cases.
      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          status: ModernTreasury::CaseListParams::Status::OrSymbol,
          subject_id: String,
          subject_type: ModernTreasury::CaseListParams::SubjectType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::Case])
      end
      def list(
        after_cursor: nil,
        per_page: nil,
        # The status of the case.
        status: nil,
        # The ID of the object the case is about.
        subject_id: nil,
        # The type of the object the case is about.
        subject_type: nil,
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
