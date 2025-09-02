defmodule Main do
  def main() do
    cliente = pedir_cliente()
    peso = pedir_peso()
    tipo = pedir_tipo()

    costo = calcular_costo(peso, tipo)

    mostrar_resultado(cliente, peso, tipo, costo)
  end

  # 1. Nombre del cliente
  def pedir_cliente() do
    Util.input("Ingrese el nombre del cliente: ", :string)
  end

  # 2. Peso del paquete
  def pedir_peso() do
    Util.input("Ingrese el peso del paquete en kg: ", :float)
  end

  # 3. Tipo de envío
  def pedir_tipo() do
    Util.input("Ingrese el tipo de envío (Económico, Express, Internacional): ", :string)
    |> String.capitalize()
  end

  # 4. Calcular costo solo con case + if
  def calcular_costo(peso, tipo) do
    case tipo do
      "Económico" -> peso * 5000
      "Express" -> peso * 8000
      "Internacional" ->
        if peso <= 5 do
          peso * 15000
        else
          peso * 12000
        end
      _otro ->
        Util.show_message("Tipo de envío no válido, se asigna costo 0.")
        0
    end
  end

  # 5. Mostrar y retornar tupla
  def mostrar_resultado(cliente, peso, tipo, costo) do
    Util.show_message("Cliente #{cliente} - Paquete de #{peso} kg (#{tipo}) → Costo: $#{costo}")
    {cliente, peso, tipo, costo}
  end
end

Main.main()

