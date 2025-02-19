# typed: strong

module ModernTreasury
  class Page < ::Array
    include ModernTreasury::BasePage

    Elem = type_member

    sig { returns(Integer) }
    def per_page
    end

    sig { params(_: Integer).returns(Integer) }
    def per_page=(_)
    end

    sig { returns(String) }
    def after_cursor
    end

    sig { params(_: String).returns(String) }
    def after_cursor=(_)
    end

    sig do
      params(
        client: ModernTreasury::BaseClient,
        req: ModernTreasury::BaseClient::RequestShape,
        headers: T::Hash[String, String],
        unwrapped: T::Hash[Symbol, T.anything]
      )
        .void
    end
    def initialize(client:, req:, headers:, unwrapped:)
    end

    sig { override.returns(T::Boolean) }
    def next_page?
    end

    sig { override.returns(T.self_type) }
    def next_page
    end

    sig { override.params(blk: T.proc.params(arg0: Elem).void).void }
    def auto_paging_each(&blk)
    end
  end
end
