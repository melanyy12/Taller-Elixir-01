defmodule Main do
  def main() do
    pedir_texto()
    x = pedir_distancia()
    y = pedir_combustible()
    calcular_rendimiento(x, y)
  end

  def pedir_texto() do
    "Ingrese su nombre: "
    |> Util.input(:string)
    |> Util.show_message()
  end

  def pedir_distancia() do
    x = Util.input("Ingrese la distancia recorrida en kilómetros: ", :float)
  end


  def pedir_combustible() do
    y = Util.input("Ingrese la cantidad de combustible consumido en litros : ", :float)

  end

  def calcular_rendimiento(x, y) do
    rendimiento = x / y
    "El rendimiento de su vehículo es #{rendimiento} km/l"
    |> Util.show_message()
  end

end

Main.main()
