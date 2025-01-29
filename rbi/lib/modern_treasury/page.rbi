# typed: strong

module ModernTreasury
  class Page < ::Array
    include ModernTreasury::BasePage

    Elem = type_member

    sig { returns(Integer) }
    attr_accessor :per_page

    sig { returns(String) }
    attr_accessor :after_cursor

    sig do
      params(
        client: ModernTreasury::BaseClient,
        req: ModernTreasury::BaseClient::RequestShape,
        headers: T::Hash[String, String],
        unwrapped: T::Hash[Symbol, T.anything]
      ).void
    end
    def initialize(client:, req:, headers:, unwrapped:); end

    sig { returns(T::Boolean) }
    def next_page?; end

    sig { returns(T.self_type) }
    def next_page; end

    sig { params(blk: T.proc.params(arg0: Elem).void).void }
    def auto_paging_each(&blk); end
  end
end
