# frozen_string_literal: true

require_relative "test_helper"

class ModernTreasury::Test::BaseClientTest < Minitest::Test
  parallelize_me!

  def test_from_uri_string
    assert_equal(
      {
        scheme: "h",
        host: "a.b",
        port: nil,
        path: "/c",
        query: {"d" => ["e"]}
      },
      ModernTreasury::BaseClient.new(
        base_url: "h://nope/ignored"
      ).resolve_uri_elements(
        url: "h://a.b/c?d=e"
      )
    )
  end

  def test_extra_query
    assert_equal(
      {
        scheme: "h",
        host: "a.b",
        port: nil,
        path: "/c",
        query: {"d" => ["e"], "f" => ["g"]}
      },
      ModernTreasury::BaseClient.new(
        base_url: "h://nope"
      ).resolve_uri_elements(
        host: "a.b",
        path: "/c",
        query: {"d" => ["e"]},
        extra_query: {
          "f" => ["g"]
        }
      )
    )
  end

  def test_path_merged
    assert_equal(
      {
        scheme: "h",
        host: "a.b",
        port: nil,
        path: "/c/c2",
        query: {}
      },
      ModernTreasury::BaseClient.new(
        base_url: "h://a.b/c"
      ).resolve_uri_elements(
        path: "c2"
      )
    )
  end
end
