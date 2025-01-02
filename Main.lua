require("Proceso")
require("Calcular_kWh_Electrodomestico")
function Menu()
    os.execute("cls")
    print("*** Calculadora De-Consumo Electrico ***")
    print("----------------------------------------")
    print("1) Calcular gasto mensual\n2) Calcular consumo de un electrodomestico\n3) Salir")
    while true do
        local selection = io.read()
        if selection == "1" then
            Start()
            break
        elseif selection == "2" then
                Eelectrodomestico()
                break
        elseif selection == "3" then
            os.exit()
        else
            print("Argumento invalido.")
        end
    end
end
Menu()