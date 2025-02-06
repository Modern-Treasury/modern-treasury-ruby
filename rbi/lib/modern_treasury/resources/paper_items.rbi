# typed: strong

module ModernTreasury
  module Resources
    class PaperItems
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::PaperItem)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          deposit_date_end: Date,
          deposit_date_start: Date,
          lockbox_number: String,
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::PaperItem])
      end
      def list(
        after_cursor: nil,
        deposit_date_end: nil,
        deposit_date_start: nil,
        lockbox_number: nil,
        per_page: nil,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
