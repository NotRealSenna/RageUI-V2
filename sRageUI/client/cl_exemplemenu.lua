function sRageUIExemple()
    local open = false
    local xIndex = 1
    local sRageUIExemple  = RageUI.CreateMenu("Titre Menu", sRageUI_Config.PasTouche, nil, nil, "sMenuAffichage", sRageUI_Config.ColorMenu)
    local sRageUIExemple2 = RageUI.CreateSubMenu(sRageUIExemple, "Titre Menu", sRageUI_Config.PasTouche, nil, nil, "sMenuAffichage", sRageUI_Config.ColorMenu)
    sRageUIExemple.Closed = function() open = false end
    if not open then open = true RageUI.Visible(sRageUIExemple, true)

        Citizen.CreateThread(function()
           while open do

            RageUI.IsVisible(sRageUIExemple, function()
                RageUI.Separator("~r~↓~s~     Listes des Actions     ~r~↓~s~")
                RageUI.Line()
                
                RageUI.Button("Exemple Button", nil, {RightLabel = "→"}, true, {
                    onSelected = function()
                        print("Print effectué !")
                    end})

                RageUI.Button("Exemple Button 2", nil, {RightBadge = RageUI.BadgeStyle.Star}, true, {
                    onSelected = function()
                        print("Print effectué !")
                    end})

                RageUI.Button("Exemple Button 3 (Redirect Second Menu)", nil, {RightBadge = RageUI.BadgeStyle.Star}, true, {}, sRageUIExemple2)
            end)

            RageUI.IsVisible(sRageUIExemple2, function()
                RageUI.Separator("~r~↓~s~     Listes des Actions     ~r~↓~s~")
                RageUI.Line()
                
                RageUI.Button("Exemple Button", nil, {RightBadge = RageUI.BadgeStyle.Star}, true, { 
                    onSelected = function() 
                        print("Print effectué !") 
                    end})

                RageUI.List("Texte", {"Action Principal", "Action Secondaire", ".", "..", "..."}, xIndex, nil, {}, true, {
                    onListChange = function(Index)
                        xIndex = Index
                    end,
                    onSelected = function()
                        if xIndex == 1 then
                            print("Action Une")
                        elseif xIndex == 2 then
                            print("Action Deux")
                        elseif xIndex == 3 then
                            print("Action Trois")
                        elseif xIndex == 4 then
                            print("Action Quatre")
                        elseif xIndex == 5 then
                            print("Action Cinq")
                        end
                    end})

            end)

        Citizen.Wait(0)
            end
        end)     
    end
end
