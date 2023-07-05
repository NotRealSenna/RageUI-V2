# RageUI V2

sRageUI_Config = {
    
    -- Couleur de la banière : img_red, img_bleu, img_vert, img_jaune, img_violet, img_gris, img_grisf, img_orange
    -- Banière Menu :
    ColorMenu = "img_red"

    PasTouche = " ",

}
# sMenuAffichage
TestMenu  = RageUI.CreateMenu("Titre Menu", sRageUI_Config.PasTouche, nil, nil, "sMenuAffichage", sRageUI_Config.ColorMenu)
TestMenu2 = RageUI.CreateSubMenu(TestMenu, "Titre Menu", sRageUI_Config.PasTouche, nil, nil, "sMenuAffichage", sRageUI_Config.ColorMenu)

# sMenuAdd-On's
RageUI.Line() # Exemple : ------------------------
RageUI.Separator("Text")
Visual.Subtitle("Text") # Affichage en bas au milleu de l'écran.
 
