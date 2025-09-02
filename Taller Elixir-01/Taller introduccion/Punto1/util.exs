defmodule Util do
def show_message(message) do
  {output, _} = System.cmd("java", ["-cp", ".", "Mensaje", message])
  IO.puts(output)
end

  def input(message, :string) do
    {result, 0} = System.cmd("java", ["Mensaje", "input", message])
     String.trim(result)
  end


  def input(message, :float) do
  case input(message, :string) do
    "" ->
      IO.puts("Error: No se ingresó ningún valor.")
      input(message, :float)

    value ->
      try do
        String.to_float(value)
      rescue
        ArgumentError ->
          IO.puts("Error: El valor ingresado no es un número decimal válido.")
          input(message, :float)
      end
  end
end
end
