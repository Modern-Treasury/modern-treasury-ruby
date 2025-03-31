# typed: strong

module ModernTreasury
  class Page < ::Array
    include ModernTreasury::Type::BasePage

    Elem = type_member

    sig { returns(Integer) }
    attr_accessor :per_page

    sig { returns(String) }
    attr_accessor :after_cursor

    sig { override.returns(T::Boolean) }
    def next_page?
    end

    sig { override.returns(T.self_type) }
    def next_page
    end

    sig { override.params(blk: T.proc.params(arg0: Elem).void).void }
    def auto_paging_each(&blk)
    end

    sig { returns(String) }
    def inspect
    end
  end
end
