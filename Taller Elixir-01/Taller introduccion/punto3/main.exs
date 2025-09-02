defmodule Main do
  def main() do
    nombre = pedir_nombre()
    celsius = pedir_celsius()
    {fahrenheit, kelvin} = convertir(celsius)
    mostrar_resultados(nombre, fahrenheit, kelvin)
  end

  def pedir_nombre() do
    Util.input("Ingrese su nombre: ", :string)
  end

  def pedir_celsius() do
    Util.input("Ingrese la temperatura en °C: ", :float)
  end

  def convertir(celsius) do
    fahrenheit = (celsius * 9 / 5) + 32
    kelvin = celsius + 273.15
    {fahrenheit, kelvin}
  end

  def mostrar_resultados(nombre, fahrenheit, kelvin) do
    mensaje =
      "#{nombre}, la temperatura es:\n" <>
      "- #{Float.round(fahrenheit, 1)} °F\n" <>
      "- #{Float.round(kelvin, 1)} K"

    Util.show_message(mensaje)
  end
end

Main.main()
