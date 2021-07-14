defmodule ListFilter do
  require Integer

  def call(list) do
    Enum.flat_map(list, fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.count(&Integer.is_odd(&1))
  end
end
