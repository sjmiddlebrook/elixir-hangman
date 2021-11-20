defmodule Procs do
  def hello(count) do
    receive do
      {:quit} -> IO.puts("Quitting the process")
      {:reset} -> hello(0)
      {:add, n} -> hello(count + n)
      msg ->
        IO.puts "#{count}: #{msg}"
        hello(count)
    end

  end
end