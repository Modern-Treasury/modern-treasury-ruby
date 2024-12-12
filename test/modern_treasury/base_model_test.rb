# frozen_string_literal: true

require_relative "test_helper"

class ModernTreasury::Test::BaseModelTest < Minitest::Test
  parallelize_me!

  class E1 < ModernTreasury::Enum
    A = :a
    B = :b
  end

  A1 = ModernTreasury::ArrayOf.new(-> { Integer })
  A2 = ModernTreasury::ArrayOf.new(enum: -> { E1 })

  def test_basic
    assert(E1.include?(ModernTreasury::Converter))
    assert(A1.is_a?(ModernTreasury::Converter))
  end

  def test_basic_coerce
    assert_equal(
      [1, 2, 3],
      ModernTreasury::Converter.coerce(A1, [1.0, 2.0, 3.0])
    )
    assert_equal(
      [:a, :b, :c],
      ModernTreasury::Converter.coerce(A2, %w[a b c])
    )
  end

  def test_basic_dump
    assert_equal(
      [1, 2, 3],
      ModernTreasury::Converter.dump(A1, [1.0, 2.0, 3.0])
    )
    assert_equal(
      [:a, :b, :c],
      ModernTreasury::Converter.dump(A2, %w[a b c])
    )
  end

  class M1 < ModernTreasury::BaseModel
    required :a, Time
    optional :b, E1, api_name: :renamed
    required :c, A1

    request_only do
      required :w, Integer
      optional :x, String
    end

    response_only do
      required :y, Integer
      optional :z, String
    end
  end

  class M2 < M1
    required :c, M1
  end

  def test_model_accessors
    now = Time.now.round(0)
    model = M2.new(a: now.to_s, b: "b", renamed: "a", c: [1.0, 2.0, 3.0], w: 1, y: 1)
    assert_equal(now, model.a)
    assert_equal(:a, model.b)
    assert_equal("b", model[:b])
    assert_equal([1, 2, 3], model.c)
    assert_equal(1, model.w)
    assert_equal(1, model.y)
  end

  def test_model_equality
    now = Time.now
    model1 = M2.new(a: now, b: "b", renamed: "a", c: M1.new, w: 1, y: 1)
    model2 = M2.new(a: now, b: "b", renamed: "a", c: M1.new, w: 1, y: 1)
    assert_equal(model1, model2)
  end

  def test_basic_model_coerce
    cases = {
      {} => M2.new,
      {a: nil, b: :a, c: [1.0, 2.0, 3.0], w: 1} => M2.new(a: nil, b: :a, c: [1.0, 2.0, 3.0], w: 1)
    }

    cases.each do |input, output|
      assert_equal(output, ModernTreasury::Converter.coerce(M2, input))
    end
  end

  def test_basic_model_dump
    assert_nil(ModernTreasury::Converter.dump(M2, nil))
    assert_equal({}, ModernTreasury::Converter.dump(M2, {}))
    assert_equal({w: 1, x: "x"}, ModernTreasury::Converter.dump(M2, {w: 1, x: "x", y: 1, z: "z"}))
    assert_equal([1, 2, 3], ModernTreasury::Converter.dump(M2, [1, 2, 3]))
  end

  def test_nested_model_dump
    now = Time.now.round(0)
    models = [M1, M2]
    inputs = [
      M1.new(a: now, b: "a", c: [1.0, 2.0, 3.0], y: 1),
      {a: now, b: "a", c: [1.0, 2.0, 3.0], y: 1},
      {"a" => now, b: "", "b" => "a", "c" => [], :c => [1.0, 2.0, 3.0], "y" => 1}
    ]
    models.product(inputs).each do |model, input|
      assert_equal(
        {a: now, renamed: :a, c: [1, 2, 3]},
        ModernTreasury::Converter.dump(model, input)
      )
    end
  end
end
