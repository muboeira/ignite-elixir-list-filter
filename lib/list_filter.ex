defmodule ListFilter do
  require Integer

  def call(list) do
    Enum.reduce(list, 0, fn item, acc ->
      case Integer.parse(item) do
        {int, _decimal} ->
          if Integer.is_odd(int) do
            acc + 1
          else
            acc
          end

        _ ->
          acc
      end
    end)
  end
end
