# frozen_string_literal: true

module ModernTreasury
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{ModernTreasury::Internal}::OMIT>" }
      end
        .freeze
  end
end
