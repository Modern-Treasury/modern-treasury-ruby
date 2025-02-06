# typed: strong

module ModernTreasury
  module Resources
    class Returns
      sig do
        params(
          returnable_id: T.nilable(String),
          returnable_type: Symbol,
          additional_information: T.nilable(String),
          code: T.nilable(Symbol),
          date_of_death: T.nilable(Date),
          reason: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::ReturnObject)
      end
      def create(
        returnable_id:,
        returnable_type:,
        additional_information: nil,
        code: nil,
        date_of_death: nil,
        reason: nil,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::ReturnObject)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          per_page: Integer,
          returnable_id: String,
          returnable_type: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Page[ModernTreasury::Models::ReturnObject])
      end
      def list(
        after_cursor: nil,
        counterparty_id: nil,
        internal_account_id: nil,
        per_page: nil,
        returnable_id: nil,
        returnable_type: nil,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
