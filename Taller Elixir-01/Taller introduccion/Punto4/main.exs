defmodule Main do
  def main() do
    nombre = pedir_nombre()
    salario_base = pedir_salario_base()
    horas_extras = pedir_horas_extras()
    salario_total = calcular_salario(salario_base, horas_extras)
    mostrar_resultado(nombre, salario_total)
  end

  def pedir_nombre() do
    Util.input("Ingrese el nombre del empleado: ", :string)
  end

  def pedir_salario_base() do
    Util.input("Ingrese el salario base: ", :float)
  end

  def pedir_horas_extras() do
    Util.input("Ingrese las horas extras trabajadas: ", :integer)
  end

  def calcular_salario(salario_base, horas_extras) do
    valor_hora = salario_base / 160  
    pago_extras = horas_extras * valor_hora * 1.5
    salario_base + pago_extras
  end

  def mostrar_resultado(nombre, salario_total) do
    mensaje = "El salario total de #{nombre} es de $#{:erlang.float_to_binary(salario_total, decimals: 0)}."
    Util.show_message(mensaje)
  end
end

Main.main()
