# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::JournalSourcesTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.journal_sources.retrieve("id")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    response = @modern_treasury.journal_sources.list

    assert_pattern do
      response => nil
    end
  end
end
