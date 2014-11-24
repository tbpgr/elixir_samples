defmodule SampleExunitTest do
  use ExUnit.Case

  # 真偽検証
  test "assert(assertion) success", do: assert true
  test "assert(assertion) fail", do: assert false

  # メッセージ付き真偽検証
  test "assert(value, message) success", do: assert(true, "hoge")
  test "assert(value, message) fail", do: assert(false, "hoge")

  # エラー検証
  test "assert_raise(exception, function) success" do
    assert_raise ArithmeticError, fn ->
      0 / 0
    end
  end
  test "assert_raise(exception, function) fail" do
    assert_raise ArithmeticError, fn ->
      1 / 1
    end
  end

  #メッセージ付きエラー検証
  test "assert_raise(exception, message, function) success" do
    assert_raise ArithmeticError, "bad argument in arithmetic expression", fn ->
      0 / 0
    end
  end
  test "assert_raise(exception, message, function) fail" do
    assert_raise ArithmeticError, "bad argument in arithmetic expression", fn ->
      1 / 1
    end
  end

  # 強制エラー
  test "flunk(message \\ \"Flunked!\") default", do: flunk
  test "flunk(message \\ \"Flunked!\") with message", do: flunk("flunk fail")

  # エラー番号
  test "catch_exit(expression) success", do: assert catch_exit(exit 1) == 1
  test "catch_exit(expression) fail", do: assert catch_exit(true) == 1

  # assert の反対( true 時に失敗になる)
  test "refute(assertion) success", do: refute false
  test "refute(assertion) fail", do: refute true
end
