function Start()
    os.execute("cls")
    print("1. Ingrese la cantidad total de Kilovatios por hora consumidos mensualmente (kWh):")
    local ok, mensajeError = pcall(function ()
        local NCantidad = tonumber(io.read())
        print("2. Ahora el costo actual de los kWh:")
        local NPrecio = tonumber(io.read())
        print("---------------------------------")
        print("Gasto mensual de luz: $".. (math.floor(NCantidad * NPrecio)))
        print("1) Reintentar proceso\n2) Regresar al menu")
        while true do
          local selection = io.read()
          if selection == "1" then
            Start()
            break
          elseif selection == "2" then
            Menu()
            break
          end
        end--BUCLE WHILE
    end)--FUNCION PCALL
    if ok == false then
        print("Ups! Algo salio mal.")
        print(mensajeError)
        print("----------------")
        print("1) Reintentar proceso\n2) Ir al Menu")
        while true do
          local selection = io.read()
          if selection == "1" then
            Start()
            break
          elseif selection == "2" then
            Menu()
            break
          end
        end--BUCLE WHILE
    end
end