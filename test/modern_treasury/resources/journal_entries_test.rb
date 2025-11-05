# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::JournalEntriesTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.journal_entries.retrieve("id")

    assert_pattern do
      response => nil
    end
  end

  def test_list_required_params
    response = @modern_treasury.journal_entries.list(journal_report_id: "journal_report_id")

    assert_pattern do
      response => nil
    end
  end
end
