# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::JournalReportsTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.journal_reports.retrieve("id")

    assert_pattern do
      response => nil
    end
  end

  def test_update
    response = @modern_treasury.journal_reports.update("id")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    response = @modern_treasury.journal_reports.list

    assert_pattern do
      response => nil
    end
  end
end
