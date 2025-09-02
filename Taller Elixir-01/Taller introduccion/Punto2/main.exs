defmodule Main do
  def main() do
    titulo = pedir_titulo()
    cantidad = pedir_cantidad()
    precio = pedir_precio()
    calcular_inventario(titulo, cantidad, precio)
  end

  def pedir_titulo() do
    Util.input("Ingrese el título del libro: ", :string)
  end

  def pedir_cantidad() do
    Util.input("Ingrese la cantidad de unidades disponibles: ", :integer)
  end

  def pedir_precio() do
    Util.input("Ingrese el precio unitario: ", :float)
  end

  def calcular_inventario(titulo, cantidad, precio) do
    total = cantidad * precio
    mensaje =
      "El libro \"#{titulo}\" tiene #{cantidad} unidades, " <>
      "con un valor total de $#{(total)}."
    Util.show_message(mensaje)
  end


end

Main.main()
