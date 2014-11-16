defmodule FizzbuzzTest do
  use ExUnit.Case

  test "FizzBuzz from 1 to 15" do
    assert Fizzbuzz.fizzbuzz(1, 15) ==  [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
  end

  test "If from is not integer, raise Error" do
    assert_raise RuntimeError, "invalid argument", fn ->
      Fizzbuzz.fizzbuzz("1", 15)
    end
  end

  test "If to is not integer, raise Error" do
    assert_raise RuntimeError, "invalid argument", fn ->
      Fizzbuzz.fizzbuzz(1, "15")
    end
  end
end
