defmodule B1Web.PageView do
  use B1Web, :view

  def amount(val, noun) when val < 0 do
    "<span style='color: red'>#{plural_phrase(val, noun)}</span>" |> raw()
  end

  def amount(val, noun) do
    "<span style='color: darkgreen'>#{plural_phrase(val, noun)}</span>" |> raw()
  end

  def plural_phrase(1, noun), do: "one #{noun}"
  def plural_phrase(n, noun), do: "#{n} #{noun}s"
end
