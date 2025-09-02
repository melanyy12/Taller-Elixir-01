defmodule Main do
  def main() do
    placa = pedir_placa()
    tipo = pedir_tipo()
    peso = pedir_peso()

    tarifa = calcular_tarifa(tipo, peso)

    mostrar_resultado(placa, tipo, tarifa)
  end

  # 1. Ingresar la placa
  def pedir_placa() do
    Util.input("Ingrese la placa del vehículo: ", :string)
  end

  # 2. Ingresar el tipo
  def pedir_tipo() do
    Util.input("Ingrese el tipo de vehículo (Carro, Moto, Camión): ", :string)
    |> String.capitalize()
  end

  # 3. Ingresar el peso en toneladas
  def pedir_peso() do
    Util.input("Ingrese el peso del vehículo (toneladas): ", :float)
  end

  # 4. Asignar tarifa
  def calcular_tarifa("Carro", _peso), do: 10_000
  def calcular_tarifa("Moto", _peso), do: 5_000
  def calcular_tarifa("Camión", peso) do
    20_000 + max(0, trunc(peso - 1)) * 2_000
  end
  def calcular_tarifa(_, _), do: 0  # Por si el usuario ingresa algo raro

  # 5. Mostrar resultado y retornar tupla
  def mostrar_resultado(placa, tipo, tarifa) do
    Util.show_message("Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}")
    {placa, tipo, tarifa}
  end
end

Main.main()
