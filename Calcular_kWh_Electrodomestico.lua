function Eelectrodomestico()
    os.execute("cls")
    print("1. Ingrese la cantidad de vatios (W):")
    local ok, mensajeError = pcall(function ()
        local W = tonumber(io.read())
        local KW = W / 1000
        print("2. Ingrese las horas de consumo al dia de su dispositivo:")
        local h = tonumber(io.read())
        local kWh = KW * h
       local consumoMensual = kWh * 30
       print("4. Y por ultimo el costo actual de los kWh en su region:")
       local costo = tonumber(io.read())
       local montoTotal = kWh * costo
       local montoAlMes = montoTotal * 30
       print("---------------------------------")
       print("\n- Consumo diario del dispositivo: "..kWh.."kWh\n- Consumo mensual del dispositivo: "..(consumoMensual).."kWh\n- Su costo al dia: $"..(kWh * costo).."\n- Su costo al mes: $"..math.floor(montoAlMes))
       print("----------------")
        print("1) Reintentar proceso\n2) Ir al Menu")
        while true do
          local selection = io.read()
          if selection == "1" then
            Eelectrodomestico()
            break
          elseif selection == "2" then
            Menu()
            break
          end
        end--BUCLE WHILE
    end)
    if ok == false then
        print("Ups! Algo salio mal.")
        print(mensajeError)
        print("----------------")
        print("1) Reintentar proceso\n2) Ir al Menu")
        while true do
          local selection = io.read()
          if selection == "1" then
            Eelectrodomestico()
            break
          elseif selection == "2" then
            Menu()
            break
          end
        end--BUCLE WHILE
    end
end