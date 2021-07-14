defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count list elements" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["1", "banana", "6sd", "abc"]
      list3 = ["banana"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 1
      assert ListFilter.call(list3) == 0
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
