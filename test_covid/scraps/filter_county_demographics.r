library(data.tree)
library(circlepackeR) 
library(shiny)

race_filter <- reactive({
   if(input$selectcounty == "Autauga-AL") {
    race_autauga <- subset.data.frame(race, NAME=="Autauga-AL")
    nodes_autauga <- as.Node(race_autauga)
  } #1
  else if(input$selectcounty== "Baldwin-AL") {
    race_baldwinAL <-subset.data.frame(race, NAME=="Baldwin-AL")
    nodes_baldwinAL<- as.Node(race_baldwinAL)
  } #2
  else if(input$selectcounty== "Barbour-AL") {
    race_barbourAL <- subset.data.frame(race, NAME=="Barbour-AL")
    nodes_barbourAL <- as.Node(race_barbourAL)
  } #3
  else if(input$selectcounty== "Bibb-AL"){
    race_bibbAL <- subset.data.frame(race, NAME=="Bibb-AL")
    nodes_bibbAL <- as.Node(race_bibbAL)
  } #4
  else if(input$selectcounty== "Blount-AL"){
    race_blountAL <- subset.data.frame(race, NAME=="Blount-AL")
    nodes_blountAL <- as.Node(race_blountAL)
  } #5
  else if(input$selectcounty== "Bullock-AL"){
    race_bullockAL <- subset.data.frame(race, NAME=="Bullock-AL")
    nodes_bullockAL <- as.Node(race_bullockAL)
  } #6
  else if(input$selectcounty== "Butler-AL"){
    race_butlerAL <- subset.data.frame(race, NAME=="Butler-AL")
    nodes_butlerAL <- as.Node(race_butlerAL)
  } #7
  else if(input$selectcounty== "Calhoun-AL"){
    race_calhounAL <- subset.data.frame(race, NAME=="Calhoun-AL")
    nodes_calhounAL <- as.Node(race_calhounAL)
  } #8
  else if(input$selectcounty== "Chambers-AL"){
    race_chambersAL <- subset.data.frame(race, NAME=="Chambers-AL")
    nodes_chambersAL <- as.Node(race_chambersAL)
  } #9
  else if(input$selectcounty== "Cherokee-AL"){
    race_cherokeeAL <- subset.data.frame(race, NAME=="Cherokee-AL")
    nodes_cherokeeAL <- as.Node(race_cherokeeAL)
  } #10
  else if(input$selectcounty== "Chilton-AL"){
    race_chiltonAL <- subset.data.frame(race, NAME=="Chilton-AL")
    nodes_chiltonAL <- as.Node(race_chiltonAL)
  } #11
  else if(input$selectcounty== "Choctaw-AL"){
    race_choctawAL <- subset.data.frame(race, NAME=="Choctaw-AL")
    nodes_choctawAL <- as.Node(race_choctawAL)
  } #12
  else if(input$selectcounty== "Clarke-AL"){
    race_clarkeAL <- subset.data.frame(race, NAME=="Clarke-AL")
    nodes_clarkeAL <- as.Node(race_clarkeAL)
  } #13
  else if(input$selectcounty== "Clay-AL"){
    race_clayAL <- subset.data.frame(race, NAME=="Clay-AL")
    nodes_clayAL <- as.Node(race_clayAL)
  } #14
  else if(input$selectcounty== "Cleburne-AL"){
    race_cleburneAL <- subset.data.frame(race, NAME=="Cleburne-AL")
    nodes_cleburneAL <- as.Node(race_cleburneAL)
  } #15
  else if(input$selectcounty== "Coffee-AL"){
    race_coffeeAL <- subset.data.frame(race, NAME=="Coffee-AL")
    nodes_coffeeAL <- as.Node(race_coffeeAL)
  } #16
  else if(input$selectcounty== "Colbert-AL"){
    race_colbertAL <- subset.data.frame(race, NAME=="Colbert-AL")
    nodes_colbertAL <- as.Node(race_colbertAL)
  } #17
  else if(input$selectcounty== "Conecuh-AL"){
    race_conecuhAL <- subset.data.frame(race, NAME=="Conecuh-AL")
    nodes_conecuhAL <- as.Node(race_conecuhAL)
  } #18
  else if(input$selectcounty== "Coosa-AL"){
    race_coosaAL <- subset.data.frame(race, NAME=="Coosa-AL")
    nodes_coosaAL <- as.Node(race_coosaAL)
    } #19
  else if(input$selectcounty== "Covington-AL"){
    race_covingtonAL <- subset.data.frame(race, NAME=="Covington-AL")
    nodes_covingtonAL <- as.Node(race_covingtonAL)
  } #20
  else if(input$selectcounty== "Crenshaw-AL"){
    race_crenshawAL <- subset.data.frame(race, NAME=="Crenshaw-AL")
    nodes_crenshawAL <- as.Node(race_crenshawAL)
  } #21
  else if(input$selectcounty== "Cullman-AL"){
    race_cullmanAL <- subset.data.frame(race, NAME=="Cullman-AL")
    nodes_cullmanAL <- as.Node(race_cullmanAL)
  } #22
  else if(input$selectcounty== "Dale-AL"){
    race_daleAL <- subset.data.frame(race, NAME=="Dale-AL")
    nodes_daleAL <- as.Node(race_daleAL)
  } #23
  else if(input$selectcounty== "Dallas-AL"){
    race_dallasAL <- subset.data.frame(race, NAME=="Dallas-AL")
    nodes_dallasAL <- as.Node(race_dallasAL)
  } #24
  else if(input$selectcounty== "DeKalb-AL"){
    race_dekalbAL <- subset.data.frame(race, NAME=="DeKalb-AL")
    nodes_dekalbAL <- as.Node(race_dekalbAL)
  } #25
  else if(input$selectcounty== "Elmore-AL"){
    race_elmoreAL <- subset.data.frame(race, NAME=="Elmore-AL")
    nodes_elmoreAL <- as.Node(race_elmoreAL)
  } #26
  else if(input$selectcounty== "Escambia-AL"){
    race_escambiaAL <- subset.data.frame(race, NAME=="Escambia-AL")
    nodes_escambiaAL <- as.Node(race_escambiaAL)
  } #27
  else if(input$selectcounty== "Etowah-AL"){
    race_etowahAL <- subset.data.frame(race, NAME=="Etowah-AL")
    nodes_etowahAL <- as.Node(race_etowahAL)
  } #28
  else if(input$selectcounty== "Fayette-AL"){
    race_fayetteAL <- subset.data.frame(race, NAME=="Fayette-AL")
    nodes_fayetteAL <- as.Node(race_fayetteAL)
  } #29
  else if(input$selectcounty== "Franklin-AL"){
    race_franklinAL <- subset.data.frame(race, NAME=="Franklin-AL")
    nodes_franklinAL <- as.Node(race_franklinAL)
  } #30
  else if(input$selectcounty== "Geneva-AL"){
    race_genevaAL <- subset.data.frame(race, NAME=="Geneva-AL")
    nodes_genevaAL <- as.Node(race_genevaAL)
  } #31
  else if(input$selectcounty== "Greene-AL"){
    race_greeneAL <- subset.data.frame(race, NAME=="Greene-AL")
    nodes_greeneAL <- as.Node(race_greeneAL)
  } #32
  else if(input$selectcounty== "Hale-AL"){
    race_haleAL <- subset.data.frame(race, NAME=="Hale-AL")
    nodes_haleAL <- as.Node(race_haleAL)
  } #33
  else if(input$selectcounty== "Henry-AL"){
    race_henryAL <- subset.data.frame(race, NAME=="Henry-AL")
    nodes_henryAL <- as.Node(race_henryAL)
  } #34
  else if(input$selectcounty== "Houston-AL"){
    race_houstonAL <- subset.data.frame(race, NAME=="Houston-AL")
    nodes_houstonAL <- as.Node(race_houstonAL)
  } #35
  else if(input$selectcounty== "Jackson-AL"){
    race_jacksonAL <- subset.data.frame(race, NAME=="Jackson-AL")
    nodes_jacksonAL <- as.Node(race_jacksonAL)
  } #36
  else if(input$selectcounty== "Jefferson-AL"){
    race_jeffersonAL <- subset.data.frame(race, NAME=="Jefferson-AL")
    nodes_jeffersonAL <- as.Node(race_jeffersonAL)
  } #37
  else if(input$selectcounty== "Lamar-AL"){
    race_lamarAL <- subset.data.frame(race, NAME=="Lamar-AL")
    nodes_lamarAL <- as.Node(race_lamarAL)
  } #38
  else if(input$selectcounty== "Lauderdale-AL"){
    race_lauderdaleAL <- subset.data.frame(race, NAME=="Lauderdale-AL")
    nodes_lauderdaleAL <- as.Node(race_lauderdaleAL)
  } #39
  else if(input$selectcounty== "Lawrence-AL"){
    race_lawrenceAL <- subset.data.frame(race, NAME=="Lawrence-AL")
    nodes_lawrenceAL <- as.Node(race_lawrenceAL)
  } #40
  else if(input$selectcounty== "Lee-AL"){
    race_leeAL <- subset.data.frame(race, NAME=="Lee-AL")
    nodes_leeAL <- as.Node(race_leeAL)
  } #41
  else if(input$selectcounty== "Limestone-AL"){
  race_limestoneAL <- subset.data.frame(race, NAME=="Limestone-AL")
  nodes_limestoneAL <- as.Node(race_limestoneAL)
  } #42
  else if(input$selectcounty== "Lowndes-AL"){
    race_lowndesAL <- subset.data.frame(race, NAME=="Lowndes-AL")
    nodes_lowndeseAL <- as.Node(race_lowndesAL)
  } #43
  else if(input$selectcounty== "Macon-AL"){
    race_maconAL <- subset.data.frame(race, NAME=="Macon-AL")
    nodes_maconAL <- as.Node(race_maconAL)
  } #44
  else if(input$selectcounty== "Madison-AL"){
    race_madisonAL <- subset.data.frame(race, NAME=="Madison-AL")
    nodes_madisonAL <- as.Node(race_madisonAL)
  } #45
  else if(input$selectcounty== "Marengo-AL"){
    race_marengoAL <- subset.data.frame(race, NAME=="Marengo-AL")
    nodes_marengoAL <- as.Node(race_marengoAL)
  } #46
  else if(input$selectcounty== "Marion-AL"){
    race_marionAL <- subset.data.frame(race, NAME=="Marion-AL")
    nodes_marionAL <- as.Node(race_marionAL)
  } #47
  else if(input$selectcounty== "Marshall-AL"){
    race_marshallAL <- subset.data.frame(race, NAME=="Marshall-AL")
    nodes_marshallAL <- as.Node(race_marshallAL)
  } #48
  else if(input$selectcounty== "Mobile-AL"){
    race_mobileAL <- subset.data.frame(race, NAME=="Mobile-AL")
    nodes_mobileAL <- as.Node(race_mobileAL)
  } #49
  else if(input$selectcounty== "Morgan-AL"){
    race_morganAL <- subset.data.frame(race, NAME=="Morgan-AL")
    nodes_morganAL <- as.Node(race_morganAL)
  } #50
  else if(input$selectcounty== "Perry-AL"){
    race_perryAL <- subset.data.frame(race, NAME=="Perry-AL")
    nodes_perryAL <- as.Node(race_perryAL)
  } #51
  else if(input$selectcounty== "Pickens-AL"){
    race_pickensAL <- subset.data.frame(race, NAME=="Pickens-AL")
    nodes_pickensAL <- as.Node(race_pickensAL)
  } #52
  else if(input$selectcounty== "Pike-AL"){
    race_pikeAL <- subset.data.frame(race, NAME=="Pike-AL")
    nodes_pikeAL <- as.Node(race_pikeAL)
  } #53
  else if(input$selectcounty== "Randolph-AL"){
    race_randolphAL <- subset.data.frame(race, NAME=="Randolph-AL")
    nodes_randolphAL <- as.Node(race_randolphAL)
  } #54
  else if(input$selectcounty== "Russell-AL"){
    race_russellAL <- subset.data.frame(race, NAME=="Russell-AL")
    nodes_russellAL <- as.Node(race_russellAL)
  } #55
  else if(input$selectcounty== "St. Clair-AL"){
    race_stclairAL <- subset.data.frame(race, NAME=="St. Clair-AL")
    nodes_stclairAL <- as.Node(race_stclairAL)
  } #56
  else if(input$selectcounty== "Shelby-AL"){
    race_shelbyAL <- subset.data.frame(race, NAME=="Shelby-AL")
    nodes_shelbyAL <- as.Node(race_shelbyAL)
  } #57
  else if(input$selectcounty== "Sumter-AL"){
  race_sumterAL <- subset.data.frame(race, NAME=="Sumter-AL")
  nodes_sumterAL <- as.Node(race_sumterAL)
  } #58
  else if(input$selectcounty== "Talladega-AL"){
    race_talladegaAL <- subset.data.frame(race, NAME=="Talladega-AL")
    nodes_talladegaAL <- as.Node(race_talladegaAL)
  } #59
  else if(input$selectcounty== "Tallapoosa-AL"){
    race_tallapoosaAL <- subset.data.frame(race, NAME=="Tallapoosa-AL")
    nodes_tallapoosaAL <- as.Node(race_tallapoosaAL)
  } #60
  else if(input$selectcounty== "Tuscaloosa-AL"){
    race_tuscaloosaAL <- subset.data.frame(race, NAME=="Tuscaloosa-AL")
    nodes_tuscaloosaAL <- as.Node(race_tuscaloosaAL)
  } #61
  else if(input$selectcounty== "Walker-AL"){
    race_walkerAL <- subset.data.frame(race, NAME=="Walker-AL")
    nodes_walkerAL <- as.Node(race_walkerAL)
  } #62
  else if(input$selectcounty== "Washington-AL"){
    race_washingtonAL <- subset.data.frame(race, NAME=="Washington-AL")
    nodes_washingtonAL <- as.Node(race_washingtonAL)
  } #63
  else if(input$selectcounty== "Wilcox-AL"){
    race_wilcoxAL <- subset.data.frame(race, NAME=="Wilcox-AL")
    nodes_wilcoxAL <- as.Node(race_wilcoxAL)
  } #64
  else if(input$selectcounty== "Winston-AL"){
    race_winstonAL <- subset.data.frame(race, NAME=="Winston-AL")
    nodes_winstonAL <- as.Node(race_winstonAL) 
  } #65
  else if(input$selectcounty== "Monroe-AL"){
    race_MonroeAL <- subset.data.frame(race, NAME=="Monroe-AL")
    nodes_MonroeAL <- as.Node(race_MonroeAL) 
  } #66
  else if(input$selectcounty== "Montgomery-AL"){
    race_MontgomeryAL <- subset.data.frame(race, NAME=="Montgomery-AL")
    nodes_MontgomeryAL <- as.Node(race_MontgomeryAL) 
  } #67
 
###### ARIZONA
  else if(input$selectcounty== "Apache-AZ"){
    race_apacheAZ <- subset.data.frame(race, NAME=="Apache-AZ")
    nodes_apacheAZ <- as.Node(race_apacheAZ) 
  } #1
  else if(input$selectcounty== "Cochise-AZ"){
    race_cochiseAZ <- subset.data.frame(race, NAME=="Cochise-AZ")
    nodes_cochiseAZ <- as.Node(race_cochiseAZ) 
  } #2
  else if(input$selectcounty== "Coconino-AZ"){
    race_coconinoAZ <- subset.data.frame(race, NAME=="Coconino-AZ")
    nodes_coconinoAZ <- as.Node(race_coconinoAZ) 
  } #3
  else if(input$selectcounty== "Gila-AZ"){
    race_gilaAZ <- subset.data.frame(race, NAME=="Gila-AZ")
    nodes_gilaAZ <- as.Node(race_gilaAZ) 
  } #4
  else if(input$selectcounty== "Graham-AZ"){
    race_grahamAZ <- subset.data.frame(race, NAME=="Graham-AZ")
    nodes_grahamAZ <- as.Node(race_grahamAZ) 
  } #5
  else if(input$selectcounty== "Greenlee-AZ"){
    race_greenleeAZ <- subset.data.frame(race, NAME=="Greenlee-AZ")
    nodes_greenleeAZ <- as.Node(race_greenleeAZ) 
  } #6
  else if(input$selectcounty== "La Paz-AZ"){
    race_lapazAZ <- subset.data.frame(race, NAME=="La Paz-AZ")
    nodes_lapazAZ <- as.Node(race_lapazAZ) 
  } #7
  else if(input$selectcounty== "Maricopa-AZ"){
    race_maricopaAZ <- subset.data.frame(race, NAME=="Maricopa-AZ")
    nodes_maricopaAZ <- as.Node(race_maricopaAZ) 
  } #8
  else if(input$selectcounty== "Mohave-AZ"){
    race_mohaveAZ <- subset.data.frame(race, NAME=="Mohave-AZ")
    nodes_mohaveAZ <- as.Node(race_mohaveAZ)   
  } #9
  else if(input$selectcounty== "Navajo-AZ"){
    race_navajoAZ <- subset.data.frame(race, NAME=="Navajo-AZ")
    nodes_navajoAZ <- as.Node(race_navajoAZ) 
  } #10
  else if(input$selectcounty== "Pima-AZ"){
    race_pimaAZ <- subset.data.frame(race, NAME=="Pima-AZ")
    nodes_pimaAZ <- as.Node(race_pimaAZ) 
  } #11
  else if(input$selectcounty== "Pinal-AZ"){
    race_pinalAZ <- subset.data.frame(race, NAME=="Pinal-AZ")
    nodes_pinalAZ <- as.Node(race_pinalAZ) 
  } #12
  else if(input$selectcounty== "Santa Cruz-AZ"){
    race_santacruzAZ <- subset.data.frame(race, NAME=="Santa Cruz-AZ")
    nodes_santacruzAZ <- as.Node(race_santacruzAZ) 
  } #13
  else if(input$selectcounty== "Yavapai-AZ"){
    race_yavapaiAZ <- subset.data.frame(race, NAME=="Yavapai-AZ")
    nodes_yavapaiAZ <- as.Node(race_yavapaiAZ) 
  } #14
  else if(input$selectcounty== "Yuma-AZ"){
    race_yumaAZ <- subset.data.frame(race, NAME=="Yuma-AZ")
    nodes_yumaAZ <- as.Node(race_yumaAZ) 
  } #15

##### California    
  else if(input$selectcounty== "Alameda-CA"){
    race_alamedaCA <- subset.data.frame(race, NAME=="Alameda-CA")
    nodes_alamedaCA <- as.Node(race_alamedaCA) 
  } #1
  else if(input$selectcounty== "Alpine-CA"){
    race_alpineCA <- subset.data.frame(race, NAME=="Alpine-CA")
    nodes_alpineCA <- as.Node(race_alpineCA) 
  } #2
  else if(input$selectcounty== "Amador-CA"){
    race_amadorCA <- subset.data.frame(race, NAME=="Amador-CA")
    nodes_amadorCA <- as.Node(race_amadorCA) 
  } #3
  else if(input$selectcounty== "Butte-CA"){
    race_butteCA <- subset.data.frame(race, NAME=="Butte-CA")
    nodes_butteCA <- as.Node(race_butteCA) 
  } #4
  else if(input$selectcounty== "Calaveras-CA"){
    race_calaverasCA <- subset.data.frame(race, NAME=="Calaveras-CA")
    nodes_calaverasCA <- as.Node(race_calaverasCA) 
  } #5
  else if(input$selectcounty== "Colusa-CA"){
    race_colusaCA <- subset.data.frame(race, NAME=="Colusa-CA")
    nodes_colusaCA <- as.Node(race_colusaCA) 
  } #6
  else if(input$selectcounty== "Contra Costa-CA"){
    race_contracostaCA <- subset.data.frame(race, NAME=="contracosta-CA")
    nodes_contracostaCA <- as.Node(race_contracostaCA) 
  } #7
  else if(input$selectcounty== "Del Norte-CA"){
    race_delnorteCA <- subset.data.frame(race, NAME=="Del Norte-CA")
    nodes_delnorteCA <- as.Node(race_delnorteCA) 
  } #8
  else if(input$selectcounty== "El Dorado-CA"){
    race_eldoradoCA <- subset.data.frame(race, NAME=="eldorado-CA")
    nodes_eldoradoCA <- as.Node(race_eldoradoCA) 
  } #9
  else if(input$selectcounty== "Fresno-CA"){
    race_fresnoCA <- subset.data.frame(race, NAME=="Fresno-CA")
    nodes_fresnoCA <- as.Node(race_FresnoCA) 
  } #10
  else if(input$selectcounty== "Glenn-CA"){
    race_glennCA <- subset.data.frame(race, NAME=="Glenn-CA")
    nodes_glennCA <- as.Node(race_glennCA) 
  } #11
  else if(input$selectcounty== "Humboldt-CA"){
    race_humboldtCA <- subset.data.frame(race, NAME=="Humboldt-CA")
    nodes_humboldtCA <- as.Node(race_humboldtCA) 
  } #12
  else if(input$selectcounty== "Imperial-CA"){
    race_imperialCA <- subset.data.frame(race, NAME=="Imperial-CA")
    nodes_imperialCA <- as.Node(race_imperialCA) 
  } #13
  else if(input$selectcounty== "Inyo-CA"){
    race_inyoCA <- subset.data.frame(race, NAME=="Inyo-CA")
    nodes_inyoCA <- as.Node(race_inyoCA) 
  } #14
  else if(input$selectcounty== "Kern-CA"){
    race_kernCA <- subset.data.frame(race, NAME=="Kern-CA")
    nodes_kernCA <- as.Node(race_kernCA) 
  } #15
  else if(input$selectcounty== "Kings-CA"){
    race_kingsCA <- subset.data.frame(race, NAME=="Kings-CA")
    nodes_kingsCA <- as.Node(race_kingsCA) 
  } #16
  else if(input$selectcounty== "Lake-CA"){
    race_lakeCA <- subset.data.frame(race, NAME=="Lake-CA")
    nodes_lakeCA <- as.Node(race_lakeCA) 
  } #17
  else if(input$selectcounty== "Lassen-CA"){
    race_lassenCA <- subset.data.frame(race, NAME=="Lassen-CA")
    nodes_lassenCA <- as.Node(race_lassenCA) 
  } #18
  else if(input$selectcounty== "Los Angeles-CA"){
    race_losangelesCA <- subset.data.frame(race, NAME=="Los Angeles-CA")
    nodes_losangelesCA <- as.Node(race_losangelesCA) 
  } #19
  else if(input$selectcounty== "Madera-CA"){
    race_maderaCA <- subset.data.frame(race, NAME=="Madera-CA")
    nodes_maderaCA <- as.Node(race_maderaCA) 
  } #20
  else if(input$selectcounty== "Marin-CA"){
    race_marinCA <- subset.data.frame(race, NAME=="Marin-CA")
    nodes_marinCA <- as.Node(race_marinCA) 
  } #21
  else if(input$selectcounty== "Mariposa-CA"){
    race_mariposaCA <- subset.data.frame(race, NAME=="Mariposa-CA")
    nodes_mariposaCA <- as.Node(race_mariposaCA) 
  } #22
  else if(input$selectcounty== "Mendocino-CA"){
    race_mendocinoCA <- subset.data.frame(race, NAME=="Mendocino-CA")
    nodes_mendocinoCA <- as.Node(race_mendocinoCA) 
  } #23
  else if(input$selectcounty== "Merced-CA"){
    race_mercedCA <- subset.data.frame(race, NAME=="Merced-CA")
    nodes_mercedCA <- as.Node(race_mercedCA) 
  } #24
  else if(input$selectcounty== "Modoc-CA"){
    race_modocCA <- subset.data.frame(race, NAME=="Modoc-CA")
    nodes_modocCA <- as.Node(race_modocCA) 
  } #25
  else if(input$selectcounty== "Mono-CA"){
    race_monoCA <- subset.data.frame(race, NAME=="Mono-CA")
    nodes_monoCA <- as.Node(race_monoCA) 
  } #26
  else if(input$selectcounty== "Monterey-CA"){
    race_montereyCA <- subset.data.frame(race, NAME=="Monterey-CA")
    nodes_montereyCA <- as.Node(race_montereyCA) 
  } #27
  else if(input$selectcounty== "Napa-CA"){
    race_napaCA <- subset.data.frame(race, NAME=="Napa-CA")
    nodes_napaCA <- as.Node(race_napaCA) 
  } #28
  else if(input$selectcounty== "Nevada-CA"){
    race_nevadaCA <- subset.data.frame(race, NAME=="Nevada-CA")
    nodes_nevadaCA <- as.Node(race_nevadaCA) 
  } #29
  else if(input$selectcounty== "Orange-CA"){
    race_orangeCA <- subset.data.frame(race, NAME=="Orange-CA")
    nodes_orangeCA <- as.Node(race_orangeCA) 
  } #30
  else if(input$selectcounty== "Placer-CA"){
    race_placerCA <- subset.data.frame(race, NAME=="Placer-CA")
    nodes_placerCA <- as.Node(race_placerCA) 
  } #31
  else if(input$selectcounty== "Plumas-CA"){
    race_plumasCA <- subset.data.frame(race, NAME=="Plumas-CA")
    nodes_plumasCA <- as.Node(race_plumasCA) 
  } #32
  else if(input$selectcounty== "Riverside-CA"){
    race_riversideCA <- subset.data.frame(race, NAME=="Riverside-CA")
    nodes_riversideCA <- as.Node(race_riversideCA) 
  } #33
  else if(input$selectcounty== "Sacremento-CA"){
    race_sacrementoCA <- subset.data.frame(race, NAME=="Sacremento-CA")
    nodes_sacrementoCA <- as.Node(race_sacrementoCA) 
  } #34
  else if(input$selectcounty== "San Benito-CA"){
    race_sanbenitoCA <- subset.data.frame(race, NAME=="San Benito-CA")
    nodes_sanbenitoCA <- as.Node(race_sanbenitoCA) 
  } #35
  else if(input$selectcounty== "San Bernadino-CA"){
    race_sanbernadinoCA <- subset.data.frame(race, NAME=="San Bernadino-CA")
    nodes_sanbernadinoCA <- as.Node(race_sanbernadinoCA) 
  } #36
  else if(input$selectcounty== "San Diego-CA"){
    race_sandiegoCA <- subset.data.frame(race, NAME=="San Diego-CA")
    nodes_sandiegoCA <- as.Node(race_sandiegoCA) 
  } #37
  else if(input$selectcounty== "San Francisco-CA"){
    race_sanfranciscoCA <- subset.data.frame(race, NAME=="San Francisco-CA")
    nodes_sanfranciscoCA <- as.Node(race_sanfranciscoCA) 
  } #38
  else if(input$selectcounty== "San Joaquin-CA"){
    race_sanjoaquinCA <- subset.data.frame(race, NAME=="San Joaquin-CA")
    nodes_sanjoaquinCA <- as.Node(race_sanjoaquinCA) 
  } #39
  else if(input$selectcounty== "San Luis Obispo-CA"){
    race_sanluisobispoCA <- subset.data.frame(race, NAME=="San Luis Obispo-CA")
    nodes_sanluisobispoCA <- as.Node(race_sanluisobispoCA) 
  } #40
  else if(input$selectcounty== "San Mateo-CA"){
    race_sanmateoCA <- subset.data.frame(race, NAME=="San Mateo-CA")
    nodes_sanmateoCA <- as.Node(race_sanmateoCA) 
  } #41
  else if(input$selectcounty== "Santa Barbara-CA"){
    race_santabarbaraCA <- subset.data.frame(race, NAME=="Santa Barbara-CA")
    nodes_santabarbaraCA <- as.Node(race_santabarbaraCA) 
  } #42
  else if(input$selectcounty== "Santa Clara-CA"){
    race_santaclaraCA <- subset.data.frame(race, NAME=="Santa Clara-CA")
    nodes_santaclaraCA <- as.Node(race_santaclaraCA) 
  } #43
  else if(input$selectcounty== "Santa Cruz-CA"){
    race_santacruzCA <- subset.data.frame(race, NAME=="Santa Cruz-CA")
    nodes_santacruzCA <- as.Node(race_santacruzCA) 
  } #44
  else if(input$selectcounty== "Shasta-CA"){
    race_shastaCA <- subset.data.frame(race, NAME=="Shasta-CA")
    nodes_shastaCA <- as.Node(race_shastaCA) 
  } #45
  else if(input$selectcounty== "Sierra-CA"){
    race_sierraCA <- subset.data.frame(race, NAME=="Sierra-CA")
    nodes_sierraCA <- as.Node(race_sierraCA) 
  } #46
  else if(input$selectcounty== "Siskiyou-CA"){
    race_siskiyouCA <- subset.data.frame(race, NAME=="Siskiyou-CA")
    nodes_siskiyouCA <- as.Node(race_siskiyouCA) 
  } #47
  else if(input$selectcounty== "Solano-CA"){
    race_solanoCA <- subset.data.frame(race, NAME=="Solano-CA")
    nodes_solanoCA <- as.Node(race_solanoCA) 
  } #48
  else if(input$selectcounty== "Sonoma-CA"){
    race_somonaCA <- subset.data.frame(race, NAME=="Sonoma-CA")
    nodes_somonaCA <- as.Node(race_sonomaCA) 
  } #49
  else if(input$selectcounty== "Stanislaus-CA"){
    race_stanislausCA <- subset.data.frame(race, NAME=="Stanislaus-CA")
    nodes_stanislausCA <- as.Node(race_stanislausCA) 
  } #50
  else if(input$selectcounty== "Sutter-CA"){
    race_sutterCA <- subset.data.frame(race, NAME=="Sutter-CA")
    nodes_sutterCA <- as.Node(race_sutterCA) 
  } #51
  else if(input$selectcounty== "Tehama-CA"){
    race_tehamaCA <- subset.data.frame(race, NAME=="Tehama-CA")
    nodes_tehamaCA <- as.Node(race_tehamaCA) 
  } #52
  else if(input$selectcounty== "Trinity-CA"){
    race_trinityCA <- subset.data.frame(race, NAME=="Trinity-CA")
    nodes_trinityCA <- as.Node(race_trinityCA) 
  } #53
  else if(input$selectcounty== "Tulare-CA"){
    race_tulareCA <- subset.data.frame(race, NAME=="Tulare-CA")
    nodes_tulareCA <- as.Node(race_tulareCA) 
  } #54
  else if(input$selectcounty== "Tuolumne-CA"){
    race_tuolumneCA <- subset.data.frame(race, NAME=="Tuolumne-CA")
    nodes_tuolumneCA <- as.Node(race_tuolumneCA) 
  } #55
  else if(input$selectcounty== "Ventura-CA"){
    race_venturaCA <- subset.data.frame(race, NAME=="Ventura-CA")
    nodes_venturaCA <- as.Node(race_venturaCA) 
  } #56
  else if(input$selectcounty== "Yolo-CA"){
    race_yoloCA <- subset.data.frame(race, NAME=="yolo-CA")
    nodes_yoloCA <- as.Node(race_yoloCA) 
  } #57
  else if(input$selectcounty== "Yuba-CA"){
    race_yubaCA <- subset.data.frame(race, NAME=="Yuba-CA")
    nodes_yubaCA <- as.Node(race_yubaCA) 
  } #58
  
################# COLORADO 
  else if(input$selectcounty== "Adams-CO"){
    race_adamsCO <- subset.data.frame(race, NAME=="Adams-CO")
    nodes_adamsCO <- as.Node(race_adamsCO) 
  } #1
  else if(input$selectcounty== "Alamosa-CO"){
    race_alamosaCO <- subset.data.frame(race, NAME=="Alamosa-CO")
    nodes_alamosaCO <- as.Node(race_alamosaCO) 
  } #2
  else if(input$selectcounty== "Arapahoe-CO"){
    race_arapahoeCO <- subset.data.frame(race, NAME=="Arapahoe-CO")
    nodes_arapahoeCO <- as.Node(race_arapahoeCO) 
  } #3
  else if(input$selectcounty== "Archuleta-CO"){
    race_archuletaCO <- subset.data.frame(race, NAME=="Archuleta-CO")
    nodes_archuletaCO <- as.Node(race_archuletaCO) 
  } #4
  else if(input$selectcounty== "Baca-CO"){
    race_bacaCO <- subset.data.frame(race, NAME=="Baca-CO")
    nodes_bacaCO <- as.Node(race_bacaCO) 
  } #5
  else if(input$selectcounty== "Bent-CO"){
    race_bentCO <- subset.data.frame(race, NAME=="Bent-CO")
    nodes_bentCO <- as.Node(race_bentCO) 
  } #6
  else if(input$selectcounty== "Boulder-CO"){
    race_boulderCO <- subset.data.frame(race, NAME=="Boulder-CO")
    nodes_boulderCO <- as.Node(race_boulderCO) 
  } #7
  else if(input$selectcounty== "Broomfield-CO"){
    race_broomfieldCO <- subset.data.frame(race, NAME=="Broomfield-CO")
    nodes_broomfieldCO <- as.Node(race_broomfieldCO) 
  } #8
  else if(input$selectcounty== "Chaffee-CO"){
    race_chaffeeCO <- subset.data.frame(race, NAME=="Chaffee-CO")
    nodes_chaffeeCO <- as.Node(race_chaffeeCO) 
  } #9
  else if(input$selectcounty== "Cheyenne-CO"){
    race_cheyenneCO <- subset.data.frame(race, NAME=="Cheyenne-CO")
    nodes_cheyenneCO <- as.Node(race_cheyenneCO) 
  } #10
  else if(input$selectcounty== "Clear Creek-CO"){
    race_clearcreekCO <- subset.data.frame(race, NAME=="Clear Creek-CO")
    nodes_clearcreekCO <- as.Node(race_clearcreekCO) 
  } ####56
  else if(input$selectcounty== "Conejos-CO"){
    race_conejosCO <- subset.data.frame(race, NAME=="Conejos-CO")
    nodes_conejosCO <- as.Node(race_conejosCO) 
  } #11
  else if(input$selectcounty== "Costilla-CO"){
    race_costillaCO <- subset.data.frame(race, NAME=="Costilla-CO")
    nodes_costillaCO <- as.Node(race_costillaCO) 
  } #12
  else if(input$selectcounty== "Crowley-CO"){
    race_crowleyCO <- subset.data.frame(race, NAME=="Crowley-CO")
    nodes_crowleyCO <- as.Node(race_crowleyCO) 
  } #13
  else if(input$selectcounty== "Custer-CO"){
    race_custerCO <- subset.data.frame(race, NAME=="Custer-CO")
    nodes_custerCO <- as.Node(race_custerCO) 
  } #14
  else if(input$selectcounty== "Delta-CO"){
    race_deltaCO <- subset.data.frame(race, NAME=="Delta-CO")
    nodes_deltaCO <- as.Node(race_deltaCO) 
  } #15
  else if(input$selectcounty== "Denver-CO"){
    race_denverCO <- subset.data.frame(race, NAME=="Denver-CO")
    nodes_denverCO <- as.Node(race_denverCO) 
  } #16
  else if(input$selectcounty== "Dolores-CO"){
    race_doloresCO <- subset.data.frame(race, NAME=="Dolores-CO")
    nodes_doloresCO <- as.Node(race_doloresCO) 
  } #17
  else if(input$selectcounty== "Douglas-CO"){
    race_douglasCO <- subset.data.frame(race, NAME=="Douglas-CO")
    nodes_douglasCO <- as.Node(race_douglasCO) 
  } #18
  else if(input$selectcounty== "Eagle-CO"){
    race_eagleCO <- subset.data.frame(race, NAME=="Eagle-CO")
    nodes_eagleCO <- as.Node(race_eagleCO) 
  } #19
  else if(input$selectcounty== "Elbert-CO"){
    race_elbertCO <- subset.data.frame(race, NAME=="Elbert-CO")
    nodes_elbertCO <- as.Node(race_elbertCO) 
  } #20
  else if(input$selectcounty== "El Paso-CO"){
    race_ElPasoCO <- subset.data.frame(race, NAME=="El Paso-CO")
    nodes_ElPasoCO <- as.Node(race_ElPasoCO) 
  } ######55
  else if(input$selectcounty== "Fremont-CO"){
    race_fremontCO <- subset.data.frame(race, NAME=="Fremont-CO")
    nodes_fremontCO <- as.Node(race_fremontCO) 
  } #21
  else if(input$selectcounty== "Garfield-CO"){
    race_garfieldCO <- subset.data.frame(race, NAME=="Garfield-CO")
    nodes_garfieldCO <- as.Node(race_garfieldCO) 
  } #22
  else if(input$selectcounty== "Gilpin-CO"){
    race_gilpinCO <- subset.data.frame(race, NAME=="Gilpin-CO")
    nodes_gilpinCO <- as.Node(race_gilpinCO) 
  } #23
  else if(input$selectcounty== "Grand-CO"){
    race_grandCO <- subset.data.frame(race, NAME=="Grand-CO")
    nodes_grandCO <- as.Node(race_grandCO) 
  } #24
  else if(input$selectcounty== "Gunnison-CO"){
    race_gunnisonCO <- subset.data.frame(race, NAME=="Gunnison-CO")
    nodes_gunnisonCO <- as.Node(race_gunnisonCO) 
  } #25
  else if(input$selectcounty== "Hinsdale-CO"){
    race_hinsdaleCO <- subset.data.frame(race, NAME=="Hinsdale-CO")
    nodes_hinsdaleCO <- as.Node(race_hinsdaleCO) 
  } #26
  else if(input$selectcounty== "Huerfano-CO"){
    race_huerfanoCO <- subset.data.frame(race, NAME=="Huerfano-CO")
    nodes_huerfanoCO <- as.Node(race_huerfanoCO) 
  } #27
  else if(input$selectcounty== "Jackson-CO"){
    race_jacksonCO <- subset.data.frame(race, NAME=="Jackson-CO")
    nodes_jacksonCO <- as.Node(race_JacksonCO) 
  } #28
  else if(input$selectcounty== "Jefferson-CO"){
    race_jeffersonCO <- subset.data.frame(race, NAME=="Jefferson-CO")
    nodes_jeffersonCO <- as.Node(race_jeffersonCO) 
  } #29
  else if(input$selectcounty== "Kiowa-CO"){
    race_kiowaCO <- subset.data.frame(race, NAME=="Kiowa-CO")
    nodes_kiowaCO <- as.Node(race_kiowaCO) 
  } #30
  else if(input$selectcounty== "Kit Carson-CO"){
    race_KitCarsonCO <- subset.data.frame(race, NAME=="Kit Carson-CO")
    nodes_KitCarsonCO <- as.Node(race_KitCarsonCO) 
  } ####57
  else if(input$selectcounty== "Lake-CO"){
    race_lakeCO <- subset.data.frame(race, NAME=="Lake-CO")
    nodes_lakeCO <- as.Node(race_lakeCO) 
  } #31
  else if(input$selectcounty== "La Plata-CO"){
    race_laplataCO <- subset.data.frame(race, NAME=="La Plata-CO")
    nodes_laplataCO <- as.Node(race_laplataCO) 
  } ######58
  else if(input$selectcounty== "Las Animas-CO"){
    race_lasanimasCO <- subset.data.frame(race, NAME=="Las Animas-CO")
    nodes_lasanimasCO <- as.Node(race_lasanimasCO) 
  } ####59
  else if(input$selectcounty== "Larimer-CO"){
    race_larimerCO <- subset.data.frame(race, NAME=="Larimer-CO")
    nodes_larimerCO <- as.Node(race_larimerCO) 
  } #32
  else if(input$selectcounty== "Lincoln-CO"){
    race_lincolnCO <- subset.data.frame(race, NAME=="Lincoln-CO")
    nodes_lincolnCO <- as.Node(race_lincolnCO) 
  } #33
  else if(input$selectcounty== "Logan-CO"){
    race_loganCO <- subset.data.frame(race, NAME=="Logan-CO")
    nodes_loganCO <- as.Node(race_loganCO) 
  } #34
  else if(input$selectcounty== "Mesa-CO"){
    race_mesaCO <- subset.data.frame(race, NAME=="Mesa-CO")
    nodes_mesaCO <- as.Node(race_mesaCO) 
  } #35
  else if(input$selectcounty== "Mineral-CO"){
    race_mineralCO <- subset.data.frame(race, NAME=="Mineral-CO")
    nodes_mineralCO <- as.Node(race_mineralCO) 
  } #36
  else if(input$selectcounty== "Moffat-CO"){
    race_moffatCO <- subset.data.frame(race, NAME=="Moffat-CO")
    nodes_moffatCO <- as.Node(race_moffatCO) 
  } #37
  else if(input$selectcounty== "Montezuma-CO"){
    race_montezumaCO <- subset.data.frame(race, NAME=="Montezuma-CO")
    nodes_montezumaCO <- as.Node(race_montezumaCO) 
  } #38
  else if(input$selectcounty== "Montrose-CO"){
    race_montroseCO <- subset.data.frame(race, NAME=="Montrose-CO")
    nodes_montroseCO <- as.Node(race_montroseCO) 
  } #39
  else if(input$selectcounty== "Morgan-CO"){
    race_morganCO <- subset.data.frame(race, NAME=="Morgan-CO")
    nodes_morganCO <- as.Node(race_morganCO) 
  } #40
  else if(input$selectcounty== "Otero-CO"){
    race_oteroCO <- subset.data.frame(race, NAME=="Otero-CO")
    nodes_oteroCO <- as.Node(race_oteroCO) 
  } #41
  else if(input$selectcounty== "Ouray-CO"){
    race_ourayCO <- subset.data.frame(race, NAME=="Ouray-CO")
    nodes_ourayCO <- as.Node(race_ourayCO) 
  } #42
  else if(input$selectcounty== "Park-CO"){
    race_parkCO <- subset.data.frame(race, NAME=="Park-CO")
    nodes_parkCO <- as.Node(race_parkCO) 
  } #43
  else if(input$selectcounty== "Phillips-CO"){
    race_phillipsCO <- subset.data.frame(race, NAME=="Phillips-CO")
    nodes_phillipsCO <- as.Node(race_phillipsCO) 
  } #44
  else if(input$selectcounty== "Pitkin-CO"){
    race_pitkinCO <- subset.data.frame(race, NAME=="Pitkin-CO")
    nodes_pitkinCO <- as.Node(race_pitkinCO) 
  } #45
  else if(input$selectcounty== "Prowers-CO"){
    race_prowersCO <- subset.data.frame(race, NAME=="Prowers-CO")
    nodes_prowersCO <- as.Node(race_prowersCO) 
  } #46
  else if(input$selectcounty== "Pueblo-CO"){
    race_puebloCO <- subset.data.frame(race, NAME=="Pueblo-CO")
    nodes_puebloCO <- as.Node(race_puebloCO) 
  } #47
  else if(input$selectcounty== "Rio Blanco-CO"){
    race_rioblancoCO <- subset.data.frame(race, NAME=="Rio Blanco-CO")
    nodes_rioblancoCO <- as.Node(race_rioblancoCO) 
  } ######60
  else if(input$selectcounty== "Rio Grande-CO"){
    race_riograndeCO <- subset.data.frame(race, NAME=="Rio Grande-CO")
    nodes_riograndeCO <- as.Node(race_riograndeCO) 
  } ######61
  else if(input$selectcounty== "Routt-CO"){
    race_routtCO <- subset.data.frame(race, NAME=="Routt-CO")
    nodes_routtCO <- as.Node(race_routtCO) 
  } #48
  else if(input$selectcounty== "San Juan-CO"){
    race_sanjuanCO <- subset.data.frame(race, NAME=="San Juan-CO")
    nodes_sanjuanCO <- as.Node(race_sanjuanCO) 
  }   ######62
  else if(input$selectcounty== "San Miguel-CO"){
    race_sanmiguelCO <- subset.data.frame(race, NAME=="San Miguel-CO")
    nodes_sanmiguelCO <- as.Node(race_sanmiguelCO) 
  } ######63
  else if(input$selectcounty== "Saguache-CO"){
    race_saguacheCO <- subset.data.frame(race, NAME=="Saguache-CO")
    nodes_saguasheCO <- as.Node(race_saguacheCO) 
  } #49
  else if(input$selectcounty== "Sedgwick-CO"){
    race_sedgwickCO <- subset.data.frame(race, NAME=="Sedgwick-CO")
    nodes_sedgwickCO <- as.Node(race_sedgwickCO) 
  } #50
  else if(input$selectcounty== "Summit-CO"){
    race_summitCO <- subset.data.frame(race, NAME=="Summit-CO")
    nodes_summitCO <- as.Node(race_summitCO) 
  } #51
  else if(input$selectcounty== "Teller-CO"){
    race_tellerCO <- subset.data.frame(race, NAME=="Teller-CO")
    nodes_tellerCO <- as.Node(race_tellerCO) 
  } #52
  else if(input$selectcounty== "Washington-CO"){
    race_washingtonCO <- subset.data.frame(race, NAME=="Washington-CO")
    nodes_washingtonCO <- as.Node(race_washingtonCO) 
  } #53
  else if(input$selectcounty== "Weld-CO"){
    race_weldCO <- subset.data.frame(race, NAME=="Weld-CO")
    nodes_weldCO <- as.Node(race_weldCO) 
  } #54
  else if(input$selectcounty== "Yuma-CO"){
    race_yumaCO <- subset.data.frame(race, NAME=="Yuma-CO")
    nodes_yumaCO <- as.Node(race_yumaCO) 
  } #######64
######### CONNECTICUT ######  
  else if(input$selectcounty== "Fairfield-CT"){
    race_fairfieldCT <- subset.data.frame(race, NAME=="Fairfield-CT")
    nodes_fairfieldCT <- as.Node(race_fairfieldCT) 
  } #1
  else if(input$selectcounty== "Hartford-CT"){
    race_hartfordCT <- subset.data.frame(race, NAME=="Hartford-CT")
    nodes_hartfordCT <- as.Node(race_hartfordCT) 
  } #2
  else if(input$selectcounty== "Litchfield-CT"){
    race_litchfieldCT <- subset.data.frame(race, NAME=="Litchfield-CT")
    nodes_litchfieldCT <- as.Node(race_litchfieldCT) 
  } #3
  else if(input$selectcounty== "Middlesex-CT"){
    race_middlesexCT <- subset.data.frame(race, NAME=="Middlesex-CT")
    nodes_middlesexCT <- as.Node(race_middlesexCT) 
  }  #4
  else if(input$selectcounty== "Tolland-CT"){
    race_tollandCT <- subset.data.frame(race, NAME=="Tolland-CT")
    nodes_tollandCT <- as.Node(race_tollandCT) 
  } #5
  else if(input$selectcounty== "Windham-CT"){
    race_windhamCT <- subset.data.frame(race, NAME=="Windham-CT")
    nodes_windhamCT <- as.Node(race_windhamCT) 
  } #5
  else if(input$selectcounty== "New Haven-CT"){
    race_newhavenCT <- subset.data.frame(race, NAME=="New Haven-CT")
    nodes_newhavenCT <- as.Node(race_newhavenCT) 
  } #7
  else if(input$selectcounty== "New London-CT"){
    race_newlCT <- subset.data.frame(race, NAME=="New London-CT")
    nodes_newlCT <- as.Node(race_newlCT) 
  } #8
######### DELAWARE ##### 
  else if(input$selectcounty== "Kent-DE"){
    race_kentDE <- subset.data.frame(race, NAME=="Kent-DE")
    nodes_kentDE <- as.Node(race_kentDE) 
  } #1
  else if(input$selectcounty== "Sussex-DE"){
    race_sussexDE <- subset.data.frame(race, NAME=="Sussex-DE")
    nodes_sussexDE <- as.Node(race_sussexDE) 
  } #2
  else if(input$selectcounty== "New Castle-DE"){
    race_newcastleDE <- subset.data.frame(race, NAME=="New Castle-DE")
    nodes_newcastleDE <- as.Node(race_newcastleDE) 
  } #3

  #### ***** READY
######### FLORIDA #####   
  else if(input$selectcounty== "Alachua-FL"){
    race_alachuaFL <- subset.data.frame(race, NAME=="Alachua-FL")
    nodes_alachuaFL <- as.Node(race_alachuaFL) 
  } #1 
  else if(input$selectcounty== "Baker-FL"){
    race_bakerFL <- subset.data.frame(race, NAME=="Baker-FL")
    nodes_bakerFL <- as.Node(race_bakerFL) 
  } #2
  else if(input$selectcounty== "Bay-FL"){
    race_bayFL <- subset.data.frame(race, NAME=="Bay-FL")
    nodes_bayFL <- as.Node(race_bayFL) 
  } #3
  else if(input$selectcounty== "Bradford-FL"){
    race_BradfordFL <- subset.data.frame(race, NAME=="Bradford-FL")
    nodes_BradfordFL <- as.Node(race_bradfordFL) 
  } #4
  else if(input$selectcounty== "Brevard-FL"){
    race_brevardFL <- subset.data.frame(race, NAME=="Brevard-FL")
    nodes_brevardFL <- as.Node(race_brevardFL) 
  } #5
  else if(input$selectcounty== "Broward-FL"){
    race_browardFL <- subset.data.frame(race, NAME=="Broward-FL")
    nodes_browardFL <- as.Node(race_browardFL) 
  } #6
  else if(input$selectcounty== "Calhoun-FL"){
    race_calhounFL <- subset.data.frame(race, NAME=="Calhoun-FL")
    nodes_calhounFL <- as.Node(race_calhounFL) 
  } #7
  else if(input$selectcounty== "Charlotte-FL"){
    race_charlotteFL <- subset.data.frame(race, NAME=="Charlotte-FL")
    nodes_charlotteFL <- as.Node(race_charlotteFL) 
  } #8
  else if(input$selectcounty== "Citrus-FL"){
    race_citrusFL <- subset.data.frame(race, NAME=="Citrus-FL")
    nodes_citrusFL <- as.Node(race_citrusFL) 
  } #9
  else if(input$selectcounty== "Clay-FL"){
    race_clayFL <- subset.data.frame(race, NAME=="Clay-FL")
    nodes_clayFL <- as.Node(race_clayFL) 
  } #10
  else if(input$selectcounty== "Collier-FL"){
    race_collierFL <- subset.data.frame(race, NAME=="Collier-FL")
    nodes_collierFL <- as.Node(race_collierFL) 
  } #11 
  else if(input$selectcounty== "Columbia-FL"){
    race_columbiaFL <- subset.data.frame(race, NAME=="Columbia-FL")
    nodes_columbiaFL <- as.Node(race_columbiaFL) 
  } #12
  else if(input$selectcounty== "DeSoto-FL"){
    race_desotoFL <- subset.data.frame(race, NAME=="DeSoto-FL")
    nodes_desotoFL <- as.Node(race_desotoFL) 
  } #13
  else if(input$selectcounty== "Dixie-FL"){
    race_dixieFL <- subset.data.frame(race, NAME=="Dixie-FL")
    nodes_dixieFL <- as.Node(race_dixieFL) 
  } #14
  else if(input$selectcounty== "Duval-FL"){
    race_duvalFL <- subset.data.frame(race, NAME=="Duval-FL")
    nodes_duvalFL <- as.Node(race_duvalFL) 
  } #15
  else if(input$selectcounty== "Escambia-FL"){
    race_escambiaFL <- subset.data.frame(race, NAME=="Escambia-FL")
    nodes_escambiaFL <- as.Node(race_escambiaFL) 
  } #16
  else if(input$selectcounty== "Flagler-FL"){
    race_flaglerFL <- subset.data.frame(race, NAME=="Flagler-FL")
    nodes_flaglerFL <- as.Node(race_flaglerFL) 
  } #17
  else if(input$selectcounty== "Franklin-FL"){
    race_franklinFL <- subset.data.frame(race, NAME=="Franklin-FL")
    nodes_franklinFL <- as.Node(race_franklinFL) 
  } #18
  else if(input$selectcounty== "Gadsden-FL"){
    race_gadsdenFL <- subset.data.frame(race, NAME=="Gadsden-FL")
    nodes_gadsdenFL <- as.Node(race_gadsdenFL) 
  } #19
  else if(input$selectcounty== "Gilchrist-FL"){
    race_gilchristFL <- subset.data.frame(race, NAME=="Gilchrist-FL")
    nodes_gilchristFL <- as.Node(race_gilchristFL) 
  } #20
  else if(input$selectcounty== "Glades-FL"){
    race_gladesFL <- subset.data.frame(race, NAME=="Glades-FL")
    nodes_gladesFL <- as.Node(race_gladesFL) 
  } #21
  else if(input$selectcounty== "Gulf-FL"){
    race_gulfFL <- subset.data.frame(race, NAME=="Gulf-FL")
    nodes_gulfFL <- as.Node(race_gulfFL) 
  } #22
  else if(input$selectcounty== "Hamilton-FL"){
    race_hamiltonFL <- subset.data.frame(race, NAME=="Hamilton-FL")
    nodes_hamiltonFL <- as.Node(race_hamiltonFL) 
  } #23
  else if(input$selectcounty== "Hardee-FL"){
    race_hardeeFL <- subset.data.frame(race, NAME=="Hardee-FL")
    nodes_hardeeFL <- as.Node(race_hardeeFL) 
  } #24
  else if(input$selectcounty== "Hendry-FL"){
    race_hendryFL <- subset.data.frame(race, NAME=="Hendry-FL")
    nodes_hendryFL <- as.Node(race_hendryFL) 
  } #25 
  else if(input$selectcounty== "Hernando-FL"){
    race_hernandoFL <- subset.data.frame(race, NAME=="Hernando-FL")
    nodes_hernandoFL <- as.Node(race_hernandoFL) 
  } #26
  else if(input$selectcounty== "Highlands-FL"){
    race_highlandsFL <- subset.data.frame(race, NAME=="Highlands-FL")
    nodes_highlandsFL <- as.Node(race_highlandsFL) 
  } #27
  else if(input$selectcounty== "Hillsborough-FL"){
    race_hillsboroughFL <- subset.data.frame(race, NAME=="Hillsborough-FL")
    nodes_hillsboroughFL <- as.Node(race_hillsboroughFL) 
  } #28
  else if(input$selectcounty== "Holmes-FL"){
    race_holmesFL <- subset.data.frame(race, NAME=="Holmes-FL")
    nodes_holmesFL <- as.Node(race_holmesFL) 
  } #29
  else if(input$selectcounty== "Indian River-FL"){
    race_IndianRiverFL <- subset.data.frame(race, NAME=="Indian River-FL")
    nodes_IndianRiverFL <- as.Node(race_IndianRiverFL) 
  } ######67
  else if(input$selectcounty== "Jackson-FL"){
    race_jacksonFL <- subset.data.frame(race, NAME=="Jackson-FL")
    nodes_jacksonFL <- as.Node(race_jacksonFL) 
  } #30
  else if(input$selectcounty== "Jefferson-FL"){
    race_jeffersonFL <- subset.data.frame(race, NAME=="Jefferson-FL")
    nodes_jeffersonFL <- as.Node(race_jeffersonFL) 
  } #31
  else if(input$selectcounty== "Lafayette-FL"){
    race_lafayetteFL <- subset.data.frame(race, NAME=="Lafayette-FL")
    nodes_lafayetteFL <- as.Node(race_lafayetteFL) 
  } #32
  else if(input$selectcounty== "Lake-FL"){
    race_lakeFL <- subset.data.frame(race, NAME=="Lake-FL")
    nodes_lakeFL <- as.Node(race_lakeFL) 
  } #33
  else if(input$selectcounty== "Lee-FL"){
    race_leeFL <- subset.data.frame(race, NAME=="Lee-FL")
    nodes_leeFL <- as.Node(race_leeFL) 
  } #34
  else if(input$selectcounty== "Leon-FL"){
    race_leonFL <- subset.data.frame(race, NAME=="Leon-FL")
    nodes_leonFL <- as.Node(race_leonFL) 
  } #35
  else if(input$selectcounty== "Levy-FL"){
    race_levyFL <- subset.data.frame(race, NAME=="Levy-FL")
    nodes_levyFL <- as.Node(race_levyFL) 
  } #36
  else if(input$selectcounty== "Liberty-FL"){
    race_libertyFL <- subset.data.frame(race, NAME=="liberty-FL")
    nodes_libertyFL <- as.Node(race_libertyFL) 
  } #37
  else if(input$selectcounty== "Madison-FL"){
    race_madisonFL <- subset.data.frame(race, NAME=="Madison-FL")
    nodes_madisonFL <- as.Node(race_madisonFL) 
  } #38
  else if(input$selectcounty== "Manatee-FL"){
    race_manateeFL <- subset.data.frame(race, NAME=="Manatee-FL")
    nodes_manateeFL <- as.Node(race_manateeFL) 
  } #39
  else if(input$selectcounty== "Marion-FL"){
    race_marionFL <- subset.data.frame(race, NAME=="Marion-FL")
    nodes_marionFL <- as.Node(race_marionFL) 
  } #40
  else if(input$selectcounty== "Martin-FL"){
    race_martinFL <- subset.data.frame(race, NAME=="Martin-FL")
    nodes_martinFL <- as.Node(race_martinFL) 
  } #41
  else if(input$selectcounty== "Miami-Dade-FL"){
    race_miamidadeFL <- subset.data.frame(race, NAME=="Miami-Dade-FL")
    nodes_miamidadeFL <- as.Node(race_miamidadeFL) 
  } #42
  else if(input$selectcounty== "Monroe-FL"){
    race_monroeFL <- subset.data.frame(race, NAME=="Monroe-FL")
    nodes_monroeFL <- as.Node(race_monroeFL) 
  } #43
  else if(input$selectcounty== "Nassau-FL"){
    race_nassauFL <- subset.data.frame(race, NAME=="Nassau-FL")
    nodes_nassauFL <- as.Node(race_nassauFL) 
  } #44
  else if(input$selectcounty== "Okaloosa-FL"){
    race_okaloosaFL <- subset.data.frame(race, NAME=="Okaloosa-FL")
    nodes_okaloosaFL <- as.Node(race_okaloosaFL) 
  } #45
  else if(input$selectcounty== "Okeechobee-FL"){
    race_okeechobeeFL <- subset.data.frame(race, NAME=="Okeechobee-FL")
    nodes_okeechobeeFL <- as.Node(race_okeechobeeFL) 
  } #46
  else if(input$selectcounty== "Orange-FL"){
    race_orangeFL <- subset.data.frame(race, NAME=="Orange-FL")
    nodes_orangeFL <- as.Node(race_orangeFL) 
  } #47
  else if(input$selectcounty== "Osceola-FL"){
    race_osceolaFL <- subset.data.frame(race, NAME=="Osceola-FL")
    nodes_osceolaFL <- as.Node(race_osceolaFL) 
  } #48
  else if(input$selectcounty== "Pasco-FL"){
    race_pascoFL <- subset.data.frame(race, NAME=="Pasco-FL")
    nodes_pascoFL <- as.Node(race_pascoFL) 
  } #49
  else if(input$selectcounty== "Pinellas-FL"){
    race_pinellasFL <- subset.data.frame(race, NAME=="Pinellas-FL")
    nodes_pinellasFL <- as.Node(race_pinellasFL) 
  } #50
  else if(input$selectcounty== "Polk-FL"){
    race_polkFL <- subset.data.frame(race, NAME=="Polk-FL")
    nodes_polkFL <- as.Node(race_polkFL) 
  } #51
  else if(input$selectcounty== "Putnam-FL"){
    race_putnamFL <- subset.data.frame(race, NAME=="Putnam-FL")
    nodes_putnamFL <- as.Node(race_putnamFL) 
  } #52
  else if(input$selectcounty== "Sarasota-FL"){
    race_sarasotaFL <- subset.data.frame(race, NAME=="Sarasota-FL")
    nodes_sarasotaFL <- as.Node(race_sarasotaFL) 
  } #53
  else if(input$selectcounty== "Seminole-FL"){
    race_seminoleFL <- subset.data.frame(race, NAME=="Seminole-FL")
    nodes_seminoleFL <- as.Node(race_seminoleFL) 
  } #54
  else if(input$selectcounty== "St. Johns-FL"){
    race_StJohnsFL <- subset.data.frame(race, NAME=="St. Johns-FL")
    nodes_StJohnsFL <- as.Node(race_StJohnsFL) 
  } #55
  else if(input$selectcounty== "St. Lucie-FL"){
    race_StLucieFL <- subset.data.frame(race, NAME=="St. Lucie-FL")
    nodes_StLucieFL <- as.Node(race_StLucieFL) 
  } #56
  else if(input$selectcounty== "Sumter-FL"){
    race_sumterFL <- subset.data.frame(race, NAME=="Sumter-FL")
    nodes_sumterFL <- as.Node(race_sumterFL) 
  } #57
  else if(input$selectcounty== "Suwannee-FL"){
    race_suwanneeFL <- subset.data.frame(race, NAME=="Suwannee-FL")
    nodes_suwanneeFL <- as.Node(race_suwanneeFL) 
  } #58
  else if(input$selectcounty== "Taylor-FL"){
    race_taylorFL <- subset.data.frame(race, NAME=="Taylor-FL")
    nodes_taylorFL <- as.Node(race_taylorFL) 
  } #59
  else if(input$selectcounty== "Union-FL"){
    race_unionFL <- subset.data.frame(race, NAME=="Union-FL")
    nodes_unionFL <- as.Node(race_unionFL) 
  } #60
  else if(input$selectcounty== "Volusia-FL"){
    race_volusiaFL <- subset.data.frame(race, NAME=="Volusia-FL")
    nodes_volusiaFL <- as.Node(race_volusiaFL) 
  } #61
  else if(input$selectcounty== "Wakulla-FL"){
    race_wakullaFL <- subset.data.frame(race, NAME=="Wakulla-FL")
    nodes_wakullaFL <- as.Node(race_wakullaFL) 
  } #62
  else if(input$selectcounty== "Walton-FL"){
    race_waltonFL <- subset.data.frame(race, NAME=="Walton-FL")
    nodes_waltonFL <- as.Node(race_waltonFL) 
  } #63
  else if(input$selectcounty== "Washington-FL"){
    race_washingtonFL <- subset.data.frame(race, NAME=="Washington-FL")
    nodes_wahingtonFL <- as.Node(race_washingtonFL) 
  } #64
  else if(input$selectcounty== "Santa Rosa-FL"){
    race_SantaRosaFL <- subset.data.frame(race, NAME=="Santa Rosa-FL")
    nodes_SantaRosaFL <- as.Node(race_SantaRosaFL) 
  } #65
  else if(input$selectcounty== "Indian River-FL"){
    race_IndianRiverFL <- subset.data.frame(race, NAME=="Indian River-FL")
    nodes_IndianRiverFL <- as.Node(race_IndianRiverFL) 
  } #66

######### GEORGIA #######  
  else if(input$selectcounty== "Appling-GA"){
    race_applingGA <- subset.data.frame(race, NAME=="Appling-GA")
    nodes_applingGA <- as.Node(race_applingGA) 
  } #1
  else if(input$selectcounty== "Atkinson-GA"){
    race_atkinsonGA <- subset.data.frame(race, NAME=="Atkinson-GA")
    nodes_atkinsonGA <- as.Node(race_atkinsonGA) 
  } #2
  else if(input$selectcounty== "Bacon-GA"){
    race_baconGA <- subset.data.frame(race, NAME=="Bacon-GA")
    nodes_baconGA <- as.Node(race_baconGA) 
  } #3
  else if(input$selectcounty== "Baker-GA"){
    race_bakerGA <- subset.data.frame(race, NAME=="Baker-GA")
    nodes_bakerGA <- as.Node(race_bakerGA) 
  } #4
  else if(input$selectcounty== "Baldwin-GA"){
    race_baldwinGA <- subset.data.frame(race, NAME=="Baldwin-GA")
    nodes_baldwinGA <- as.Node(race_baldwinGA) 
  } #5
  else if(input$selectcounty== "Banks-GA"){
    race_banksGA <- subset.data.frame(race, NAME=="Banks-GA")
    nodes_banksGA <- as.Node(race_banksGA) 
  } #6
  else if(input$selectcounty== "Barrow-GA"){
    race_barrowGA <- subset.data.frame(race, NAME=="Barrow-GA")
    nodes_barrowGA <- as.Node(race_barrowGA) 
  } #7
  else if(input$selectcounty== "Bartow-GA"){
    race_bartowGA <- subset.data.frame(race, NAME=="Bartow-GA")
    nodes_bartowGA <- as.Node(race_bartowGA) 
  } #8
  else if(input$selectcounty== "Ben Hill-GA"){
    race_benhillGA <- subset.data.frame(race, NAME=="Ben Hill-GA")
    nodes_benhillGA <- as.Node(race_benhillGA) 
  } #9
  else if(input$selectcounty== "Berrien-GA"){
    race_berrienGA <- subset.data.frame(race, NAME=="Berrien-GA")
    nodes_berrienGA <- as.Node(race_berrienGA) 
  } #10
  else if(input$selectcounty== "Bibb-GA"){
    race_bibbGA <- subset.data.frame(race, NAME=="Bibb-GA")
    nodes_bibbGA <- as.Node(race_bibbGA) 
  } #11
  else if(input$selectcounty== "Bleckley-GA"){
    race_bleckleyGA <- subset.data.frame(race, NAME=="Bleckley-GA")
    nodes_bleckleyGA <- as.Node(race_bleckleyGA) 
  } #12
  else if(input$selectcounty== "Brantley-GA"){
    race_brantleyGA <- subset.data.frame(race, NAME=="Brantley-GA")
    nodes_brantleyGA <- as.Node(race_brantleyGA) 
  } #13
  else if(input$selectcounty== "Brooks-GA"){
    race_brooksGA <- subset.data.frame(race, NAME=="Brooks-GA")
    nodes_brooksGA <- as.Node(race_brooksGA) 
  } #14
  else if(input$selectcounty== "Bryan-GA"){
    race_bryanGA <- subset.data.frame(race, NAME=="Bryan-GA")
    nodes_bryanGA <- as.Node(race_bryanGA) 
  } #15
  else if(input$selectcounty== "Bulloch-GA"){
    race_bullochGA <- subset.data.frame(race, NAME=="Bulloch-GA")
    nodes_bullochGA <- as.Node(race_bullochGA) 
  } #16
  else if(input$selectcounty== "Burke-GA"){
    race_burkeGA <- subset.data.frame(race, NAME=="Burke-GA")
    nodes_burkeGA <- as.Node(race_burkeGA) 
  } #17
  else if(input$selectcounty== "Butts-GA"){
    race_buttsGA <- subset.data.frame(race, NAME=="Butts-GA")
    nodes_buttsGA <- as.Node(race_buttsGA) 
  } #18
  else if(input$selectcounty== "Calhoun-GA"){
    race_calhounGA <- subset.data.frame(race, NAME=="Calhoun-GA")
    nodes_calhounGA <- as.Node(race_calhounGA) 
  } #19
  else if(input$selectcounty== "Camden-GA"){
    race_camdenGA <- subset.data.frame(race, NAME=="Camden-GA")
    nodes_camdenGA <- as.Node(race_camdenGA) 
  } #20
  else if(input$selectcounty== "Candler-GA"){
    race_candlerGA <- subset.data.frame(race, NAME=="Candler-GA")
    nodes_candlerGA <- as.Node(race_candlerGA) 
  } #21
  else if(input$selectcounty== "Carroll-GA"){
    race_carrollGA <- subset.data.frame(race, NAME=="Carroll-GA")
    nodes_carrollGA <- as.Node(race_carrollGA) 
  } #22
  else if(input$selectcounty== "Catoosa-GA"){
    race_catoosaGA <- subset.data.frame(race, NAME=="Catoosa-GA")
    nodes_catoosaGA <- as.Node(race_catoosaGA) 
  } #23
  else if(input$selectcounty== "Charlton-GA"){
    race_charltonGA <- subset.data.frame(race, NAME=="Charlton-GA")
    nodes_charltonGA <- as.Node(race_charltonGA) 
  } #24
  else if(input$selectcounty== "Chatham-GA"){
    race_chathamGA <- subset.data.frame(race, NAME=="Chatham-GA")
    nodes_chathamGA <- as.Node(race_chathamGA) 
  } #25
  else if(input$selectcounty== "Chattahoochee-GA"){
    race_chattahoocheeGA <- subset.data.frame(race, NAME=="Chattahoochee-GA")
    nodes_chattahoocheeGA <- as.Node(race_chattahoocheeGA) 
  } #26
  else if(input$selectcounty== "Chattooga-GA"){
    race_chattoogaGA <- subset.data.frame(race, NAME=="Chattooga-GA")
    nodes_chattoogaGA <- as.Node(race_chattoogaGA) 
  } #27
  else if(input$selectcounty== "Cherokee-GA"){
    race_cherokeeGA <- subset.data.frame(race, NAME=="Cherokee-GA")
    nodes_cherokeeGA <- as.Node(race_cherokeeGA) 
  } #28
  else if(input$selectcounty== "Clarke-GA"){
    race_clarkeGA <- subset.data.frame(race, NAME=="Clarke-GA")
    nodes_clarkeGA <- as.Node(race_clarkeGA) 
  } #29
  else if(input$selectcounty== "Clay-GA"){
    race_clayGA <- subset.data.frame(race, NAME=="Clay-GA")
    nodes_clayGA <- as.Node(race_clayGA) 
  } #30
  else if(input$selectcounty== "Clayton-GA"){
    race_claytonGA <- subset.data.frame(race, NAME=="Clayton-GA")
    nodes_claytonGA <- as.Node(race_claytonGA) 
  } #31
  else if(input$selectcounty== "Clinch-GA"){
    race_clinchGA <- subset.data.frame(race, NAME=="Clinch-GA")
    nodes_clinchGA <- as.Node(race_clinchGA) 
  } #32
  else if(input$selectcounty== "Cobb-GA"){
    race_cobbGA <- subset.data.frame(race, NAME=="Cobb-GA")
    nodes_cobbGA <- as.Node(race_cobbGA) 
  } #33
  else if(input$selectcounty== "Coffee-GA"){
    race_coffeeGA <- subset.data.frame(race, NAME=="Coffee-GA")
    nodes_coffeeGA <- as.Node(race_coffeeGA) 
  } #34
  else if(input$selectcounty== "Colquitt-GA"){
    race_colquittGA <- subset.data.frame(race, NAME=="Colquitt-GA")
    nodes_colquittGA <- as.Node(race_colquittGA) 
  } #35
  else if(input$selectcounty== "Columbia-GA"){
    race_columbiaGA <- subset.data.frame(race, NAME=="Columbia-GA")
    nodes_columbiaGA <- as.Node(race_columbiaGA) 
  } #36
  else if(input$selectcounty== "Cook-GA"){
    race_cookGA <- subset.data.frame(race, NAME=="Cook-GA")
    nodes_cookGA <- as.Node(race_cookGA) 
  } #37
  else if(input$selectcounty== "Coweta-GA"){
    race_cowetaGA <- subset.data.frame(race, NAME=="Coweta-GA")
    nodes_cowetaGA <- as.Node(race_cowetaGA) 
  } #38
  else if(input$selectcounty== "Crawford-GA"){
    race_crawfordGA <- subset.data.frame(race, NAME=="Crawford-GA")
    nodes_crawfordGA <- as.Node(race_crawfordGA) 
  } #39
  else if(input$selectcounty== "Crisp-GA"){
    race_crispGA <- subset.data.frame(race, NAME=="Crisp-GA")
    nodes_crispGA <- as.Node(race_crispGA) 
  } #40
  else if(input$selectcounty== "Dade-GA"){
    race_dadeGA <- subset.data.frame(race, NAME=="Dade-GA")
    nodes_dadeGA <- as.Node(race_dadeGA) 
  } #41
  else if(input$selectcounty== "Dawson-GA"){
    race_dawsonGA <- subset.data.frame(race, NAME=="Dawson-GA")
    nodes_dawsonGA <- as.Node(race_dawsonGA) 
  } #42
  else if(input$selectcounty== "Decatur-GA"){
    race_decaturGA <- subset.data.frame(race, NAME=="Decatur-GA")
    nodes_decaturGA <- as.Node(race_decaturGA) 
  } #43
  else if(input$selectcounty== "DeKalb-GA"){
    race_dekalbGA <- subset.data.frame(race, NAME=="DeKalb-GA")
    nodes_dekalbGA <- as.Node(race_dekalbGA) 
  } #44
  else if(input$selectcounty== "Dodge-GA"){
    race_dodgeGA <- subset.data.frame(race, NAME=="Dodge-GA")
    nodes_dodgeGA <- as.Node(race_dodgeGA) 
  } #45
  else if(input$selectcounty== "Dooly-GA"){
    race_doolyGA <- subset.data.frame(race, NAME=="Dooly-GA")
    nodes_doolyGA <- as.Node(race_doolyGA) 
  } #46
  else if(input$selectcounty== "Dougherty-GA"){
    race_doughertyGA <- subset.data.frame(race, NAME=="Dougherty-GA")
    nodes_doughertyGA <- as.Node(race_doughertyGA) 
  } #47
  else if(input$selectcounty== "Douglas-GA"){
    race_douglasGA <- subset.data.frame(race, NAME=="Douglas-GA")
    nodes_douglasGA <- as.Node(race_douglasGA) 
  } #48
  else if(input$selectcounty== "Early-GA"){
    race_earlyGA <- subset.data.frame(race, NAME=="Early-GA")
    nodes_earlyGA <- as.Node(race_earlyGA) 
  } #49
  else if(input$selectcounty== "Echols-GA"){
    race_echolsGA <- subset.data.frame(race, NAME=="Echols-GA")
    nodes_echolsGA <- as.Node(race_echolsGA) 
  } #50
  else if(input$selectcounty== "Effingham-GA"){
    race_effinghamGA <- subset.data.frame(race, NAME=="Effingham-GA")
    nodes_effinghamGA <- as.Node(race_effinghamGA) 
  } #51
  else if(input$selectcounty== "Elbert-GA"){
    race_elbertGA <- subset.data.frame(race, NAME=="Elbert-GA")
    nodes_elbertGA <- as.Node(race_elbertGA) 
  } #52
  else if(input$selectcounty== "Emanual-GA"){
    race_emanualGA <- subset.data.frame(race, NAME=="Emanual-GA")
    nodes_emanualGA <- as.Node(race_emanualGA) 
  } #53
  else if(input$selectcounty== "Evans-GA"){
    race_evansGA <- subset.data.frame(race, NAME=="Evans-GA")
    nodes_evansGA <- as.Node(race_evansGA) 
  } #54
  else if(input$selectcounty== "Fannin-GA"){
    race_fanninGA <- subset.data.frame(race, NAME=="Fannin-GA")
    nodes_fanninGA <- as.Node(race_fanninGA) 
  } #55
  else if(input$selectcounty== "Fayette-GA"){
    race_fayetteGA <- subset.data.frame(race, NAME=="Fayette-GA")
    nodes_fayetteGA <- as.Node(race_fayetteGA) 
  } #56
  else if(input$selectcounty== "Floyd-GA"){
    race_floydGA <- subset.data.frame(race, NAME=="Floyd-GA")
    nodes_floydGA <- as.Node(race_floydGA) 
  } #57
  else if(input$selectcounty== "Forsyth-GA"){
    race_forsythGA <- subset.data.frame(race, NAME=="Forsyth-GA")
    nodes_forsythGA <- as.Node(race_forsythGA) 
  } #58
  else if(input$selectcounty== "Franklin-GA"){
    race_franklinGA <- subset.data.frame(race, NAME=="Franklin-GA")
    nodes_franklinGA <- as.Node(race_franklinGA) 
  } #59
  else if(input$selectcounty== "Fulton-GA"){
    race_fultonGA <- subset.data.frame(race, NAME=="Fulton-GA")
    nodes_fultonGA <- as.Node(race_fultonGA) 
  } #60
  else if(input$selectcounty== "Gilmer-GA"){
    race_gilmerGA <- subset.data.frame(race, NAME=="Gilmer-GA")
    nodes_gilmerGA <- as.Node(race_gilmerGA) 
  } #61
  else if(input$selectcounty== "Glascock-GA"){
    race_glascockGA <- subset.data.frame(race, NAME=="Glascock-GA")
    nodes_glascockGA <- as.Node(race_glascockGA) 
  } #62
  else if(input$selectcounty== "Glynn-GA"){
    race_glynnGA <- subset.data.frame(race, NAME=="Glynn-GA")
    nodes_glynnGA <- as.Node(race_glynnGA) 
  } #63
  else if(input$selectcounty== "Gordon-GA"){
    race_gordonGA <- subset.data.frame(race, NAME=="Gordon-GA")
    nodes_gordonGA <- as.Node(race_gordonGA) 
  } #64
  else if(input$selectcounty== "Grady-GA"){
    race_gradyGA <- subset.data.frame(race, NAME=="Grady-GA")
    nodes_gradyGA <- as.Node(race_gradyGA) 
  } #65
  else if(input$selectcounty== "Greene-GA"){
    race_greeneGA <- subset.data.frame(race, NAME=="Greene-GA")
    nodes_greeneGA <- as.Node(race_greeneGA) 
  } #66
  else if(input$selectcounty== "Gwinnett-GA"){
    race_gwinnettGA <- subset.data.frame(race, NAME=="Gwinnett-GA")
    nodes_gwinnettGA <- as.Node(race_gwinnettGA) 
  } #67
  else if(input$selectcounty== "Habersham-GA"){
    race_habershamGA <- subset.data.frame(race, NAME=="Habersham-GA")
    nodes_habershamGA <- as.Node(race_habershamGA) 
  } #68
  else if(input$selectcounty== "Hall-GA"){
    race_hallGA <- subset.data.frame(race, NAME=="Hall-GA")
    nodes_hallGA <- as.Node(race_hallGA) 
  } #69
  else if(input$selectcounty== "Hancock-GA"){
    race_hancockGA <- subset.data.frame(race, NAME=="Hancock-GA")
    nodes_hancockGA <- as.Node(race_hancockGA) 
  } #70
  else if(input$selectcounty== "Haralson-GA"){
    race_haralsonGA <- subset.data.frame(race, NAME=="Haralson-GA")
    nodes_haralsonGA <- as.Node(race_haralsonGA) 
  } #71
  else if(input$selectcounty== "Harris-GA"){
    race_harrisGA <- subset.data.frame(race, NAME=="Harris-GA")
    nodes_harrisGA <- as.Node(race_harrisGA) 
  } #72
  else if(input$selectcounty== "Hart-GA"){
    race_hartGA <- subset.data.frame(race, NAME=="Hart-GA")
    nodes_hartGA <- as.Node(race_hartGA) 
  } #73
  else if(input$selectcounty== "Heard-GA"){
    race_heardGA <- subset.data.frame(race, NAME=="Heard-GA")
    nodes_heardGA <- as.Node(race_heardGA) 
  } #74
  else if(input$selectcounty== "Henry-GA"){
    race_henryGA <- subset.data.frame(race, NAME=="Henry-GA")
    nodes_henryGA <- as.Node(race_henryGA) 
  } #75
  else if(input$selectcounty== "Houston-GA"){
    race_houstonGA <- subset.data.frame(race, NAME=="Houston-GA")
    nodes_houstonGA <- as.Node(race_houstonGA) 
  } #76
  else if(input$selectcounty== "Irwin-GA"){
    race_irwinGA <- subset.data.frame(race, NAME=="Irwin-GA")
    nodes_irwinGA <- as.Node(race_irwinGA) 
  } #77
  else if(input$selectcounty== "Jackson-GA"){
    race_jacksonGA <- subset.data.frame(race, NAME=="Jackson-GA")
    nodes_jacksonGA <- as.Node(race_jacksonGA) 
  } #78
  else if(input$selectcounty== "Jasper-GA"){
    race_jasperGA <- subset.data.frame(race, NAME=="Jasper-GA")
    nodes_jasperGA <- as.Node(race_JasperGA) 
  } #79
  else if(input$selectcounty== "Jeff Davis-GA"){
    race_JeffDavisGA <- subset.data.frame(race, NAME=="Jeff Davis-GA")
    nodes_JeffDavisGA <- as.Node(race_JeffDavisGA) 
  } ####158
  else if(input$selectcounty== "Jefferson-GA"){
    race_jeffersonGA <- subset.data.frame(race, NAME=="Jefferson-GA")
    nodes_jeffersonGA <- as.Node(race_jeffersonGA) 
  } #80
  else if(input$selectcounty== "Jenkins-GA"){
    race_jenkinsGA <- subset.data.frame(race, NAME=="Jenkins-GA")
    nodes_jenkinsGA <- as.Node(race_jenkinsGA) 
  } #81
  else if(input$selectcounty== "Johnson-GA"){
    race_johnsonGA <- subset.data.frame(race, NAME=="Johnson-GA")
    nodes_johnsonGA <- as.Node(race_johnsonGA) 
  } #82
  else if(input$selectcounty== "Jones-GA"){
    race_jonesGA <- subset.data.frame(race, NAME=="Jones-GA")
    nodes_jonesGA <- as.Node(race_jonesGA) 
  } #83
  else if(input$selectcounty== "Lamar-GA"){
    race_lamarGA <- subset.data.frame(race, NAME=="Lamar-GA")
    nodes_lamarGA <- as.Node(race_lamarGA) 
  } #84
  else if(input$selectcounty== "Lanier-GA"){
    race_lanierGA <- subset.data.frame(race, NAME=="Lanier-GA")
    nodes_lanierGA <- as.Node(race_lanierGA) 
  } #85
  else if(input$selectcounty== "Laurens-GA"){
    race_laurensGA <- subset.data.frame(race, NAME=="Laurens-GA")
    nodes_laurensGA <- as.Node(race_laurensGA) 
  } #86
  else if(input$selectcounty== "Lee-GA"){
    race_leeGA <- subset.data.frame(race, NAME=="Lee-GA")
    nodes_leeGA <- as.Node(race_leeGA) 
  } #87
  else if(input$selectcounty== "Liberty-GA"){
    race_libertyGA <- subset.data.frame(race, NAME=="Liberty-GA")
    nodes_libertyGA <- as.Node(race_libertyGA) 
  } #88
  else if(input$selectcounty== "Lincoln-GA"){
    race_lincolnGA <- subset.data.frame(race, NAME=="Lincoln-GA")
    nodes_lincolnGA <- as.Node(race_lincolnGA) 
  } #89
  else if(input$selectcounty== "Long-GA"){
    race_longGA <- subset.data.frame(race, NAME=="Long-GA")
    nodes_longGA <- as.Node(race_longGA) 
  } #90
  else if(input$selectcounty== "Lowndes-GA"){
    race_lowndesGA <- subset.data.frame(race, NAME=="Lowndes-GA")
    nodes_lowndesGA <- as.Node(race_lowndesGA) 
  } #91
  else if(input$selectcounty== "Lumpkin-GA"){
    race_lumpkinGA <- subset.data.frame(race, NAME=="Lumpkin-GA")
    nodes_lumpkinGA <- as.Node(race_lumpkinGA) 
  } #92
  else if(input$selectcounty== "Macon-GA"){
    race_maconGA <- subset.data.frame(race, NAME=="Macon-GA")
    nodes_maconGA <- as.Node(race_maconGA) 
  } #93
  else if(input$selectcounty== "Madison-GA"){
    race_madisonGA <- subset.data.frame(race, NAME=="Madison-GA")
    nodes_madisonGA <- as.Node(race_madisonGA) 
  } #94
  else if(input$selectcounty== "Marion-GA"){
    race_marionGA <- subset.data.frame(race, NAME=="Marion-GA")
    nodes_marionGA <- as.Node(race_marionGA) 
  } #95
  else if(input$selectcounty== "McDuffle-GA"){
    race_mcduffleGA <- subset.data.frame(race, NAME=="McDuffle-GA")
    nodes_mcduffleGA <- as.Node(race_mcduffleGA) 
  } #96
  else if(input$selectcounty== "McIntosh-GA"){
    race_mcintoshGA <- subset.data.frame(race, NAME=="McIntosh-GA")
    nodes_mcintoshGA <- as.Node(race_mcintoshGA) 
  } #97
  else if(input$selectcounty== "Meriwether-GA"){
    race_meriwetherGA <- subset.data.frame(race, NAME=="Meriwether-GA")
    nodes_meriwetherGA <- as.Node(race_meriwetherGA) 
  } #98
  else if(input$selectcounty== "Miller-GA"){
    race_millerGA <- subset.data.frame(race, NAME=="Miller-GA")
    nodes_millerGA <- as.Node(race_millerGA) 
  } #99
  else if(input$selectcounty== "Mitchell-GA"){
    race_mitchellGA <- subset.data.frame(race, NAME=="Mitchell-GA")
    nodes_mitchellGA <- as.Node(race_mitchellGA) 
  } #100
  else if(input$selectcounty== "Monroe-GA"){
    race_monroeGA <- subset.data.frame(race, NAME=="Monroe-GA")
    nodes_monroeGA <- as.Node(race_monroeGA) 
  } #101
  else if(input$selectcounty== "Montgomery-GA"){
    race_montgomeryGA <- subset.data.frame(race, NAME=="Montgomery-GA")
    nodes_montgomeryGA <- as.Node(race_montgomeryGA) 
  } #102
  else if(input$selectcounty== "Morgan-GA"){
    race_morganGA <- subset.data.frame(race, NAME=="Morgan-GA")
    nodes_morganGA <- as.Node(race_morganGA) 
  } #103
  else if(input$selectcounty== "Murray-GA"){
    race_murrayGA <- subset.data.frame(race, NAME=="Murray-GA")
    nodes_murrayGA <- as.Node(race_murrayGA) 
  }#104
  else if(input$selectcounty== "Muscogee-GA"){
    race_muscogeeGA <- subset.data.frame(race, NAME=="Muscogee-GA")
    nodes_muscogeeGA <- as.Node(race_muscogeeGA) 
  } #105
  else if(input$selectcounty== "Newton-GA"){
    race_newtonGA <- subset.data.frame(race, NAME=="Newton-GA")
    nodes_newtonGA <- as.Node(race_newtonGA) 
  } #106
  else if(input$selectcounty== "Oconee-GA"){
    race_oconeeGA <- subset.data.frame(race, NAME=="Oconee-GA")
    nodes_oconeeGA <- as.Node(race_oconeeGA) 
  } #107
  else if(input$selectcounty== "Oglethorpe-GA"){
    race_oglethorpeGA <- subset.data.frame(race, NAME=="Oglethorpe-GA")
    nodes_oglethorpeGA <- as.Node(race_oglethorpeGA) 
  } #108
  else if(input$selectcounty== "Paulding-GA"){
    race_pauldingGA <- subset.data.frame(race, NAME=="Paulding-GA")
    nodes_pauldingGA <- as.Node(race_pauldingGA) 
  } #109
  else if(input$selectcounty== "Peach-GA"){
    race_peachGA <- subset.data.frame(race, NAME=="Peach-GA")
    nodes_peachGA <- as.Node(race_peachGA) 
  } #110
  else if(input$selectcounty== "Pickens-GA"){
    race_pickensGA <- subset.data.frame(race, NAME=="Pickens-GA")
    nodes_pickensGA <- as.Node(race_pickensGA) 
  } #111
  else if(input$selectcounty== "Pierce-GA"){
    race_pierceGA <- subset.data.frame(race, NAME=="Pierce-GA")
    nodes_pierceGA <- as.Node(race_pierceGA) 
  } #112
  else if(input$selectcounty== "Pike-GA"){
    race_pikeGA <- subset.data.frame(race, NAME=="Pike-GA")
    nodes_pikeGA <- as.Node(race_pikeGA) 
  } #113
  else if(input$selectcounty== "Polk-GA"){
    race_polkGA <- subset.data.frame(race, NAME=="Polk-GA")
    nodes_polkGA <- as.Node(race_polkGA) 
  } #114
  else if(input$selectcounty== "Pulaski-GA"){
    race_pulaskiGA <- subset.data.frame(race, NAME=="Pulaski-GA")
    nodes_pulaskiGA <- as.Node(race_pulaskiGA) 
  } #115
  else if(input$selectcounty== "Putnam-GA"){
    race_putnamGA <- subset.data.frame(race, NAME=="Putnam-GA")
    nodes_putnamGA <- as.Node(race_putnamGA) 
  } #116
  else if(input$selectcounty== "Quitman-GA"){
    race_quitmanGA <- subset.data.frame(race, NAME=="Quitman-GA")
    nodes_quitmanGA <- as.Node(race_quitmanGA) 
  } #117
  else if(input$selectcounty== "Rabun-GA"){
    race_rabunGA <- subset.data.frame(race, NAME=="Rabun-GA")
    nodes_rabunGA <- as.Node(race_rabunGA) 
  } #118
  else if(input$selectcounty== "Randolph-GA"){
    race_randolphGA <- subset.data.frame(race, NAME=="Randolph-GA")
    nodes_randolphGA <- as.Node(race_randolphGA) 
  } #119
  else if(input$selectcounty== "Richmond-GA"){
    race_richmondGA <- subset.data.frame(race, NAME=="Richmond-GA")
    nodes_richmondGA <- as.Node(race_richmondGA) 
  } #120
  else if(input$selectcounty== "Rockdale-GA"){
    race_rockdaleGA <- subset.data.frame(race, NAME=="Rockdale-GA")
    nodes_rockdaleGA <- as.Node(race_rockdaleGA) 
  } #121
  else if(input$selectcounty== "Schley-GA"){
    race_schleyGA <- subset.data.frame(race, NAME=="Schley-GA")
    nodes_schleyGA <- as.Node(race_schleyGA) 
  } #122
  else if(input$selectcounty== "Screven-GA"){
    race_screvenGA <- subset.data.frame(race, NAME=="Screven-GA")
    nodes_screvenGA <- as.Node(race_screvenGA) 
  } #123
  else if(input$selectcounty== "Seminole-GA"){
    race_seminoleGA <- subset.data.frame(race, NAME=="Seminole-GA")
    nodes_seminoleGA <- as.Node(race_seminoleGA) 
  } #124
  else if(input$selectcounty== "Spalding-GA"){
    race_spaldingGA <- subset.data.frame(race, NAME=="Spalding-GA")
    nodes_spaldingGA <- as.Node(race_spaldingGA) 
  } #125
  else if(input$selectcounty== "Stephens-GA"){
    race_stephensGA <- subset.data.frame(race, NAME=="Stephens-GA")
    nodes_stephensGA <- as.Node(race_stephensGA) 
  } #126
  else if(input$selectcounty== "Stewart-GA"){
    race_stewartGA <- subset.data.frame(race, NAME=="Stewart-GA")
    nodes_stewartGA <- as.Node(race_stewartGA) 
  } ####159
  else if(input$selectcounty== "Sumter-GA"){
    race_sumterGA <- subset.data.frame(race, NAME=="Sumter-GA")
    nodes_sumterGA <- as.Node(race_sumterGA) 
  } #127
  else if(input$selectcounty== "Talbot-GA"){
    race_talbotGA <- subset.data.frame(race, NAME=="Talbot-GA")
    nodes_talbotGA <- as.Node(race_talbotGA) 
  } #128
  else if(input$selectcounty== "Taliaferro-GA"){
    race_taliaferroGA <- subset.data.frame(race, NAME=="Taliaferro-GA")
    nodes_taliaferroGA <- as.Node(race_taliaferroGA) 
  } #129
  else if(input$selectcounty== "Tattnall-GA"){
    race_tattnallGA <- subset.data.frame(race, NAME=="Tattnall-GA")
    nodes_tattnallGA <- as.Node(race_tattnallGA) 
  } #130
  else if(input$selectcounty== "Taylor-GA"){
    race_taylorGA <- subset.data.frame(race, NAME=="Taylor-GA")
    nodes_taylorGA <- as.Node(race_taylorGA) 
  } #131
  else if(input$selectcounty== "Telfair-GA"){
    race_telfairGA <- subset.data.frame(race, NAME=="Telfair-GA")
    nodes_telfairGA <- as.Node(race_telfairGA) 
  } #132
  else if(input$selectcounty== "Terrell-GA"){
    race_terrellGA <- subset.data.frame(race, NAME=="Terrell-GA")
    nodes_terrellGA <- as.Node(race_terrellGA) 
  } #133
  else if(input$selectcounty== "Thomas-GA"){
    race_thomasGA <- subset.data.frame(race, NAME=="Thomas-GA")
    nodes_thomasGA <- as.Node(race_thomasGA) 
  } #134
  else if(input$selectcounty== "Toombs-GA"){
    race_toombsGA <- subset.data.frame(race, NAME=="Toombs-GA")
    nodes_toombsGA <- as.Node(race_toombsGA) 
  } #135
  else if(input$selectcounty== "Towns-GA"){
    race_townsGA <- subset.data.frame(race, NAME=="Towns-GA")
    nodes_townsGA <- as.Node(race_townsGA) 
  } #136
  else if(input$selectcounty== "Treutlen-GA"){
    race_treutlenGA <- subset.data.frame(race, NAME=="Treutlen-GA")
    nodes_treutlenGA <- as.Node(race_treutlenGA) 
  } #137
  else if(input$selectcounty== "Troup-GA"){
    race_troupGA <- subset.data.frame(race, NAME=="Troup-GA")
    nodes_troupGA <- as.Node(race_troupGA) 
  } #138
  else if(input$selectcounty== "Turner-GA"){
    race_turnerGA <- subset.data.frame(race, NAME=="Turner-GA")
    nodes_turnerGA <- as.Node(race_turnerGA) 
  } #139
  else if(input$selectcounty== "Twiggs-GA"){
    race_twiggsGA <- subset.data.frame(race, NAME=="Twiggs-GA")
    nodes_twiggsGA <- as.Node(race_twiggsGA) 
  } #140
  else if(input$selectcounty== "Union-GA"){
    race_unionGA <- subset.data.frame(race, NAME=="Union-GA")
    nodes_unionGA <- as.Node(race_unionGA) 
  } #141
  else if(input$selectcounty== "Upson-GA"){
    race_upsonGA <- subset.data.frame(race, NAME=="Upson-GA")
    nodes_upsonGA <- as.Node(race_upsonGA) 
  } #142
  else if(input$selectcounty== "Walker-GA"){
    race_walkerGA <- subset.data.frame(race, NAME=="Walker-GA")
    nodes_walkerGA <- as.Node(race_walkerGA) 
  } #143
  else if(input$selectcounty== "Walton-GA"){
    race_waltonGA <- subset.data.frame(race, NAME=="Walton-GA")
    nodes_waltonGA <- as.Node(race_waltonGA) 
  } #144
  else if(input$selectcounty== "Ware-GA"){
    race_wareGA <- subset.data.frame(race, NAME=="Ware-GA")
    nodes_wareGA <- as.Node(race_wareGA) 
  } #145
  else if(input$selectcounty== "Warren-GA"){
    race_warrenGA <- subset.data.frame(race, NAME=="Warren-GA")
    nodes_warrenGA <- as.Node(race_warrenGA) 
  } #146
  else if(input$selectcounty== "Washington-GA"){
    race_washingtonGA <- subset.data.frame(race, NAME=="Washington-GA")
    nodes_washingtonGA <- as.Node(race_washingtonGA) 
  } #147
  else if(input$selectcounty== "Wayne-GA"){
    race_wayneGA <- subset.data.frame(race, NAME=="Wayne-GA")
    nodes_wayneGA <- as.Node(race_wayneGA) 
  } #148
  else if(input$selectcounty== "Webster-GA"){
    race_websterGA <- subset.data.frame(race, NAME=="Webster-GA")
    nodes_websterGA <- as.Node(race_websterGA) 
  } #149
  else if(input$selectcounty== "Wheeler-GA"){
    race_wheelerGA <- subset.data.frame(race, NAME=="Wheeler-GA")
    nodes_wheelerGA <- as.Node(race_wheelerGA) 
  } #150
  else if(input$selectcounty== "White-GA"){
    race_whiteGA <- subset.data.frame(race, NAME=="White-GA")
    nodes_whiteGA <- as.Node(race_whiteGA) 
  } #151
  else if(input$selectcounty== "Whitfield-GA"){
    race_whitfieldGA <- subset.data.frame(race, NAME=="Whitfield-GA")
    nodes_whitfieldGA <- as.Node(race_whitfieldGA) 
  } #152
  else if(input$selectcounty== "Wilcox-GA"){
    race_wilcoxGA <- subset.data.frame(race, NAME=="Wilcox-GA")
    nodes_wilcoxGA <- as.Node(race_wilcoxGA) 
  } #153
  else if(input$selectcounty== "Wilkes-GA"){
    race_wilkesGA <- subset.data.frame(race, NAME=="Wilkes-GA")
    nodes_wilkesGA <- as.Node(race_wilkesGA) 
  } #154
  else if(input$selectcounty== "Wilcox-GA"){
    race_wilcoxGA <- subset.data.frame(race, NAME=="Wilcox-GA")
    nodes_wilcoxGA <- as.Node(race_wilcoxGA) 
  } #155
  else if(input$selectcounty== "Wilkinson-GA"){
    race_wilkinsonGA <- subset.data.frame(race, NAME=="Wilkinson-GA")
    nodes_wilkinsonGA <- as.Node(race_wilkinsonGA) 
  } #156
  else if(input$selectcounty== "Worth-GA"){
    race_worthGA <- subset.data.frame(race, NAME=="Worth-GA")
    nodes_worthGA <- as.Node(race_worthGA) 
  } #157
  
######### IOWA ########  
  else if(input$selectcounty== "Adair-IA"){
    race_adairIA <- subset.data.frame(race, NAME=="Adair-IA")
    nodes_adairIA <- as.Node(race_adairIA) 
  } #1
  else if(input$selectcounty== "Adams-IA"){
    race_adamsIA <- subset.data.frame(race, NAME=="Adams-IA")
    nodes_adamsIA <- as.Node(race_adamsIA) 
  } #2
  else if(input$selectcounty== "Allamakee-IA"){
    race_allamakeeIA <- subset.data.frame(race, NAME=="Allamakee-IA")
    nodes_allamakeeIA <- as.Node(race_allamakeeIA) 
  } #3 
  else if(input$selectcounty== "Appanoose-IA"){
    race_appanooseIA <- subset.data.frame(race, NAME=="Appanoose-IA")
    nodes_appanooseIA <- as.Node(race_appanooseIA) 
  } #4
  else if(input$selectcounty== "Audobon-IA"){
    race_audobonIA <- subset.data.frame(race, NAME=="Audobon-IA")
    nodes_audobonIA <- as.Node(race_audobonIA) 
  } #5
  else if(input$selectcounty== "Benton-IA"){
    race_bentonIA <- subset.data.frame(race, NAME=="Benton-IA")
    nodes_bentonIA <- as.Node(race_bentonIA) 
  } #6
  else if(input$selectcounty== "Black Hawk-IA"){
    race_blackhawkIA <- subset.data.frame(race, NAME=="Black Hawk-IA")
    nodes_blackhawkIA <- as.Node(race_blackhawkIA) 
  } #######94
  else if(input$selectcounty== "Boone-IA"){
    race_booneIA <- subset.data.frame(race, NAME=="Boone-IA")
    nodes_booneIA <- as.Node(race_booneIA) 
  } #7
  else if(input$selectcounty== "Bremer-IA"){
    race_bremerIA <- subset.data.frame(race, NAME=="Bremer-IA")
    nodes_bremerIA <- as.Node(race_bremerIA) 
  } #8
  else if(input$selectcounty== "Buchanan-IA"){
    race_buchananIA <- subset.data.frame(race, NAME=="Buchanan-IA")
    nodes_buchananIA <- as.Node(race_buchananIA) 
  } #9
  else if(input$selectcounty== "Buena Vista-IA"){
    race_BuenaVistaIA <- subset.data.frame(race, NAME=="Buena Vista-IA")
    nodes_BuenaVistaIA <- as.Node(race_BuenaVistaIA) 
  } #######95
  else if(input$selectcounty== "Butler-IA"){
    race_butlerIA <- subset.data.frame(race, NAME=="Butler-IA")
    nodes_butlerIA <- as.Node(race_butlerIA) 
  } #10
  else if(input$selectcounty== "Calhoun-IA"){
    race_calhounIA <- subset.data.frame(race, NAME=="Calhoun-IA")
    nodes_calhounIA <- as.Node(race_calhounIA) 
  } #11
  else if(input$selectcounty== "Carroll-IA"){
    race_carrollIA <- subset.data.frame(race, NAME=="Carroll-IA")
    nodes_carrollIA <- as.Node(race_carrollIA) 
  } #12
  else if(input$selectcounty== "Cass-IA"){
    race_cassIA <- subset.data.frame(race, NAME=="Cass-IA")
    nodes_cassIA <- as.Node(race_cassIA) 
  } #13
  else if(input$selectcounty== "Cedar-IA"){
    race_cedarIA <- subset.data.frame(race, NAME=="Cedar-IA")
    nodes_cedarIA <- as.Node(race_cedarIA) 
  } #14
  else if(input$selectcounty== "Cerro Gordo-IA"){
    race_CerroGordoIA <- subset.data.frame(race, NAME=="Cerro Gordo-IA")
    nodes_CerroGordoIA <- as.Node(race_CerroGordoIA) 
  } ########96
  else if(input$selectcounty== "Cherokee-IA"){
    race_cherokeeIA <- subset.data.frame(race, NAME=="Cherokee-IA")
    nodes_cherokeeIA <- as.Node(race_cherokeeIA) 
  } #15
  else if(input$selectcounty== "Chickasaw-IA"){
    race_chickasawIA <- subset.data.frame(race, NAME=="Chickasaw-IA")
    nodes_chickasawIA <- as.Node(race_chickasawIA) 
  } #16
  else if(input$selectcounty== "Clarke-IA"){
    race_clarkeIA <- subset.data.frame(race, NAME=="Clarke-IA")
    nodes_clarkeIA <- as.Node(race_clarkeIA) 
  } #17
  else if(input$selectcounty== "Clay-IA"){
    race_clayIA <- subset.data.frame(race, NAME=="Clay-IA")
    nodes_clayIA <- as.Node(race_clayIA) 
  } #18
  else if(input$selectcounty== "Clayton-IA"){
    race_claytonIA <- subset.data.frame(race, NAME=="Clayton-IA")
    nodes_claytonIA <- as.Node(race_claytonIA) 
  } #19
  else if(input$selectcounty== "Clinton-IA"){
    race_clintonIA <- subset.data.frame(race, NAME=="Clinton-IA")
    nodes_clintonIA <- as.Node(race_clintonIA) 
  } #20
  else if(input$selectcounty== "Crawford-IA"){
    race_crawfordIA <- subset.data.frame(race, NAME=="Crawford-IA")
    nodes_crawfordIA <- as.Node(race_crawfordIA) 
  } #21
  else if(input$selectcounty== "Dallas-IA"){
    race_dallasIA <- subset.data.frame(race, NAME=="Dallas-IA")
    nodes_dallasIA <- as.Node(race_dallasIA) 
  } #22
  else if(input$selectcounty== "Davis-IA"){
    race_davisIA <- subset.data.frame(race, NAME=="Davis-IA")
    nodes_davisIA <- as.Node(race_davisIA) 
  } #23
  else if(input$selectcounty== "Decatur-IA"){
    race_decaturIA <- subset.data.frame(race, NAME=="Decatur-IA")
    nodes_decaturIA <- as.Node(race_decaturIA) 
  } #24
  else if(input$selectcounty== "Delaware-IA"){
    race_delawareIA <- subset.data.frame(race, NAME=="Delaware-IA")
    nodes_delawareIA <- as.Node(race_delawareIA) 
  } #25
  else if(input$selectcounty== "Des Moines-IA"){
    race_desmoinesIA <- subset.data.frame(race, NAME=="Des Moines-IA")
    nodes_desmoinesIA <- as.Node(race_desmoinesIA) 
  } ######## 97
  else if(input$selectcounty== "Dickinson-IA"){
    race_dickinsonIA <- subset.data.frame(race, NAME=="Dickinson-IA")
    nodes_dicksinsonIA <- as.Node(race_dickinsonIA) 
  } #26
  else if(input$selectcounty== "Dubuque-IA"){
    race_dubuqueIA <- subset.data.frame(race, NAME=="Dubuque-IA")
    nodes_dubuqueIA <- as.Node(race_dubuqueIA) 
  } #27
  else if(input$selectcounty== "Emmet-IA"){
    race_emmetIA <- subset.data.frame(race, NAME=="Emmet-IA")
    nodes_emmetIA <- as.Node(race_emmetIA) 
  } #28
  else if(input$selectcounty== "Fayette-IA"){
    race_fayetteIA <- subset.data.frame(race, NAME=="Fayette-IA")
    nodes_fayetteIA <- as.Node(race_fayetteIA) 
  } #29
  else if(input$selectcounty== "Floyd-IA"){
    race_floydIA <- subset.data.frame(race, NAME=="Floyd-IA")
    nodes_floydIA <- as.Node(race_FloydIA) 
  } #30
  else if(input$selectcounty== "Franklin-IA"){
    race_franklinIA <- subset.data.frame(race, NAME=="Franklin-IA")
    nodes_franklinIA <- as.Node(race_franklinIA) 
  } #31
  else if(input$selectcounty== "Fremont-IA"){
    race_fremontIA <- subset.data.frame(race, NAME=="Fremont-IA")
    nodes_fremontIA <- as.Node(race_fremontIA) 
  } #32
  else if(input$selectcounty== "Greene-IA"){
    race_greeneIA <- subset.data.frame(race, NAME=="Greene-IA")
    nodes_greeneIA <- as.Node(race_greeneIA) 
  } #33
  else if(input$selectcounty== "Grundy-IA"){
    race_grundyIA <- subset.data.frame(race, NAME=="Grundy-IA")
    nodes_grundyIA <- as.Node(race_grundyIA) 
  } #34
  else if(input$selectcounty== "Guthrie-IA"){
    race_gruthrieIA <- subset.data.frame(race, NAME=="Guthrie-IA")
    nodes_gruthieIA <- as.Node(race_guthrieIA) 
  } #35
  else if(input$selectcounty== "Hamilton-IA"){
    race_hamiltonIA <- subset.data.frame(race, NAME=="Hamilton-IA")
    nodes_hamiltonIA <- as.Node(race_hamiltonIA) 
  } #36
  else if(input$selectcounty== "Hancock-IA"){
    race_hancockIA <- subset.data.frame(race, NAME=="Hancock-IA")
    nodes_hancockIA <- as.Node(race_hancockIA) 
  } #37
  else if(input$selectcounty== "Hardin-IA"){
    race_hardinIA <- subset.data.frame(race, NAME=="Hardin-IA")
    nodes_hardinIA <- as.Node(race_hardinIA) 
  } #38
  else if(input$selectcounty== "Harrison-IA"){
    race_hamiltonIA <- subset.data.frame(race, NAME=="Hamilton-IA")
    nodes_hamiltonIA <- as.Node(race_hamiltonIA) 
  } #39
  else if(input$selectcounty== "Henry-IA"){
    race_henryIA <- subset.data.frame(race, NAME=="Henry-IA")
    nodes_henryIA <- as.Node(race_henryIA) 
  } #40
  else if(input$selectcounty== "Howard-IA"){
    race_howardIA <- subset.data.frame(race, NAME=="Howard-IA")
    nodes_howardIA <- as.Node(race_howardIA) 
  } #41
  else if(input$selectcounty== "Humboldt-IA"){
    race_humboldtIA <- subset.data.frame(race, NAME=="Humboldt-IA")
    nodes_humboldtIA <- as.Node(race_humboldtIA) 
  } #42
  else if(input$selectcounty== "Ida-IA"){
    race_idaIA <- subset.data.frame(race, NAME=="Ida-IA")
    nodes_idaIA <- as.Node(race_idaIA) 
  } #43
  else if(input$selectcounty== "Iowa-IA"){
    race_iowaIA <- subset.data.frame(race, NAME=="Iowa-IA")
    nodes_iowaIA <- as.Node(race_iowaIA) 
  } #44
  else if(input$selectcounty== "Jackson-IA"){
    race_jacksonIA <- subset.data.frame(race, NAME=="Jackson-IA")
    nodes_jacksonIA <- as.Node(race_jacksonIA) 
  } #45
  else if(input$selectcounty== "Jasper-IA"){
    race_jasperIA <- subset.data.frame(race, NAME=="Jasper-IA")
    nodes_jasperIA <- as.Node(race_jasperIA) 
  } #46
  else if(input$selectcounty== "Jefferson-IA"){
    race_jeffersonIA <- subset.data.frame(race, NAME=="Jefferson-IA")
    nodes_jeffersonIA <- as.Node(race_jeffersonIA) 
  } #47
  else if(input$selectcounty== "Johnson-IA"){
    race_johnsonIA <- subset.data.frame(race, NAME=="Johnson-IA")
    nodes_johnsonIA <- as.Node(race_johnsonIA) 
  } #48
  else if(input$selectcounty== "Jones-IA"){
    race_jonesIA <- subset.data.frame(race, NAME=="Jones-IA")
    nodes_jonesIA <- as.Node(race_jonesIA) 
  } #49
  else if(input$selectcounty== "Keokuk-IA"){
    race_keokukIA <- subset.data.frame(race, NAME=="Keokuk-IA")
    nodes_keokukIA <- as.Node(race_keokukIA) 
  } #50
  else if(input$selectcounty== "Kossuth-IA"){
    race_kossuthIA <- subset.data.frame(race, NAME=="Kossuth-IA")
    nodes_kossuthIA <- as.Node(race_kossuthIA) 
  } #51
  else if(input$selectcounty== "Lee-IA"){
    race_leeIA <- subset.data.frame(race, NAME=="Lee-IA")
    nodes_leeIA <- as.Node(race_leeIA) 
  } #52
  else if(input$selectcounty== "Linn-IA"){
    race_LinnIA <- subset.data.frame(race, NAME=="Linn-IA")
    nodes_LinnIA <- as.Node(race_LinnIA) 
  } #53
  else if(input$selectcounty== "Louisa-IA"){
    race_louisaIA <- subset.data.frame(race, NAME=="Louisa-IA")
    nodes_louisaIA <- as.Node(race_louisaIA) 
  } #54
  else if(input$selectcounty== "Lucas-IA"){
    race_lucasIA <- subset.data.frame(race, NAME=="Lucas-IA")
    nodes_lucasIA <- as.Node(race_lucasIA) 
  } #55
  else if(input$selectcounty== "Lyon-IA"){
    race_lyonIA <- subset.data.frame(race, NAME=="Lyon-IA")
    nodes_lyonIA <- as.Node(race_lyonIA) 
  } #56
  else if(input$selectcounty== "Madison-IA"){
    race_madisonIA <- subset.data.frame(race, NAME=="Madison-IA")
    nodes_madisonIA <- as.Node(race_madisonIA) 
  } #57
  else if(input$selectcounty== "Mahaska-IA"){
    race_mahaskaIA <- subset.data.frame(race, NAME=="Mahaska-IA")
    nodes_mahaskaIA <- as.Node(race_mahaskaIA) 
  } #58
  else if(input$selectcounty== "Marion-IA"){
    race_marionIA <- subset.data.frame(race, NAME=="Marion-IA")
    nodes_marionIA <- as.Node(race_marionIA) 
  } #59
  else if(input$selectcounty== "Marshall-IA"){
    race_marshallIA <- subset.data.frame(race, NAME=="Marshall-IA")
    nodes_marshallIA <- as.Node(race_marshallIA) 
  } #60
  else if(input$selectcounty== "Mills-IA"){
    race_millsIA <- subset.data.frame(race, NAME=="Mills-IA")
    nodes_millsIA <- as.Node(race_millsIA) 
  } #61
  else if(input$selectcounty== "Mitchell-IA"){
    race_mitchellIA <- subset.data.frame(race, NAME=="Mitchell-IA")
    nodes_mitchellIA <- as.Node(race_mitchellIA) 
  } #62
  else if(input$selectcounty== "Monona-IA"){
    race_mononaIA <- subset.data.frame(race, NAME=="Monona-IA")
    nodes_mononaIA <- as.Node(race_mononaIA) 
  } #63
  else if(input$selectcounty== "Monroe-IA"){
    race_monroeIA <- subset.data.frame(race, NAME=="Monroe-IA")
    nodes_monroeIA <- as.Node(race_monroeIA) 
  } #64
  else if(input$selectcounty== "Montgomery-IA"){
    race_montgomeryIA <- subset.data.frame(race, NAME=="Montgomery-IA")
    nodes_montgomeryIA <- as.Node(race_montgomeryIA) 
  } #65 
  else if(input$selectcounty== "Muscatine-IA"){
    race_muscatineIA <- subset.data.frame(race, NAME=="Muscatine-IA")
    nodes_muscatineIA <- as.Node(race_muscatineIA) 
  } #66
  else if(input$selectcounty== "O'Brien-IA"){
    race_obrienIA <- subset.data.frame(race, NAME=="O'Brien-IA")
    nodes_obrienIA <- as.Node(race_obrienIA) 
  } #67
  else if(input$selectcounty== "Osceola-IA"){
    race_osceolaIA <- subset.data.frame(race, NAME=="Osceola-IA")
    nodes_osceolaIA <- as.Node(race_osceolaIA) 
  } #68
  else if(input$selectcounty== "Page-IA"){
    race_pageIA <- subset.data.frame(race, NAME=="Page-IA")
    nodes_pageIA <- as.Node(race_pageIA) 
  } #69
  else if(input$selectcounty== "Palo Alto-IA"){
    race_PaloAltoIA <- subset.data.frame(race, NAME=="Palo Alto-IA")
    nodes_PaloAltoIA <- as.Node(race_PaloAltoIA) 
  } ######98
  else if(input$selectcounty== "Plymouth-IA"){
    race_plymouthIA <- subset.data.frame(race, NAME=="Plymouth-IA")
    nodes_plymouthIA <- as.Node(race_plymouthIA) 
  } #70
  else if(input$selectcounty== "Pocahontas-IA"){
    race_pocahontasIA <- subset.data.frame(race, NAME=="Pocahontas-IA")
    nodes_pocahontasIA <- as.Node(race_pocahontasIA) 
  } #71
  else if(input$selectcounty== "Polk-IA"){
    race_polkIA <- subset.data.frame(race, NAME=="Polk-IA")
    nodes_polkIA <- as.Node(race_polkIA) 
  } #72
  else if(input$selectcounty== "Pottawattamie-IA"){
    race_pottawattamieIA <- subset.data.frame(race, NAME=="Pottawattamie-IA")
    nodes_pottawattamieIA <- as.Node(race_pottawattamieIA) 
  } #73 
  else if(input$selectcounty== "Poweshiek-IA"){
    race_poweshiekIA <- subset.data.frame(race, NAME=="Poweshiek-IA")
    nodes_poweshiekIA <- as.Node(race_poweshiekIA) 
  } #74
  else if(input$selectcounty== "Ringgold-IA"){
    race_ringgoldIA <- subset.data.frame(race, NAME=="Ringgold-IA")
    nodes_ringgoldIA <- as.Node(race_ringgoldIA) 
  } #75
  else if(input$selectcounty== "Sac-IA"){
    race_sacIA <- subset.data.frame(race, NAME=="Sac-IA")
    nodes_sacIA <- as.Node(race_sacIA) 
  } #76
  else if(input$selectcounty== "Scott-IA"){
    race_scottIA <- subset.data.frame(race, NAME=="Scott-IA")
    nodes_scottIA <- as.Node(race_scottIA) 
  } #77
  else if(input$selectcounty== "Shelby-IA"){
    race_shelbyIA <- subset.data.frame(race, NAME=="Shelby-IA")
    nodes_shelbyIA <- as.Node(race_shelbyIA) 
  } #78
  else if(input$selectcounty== "Sioux-IA"){
    race_siouxIA <- subset.data.frame(race, NAME=="Sioux-IA")
    nodes_siouxIA <- as.Node(race_siouxIA) 
  } #79
  else if(input$selectcounty== "Story-IA"){
    race_storyIA <- subset.data.frame(race, NAME=="Story-IA")
    nodes_storyIA <- as.Node(race_storyIA) 
  } #80
  else if(input$selectcounty== "Tama-IA"){
    race_tamaIA <- subset.data.frame(race, NAME=="Tama-IA")
    nodes_tamaIA <- as.Node(race_tamaIA) 
  } #81
  else if(input$selectcounty== "Taylor-IA"){
    race_taylorIA <- subset.data.frame(race, NAME=="Taylor-IA")
    nodes_taylorIA <- as.Node(race_taylorIA) 
  } #82
  else if(input$selectcounty== "Union-IA"){
    race_unionIA <- subset.data.frame(race, NAME=="Union-IA")
    nodes_unionIA <- as.Node(race_unionIA) 
  } #83
  else if(input$selectcounty== "Van Buren-IA"){
    race_vanburenIA <- subset.data.frame(race, NAME=="Van Buren-IA")
    nodes_vanburenIA <- as.Node(race_vanburenvIA) 
  } #######99
  else if(input$selectcounty== "Wapello-IA"){
    race_wapelloIA <- subset.data.frame(race, NAME=="Wapello-IA")
    nodes_wapelloIA <- as.Node(race_wapelloIA) 
  } #84
  else if(input$selectcounty== "Warren-IA"){
    race_warrenIA <- subset.data.frame(race, NAME=="Warren-IA")
    nodes_warrenIA <- as.Node(race_warrenIA) 
  } #85
  else if(input$selectcounty== "Washington-IA"){
    race_washingtonIA <- subset.data.frame(race, NAME=="Washington-IA")
    nodes_washingtonIA <- as.Node(race_washingtonIA) 
  } #86 
  else if(input$selectcounty== "Wayne-IA"){
    race_wayneIA <- subset.data.frame(race, NAME=="Wayne-IA")
    nodes_wayneIA <- as.Node(race_wayneIA) 
  } #87
  else if(input$selectcounty== "Webster-IA"){
    race_websterIA <- subset.data.frame(race, NAME=="Webster-IA")
    nodes_websterIA <- as.Node(race_websterIA) 
  } #88
  else if(input$selectcounty== "Winnebago-IA"){
    race_winnebagoIA <- subset.data.frame(race, NAME=="Winnebago-IA")
    nodes_winnebagoIA <- as.Node(race_winnebagoIA) 
  } #89
  else if(input$selectcounty== "Winneshiek-IA"){
    race_winneshiekIA <- subset.data.frame(race, NAME=="Winneshiek-IA")
    nodes_winnehiekIA <- as.Node(race_winneshiekIA) 
  } #90
  else if(input$selectcounty== "Woodbury-IA"){
    race_woodburyIA <- subset.data.frame(race, NAME=="Woodbury-IA")
    nodes_woodburyIA <- as.Node(race_woodburyIA) 
  } #91
  else if(input$selectcounty== "Worth-IA"){
    race_worthIA <- subset.data.frame(race, NAME=="Worth-IA")
    nodes_worthIA <- as.Node(race_worthIA) 
  } #92
  else if(input$selectcounty== "Wright-IA"){
    race_wrightIA <- subset.data.frame(race, NAME=="Wright-IA")
    nodes_wrightIA <- as.Node(race_wrightIA) 
  } #93
######### IDAHO ######
  else if(input$selectcounty== "Ada-ID"){
    race_adaID <- subset.data.frame(race, NAME=="Ada-ID")
    nodes_adaID <- as.Node(race_adaID) 
  }  #1
  else if(input$selectcounty== "Adams-ID"){
    race_adamsID <- subset.data.frame(race, NAME=="Adams-ID")
    nodes_adamsID <- as.Node(race_adamsID) 
  }  #2
  else if(input$selectcounty== "Bannock-ID"){
    race_bannockID <- subset.data.frame(race, NAME=="Bannock-ID")
    nodes_bannockID <- as.Node(race_bannockID) 
  }  #3
  else if(input$selectcounty== "Benewah-ID"){
    race_benewahID <- subset.data.frame(race, NAME=="Benewah-ID")
    nodes_benewahID <- as.Node(race_benewahID) 
  }  #4
  else if(input$selectcounty== "Bear Lake-ID"){
    race_bearlakeID <- subset.data.frame(race, NAME=="Bear Lake-ID")
    nodes_bearlakeID <- as.Node(race_bearlakeID) 
  } #5
  else if(input$selectcounty== "Bingham-ID"){
    race_binghamID <- subset.data.frame(race, NAME=="Bingham-ID")
    nodes_binghamID <- as.Node(race_binghamID) 
  }  #6
  else if(input$selectcounty== "Blaine-ID"){
    race_blaineID <- subset.data.frame(race, NAME=="Blaine-ID")
    nodes_blaineID <- as.Node(race_blaineID) 
  }  #7
  else if(input$selectcounty== "Boise-ID"){
    race_boiseID <- subset.data.frame(race, NAME=="Boise-ID")
    nodes_boiseID <- as.Node(race_boiseID) 
  }  #8
  else if(input$selectcounty== "Bonner-ID"){
    race_bonnerID <- subset.data.frame(race, NAME=="Bonner-ID")
    nodes_bonnerID <- as.Node(race_bonnerID) 
  }  #9
  else if(input$selectcounty== "Bonneville-ID"){
    race_bonnevilleID <- subset.data.frame(race, NAME=="Bonneville-ID")
    nodes_bonnevilleID <- as.Node(race_bonnevilleID) 
  } #10  
  else if(input$selectcounty== "Boundary-ID"){
    race_boundaryID <- subset.data.frame(race, NAME=="Boundary-ID")
    nodes_boundaryID <- as.Node(race_boundaryID) 
  }  #11
  else if(input$selectcounty== "Butte-ID"){
    race_butteID <- subset.data.frame(race, NAME=="Butte-ID")
    nodes_butteID <- as.Node(race_butteID) 
  }  #12
  else if(input$selectcounty== "Camas-ID"){
    race_camasID <- subset.data.frame(race, NAME=="Camas-ID")
    nodes_camasID <- as.Node(race_camasID) 
  }  #13
  else if(input$selectcounty== "Canyon-ID"){
    race_canyonID <- subset.data.frame(race, NAME=="Canyon-ID")
    nodes_canyonID <- as.Node(race_canyonID) 
  }  #14
  else if(input$selectcounty== "Caribou-ID"){
    race_CaribouID <- subset.data.frame(race, NAME=="Caribou-ID")
    nodes_CaribouID <- as.Node(race_CaribouID) 
  } #########43
  else if(input$selectcounty== "Cassia-ID"){
    race_cassiaID <- subset.data.frame(race, NAME=="Cassia-ID")
    nodes_cassiaID <- as.Node(race_cassiaID) 
  }  #15
  else if(input$selectcounty== "Clark-ID"){
    race_ClarkID <- subset.data.frame(race, NAME=="Clark-ID")
    nodes_ClarkID <- as.Node(race_ClarkID) 
  } ############43
  else if(input$selectcounty== "Clearwater-ID"){
    race_clearwaterID <- subset.data.frame(race, NAME=="Clearwater-ID")
    nodes_clearwaterID <- as.Node(race_clearwaterID) 
  } #16 
  else if(input$selectcounty== "Custer-ID"){
    race_custerID <- subset.data.frame(race, NAME=="Custer-ID")
    nodes_custerID <- as.Node(race_custerID) 
  }  #17
  else if(input$selectcounty== "Elmore-ID"){
    race_elmoreID <- subset.data.frame(race, NAME=="Elmore-ID")
    nodes_elmoreID <- as.Node(race_elmoreID) 
  }  #18
  else if(input$selectcounty== "Franklin-ID"){
    race_franklinID <- subset.data.frame(race, NAME=="Franklin-ID")
    nodes_franklinID <- as.Node(race_franklinID) 
  }  #19
  else if(input$selectcounty== "Fremont-ID"){
    race_fremontID <- subset.data.frame(race, NAME=="Fremont-ID")
    nodes_fremontID <- as.Node(race_fremontID) 
  }  #20
  else if(input$selectcounty== "Gem-ID"){
    race_gemID <- subset.data.frame(race, NAME=="Gem-ID")
    nodes_gemID <- as.Node(race_gemID) 
  }  #21
  else if(input$selectcounty== "Gooding-ID"){
    race_goodingID <- subset.data.frame(race, NAME=="Gooding-ID")
    nodes_goodingID <- as.Node(race_goodingID) 
  } #22 
  else if(input$selectcounty== "Idaho-ID"){
    race_idahoID <- subset.data.frame(race, NAME=="Idaho-ID")
    nodes_idaoID <- as.Node(race_idahoID) 
  }  #23
  else if(input$selectcounty== "Jefferson-ID"){
    race_jeffersonID <- subset.data.frame(race, NAME=="Jefferson-ID")
    nodes_jeffersonID <- as.Node(race_jeffersonID) 
  } #24 
  else if(input$selectcounty== "Jerome-ID"){
    race_jeromeID <- subset.data.frame(race, NAME=="Jerome-ID")
    nodes_jeromeID <- as.Node(race_jeromeID) 
  }  #25
  else if(input$selectcounty== "Kootenai-ID"){
    race_kootenaiID <- subset.data.frame(race, NAME=="Kootenai-ID")
    nodes_kootenaiID <- as.Node(race_kootenaiID) 
  }  #26
  else if(input$selectcounty== "Latah-ID"){
    race_latahID <- subset.data.frame(race, NAME=="Latah-ID")
    nodes_latahID <- as.Node(race_latahID) 
  }  #27
  else if(input$selectcounty== "Lemhi-ID"){
    race_lemhiID <- subset.data.frame(race, NAME=="Lemhi-ID")
    nodes_lemhiID <- as.Node(race_lemhiID) 
  }  #28
  else if(input$selectcounty== "Lewis-ID"){
    race_lewisID <- subset.data.frame(race, NAME=="Lewis-ID")
    nodes_lewisID <- as.Node(race_lewisID) 
  }  #29
  else if(input$selectcounty== "Lincoln-ID"){
    race_lincolnID <- subset.data.frame(race, NAME=="Lincoln-ID")
    nodes_lincolnID <- as.Node(race_lincolnID) 
  }  #30
  else if(input$selectcounty== "Madison-ID"){
    race_madisonID <- subset.data.frame(race, NAME=="Madison-ID")
    nodes_madisonID <- as.Node(race_madisonID) 
  }  #31
  else if(input$selectcounty== "Minidoka-ID"){
    race_minidokaID <- subset.data.frame(race, NAME=="Minidoka-ID")
    nodes_minidokaID <- as.Node(race_minidokaID) 
  } #32
  else if(input$selectcounty== "Nez Perce-ID"){
    race_NezPerceID <- subset.data.frame(race, NAME=="Nez Perce-ID")
    nodes_NezPerceID <- as.Node(race_NezPerceID) 
  }#33
  else if(input$selectcounty== "Oneida-ID"){
    race_oneidaID <- subset.data.frame(race, NAME=="Oneida-ID")
    nodes_oneidaID <- as.Node(race_oneidaID) 
  }  #34
  else if(input$selectcounty== "Owyhee-ID"){
    race_owyheeID <- subset.data.frame(race, NAME=="Owyhee-ID")
    nodes_owyheeID <- as.Node(race_owyheeID) 
  } #35
  else if(input$selectcounty== "Payette-ID"){
    race_payetteID <- subset.data.frame(race, NAME=="Payette-ID")
    nodes_payetteID <- as.Node(race_payetteID) 
  }  #36
  else if(input$selectcounty== "Power-ID"){
    race_powerID <- subset.data.frame(race, NAME=="Power-ID")
    nodes_powerID <- as.Node(race_powerID) 
  }  #37
  else if(input$selectcounty== "Shoshone-ID"){
    race_shoshoneID <- subset.data.frame(race, NAME=="Shoshone-ID")
    nodes_shoshoneID <- as.Node(race_shoshoneID) 
  } #38
  else if(input$selectcounty== "Teton-ID"){
    race_tetonID <- subset.data.frame(race, NAME=="Teton-ID")
    nodes_tetonID <- as.Node(race_tetonID) 
  } #39
  else if(input$selectcounty== "Twin Falls-ID"){
    race_twinfallsID <- subset.data.frame(race, NAME=="Twin Falls-ID")
    nodes_twinfallsID <- as.Node(race_twinfallsID) 
  } ####42
  else if(input$selectcounty== "Valley-ID"){
    race_valleyID <- subset.data.frame(race, NAME=="Valley-ID")
    nodes_valleyID <- as.Node(race_valleyID) 
  } #40
  else if(input$selectcounty== "Washington-ID"){
    race_washingtonID <- subset.data.frame(race, NAME=="Washington-ID")
    nodes_washingtonID <- as.Node(race_washingtonID) 
  } #41
  ######******READY
######### ILLINOIS #########
  else if(input$selectcounty== "Adams-IL"){
    race_adamsID <- subset.data.frame(race, NAME=="Adams-IL")
    nodes_adamsID <- as.Node(race_adamsID) 
  } #1
  else if(input$selectcounty== "Alexander-IL"){
    race_alexanderID <- subset.data.frame(race, NAME=="Alexander-IL")
    nodes_alexanderID <- as.Node(race_alexanderID) 
  } #2
  else if(input$selectcounty== "Bond-IL"){
    race_bondID <- subset.data.frame(race, NAME=="Bond-IL")
    nodes_bondID <- as.Node(race_bondID) 
  } #3
  else if(input$selectcounty== "Boone-IL"){
    race_booneID <- subset.data.frame(race, NAME=="Boone-IL")
    nodes_booneID <- as.Node(race_booneID) 
  } #4
  else if(input$selectcounty== "Brown-IL"){
    race_brownID <- subset.data.frame(race, NAME=="Brown-IL")
    nodes_brownID <- as.Node(race_brownID) 
  } #5
  else if(input$selectcounty== "Bureau-IL"){
    race_bureauID <- subset.data.frame(race, NAME=="Bureau-IL")
    nodes_bureauID <- as.Node(race_bureauID) 
  } #6
  else if(input$selectcounty== "Calhoun-IL"){
    race_calhounID <- subset.data.frame(race, NAME=="Calhoun-IL")
    nodes_calhounID <- as.Node(race_calhounID) 
  } #7
  else if(input$selectcounty== "Carroll-IL"){
    race_carrollID <- subset.data.frame(race, NAME=="Carroll-IL")
    nodes_carrollID <- as.Node(race_carrollID) 
  } #8
  else if(input$selectcounty== "Cass-IL"){
    race_cassID <- subset.data.frame(race, NAME=="Cass-IL")
    nodes_cassID <- as.Node(race_cassID) 
  } #9
  else if(input$selectcounty== "Champaign-IL"){
    race_champaignID <- subset.data.frame(race, NAME=="Champaign-IL")
    nodes_champaignID <- as.Node(race_champaignID) 
  } #10
  else if(input$selectcounty== "Christian-IL"){
    race_christianID <- subset.data.frame(race, NAME=="Christian-IL")
    nodes_christianID <- as.Node(race_ChristianID) 
  } #11
  else if(input$selectcounty== "Clark-IL"){
    race_clarkID <- subset.data.frame(race, NAME=="Clark-IL")
    nodes_clarkID <- as.Node(race_clarkID) 
  } #12
  else if(input$selectcounty== "Clay-IL"){
    race_clayID <- subset.data.frame(race, NAME=="Clay-IL")
    nodes_clayID <- as.Node(race_clayID) 
  } #13
  else if(input$selectcounty== "Clinton-IL"){
    race_clintonID <- subset.data.frame(race, NAME=="Clinton-IL")
    nodes_clintonID <- as.Node(race_clintonID) 
  } #14
  else if(input$selectcounty== "Coles-IL"){
    race_colesID <- subset.data.frame(race, NAME=="Coles-IL")
    nodes_colesID <- as.Node(race_colesID) 
  } #15
  else if(input$selectcounty== "Cook-IL"){
    race_cookID <- subset.data.frame(race, NAME=="Cook-IL")
    nodes_cookID <- as.Node(race_cookID) 
  } #16
  else if(input$selectcounty== "Crawford-IL"){
    race_crawfordID <- subset.data.frame(race, NAME=="Crawford-IL")
    nodes_crawfordID <- as.Node(race_crawfordID) 
  } #17
  else if(input$selectcounty== "Cumberland-IL"){
    race_cumberlandID <- subset.data.frame(race, NAME=="Cumberland-IL")
    nodes_cumberlandID <- as.Node(race_cumberlandID) 
  } #18
  else if(input$selectcounty== "DeKalb-IL"){
    race_dekalbID <- subset.data.frame(race, NAME=="DeKalb-IL")
    nodes_dekalbID <- as.Node(race_dekalbID) 
  } #19
  else if(input$selectcounty== "De Witt-IL"){
    race_dewittID <- subset.data.frame(race, NAME=="De Witt-IL")
    nodes_dewittID <- as.Node(race_dewittID) 
  } #20
  else if(input$selectcounty== "Douglas-IL"){
    race_douglasID <- subset.data.frame(race, NAME=="Douglas-IL")
    nodes_douglasID <- as.Node(race_douglasID) 
  } #21
  else if(input$selectcounty== "DuPage-IL"){
    race_dupageID <- subset.data.frame(race, NAME=="DuPage-IL")
    nodes_dupageID <- as.Node(race_dupageID) 
  } #22
  else if(input$selectcounty== "Edgar-IL"){
    race_edgarID <- subset.data.frame(race, NAME=="Edgar-IL")
    nodes_edgarID <- as.Node(race_edgarID) 
  } #23
  else if(input$selectcounty== "Edwards-IL"){
    race_edwardsID <- subset.data.frame(race, NAME=="Edwards-IL")
    nodes_edwardsID <- as.Node(race_edwardsID) 
  } #24
  else if(input$selectcounty== "Effingham-IL"){
    race_effinghamID <- subset.data.frame(race, NAME=="Effingham-IL")
    nodes_effinghamID <- as.Node(race_effinghamID) 
  } #25
  else if(input$selectcounty== "Fayette-IL"){
    race_fayetteID <- subset.data.frame(race, NAME=="Fayette-IL")
    nodes_fayetteID <- as.Node(race_fayetteID) 
  } #26
  else if(input$selectcounty== "Ford-IL"){
    race_fordID <- subset.data.frame(race, NAME=="Ford-IL")
    nodes_fordID <- as.Node(race_fordID) 
  } #27
  else if(input$selectcounty== "Franklin-IL"){
    race_franklinID <- subset.data.frame(race, NAME=="Franklin-IL")
    nodes_franklinID <- as.Node(race_franklinID) 
  } #28
  else if(input$selectcounty== "Fulton-IL"){
    race_fultonID <- subset.data.frame(race, NAME=="Fulton-IL")
    nodes_fultonID <- as.Node(race_fultonID) 
  } #29
  else if(input$selectcounty== "Gallatin-IL"){
    race_gallatinID <- subset.data.frame(race, NAME=="Gallatin-IL")
    nodes_gallatinID <- as.Node(race_gallatinID) 
  }#30
  else if(input$selectcounty== "Greene-IL"){
    race_greeneID <- subset.data.frame(race, NAME=="Greene-IL")
    nodes_greeneID <- as.Node(race_greeneID) 
  } #31
  else if(input$selectcounty== "Grundy-IL"){
    race_grundyID <- subset.data.frame(race, NAME=="Grundy-IL")
    nodes_grundyID <- as.Node(race_grundyID) 
  } #32
  else if(input$selectcounty== "Hamilton-IL"){
    race_hamiltonID <- subset.data.frame(race, NAME=="Hamilton-IL")
    nodes_hamiltonID <- as.Node(race_hamiltonID) 
  } #33
  else if(input$selectcounty== "Hancock-IL"){
    race_hancockID <- subset.data.frame(race, NAME=="Hancock-IL")
    nodes_hancockID <- as.Node(race_hancockID) 
  } #34
  else if(input$selectcounty== "Hardin-IL"){
    race_hardinID <- subset.data.frame(race, NAME=="Hardin-IL")
    nodes_hardinID <- as.Node(race_hardinID) 
  } #35
  else if(input$selectcounty== "Henderson-IL"){
    race_hendersonID <- subset.data.frame(race, NAME=="Henderson-IL")
    nodes_hendersonID <- as.Node(race_hendersonID) 
  } #36
  else if(input$selectcounty== "Henry-IL"){
    race_henryID <- subset.data.frame(race, NAME=="Henry-IL")
    nodes_henryID <- as.Node(race_henryID) 
  } #37
  else if(input$selectcounty== "Iroquios-IL"){
    race_iroquiosID <- subset.data.frame(race, NAME=="Iroquois-IL")
    nodes_iroquiosID <- as.Node(race_iroquoisID) 
  } #38
  else if(input$selectcounty== "Jackson-IL"){
    race_jacksonID <- subset.data.frame(race, NAME=="Jackson-IL")
    nodes_jacksonID <- as.Node(race_jacksonID) 
  } #39
  else if(input$selectcounty== "Jasper-IL"){
    race_jasperID <- subset.data.frame(race, NAME=="Jasper-IL")
    nodes_jasperID <- as.Node(race_jasperID) 
  } #40
  else if(input$selectcounty== "Jefferson-IL"){
    race_jeffersonID <- subset.data.frame(race, NAME=="Jefferson-IL")
    nodes_jeffersonID <- as.Node(race_jeffersonID) 
  } #41
  else if(input$selectcounty== "Jersey-IL"){
    race_jerseyID <- subset.data.frame(race, NAME=="Jersey-IL")
    nodes_jerseyID <- as.Node(race_jerseyID) 
  } #42
  else if(input$selectcounty== "Johnson-IL"){
    race_johnsonID <- subset.data.frame(race, NAME=="Johnson-IL")
    nodes_johnsonID <- as.Node(race_johnsonID) 
  } #43
  else if(input$selectcounty== "Jo Daviess-IL"){
    race_jodaviessID <- subset.data.frame(race, NAME=="Jo Daviess-IL")
    nodes_jodaviessID <- as.Node(race_jodaviessID) 
  } ######100
  else if(input$selectcounty== "Kane-IL"){
    race_kaneID <- subset.data.frame(race, NAME=="Kane-IL")
    nodes_kaneID <- as.Node(race_kaneID) 
  } #44
  else if(input$selectcounty== "Kankakee-IL"){
    race_kankakeeID <- subset.data.frame(race, NAME=="Kankakee-IL")
    nodes_kankakeeID <- as.Node(race_kankakeeID) 
  } #45
  else if(input$selectcounty== "Kendall-IL"){
    race_kendallID <- subset.data.frame(race, NAME=="Kendall-IL")
    nodes_kendallID <- as.Node(race_kendallID) 
  } #46
  else if(input$selectcounty== "Knox-IL"){
    race_knoxID <- subset.data.frame(race, NAME=="Knox-IL")
    nodes_knoxID <- as.Node(race_knoxID) 
  } #47
  else if(input$selectcounty== "Lake-IL"){
    race_lakeID <- subset.data.frame(race, NAME=="Lake-IL")
    nodes_lakeID <- as.Node(race_lakeID) 
  } #48
  else if(input$selectcounty== "LaSalle-IL"){
    race_lasalleID <- subset.data.frame(race, NAME=="LaSalle-IL")
    nodes_lasalleID <- as.Node(race_lasalleID) 
  } #49
  else if(input$selectcounty== "Lawrence-IL"){
    race_lawrenceID <- subset.data.frame(race, NAME=="Lawrence-IL")
    nodes_lawrenceID <- as.Node(race_lawrenceID) 
  } #50
  else if(input$selectcounty== "Lee-IL"){
    race_leeID <- subset.data.frame(race, NAME=="Lee-IL")
    nodes_leeID <- as.Node(race_leeID) 
  } #51
  else if(input$selectcounty== "Livingston-IL"){
    race_livingstonID <- subset.data.frame(race, NAME=="Livingston-IL")
    nodes_livingstonID <- as.Node(race_livingstonID) 
  } #52
  else if(input$selectcounty== "Logan-IL"){
    race_loganID <- subset.data.frame(race, NAME=="Logan-IL")
    nodes_loganID <- as.Node(race_loganID) 
  } #53
  else if(input$selectcounty== "Macon-IL"){
    race_maconID <- subset.data.frame(race, NAME=="Macon-IL")
    nodes_maconID <- as.Node(race_maconID) 
  } #54
  else if(input$selectcounty== "Macoupin-IL"){
    race_macoupinID <- subset.data.frame(race, NAME=="Macoupin-IL")
    nodes_macoupinID <- as.Node(race_macoupinID) 
  } #55
  else if(input$selectcounty== "Madison-IL"){
    race_madisonID <- subset.data.frame(race, NAME=="Madison-IL")
    nodes_madisonID <- as.Node(race_madisonID) 
  } #56
  else if(input$selectcounty== "Marion-IL"){
    race_marionID <- subset.data.frame(race, NAME=="Marion-IL")
    nodes_marionID <- as.Node(race_marionID) 
  } #57
  else if(input$selectcounty== "Marshall-IL"){
    race_marshallID <- subset.data.frame(race, NAME=="Marshall-IL")
    nodes_marshallID <- as.Node(race_marshallID) 
  } #58
  else if(input$selectcounty== "Mason-IL"){
    race_masonID <- subset.data.frame(race, NAME=="Mason-IL")
    nodes_masonID <- as.Node(race_masonID) 
  } #59
  else if(input$selectcounty== "MAssac-IL"){
    race_massacID <- subset.data.frame(race, NAME=="Massac-IL")
    nodes_massacID <- as.Node(race_massacID) 
  } #60
  else if(input$selectcounty== "McDonough-IL"){
    race_mcdonoughID <- subset.data.frame(race, NAME=="McDonough-IL")
    nodes_mcdonoughID <- as.Node(race_mcdonoughID) 
  } #61
  else if(input$selectcounty== "McHenry-IL"){
    race_mchenryID <- subset.data.frame(race, NAME=="McHenry-IL")
    nodes_mchenryID <- as.Node(race_mchenryID) 
  } #62
  else if(input$selectcounty== "McLean-IL"){
    race_mcleanID <- subset.data.frame(race, NAME=="McLean-IL")
    nodes_mcleanID <- as.Node(race_mcleanID) 
  } #63
  else if(input$selectcounty== "Menard-IL"){
    race_menardID <- subset.data.frame(race, NAME=="Menard-IL")
    nodes_menardID <- as.Node(race_menardID) 
  } #64
  else if(input$selectcounty== "Mercer-IL"){
    race_mercerID <- subset.data.frame(race, NAME=="Mercer-IL")
    nodes_mercerID <- as.Node(race_mercerID) 
  } #65
  else if(input$selectcounty== "Monroe-IL"){
    race_monroeID <- subset.data.frame(race, NAME=="Monroe-IL")
    nodes_monroeID <- as.Node(race_monroeID) 
  } #66
  else if(input$selectcounty== "Montgomery-IL"){
    race_montgomeryID <- subset.data.frame(race, NAME=="Montgomery-IL")
    nodes_montgomeryID <- as.Node(race_montgomeryID) 
  } #67
  else if(input$selectcounty== "Morgan-IL"){
    race_morganID <- subset.data.frame(race, NAME=="Morgan-IL")
    nodes_morganID <- as.Node(race_morganID) 
  } #68
  else if(input$selectcounty== "Moultrie-IL"){
    race_moultrieID <- subset.data.frame(race, NAME=="Moultrie-IL")
    nodes_moultrieID <- as.Node(race_moultrieID) 
  } #69
  else if(input$selectcounty== "Ogle-IL"){
    race_ogleID <- subset.data.frame(race, NAME=="Ogle-IL")
    nodes_ogleID <- as.Node(race_ogleID) 
  } #70
  else if(input$selectcounty== "Peoria-IL"){
    race_peoriaID <- subset.data.frame(race, NAME=="Peoria-IL")
    nodes_peoriaID <- as.Node(race_peoriaID) 
  } #71
  else if(input$selectcounty== "Perry-IL"){
    race_perryID <- subset.data.frame(race, NAME=="Perry-IL")
    nodes_perryID <- as.Node(race_perryID) 
  } #72
  else if(input$selectcounty== "Piatt-IL"){
    race_piattID <- subset.data.frame(race, NAME=="Piatt-IL")
    nodes_piattID <- as.Node(race_piattID) 
  } #73
  else if(input$selectcounty== "Pike-IL"){
    race_pikeID <- subset.data.frame(race, NAME=="Pike-IL")
    nodes_pikeID <- as.Node(race_pikeID) 
  } #74
  else if(input$selectcounty== "Pope-IL"){
    race_popeID <- subset.data.frame(race, NAME=="Pope-IL")
    nodes_popeID <- as.Node(race_popeID) 
  } #75
  else if(input$selectcounty== "Pulaski-IL"){
    race_pulaskiID <- subset.data.frame(race, NAME=="Pulaski-IL")
    nodes_pulaskiID <- as.Node(race_pulaskiID) 
  } #76
  else if(input$selectcounty== "Putnam-IL"){
    race_putnamID <- subset.data.frame(race, NAME=="Putnam-IL")
    nodes_putnamID <- as.Node(race_putnamID) 
  } #77
  else if(input$selectcounty== "Rock Island-IL"){
    race_rockislandID <- subset.data.frame(race, NAME=="Rock Island-IL")
    nodes_rockislandID <- as.Node(race_rockislandID) 
  } #78
  else if(input$selectcounty== "Randolph-IL"){
    race_randolphID <- subset.data.frame(race, NAME=="Randolph-IL")
    nodes_randolphID <- as.Node(race_randolphID) 
  } #79
  else if(input$selectcounty== "Richland-IL"){
    race_richlandID <- subset.data.frame(race, NAME=="Richland-IL")
    nodes_richlandID <- as.Node(race_richlandID) 
  } #80
  else if(input$selectcounty== "Saline-IL"){
    race_salineID <- subset.data.frame(race, NAME=="Saline-IL")
    nodes_salineID <- as.Node(race_salineID) 
  } #81
  else if(input$selectcounty== "Sangamon-IL"){
    race_sangamonID <- subset.data.frame(race, NAME=="Sangamon-IL")
    nodes_sangamonID <- as.Node(race_sangamonID) 
  } #82
  else if(input$selectcounty== "Schluyer-IL"){
    race_schluyerID <- subset.data.frame(race, NAME=="Schluyer-IL")
    nodes_schluyerID <- as.Node(race_schluyerID) 
  } #83
  else if(input$selectcounty== "Scott-IL"){
    race_scottID <- subset.data.frame(race, NAME=="Scott-IL")
    nodes_scottID <- as.Node(race_scottID) 
  } #84
  else if(input$selectcounty== "Shelby-IL"){
    race_shelbyID <- subset.data.frame(race, NAME=="Shelby-IL")
    nodes_shelbyID <- as.Node(race_shelbyID) 
  } ##########101
  else if(input$selectcounty== "St. Clair-IL"){
    race_stclairID <- subset.data.frame(race, NAME=="St. Clair-IL")
    nodes_stclairID <- as.Node(race_stclairID) 
  } #######102
  else if(input$selectcounty== "Stark-IL"){
    race_starkID <- subset.data.frame(race, NAME=="Stark-IL")
    nodes_starkID <- as.Node(race_starkID) 
  } #85
  else if(input$selectcounty== "Stephenson-IL"){
    race_stephensonID <- subset.data.frame(race, NAME=="Stephenson-IL")
    nodes_stephensonID <- as.Node(race_stephensonID) 
  } #86
  else if(input$selectcounty== "Tazewell-IL"){
    race_tazewellID <- subset.data.frame(race, NAME=="Tazewell-IL")
    nodes_tazewellID <- as.Node(race_tazewellID) 
  } #87
  else if(input$selectcounty== "Union-IL"){
    race_unionID <- subset.data.frame(race, NAME=="Union-IL")
    nodes_unionID <- as.Node(race_unionID) 
  } #88
  else if(input$selectcounty== "Vermilion-IL"){
    race_vermilionID <- subset.data.frame(race, NAME=="Vermilion-IL")
    nodes_vermilionID <- as.Node(race_vermilionID) 
  } #89
  else if(input$selectcounty== "Wabash-IL"){
    race_wabashID <- subset.data.frame(race, NAME=="Wabash-IL")
    nodes_wabashID <- as.Node(race_wabashID) 
  } #90
  else if(input$selectcounty== "Warren-IL"){
    race_warrenID <- subset.data.frame(race, NAME=="Warren-IL")
    nodes_warrenID <- as.Node(race_warrenID) 
  } #91
  else if(input$selectcounty== "Washington-IL"){
    race_washingtonID <- subset.data.frame(race, NAME=="Washington-IL")
    nodes_washingtonID <- as.Node(race_washingtonID) 
  } #92
  else if(input$selectcounty== "Wayne-IL"){
    race_wayneID <- subset.data.frame(race, NAME=="Wayne-IL")
    nodes_wayneID <- as.Node(race_wayneID) 
  } #93
  else if(input$selectcounty== "White-IL"){
    race_whiteID <- subset.data.frame(race, NAME=="White-IL")
    nodes_whiteID <- as.Node(race_whiteID) 
  } #94
  else if(input$selectcounty== "Whiteside-IL"){
    race_whitesideID <- subset.data.frame(race, NAME=="Whiteside-IL")
    nodes_whitesideID <- as.Node(race_whitesideID) 
  } #95
  else if(input$selectcounty== "Will-IL"){
    race_willID <- subset.data.frame(race, NAME=="Will-IL")
    nodes_willID <- as.Node(race_willID) 
  } #96
  else if(input$selectcounty== "Williamson-IL"){
    race_williamsonID <- subset.data.frame(race, NAME=="Williamson-IL")
    nodes_williamsonID <- as.Node(race_williamsonID) 
  } #97
  else if(input$selectcounty== "Winnebago-IL"){
    race_winnebagoID <- subset.data.frame(race, NAME=="Winnebago-IL")
    nodes_winnebagoID <- as.Node(race_winnebagoID) 
  } #98
  else if(input$selectcounty== "Woodford-IL"){
    race_woodfordID <- subset.data.frame(race, NAME=="Woodford-IL")
    nodes_woodfordID <- as.Node(race_woodfordID) 
  } #99
  
  #### ***** READY
######### INDIANA ######  
  else if(input$selectcounty== "Adams-IN"){
    race_adamsIN <- subset.data.frame(race, NAME=="Adams-IN")
    nodes_adamsIN <- as.Node(race_adamsIN) 
  } #1
  else if(input$selectcounty== "Allen-IN"){
    race_allenIN <- subset.data.frame(race, NAME=="Allen-IN")
    nodes_allenIN <- as.Node(race_allenIN) 
  } #2
  else if(input$selectcounty== "Bartholomew-IN"){
    race_bartholomewIN <- subset.data.frame(race, NAME=="Bartholomew-IN")
    nodes_bartholomewIN <- as.Node(race_bartholomewIN) 
  } #3
  else if(input$selectcounty== "Benton-IN"){
    race_bentonIN <- subset.data.frame(race, NAME=="Benton-IN")
    nodes_bentonIN <- as.Node(race_bentonIN) 
  } #4
  else if(input$selectcounty== "Blackford-IN"){
    race_blackfordIN <- subset.data.frame(race, NAME=="Blackford-IN")
    nodes_blackfordIN <- as.Node(race_blackfordIN) 
  } #5
  else if(input$selectcounty== "Boone-IN"){
    race_booneIN <- subset.data.frame(race, NAME=="Boone-IN")
    nodes_booneIN <- as.Node(race_booneIN) 
  } #6
  else if(input$selectcounty== "Brown-IN"){
    race_brownIN <- subset.data.frame(race, NAME=="Brown-IN")
    nodes_brownIN <- as.Node(race_brownIN) 
  } #7
  else if(input$selectcounty== "Carroll-IN"){
    race_carrollIN <- subset.data.frame(race, NAME=="Carroll-IN")
    nodes_carrollIN <- as.Node(race_carrollIN) 
  } #8
  else if(input$selectcounty== "Cass-IN"){
    race_cassIN <- subset.data.frame(race, NAME=="Cass-IN")
    nodes_cassIN <- as.Node(race_cassIN) 
  } #9
  else if(input$selectcounty== "Clark-IN"){
    race_clarkIN <- subset.data.frame(race, NAME=="Clark-IN")
    nodes_clarkIN <- as.Node(race_clarkIN) 
  } #10
  else if(input$selectcounty== "Clay-IN"){
    race_clayIN <- subset.data.frame(race, NAME=="Clay-IN")
    nodes_clayIN <- as.Node(race_clayIN) 
  } #11
  else if(input$selectcounty== "Clinton-IN"){
    race_clintonIN <- subset.data.frame(race, NAME=="Clinton-IN")
    nodes_clintonIN <- as.Node(race_clintonIN) 
  } #12
  else if(input$selectcounty== "Crawford-IN"){
    race_crawfordIN <- subset.data.frame(race, NAME=="Crawford-IN")
    nodes_crawfordIN <- as.Node(race_crawfordIN) 
  } #13
  else if(input$selectcounty== "Daviess-IN"){
    race_daviessIN <- subset.data.frame(race, NAME=="Daviess-IN")
    nodes_daviessIN <- as.Node(race_daviessIN) 
  } #14
  else if(input$selectcounty== "Dearborn-IN"){
    race_dearbornIN <- subset.data.frame(race, NAME=="Dearborn-IN")
    nodes_dearbornIN <- as.Node(race_dearbornIN) 
  } #15
  else if(input$selectcounty== "Decatur-IN"){
    race_decaturIN <- subset.data.frame(race, NAME=="Decatur-IN")
    nodes_decaturIN <- as.Node(race_decaturIN) 
  } #16
  else if(input$selectcounty== "DeKalb-IN"){
    race_dekalbIN <- subset.data.frame(race, NAME=="DeKalb-IN")
    nodes_dekalbIN <- as.Node(race_dekalbIN) 
  } #17
  else if(input$selectcounty== "Delaware-IN"){
    race_delawareIN <- subset.data.frame(race, NAME=="Delaware-IN")
    nodes_delawareIN <- as.Node(race_delawareIN) 
  } #18
  else if(input$selectcounty== "Dubois-IN"){
    race_duboisIN <- subset.data.frame(race, NAME=="Dubois-IN")
    nodes_duboisIN <- as.Node(race_duboisIN) 
  } #19
  else if(input$selectcounty== "Eklhart-IN"){
    race_elkhartIN <- subset.data.frame(race, NAME=="elkhart-IN")
    nodes_elkhartIN <- as.Node(race_elkhartIN) 
  } #20
  else if(input$selectcounty== "Fayette-IN"){
    race_fayetteIN <- subset.data.frame(race, NAME=="Fayette-IN")
    nodes_fayetteIN <- as.Node(race_fayetteIN) 
  } #21
  else if(input$selectcounty== "Floyd-IN"){
    race_floydIN <- subset.data.frame(race, NAME=="Floyd-IN")
    nodes_floydIN <- as.Node(race_floydIN) 
  } #22
  else if(input$selectcounty== "Fountain-IN"){
    race_fountainIN <- subset.data.frame(race, NAME=="Fountain-IN")
    nodes_fountainIN <- as.Node(race_fountainIN) 
  } #23
  else if(input$selectcounty== "Franklin-IN"){
    race_franklinIN <- subset.data.frame(race, NAME=="Franklin-IN")
    nodes_franklinIN <- as.Node(race_franklinIN) 
  } #24
  else if(input$selectcounty== "Fulton-IN"){
    race_fultonIN <- subset.data.frame(race, NAME=="Fulton-IN")
    nodes_fultonIN <- as.Node(race_fultonIN) 
  } #25
  else if(input$selectcounty== "Gibson-IN"){
    race_gibsonIN <- subset.data.frame(race, NAME=="Gibson-IN")
    nodes_gibsonIN <- as.Node(race_gibsonIN) 
  } #26
  else if(input$selectcounty== "Grant-IN"){
    race_grantIN <- subset.data.frame(race, NAME=="Grant-IN")
    nodes_grantIN <- as.Node(race_grantIN) 
  } #27
  else if(input$selectcounty== "Greene-IN"){
    race_greeneIN <- subset.data.frame(race, NAME=="Greene-IN")
    nodes_greeneIN <- as.Node(race_greeneIN) 
  } #######91
  else if(input$selectcounty== "Hamilton-IN"){
    race_hamiltonIN <- subset.data.frame(race, NAME=="Hamilton-IN")
    nodes_hamiltonIN <- as.Node(race_hamiltonIN) 
  } #28
  else if(input$selectcounty== "Hancock-IN"){
    race_hancockIN <- subset.data.frame(race, NAME=="Hancock-IN")
    nodes_hancockIN <- as.Node(race_hancockIN) 
  } #29
  else if(input$selectcounty== "Harrison-IN"){
    race_harrisonIN <- subset.data.frame(race, NAME=="Harrison-IN")
    nodes_harrisonIN <- as.Node(race_harrisonIN) 
  } #30
  else if(input$selectcounty== "Hendricks-IN"){
    race_hendricksIN <- subset.data.frame(race, NAME=="Hendricks-IN")
    nodes_hendricksIN <- as.Node(race_hendricksIN) 
  } #31
  else if(input$selectcounty== "Henry-IN"){
    race_henryIN <- subset.data.frame(race, NAME=="Henry-IN")
    nodes_henryIN <- as.Node(race_henryIN) 
  } #32
  else if(input$selectcounty== "Howard-IN"){
    race_howardIN <- subset.data.frame(race, NAME=="Howard-IN")
    nodes_howardIN <- as.Node(race_howardIN) 
  } #33
  else if(input$selectcounty== "Huntington-IN"){
    race_huntingtonIN <- subset.data.frame(race, NAME=="Huntington-IN")
    nodes_huntingtonIN <- as.Node(race_huntingtonIN) 
  } #34
  else if(input$selectcounty== "Jackson-IN"){
    race_jacksonIN <- subset.data.frame(race, NAME=="Jackson-IN")
    nodes_jacksonIN <- as.Node(race_jacksonIN) 
  } #35
  else if(input$selectcounty== "Jasper-IN"){
    race_jasperIN <- subset.data.frame(race, NAME=="Jasper-IN")
    nodes_jasperIN <- as.Node(race_jasperIN) 
  } #36
  else if(input$selectcounty== "Jay-IN"){
    race_jayIN <- subset.data.frame(race, NAME=="Jay-IN")
    nodes_jayIN <- as.Node(race_jayIN) 
  } #37
  else if(input$selectcounty== "Jefferson-IN"){
    race_jeffersonIN <- subset.data.frame(race, NAME=="Jefferson-IN")
    nodes_jeffersonIN <- as.Node(race_jeffersonIN) 
  } #38
  else if(input$selectcounty== "Jennings-IN"){
    race_jenningsIN <- subset.data.frame(race, NAME=="Jennings-IN")
    nodes_jenningsIN <- as.Node(race_jenningsIN) 
  } #39
  else if(input$selectcounty== "Johnson-IN"){
    race_johnsonIN <- subset.data.frame(race, NAME=="Johnson-IN")
    nodes_johnsonIN <- as.Node(race_johnsonIN) 
  } #40
  else if(input$selectcounty== "Knox-IN"){
    race_knoxIN <- subset.data.frame(race, NAME=="Knox-IN")
    nodes_knoxIN <- as.Node(race_knoxIN) 
  } #41
  else if(input$selectcounty== "Kosciusko-IN"){
    race_kosciuskoIN <- subset.data.frame(race, NAME=="Kosciusko-IN")
    nodes_kosciuskoIN <- as.Node(race_kosciuskoIN) 
  } #42
  else if(input$selectcounty== "Lake-IN"){
    race_lakeIN <- subset.data.frame(race, NAME=="Lake-IN")
    nodes_lakeIN <- as.Node(race_lakeIN) 
  } #43
  else if(input$selectcounty== "LaGrange-IN"){
    race_LaGrangeIN <- subset.data.frame(race, NAME=="LaGrange-IN")
    nodes_LaGrangeIN <- as.Node(race_LaGrangeIN) 
  } #44
  else if(input$selectcounty== "LaPorte-IN"){
    race_laporteIN <- subset.data.frame(race, NAME=="LaPorte-IN")
    nodes_laporteIN <- as.Node(race_laporteIN) 
  } #45
  else if(input$selectcounty== "Lawrence-IN"){
    race_lawrenceIN <- subset.data.frame(race, NAME=="Lawrence-IN")
    nodes_lawrenceIN <- as.Node(race_lawrenceIN) 
  } #46
  else if(input$selectcounty== "Madison-IN"){
    race_madisonIN <- subset.data.frame(race, NAME=="Madison-IN")
    nodes_madisonIN <- as.Node(race_madisonIN) 
  } #47
  else if(input$selectcounty== "Marion-IN"){
    race_marionIN <- subset.data.frame(race, NAME=="Marion-IN")
    nodes_marionIN <- as.Node(race_marionIN) 
  } #48
  else if(input$selectcounty== "Marshall-IN"){
    race_marshallIN <- subset.data.frame(race, NAME=="Marshall-IN")
    nodes_marshallIN <- as.Node(race_marshallIN) 
  } #49
  else if(input$selectcounty== "Martin-IN"){
    race_martinIN <- subset.data.frame(race, NAME=="Martin-IN")
    nodes_martinIN <- as.Node(race_martinIN) 
  } #50
  else if(input$selectcounty== "Miami-IN"){
    race_miamiIN <- subset.data.frame(race, NAME=="Miami-IN")
    nodes_miamiIN <- as.Node(race_miamiIN) 
  } #51
  else if(input$selectcounty== "Monroe-IN"){
    race_monroeIN <- subset.data.frame(race, NAME=="Monroe-IN")
    nodes_monroeIN <- as.Node(race_monroeIN) 
  } #52
  else if(input$selectcounty== "Montgomery-IN"){
    race_montgomeryIN <- subset.data.frame(race, NAME=="Montgomery-IN")
    nodes_montgomeryIN <- as.Node(race_montgomeryIN) 
  } #53
  else if(input$selectcounty== "Morgan-IN"){
    race_morganIN <- subset.data.frame(race, NAME=="Morgan-IN")
    nodes_morganIN <- as.Node(race_morganIN) 
  } #54
  else if(input$selectcounty== "Newton-IN"){
    race_newtonIN <- subset.data.frame(race, NAME=="Newton-IN")
    nodes_newtonIN <- as.Node(race_newtonIN) 
  } #55
  else if(input$selectcounty== "Noble-IN"){
    race_nobleIN <- subset.data.frame(race, NAME=="Noble-IN")
    nodes_nobleIN <- as.Node(race_nobleIN) 
  } #56
  else if(input$selectcounty== "Ohio-IN"){
    race_ohioIN <- subset.data.frame(race, NAME=="Ohio-IN")
    nodes_ohioIN <- as.Node(race_ohioIN) 
  } #57
  else if(input$selectcounty== "Orange-IN"){
    race_orangeIN <- subset.data.frame(race, NAME=="Orange-IN")
    nodes_orangeIN <- as.Node(race_orangeIN) 
  } #58
  else if(input$selectcounty== "Owen-IN"){
    race_owenIN <- subset.data.frame(race, NAME=="Owen-IN")
    nodes_owenIN <- as.Node(race_owenIN) 
  } #59
  else if(input$selectcounty== "Parke-IN"){
    race_parkeIN <- subset.data.frame(race, NAME=="Parke-IN")
    nodes_parkeIN <- as.Node(race_parkeIN) 
  } #60
  else if(input$selectcounty== "Perry-IN"){
    race_perryIN <- subset.data.frame(race, NAME=="Perry-IN")
    nodes_perryIN <- as.Node(race_perryIN) 
  } #61
  else if(input$selectcounty== "Pike-IN"){
    race_pikeIN <- subset.data.frame(race, NAME=="Pike-IN")
    nodes_pikeIN <- as.Node(race_pikeIN) 
  } #62
  else if(input$selectcounty== "Porter-IN"){
    race_porterIN <- subset.data.frame(race, NAME=="Porter-IN")
    nodes_porterIN <- as.Node(race_porterIN) 
  } #63
  else if(input$selectcounty== "Posey-IN"){
    race_poseyIN <- subset.data.frame(race, NAME=="Posey-IN")
    nodes_poseyIN <- as.Node(race_poseyIN) 
  } #64
  else if(input$selectcounty== "Pulaski-IN"){
    race_pulaskiIN <- subset.data.frame(race, NAME=="Pulaski-IN")
    nodes_pulaskiIN <- as.Node(race_pulaskiIN) 
  } #65
  else if(input$selectcounty== "Putnam-IN"){
    race_putnamIN <- subset.data.frame(race, NAME=="Putman-IN")
    nodes_putnamIN <- as.Node(race_putnamIN) 
  } #66
  else if(input$selectcounty== "Randolph-IN"){
    race_randolphIN <- subset.data.frame(race, NAME=="Randolph-IN")
    nodes_randolphIN <- as.Node(race_randolphIN) 
  } #67
  else if(input$selectcounty== "Ripley-IN"){
    race_ripleyIN <- subset.data.frame(race, NAME=="Ripley-IN")
    nodes_ripleyIN <- as.Node(race_ripleyIN) 
  } #68
  else if(input$selectcounty== "Rush-IN"){
    race_rushIN <- subset.data.frame(race, NAME=="Rush-IN")
    nodes_rushIN <- as.Node(race_rushIN) 
  } #69
  else if(input$selectcounty== "Scott-IN"){
    race_scottIN <- subset.data.frame(race, NAME=="Scott-IN")
    nodes_scottIN <- as.Node(race_scottIN) 
  } #70
  else if(input$selectcounty== "Shelby-IN"){
    race_shelbyIN <- subset.data.frame(race, NAME=="Shelby-IN")
    nodes_shelbyIN <- as.Node(race_shelbyIN) 
  } #71
  else if(input$selectcounty== "Spencer-IN"){
    race_spencerIN <- subset.data.frame(race, NAME=="Spencer-IN")
    nodes_spencerIN <- as.Node(race_spencerIN) 
  } #72
  else if(input$selectcounty== "St. Joseph-IN"){
    race_StJosephIN <- subset.data.frame(race, NAME=="St. Joseph-IN")
    nodes_StJosephIN <- as.Node(race_StJosephIN) 
  } #####90
  else if(input$selectcounty== "Starke-IN"){
    race_starkeIN <- subset.data.frame(race, NAME=="Starke-IN")
    nodes_starkeIN <- as.Node(race_starkeIN) 
  } #73
  else if(input$selectcounty== "Steubin-IN"){
    race_steubinIN <- subset.data.frame(race, NAME=="Steubin-IN")
    nodes_steubinIN <- as.Node(race_steubinIN) 
  } #74
  else if(input$selectcounty== "Sullivan-IN"){
    race_sullivanIN <- subset.data.frame(race, NAME=="Sullivan-IN")
    nodes_sullivanIN <- as.Node(race_sullivanIN) 
  } ########92
  else if(input$selectcounty== "Switzerland-IN"){
    race_switzerlandIN <- subset.data.frame(race, NAME=="Switzerland-IN")
    nodes_switzelandIN <- as.Node(race_switzerlandIN) 
  } #75
  else if(input$selectcounty== "Tippecanoe-IN"){
    race_tippecanoeIN <- subset.data.frame(race, NAME=="Tippecanoe-IN")
    nodes_tippecanoeIN <- as.Node(race_tippecanoeIN) 
  } #76
  else if(input$selectcounty== "Tipton-IN"){
    race_tiptonIN <- subset.data.frame(race, NAME=="Tipton-IN")
    nodes_tiptonIN <- as.Node(race_tiptonIN) 
  } #77
  else if(input$selectcounty== "Union-IN"){
    race_unionIN <- subset.data.frame(race, NAME=="Union-IN")
    nodes_unionIN <- as.Node(race_unionIN) 
  } #78
  else if(input$selectcounty== "Vanderburgh-IN"){
    race_vanderburghIN <- subset.data.frame(race, NAME=="Vanderburgh-IN")
    nodes_vanderburghIN <- as.Node(race_vanderburghIN) 
  } #79
  else if(input$selectcounty== "Vermillion-IN"){
    race_vermillionIN <- subset.data.frame(race, NAME=="Vermillion-IN")
    nodes_vermillionIN <- as.Node(race_vermillionIN) 
  } #80
  else if(input$selectcounty== "Vigo-IN"){
    race_vigoIN <- subset.data.frame(race, NAME=="Vigo-IN")
    nodes_vigoIN <- as.Node(race_vigoIN) 
  } #81
  else if(input$selectcounty== "Wabash-IN"){
    race_wabashIN <- subset.data.frame(race, NAME=="Wabash-IN")
    nodes_wabashIN <- as.Node(race_wabashIN) 
  } #82
  else if(input$selectcounty== "Warren-IN"){
    race_warrenIN <- subset.data.frame(race, NAME=="Warren-IN")
    nodes_warrenIN <- as.Node(race_warrenIN) 
  } #83
  else if(input$selectcounty== "Warrick-IN"){
    race_warrickIN <- subset.data.frame(race, NAME=="Warrick-IN")
    nodes_warrickIN <- as.Node(race_warrickIN) 
  } #84
  else if(input$selectcounty== "Washington-IN"){
    race_washingtonIN <- subset.data.frame(race, NAME=="Washington-IN")
    nodes_washingtonIN <- as.Node(race_washingtonIN) 
  } #85
  else if(input$selectcounty== "Wayne-IN"){
    race_wayneIN <- subset.data.frame(race, NAME=="Wayne-IN")
    nodes_wayneIN <- as.Node(race_wayneIN) 
  } #86
  else if(input$selectcounty== "Wells-IN"){
    race_wellsIN <- subset.data.frame(race, NAME=="Wells-IN")
    nodes_wellsIN <- as.Node(race_wellsIN) 
  } #87
  else if(input$selectcounty== "White-IN"){
    race_whiteIN <- subset.data.frame(race, NAME=="White-IN")
    nodes_whiteIN <- as.Node(race_whiteIN) 
  } #88
  else if(input$selectcounty== "Whitley-IN"){
    race_whitleyIN <- subset.data.frame(race, NAME=="Whitley-IN")
    nodes_whitleyIN <- as.Node(race_whitleyIN) 
  } #89
######### KANSAS ######
  else if(input$selectcounty== "Allen-KS"){
    race_allenKS <- subset.data.frame(race, NAME=="Allen-KS")
    nodes_allenKS <- as.Node(race_allenKS) 
  }  #1
  else if(input$selectcounty== "Anderson-KS"){
    race_andersonKS <- subset.data.frame(race, NAME=="Anderson-KS")
    nodes_andersonKS <- as.Node(race_andersonKS) 
  } #2
  else if(input$selectcounty== "Atchison-KS"){
    race_atchisonKS <- subset.data.frame(race, NAME=="Atchison-KS")
    nodes_atchisonKS <- as.Node(race_atchisonKS) 
  } #3
  else if(input$selectcounty== "Barber-KS"){
    race_barberKS <- subset.data.frame(race, NAME=="Barber-KS")
    nodes_barberKS <- as.Node(race_barberKS) 
  } #4
  else if(input$selectcounty== "Barton-KS"){
    race_bartonKS <- subset.data.frame(race, NAME=="Barton-KS")
    nodes_bartonKS <- as.Node(race_bartonKS) 
  } #5
  else if(input$selectcounty== "Bourbon-KS"){
    race_bourbonKS <- subset.data.frame(race, NAME=="Bourbon-KS")
    nodes_bourbonKS <- as.Node(race_bourbonKS) 
  } #6
  else if(input$selectcounty== "Brown-KS"){
    race_brownKS <- subset.data.frame(race, NAME=="Brown-KS")
    nodes_brownKS <- as.Node(race_brownKS) 
  } #7
  else if(input$selectcounty== "Butler-KS"){
    race_butlerKS <- subset.data.frame(race, NAME=="Butler-KS")
    nodes_butlerKS <- as.Node(race_butlerKS) 
  } #8
  else if(input$selectcounty== "Chase-KS"){
    race_chaseKS <- subset.data.frame(race, NAME=="Chase-KS")
    nodes_chaseKS <- as.Node(race_chaseKS) 
  } #9
  else if(input$selectcounty== "Chautauqua-KS"){
    race_ChautauquaKS <- subset.data.frame(race, NAME=="Chautauqua-KS")
    nodes_ChautauquaKS <- as.Node(race_ChautauquaKS) 
  } #10 
  else if(input$selectcounty== "Cherokee-KS"){
    race_cherokeeKS <- subset.data.frame(race, NAME=="Cherokee-KS")
    nodes_cherokeeKS <- as.Node(race_cherokeeKS) 
  } #11
  else if(input$selectcounty== "Cheyenne-KS"){
    race_cheyenneKS <- subset.data.frame(race, NAME=="Cheyenne-KS")
    nodes_cheyenneKS <- as.Node(race_cheyenneKS) 
  } #12
  else if(input$selectcounty== "Clark-KS"){
    race_clarkKS <- subset.data.frame(race, NAME=="Clark-KS")
    nodes_clarkKS <- as.Node(race_clarkKS) 
  } #13
  else if(input$selectcounty== "Clay-KS"){
    race_clayKS <- subset.data.frame(race, NAME=="Clay-KS")
    nodes_clayKS <- as.Node(race_clayKS) 
  } #14
  else if(input$selectcounty== "Cloud-KS"){
    race_cloudKS <- subset.data.frame(race, NAME=="Cloud-KS")
    nodes_cloudKS <- as.Node(race_cloudKS) 
  } #15
  else if(input$selectcounty== "Coffey-KS"){
    race_coffeyKS <- subset.data.frame(race, NAME=="Coffey-KS")
    nodes_coffeyKS <- as.Node(race_coffeyKS) 
  } #16
  else if(input$selectcounty== "Comanche-KS"){
    race_comancheKS <- subset.data.frame(race, NAME=="Comanche-KS")
    nodes_comancheKS <- as.Node(race_comancheKS) 
  } #17
  else if(input$selectcounty== "Cowley-KS"){
    race_cowleyKS <- subset.data.frame(race, NAME=="Cowley-KS")
    nodes_cowleyKS <- as.Node(race_cowleyKS) 
  } #18
  else if(input$selectcounty== "Crawford-KS"){
    race_crawfordKS <- subset.data.frame(race, NAME=="Crawford-KS")
    nodes_crawfordKS <- as.Node(race_crawfordKS) 
  } #19
  else if(input$selectcounty== "Decatur-KS"){
    race_decaturKS <- subset.data.frame(race, NAME=="Decatur-KS")
    nodes_decaturKS <- as.Node(race_decaturKS) 
  } #20
  else if(input$selectcounty== "Dickinson-KS"){
    race_dickinsonKS <- subset.data.frame(race, NAME=="Dickinson-KS")
    nodes_dickinsonKS <- as.Node(race_dickinsonKS) 
  } #21
  else if(input$selectcounty== "Doniphan-KS"){
    race_doniphanKS <- subset.data.frame(race, NAME=="Doniphan-KS")
    nodes_doniphanKS <- as.Node(race_doniphanKS) 
  } #22
  else if(input$selectcounty== "Douglas-KS"){
    race_douglasKS <- subset.data.frame(race, NAME=="Douglas-KS")
    nodes_douglasKS <- as.Node(race_douglasKS) 
  } #23
  else if(input$selectcounty== "Edwards-KS"){
    race_edwardsKS <- subset.data.frame(race, NAME=="Edwards-KS")
    nodes_edwardsKS <- as.Node(race_edwardsKS) 
  } #24
  else if(input$selectcounty== "Elk-KS"){
    race_elkKS <- subset.data.frame(race, NAME=="Elk-KS")
    nodes_elkKS <- as.Node(race_elkKS) 
  } #25
  else if(input$selectcounty== "Ellis-KS"){
    race_ellisKS <- subset.data.frame(race, NAME=="Ellis-KS")
    nodes_ellisKS <- as.Node(race_ellisKS) 
  } #26
  else if(input$selectcounty== "Ellsworth-KS"){
    race_ellsworthKS <- subset.data.frame(race, NAME=="Ellsworth-KS")
    nodes_ellsworthKS <- as.Node(race_ellsworthKS) 
  } #27 
  else if(input$selectcounty== "Finney-KS"){
    race_finneyKS <- subset.data.frame(race, NAME=="Finney-KS")
    nodes_finneyKS <- as.Node(race_finneyKS) 
  } #28
  else if(input$selectcounty== "Ford-KS"){
    race_fordKS <- subset.data.frame(race, NAME=="Ford-KS")
    nodes_fordKS <- as.Node(race_fordKS) 
  } #29
  else if(input$selectcounty== "Franklin-KS"){
    race_franklinsKS <- subset.data.frame(race, NAME=="Franklin-KS")
    nodes_franklinKS <- as.Node(race_franklinKS) 
  } #30
  else if(input$selectcounty== "Geary-KS"){
    race_gearyKS <- subset.data.frame(race, NAME=="Geary-KS")
    nodes_gearyKS <- as.Node(race_gearyKS) 
  } #31
  else if(input$selectcounty== "Gove-KS"){
    race_goveKS <- subset.data.frame(race, NAME=="Gove-KS")
    nodes_goveKS <- as.Node(race_goveKS) 
  } #32
  else if(input$selectcounty== "Graham-KS"){
    race_grahamKS <- subset.data.frame(race, NAME=="Graham-KS")
    nodes_grahamKS <- as.Node(race_grahamKS) 
  } #33
  else if(input$selectcounty== "Grant-KS"){
    race_grantKS <- subset.data.frame(race, NAME=="Grant-KS")
    nodes_grantKS <- as.Node(race_grantKS) 
  } #34
  else if(input$selectcounty== "Gray-KS"){
    race_grayKS <- subset.data.frame(race, NAME=="Gray-KS")
    nodes_grayKS <- as.Node(race_grayKS) 
  } #35
  else if(input$selectcounty== "Greeley-KS"){
    race_greeleyKS <- subset.data.frame(race, NAME=="Grey-KS")
    nodes_greeleyKS <- as.Node(race_greeleyKS) 
  } #36
  else if(input$selectcounty== "Greenwood-KS"){
    race_greenwoodKS <- subset.data.frame(race, NAME=="Greenwood-KS")
    nodes_greenwoodKS <- as.Node(race_greenwoodKS) 
  } #37
  else if(input$selectcounty== "Hamilton-KS"){
    race_hamiltonKS <- subset.data.frame(race, NAME=="Hamilton-KS")
    nodes_hamiltonKS <- as.Node(race_hamiltonKS) 
  } #38
  else if(input$selectcounty== "Harper-KS"){
    race_harperKS <- subset.data.frame(race, NAME=="Harper-KS")
    nodes_harperKS <- as.Node(race_harperKS) 
  } #39
  else if(input$selectcounty== "Harvey-KS"){
    race_harveyKS <- subset.data.frame(race, NAME=="Harvey-KS")
    nodes_harveyKS <- as.Node(race_harveyKS) 
  } #40
  else if(input$selectcounty== "Haskell-KS"){
    race_haskellKS <- subset.data.frame(race, NAME=="Haskell-KS")
    nodes_haskellKS <- as.Node(race_haskellKS) 
  } #41
  else if(input$selectcounty== "Hodgeman-KS"){
    race_hodgemanKS <- subset.data.frame(race, NAME=="Hodgeman-KS")
    nodes_hodgemanKS <- as.Node(race_hodgemanKS) 
  } #42
  else if(input$selectcounty== "Jackson-KS"){
    race_jacksonKS <- subset.data.frame(race, NAME=="Jackson-KS")
    nodes_jacksonKS <- as.Node(race_jacksonKS) 
  } #43
  else if(input$selectcounty== "Jefferson-KS"){
    race_jeffersonKS <- subset.data.frame(race, NAME=="Jefferson-KS")
    nodes_jeffersonKS <- as.Node(race_jeffersonKS) 
  } #44
  else if(input$selectcounty== "Jewell-KS"){
    race_jewellKS <- subset.data.frame(race, NAME=="Jewell-KS")
    nodes_jewellKS <- as.Node(race_jewellKS) 
  } #45
  else if(input$selectcounty== "Johnson-KS"){
    race_johnsonKS <- subset.data.frame(race, NAME=="Johnson-KS")
    nodes_johnsonKS <- as.Node(race_johnsonKS) 
  } #46
  else if(input$selectcounty== "Kearny-KS"){
    race_kearnyKS <- subset.data.frame(race, NAME=="Kearny-KS")
    nodes_kearnyKS <- as.Node(race_kearnyKS) 
  } #47
  else if(input$selectcounty== "Kingman-KS"){
    race_kingmanKS <- subset.data.frame(race, NAME=="Kingman-KS")
    nodes_kingmanKS <- as.Node(race_kingmanKS) 
  } #48
  else if(input$selectcounty== "Kiowa-KS"){
    race_kiowaKS <- subset.data.frame(race, NAME=="Kiowa-KS")
    nodes_kiowaKS <- as.Node(race_kiowaKS) 
  } #49
  else if(input$selectcounty== "Labette-KS"){
    race_labetteKS <- subset.data.frame(race, NAME=="Labette-KS")
    nodes_labetteKS <- as.Node(race_labetteKS) 
  } #50
  else if(input$selectcounty== "Lane-KS"){
    race_laneKS <- subset.data.frame(race, NAME=="Lane-KS")
    nodes_laneKS <- as.Node(race_laneKS) 
  } #51
  else if(input$selectcounty== "Leavenworth-KS"){
    race_leavenworthKS <- subset.data.frame(race, NAME=="Leavenworth-KS")
    nodes_leavenworthKS <- as.Node(race_leavenworthKS) 
  } #52
  else if(input$selectcounty== "Lincoln-KS"){
    race_lincolnKS <- subset.data.frame(race, NAME=="Lincoln-KS")
    nodes_lincolnKS <- as.Node(race_lincolnKS) 
  } #53
  else if(input$selectcounty== "Linn-KS"){
    race_linnKS <- subset.data.frame(race, NAME=="Linn-KS")
    nodes_linnKS <- as.Node(race_linnKS) 
  } #54
  else if(input$selectcounty== "Logan-KS"){
    race_loganKS <- subset.data.frame(race, NAME=="Logan-KS")
    nodes_loganKS <- as.Node(race_loganKS) 
  } #55
  else if(input$selectcounty== "Lyon-KS"){
    race_lyonKS <- subset.data.frame(race, NAME=="Lyon-KS")
    nodes_lyonKS <- as.Node(race_lyonKS) 
  } #56
  else if(input$selectcounty== "Marion-KS"){
    race_marionKS <- subset.data.frame(race, NAME=="Marion-KS")
    nodes_marionKS <- as.Node(race_marionKS) 
  } #57
  else if(input$selectcounty== "Marshall-KS"){
    race_marshallKS <- subset.data.frame(race, NAME=="Marshall-KS")
    nodes_marshallKS <- as.Node(race_marshallKS) 
  } #58
  else if(input$selectcounty== "McPherson-KS"){
    race_mcphersonKS <- subset.data.frame(race, NAME=="McPherson-KS")
    nodes_mcphersonKS <- as.Node(race_mcphersonKS) 
  } #59
  else if(input$selectcounty== "Meade-KS"){
    race_meadeKS <- subset.data.frame(race, NAME=="Meade-KS")
    nodes_meadeKS <- as.Node(race_meadeKS) 
  } #60
  else if(input$selectcounty== "Miami-KS"){
    race_miamiKS <- subset.data.frame(race, NAME=="Miami-KS")
    nodes_miamiKS <- as.Node(race_miamiKS) 
  } #61
  else if(input$selectcounty== "Mitchell-KS"){
    race_mitchellKS <- subset.data.frame(race, NAME=="Mitchell-KS")
    nodes_mitchellKS <- as.Node(race_mitchellKS) 
  } #62
  else if(input$selectcounty== "Montgomery-KS"){
    race_montgomeryKS <- subset.data.frame(race, NAME=="Montgomery-KS")
    nodes_montgomeryKS <- as.Node(race_montgomeryKS) 
  } #63
  else if(input$selectcounty== "Morris-KS"){
    race_morrisKS <- subset.data.frame(race, NAME=="Morris-KS")
    nodes_morrisKS <- as.Node(race_morrisKS) 
  } #64
  else if(input$selectcounty== "Morton-KS"){
    race_mortonKS <- subset.data.frame(race, NAME=="Morton-KS")
    nodes_mortonKS <- as.Node(race_mortonKS) 
  } #65
  else if(input$selectcounty== "Nemaha-KS"){
    race_nemahaKS <- subset.data.frame(race, NAME=="Nemaha-KS")
    nodes_nemahaKS <- as.Node(race_nemahaKS) 
  }#66
  else if(input$selectcounty== "Neosho-KS"){
    race_neoshoKS <- subset.data.frame(race, NAME=="Neosho-KS")
    nodes_neoshoKS <- as.Node(race_neoshoKS) 
  } #67
  else if(input$selectcounty== "Ness-KS"){
    race_nessKS <- subset.data.frame(race, NAME=="Ness-KS")
    nodes_nessKS <- as.Node(race_nessKS) 
  } #68
  else if(input$selectcounty== "Norton-KS"){
    race_nortonKS <- subset.data.frame(race, NAME=="Norton-KS")
    nodes_nortonKS <- as.Node(race_nortonKS) 
  } #69
  else if(input$selectcounty== "Osage-KS"){
    race_osageKS <- subset.data.frame(race, NAME=="Osage-KS")
    nodes_osageKS <- as.Node(race_osageKS) 
  } #70
  else if(input$selectcounty== "Osborne-KS"){
    race_osborneKS <- subset.data.frame(race, NAME=="Osborne-KS")
    nodes_osborneKS <- as.Node(race_osborneKS) 
  } #71
  else if(input$selectcounty== "Ottawa-KS"){
    race_ottawaKS <- subset.data.frame(race, NAME=="Ottawa-KS")
    nodes_ottawaKS <- as.Node(race_ottawaKS) 
  } #72
  else if(input$selectcounty== "Pawnee-KS"){
    race_pawneeKS <- subset.data.frame(race, NAME=="Pawnee-KS")
    nodes_pawneeKS <- as.Node(race_pawneeKS) 
  } #73
  else if(input$selectcounty== "Phillips-KS"){
    race_phillipsKS <- subset.data.frame(race, NAME=="Phillips-KS")
    nodes_phillipsKS <- as.Node(race_phillipsKS) 
  } #74
  else if(input$selectcounty== "Pottawatomie-KS"){
    race_PottawatomieKS <- subset.data.frame(race, NAME=="Pottawatomie-KS")
    nodes_PottawatomieKS <- as.Node(race_PottawatomieKS) 
  } #75 
  else if(input$selectcounty== "Pratt-KS"){
    race_prattKS <- subset.data.frame(race, NAME=="Pratt-KS")
    nodes_prattKS <- as.Node(race_prattKS) 
  } #76
  else if(input$selectcounty== "Rawlins-KS"){
    race_rawlinsKS <- subset.data.frame(race, NAME=="Rawlins-KS")
    nodes_rawlinsKS <- as.Node(race_RawlinsKS) 
  } #77
  else if(input$selectcounty== "Reno-KS"){
    race_renoKS <- subset.data.frame(race, NAME=="Reno-KS")
    nodes_renoKS <- as.Node(race_renoKS) 
  } #78
  else if(input$selectcounty== "Republic-KS"){
    race_republicKS <- subset.data.frame(race, NAME=="Republic-KS")
    nodes_republicKS <- as.Node(race_republicKS) 
  } #79 
  else if(input$selectcounty== "Rice-KS"){
    race_riceKS <- subset.data.frame(race, NAME=="Rice-KS")
    nodes_riceKS <- as.Node(race_riceKS) 
  } #80
  else if(input$selectcounty== "Riley-KS"){
    race_rileyKS <- subset.data.frame(race, NAME=="Riley-KS")
    nodes_rileyKS <- as.Node(race_rileyKS) 
  } #81
  else if(input$selectcounty== "Rooks-KS"){
    race_rooksKS <- subset.data.frame(race, NAME=="Rooks-KS")
    nodes_rooksKS <- as.Node(race_rooksKS) 
  } #82
  else if(input$selectcounty== "Rush-KS"){
    race_rushKS <- subset.data.frame(race, NAME=="Rush-KS")
    nodes_rushKS <- as.Node(race_rushKS) 
  } #83
  else if(input$selectcounty== "Russell-KS"){
    race_russellKS <- subset.data.frame(race, NAME=="Russell-KS")
    nodes_russellKS <- as.Node(race_russellKS) 
  } #84
  else if(input$selectcounty== "Saline-KS"){
    race_salineKS <- subset.data.frame(race, NAME=="Saline-KS")
    nodes_salineKS <- as.Node(race_salineKS) 
  } #85
  else if(input$selectcounty== "Scott-KS"){
    race_scottKS <- subset.data.frame(race, NAME=="Scott-KS")
    nodes_scottKS <- as.Node(race_scottKS) 
  } #86
  else if(input$selectcounty== "Sedgewick-KS"){
    race_sedgewickKS <- subset.data.frame(race, NAME=="Sedgewick-KS")
    nodes_sedgewickKS <- as.Node(race_sedgewickKS) 
  } #87 
  else if(input$selectcounty== "Seward-KS"){
    race_sewardKS <- subset.data.frame(race, NAME=="Seward-KS")
    nodes_sewardKS <- as.Node(race_sewardKS) 
  } #88
  else if(input$selectcounty== "Shawnee-KS"){
    race_shawneeKS <- subset.data.frame(race, NAME=="Shawnee-KS")
    nodes_shawneeKS <- as.Node(race_shawneeKS) 
  } #89
  else if(input$selectcounty== "Sheridan-KS"){
    race_sheridanKS <- subset.data.frame(race, NAME=="Sheridan-KS")
    nodes_sheridanKS <- as.Node(race_sheridanKS) 
  } #90
  else if(input$selectcounty== "Sherman-KS"){
    race_shermanKS <- subset.data.frame(race, NAME=="Sherman-KS")
    nodes_shermanKS <- as.Node(race_shermanKS) 
  } #91
  else if(input$selectcounty== "Smith-KS"){
    race_smithKS <- subset.data.frame(race, NAME=="Smith-KS")
    nodes_smithKS <- as.Node(race_smithKS) 
  } #92
  else if(input$selectcounty== "Stafford-KS"){
    race_staffordKS <- subset.data.frame(race, NAME=="Stafford-KS")
    nodes_staffordKS <- as.Node(race_staffordKS) 
  } #93
  else if(input$selectcounty== "Stanton-KS"){
    race_stantonKS <- subset.data.frame(race, NAME=="Stanton-KS")
    nodes_stantonKS <- as.Node(race_stantonKS) 
  } #94
  else if(input$selectcounty== "Stevens-KS"){
    race_stevensKS <- subset.data.frame(race, NAME=="Stevens-KS")
    nodes_stevensKS <- as.Node(race_stevensKS) 
  } #95
  else if(input$selectcounty== "Sumner-KS"){
    race_sumnerKS <- subset.data.frame(race, NAME=="Sumner-KS")
    nodes_sumnerKS <- as.Node(race_sumnerKS) 
  } #98
  else if(input$selectcounty== "Thomas-KS"){
    race_thomasKS <- subset.data.frame(race, NAME=="Thomas-KS")
    nodes_thomasKS <- as.Node(race_thomasKS) 
  } #97
  else if(input$selectcounty== "Trego-KS"){
    race_tregoKS <- subset.data.frame(race, NAME=="Trego-KS")
    nodes_tregoKS <- as.Node(race_tregoKS) 
  } #98
  else if(input$selectcounty== "Wabaunsee-KS"){
    race_WabaunseeKS <- subset.data.frame(race, NAME=="Wabaunsee-KS")
    nodes_WabaunseeKS <- as.Node(race_WabaunseeKS) 
  } #99 
  else if(input$selectcounty== "Wallace-KS"){
    race_wallaceKS <- subset.data.frame(race, NAME=="Wallace-KS")
    nodes_wallaceKS <- as.Node(race_wallaceKS) 
  } #100
  else if(input$selectcounty== "Washington-KS"){
    race_washingtonKS <- subset.data.frame(race, NAME=="Washington-KS")
    nodes_washingtonKS <- as.Node(race_washingtonKS) 
  } #101
  else if(input$selectcounty== "Wichita-KS"){
    race_wichitaKS <- subset.data.frame(race, NAME=="Wichita-KS")
    nodes_wichitaKS <- as.Node(race_wichitaKS) 
  } #102
  else if(input$selectcounty== "Wilson-KS"){
    race_wilsonKS <- subset.data.frame(race, NAME=="Wilson-KS")
    nodes_wilsonKS <- as.Node(race_wilsonKS) 
  } #103
  else if(input$selectcounty== "Woodson-KS"){
    race_woodsonKS <- subset.data.frame(race, NAME=="Woodson-KS")
    nodes_woodsonKS <- as.Node(race_woodsonKS) 
  } #104
  else if(input$selectcounty== "Wyandotte-KS"){
    race_WyandotteKS <- subset.data.frame(race, NAME=="Wyandotte-KS")
    nodes_WyandotteKS <- as.Node(race_WyandotteKS) 
  } #105
 
######### KENTUCKY ####### 
  else if(input$selectcounty== "Adair-KY"){
    race_adairKY <- subset.data.frame(race, NAME=="Adair-KY")
    nodes_adairKY <- as.Node(race_adairKY) 
  } #1
  else if(input$selectcounty== "Allen-KY"){
    race_allenKY <- subset.data.frame(race, NAME=="Allen-KY")
    nodes_allenKY <- as.Node(race_allenKY) 
  } #2
  else if(input$selectcounty== "Anderson-KY"){
    race_andersonKY <- subset.data.frame(race, NAME=="Anderson-KY")
    nodes_andersonKY <- as.Node(race_andersonKY) 
  } #3 
  else if(input$selectcounty== "Ballard-KY"){
    race_ballardKY <- subset.data.frame(race, NAME=="Ballard-KY")
    nodes_ballardKY <- as.Node(race_ballardKY) 
  } #4
  else if(input$selectcounty== "Barren-KY"){
    race_barrenKY <- subset.data.frame(race, NAME=="Barren-KY")
    nodes_barrenKY <- as.Node(race_barrenKY) 
  } #5
  else if(input$selectcounty== "Bath-KY"){
    race_bathKY <- subset.data.frame(race, NAME=="Bath-KY")
    nodes_bathKY <- as.Node(race_bathKY) 
  } #6
  else if(input$selectcounty== "Bell-KY"){
    race_bellKY <- subset.data.frame(race, NAME=="Bell-KY")
    nodes_bellKY <- as.Node(race_bellKY) 
  } #7
  else if(input$selectcounty== "Boone-KY"){
    race_booneKY <- subset.data.frame(race, NAME=="Boone-KY")
    nodes_booneKY <- as.Node(race_booneKY) 
  } #8
  else if(input$selectcounty== "Bourbon-KY"){
    race_bourbonKY <- subset.data.frame(race, NAME=="Bourbon-KY")
    nodes_bouronKY <- as.Node(race_bourbonKY) 
  } #9
  else if(input$selectcounty== "Boyd-KY"){
    race_boydKY <- subset.data.frame(race, NAME=="Boyd-KY")
    nodes_boydKY <- as.Node(race_boydKY) 
  } #10
  else if(input$selectcounty== "Boyle-KY"){
    race_boyleKY <- subset.data.frame(race, NAME=="Boyle-KY")
    nodes_boyleKY <- as.Node(race_boyleKY) 
  } #11
  else if(input$selectcounty== "Bracken-KY"){
    race_brackenKY <- subset.data.frame(race, NAME=="Bracken-KY")
    nodes_brackenKY <- as.Node(race_brackenKY) 
  } #12
  else if(input$selectcounty== "Breathitt-KY"){
    race_breathittKY <- subset.data.frame(race, NAME=="Breathitt-KY")
    nodes_breathittKY <- as.Node(race_breathittKY) 
  } #13
  else if(input$selectcounty== "Breckinridge-KY"){
    race_breckinridgeKY <- subset.data.frame(race, NAME=="Breckinridge-KY")
    nodes_breckinridgeKY <- as.Node(race_breckinridgeKY) 
  } #14
  else if(input$selectcounty== "Bullitt-KY"){
    race_bullittKY <- subset.data.frame(race, NAME=="Bullitt-KY")
    nodes_bullittKY <- as.Node(race_bullittKY) 
  } #15
  else if(input$selectcounty== "Butler-KY"){
    race_butlerKY <- subset.data.frame(race, NAME=="Butler-KY")
    nodes_butlerKY <- as.Node(race_butlerKY) 
  } #16
  else if(input$selectcounty== "Caldwell-KY"){
    race_caldwellKY <- subset.data.frame(race, NAME=="Caldwell-KY")
    nodes_caldwellKY <- as.Node(race_caldwellKY) 
  } #17
  else if(input$selectcounty== "Calloway-KY"){
    race_callowayKY <- subset.data.frame(race, NAME=="Calloway-KY")
    nodes_callowayKY <- as.Node(race_callowayKY) 
  } #18
  else if(input$selectcounty== "Campbell-KY"){
    race_campbellKY <- subset.data.frame(race, NAME=="Campbell-KY")
    nodes_campbellKY <- as.Node(race_campbellKY) 
  } #19
  else if(input$selectcounty== "Carlisle-KY"){
    race_carlisleKY <- subset.data.frame(race, NAME=="Carlisle-KY")
    nodes_carlisleKY <- as.Node(race_carlisleKY) 
  } #20
  else if(input$selectcounty== "Carroll-KY"){
    race_carrollKY <- subset.data.frame(race, NAME=="Carroll-KY")
    nodes_carrollKY <- as.Node(race_carrollKY) 
  } #21
  else if(input$selectcounty== "Carter-KY"){
    race_carterKY <- subset.data.frame(race, NAME=="Carter-KY")
    nodes_carterKY <- as.Node(race_carterKY) 
  } #22
  else if(input$selectcounty== "Casey-KY"){
    race_caseyKY <- subset.data.frame(race, NAME=="Casey-KY")
    nodes_caseyKY <- as.Node(race_caseyKY) 
  } #23
  else if(input$selectcounty== "Christian-KY"){
    race_christianKY <- subset.data.frame(race, NAME=="Christian-KY")
    nodes_christianKY <- as.Node(race_christianKY) 
  } #24 
  else if(input$selectcounty== "Clark-KY"){
    race_clarkKY <- subset.data.frame(race, NAME=="Clark-KY")
    nodes_clarkKY <- as.Node(race_clarkKY) 
  } #25
  else if(input$selectcounty== "Clay-KY"){
    race_clayKY <- subset.data.frame(race, NAME=="Clay-KY")
    nodes_clayKY <- as.Node(race_clayKY) 
  } #26
  else if(input$selectcounty== "Clinton-KY"){
    race_clintonKY <- subset.data.frame(race, NAME=="Clinton-KY")
    nodes_clintonKY <- as.Node(race_clintonKY) 
  } #27
  else if(input$selectcounty== "Crittenden-KY"){
    race_crittendenKY <- subset.data.frame(race, NAME=="Crittenden-KY")
    nodes_crittendenKY <- as.Node(race_crittendenKY) 
  } #28
  else if(input$selectcounty== "Cumberland-KY"){
    race_cumberlandKY <- subset.data.frame(race, NAME=="Cumberland-KY")
    nodes_cumberlandKY <- as.Node(race_cumberlandKY) 
  } #29
  else if(input$selectcounty== "Daviess-KY"){
    race_daviessKY <- subset.data.frame(race, NAME=="Daviess-KY")
    nodes_daviessKY <- as.Node(race_daviessKY) 
  } #30
  else if(input$selectcounty== "Edmonson-KY"){
    race_edmonsonKY <- subset.data.frame(race, NAME=="Edmonson-KY")
    nodes_edmonsonKY <- as.Node(race_edmonsonKY) 
  } #31
  else if(input$selectcounty== "Elliott-KY"){
    race_elliottKY <- subset.data.frame(race, NAME=="Elliott-KY")
    nodes_elliottKY <- as.Node(race_elliottKY) 
  } #32
  else if(input$selectcounty== "Estill-KY"){
    race_estillKY <- subset.data.frame(race, NAME=="Estill-KY")
    nodes_estillKY <- as.Node(race_estillKY) 
  } #33
  else if(input$selectcounty== "Fayette-KY"){
    race_fayetteKY <- subset.data.frame(race, NAME=="Fayette-KY")
    nodes_fayetteKY <- as.Node(race_fayetteKY) 
  } #34
  else if(input$selectcounty== "Fleming-KY"){
    race_flemingKY <- subset.data.frame(race, NAME=="Fleming-KY")
    nodes_flemingKY <- as.Node(race_flemingKY) 
  } #35
  else if(input$selectcounty== "Floyd-KY"){
    race_floydKY <- subset.data.frame(race, NAME=="Floyd-KY")
    nodes_floydKY <- as.Node(race_floydKY) 
  } #36
  else if(input$selectcounty== "Franklin-KY"){
    race_franklinKY <- subset.data.frame(race, NAME=="Franklin-KY")
    nodes_franklinKY <- as.Node(race_franklinKY) 
  } #37
  else if(input$selectcounty== "Fulton-KY"){
    race_fultonKY <- subset.data.frame(race, NAME=="Fulton-KY")
    nodes_fultonKY <- as.Node(race_fultonKY) 
  } #38
  else if(input$selectcounty== "Gallatin-KY"){
    race_gallatinKY <- subset.data.frame(race, NAME=="Gallatin-KY")
    nodes_gallatinKY <- as.Node(race_gallatinKY) 
  } #39
  else if(input$selectcounty== "Garrard-KY"){
    race_garrardKY <- subset.data.frame(race, NAME=="Garrard-KY")
    nodes_garrardKY <- as.Node(race_garrardKY) 
  } #40
  else if(input$selectcounty== "Grant-KY"){
    race_grantKY <- subset.data.frame(race, NAME=="Grant-KY")
    nodes_grantKY <- as.Node(race_grantKY) 
  } #41
  else if(input$selectcounty== "Graves-KY"){
    race_gravesKY <- subset.data.frame(race, NAME=="Graves-KY")
    nodes_gravesKY <- as.Node(race_gravesKY) 
  } #42
  else if(input$selectcounty== "Grayson-KY"){
    race_graysonKY <- subset.data.frame(race, NAME=="Grayson-KY")
    nodes_graysonKY <- as.Node(race_graysonKY) 
  } #43
  else if(input$selectcounty== "Green-KY"){
    race_greenKY <- subset.data.frame(race, NAME=="Green-KY")
    nodes_greenKY <- as.Node(race_greenKY) 
  } #44
  else if(input$selectcounty== "Greenup-KY"){
    race_greenupKY <- subset.data.frame(race, NAME=="Greenup-KY")
    nodes_greenupKY <- as.Node(race_greenupKY) 
  } #45
  else if(input$selectcounty== "Hancock-KY"){
    race_hancockKY <- subset.data.frame(race, NAME=="Hancock-KY")
    nodes_hancockKY <- as.Node(race_hancockKY) 
  } #46
  else if(input$selectcounty== "Hardin-KY"){
    race_hardinKY <- subset.data.frame(race, NAME=="Hardin-KY")
    nodes_hardinKY <- as.Node(race_hardinKY) 
  } #47
  else if(input$selectcounty== "Harlan-KY"){
    race_harlanKY <- subset.data.frame(race, NAME=="Harlan-KY")
    nodes_harlanKY <- as.Node(race_harlanKY) 
  } #48
  else if(input$selectcounty== "Harrison-KY"){
    race_harrisonKY <- subset.data.frame(race, NAME=="Harrison-KY")
    nodes_harrisonKY <- as.Node(race_harrisonKY) 
  } #49
  else if(input$selectcounty== "Hart-KY"){
    race_hartKY <- subset.data.frame(race, NAME=="Hart-KY")
    nodes_hartKY <- as.Node(race_hartKY) 
  } #50
  else if(input$selectcounty== "Henderson-KY"){
    race_hendersonKY <- subset.data.frame(race, NAME=="Henderson-KY")
    nodes_hendersonKY <- as.Node(race_hendersonKY) 
  } #51 
  else if(input$selectcounty== "Henry-KY"){
    race_henryKY <- subset.data.frame(race, NAME=="Henry-KY")
    nodes_henryKY <- as.Node(race_henryKY) 
  } #52
  else if(input$selectcounty== "Hickman-KY"){
    race_hickmanKY <- subset.data.frame(race, NAME=="Hickman-KY")
    nodes_hickmanKY <- as.Node(race_hickmanKY) 
  } #53
  else if(input$selectcounty== "Hopkins-KY"){
    race_hopkinsKY <- subset.data.frame(race, NAME=="Hopkins-KY")
    nodes_hopkinsKY <- as.Node(race_hopkinsKY) 
  } #54
  else if(input$selectcounty== "Jackson-KY"){
    race_jacksonKY <- subset.data.frame(race, NAME=="Jackson-KY")
    nodes_jacksonKY <- as.Node(race_jacksonKY) 
  } #55
  else if(input$selectcounty== "Jefferson-KY"){
    race_jeffersonKY <- subset.data.frame(race, NAME=="Jefferson-KY")
    nodes_jeffersonKY <- as.Node(race_jeffersonKY) 
  } #56
  else if(input$selectcounty== "Jessamine-KY"){
    race_jessamineKY <- subset.data.frame(race, NAME=="Jessamine-KY")
    nodes_jessamineKY <- as.Node(race_jessamineKY) 
  } #57
  else if(input$selectcounty== "Johnson-KY"){
    race_johnsonKY <- subset.data.frame(race, NAME=="Johnson-KY")
    nodes_johnsonKY <- as.Node(race_johnsonKY) 
  } #58
  else if(input$selectcounty== "Kenton-KY"){
    race_kentonKY <- subset.data.frame(race, NAME=="Kenton-KY")
    nodes_kentonKY <- as.Node(race_kentonKY) 
  } #59
  else if(input$selectcounty== "Knott-KY"){
    race_knottKY <- subset.data.frame(race, NAME=="Knott-KY")
    nodes_knottKY <- as.Node(race_knottKY) 
  } #60
  else if(input$selectcounty== "Knox-KY"){
    race_knoxKY <- subset.data.frame(race, NAME=="Knox-KY")
    nodes_knoxKY <- as.Node(race_knoxKY) 
  } #61
  else if(input$selectcounty== "Larue-KY"){
    race_larueKY <- subset.data.frame(race, NAME=="Larue-KY")
    nodes_larueKY <- as.Node(race_larueKY) 
  } #62
  else if(input$selectcounty== "Laurel-KY"){
    race_laurelKY <- subset.data.frame(race, NAME=="Laurel-KY")
    nodes_laurelKY <- as.Node(race_laurelKY) 
  } #63
  else if(input$selectcounty== "Lawrence-KY"){
    race_lawrenceKY <- subset.data.frame(race, NAME=="Lawrence-KY")
    nodes_lawrenceKY <- as.Node(race_lawrenceKY) 
  } #64
  else if(input$selectcounty== "Lee-KY"){
    race_leeKY <- subset.data.frame(race, NAME=="Lee-KY")
    nodes_leeKY <- as.Node(race_leeKY) 
  } #65
  else if(input$selectcounty== "Leslie-KY"){
    race_leslieKY <- subset.data.frame(race, NAME=="Leslie-KY")
    nodes_leslieKY <- as.Node(race_leslieKY) 
  } #66
  else if(input$selectcounty== "Letcher-KY"){
    race_letcherKY <- subset.data.frame(race, NAME=="Letcher-KY")
    nodes_letcherKY <- as.Node(race_letcherKY) 
  } #67
  else if(input$selectcounty== "Lewis-KY"){
    race_lewisKY <- subset.data.frame(race, NAME=="Lewis-KY")
    nodes_lewisKY <- as.Node(race_lewisKY) 
  } #68
  else if(input$selectcounty== "Lincoln-KY"){
    race_lincolnKY <- subset.data.frame(race, NAME=="Lincoln-KY")
    nodes_lincolnKY <- as.Node(race_lincolnKY) 
  } #69
  else if(input$selectcounty== "Livingston-KY"){
    race_livingstonKY <- subset.data.frame(race, NAME=="Livingston-KY")
    nodes_livingstonKY <- as.Node(race_livingstonKY) 
  } #70
  else if(input$selectcounty== "Logan-KY"){
    race_loganKY <- subset.data.frame(race, NAME=="Logan-KY")
    nodes_loganKY <- as.Node(race_loganKY) 
  } #71
  else if(input$selectcounty== "Lyon-KY"){
    race_lyonKY <- subset.data.frame(race, NAME=="Lyon-KY")
    nodes_lyonKY <- as.Node(race_lyonKY) 
  } #72
  else if(input$selectcounty== "Madison-KY"){
    race_madisonKY <- subset.data.frame(race, NAME=="Madison-KY")
    nodes_madisonKY <- as.Node(race_madisonKY) 
  } #73
  else if(input$selectcounty== "Magoffin-KY"){
    race_magoffinKY <- subset.data.frame(race, NAME=="Magoffin-KY")
    nodes_magoffinKY <- as.Node(race_magoffinKY) 
  } #74
  else if(input$selectcounty== "Marion-KY"){
    race_marionKY <- subset.data.frame(race, NAME=="Marion-KY")
    nodes_marionKY <- as.Node(race_marionKY) 
  } #75
  else if(input$selectcounty== "Marshall-KY"){
    race_marshallKY <- subset.data.frame(race, NAME=="Marshall-KY")
    nodes_marshallKY <- as.Node(race_marshallKY) 
  } #76
  else if(input$selectcounty== "Martin-KY"){
    race_martinKY <- subset.data.frame(race, NAME=="Martin-KY")
    nodes_martinKY <- as.Node(race_martinKY) 
  } #77
  else if(input$selectcounty== "Mason-KY"){
    race_masonKY <- subset.data.frame(race, NAME=="Mason-KY")
    nodes_masonKY <- as.Node(race_masonKY) 
  } #78
  else if(input$selectcounty== "McCracken-KY"){
    race_mccrackenKY <- subset.data.frame(race, NAME=="McCracken-KY")
    nodes_mccrackenKY <- as.Node(race_mccrackenKY) 
  } #79 
  else if(input$selectcounty== "McCreary-KY"){
    race_mccrearyKY <- subset.data.frame(race, NAME=="McCreary-KY")
    nodes_mccrearyKY <- as.Node(race_mccrearyKY) 
  } #80
  else if(input$selectcounty== "McLean-KY"){
    race_mcleanKY <- subset.data.frame(race, NAME=="McLean-KY")
    nodes_mcleanKY <- as.Node(race_mcleanKY) 
  } #81
  else if(input$selectcounty== "Meade-KY"){
    race_meadeKY <- subset.data.frame(race, NAME=="Meade-KY")
    nodes_meadeKY <- as.Node(race_meadeKY) 
  } #82
  else if(input$selectcounty== "Menifee-KY"){
    race_menifeeKY <- subset.data.frame(race, NAME=="Menifee-KY")
    nodes_menifeeKY <- as.Node(race_menifeeKY) 
  } #83
  else if(input$selectcounty== "Mercer-KY"){
    race_mercerKY <- subset.data.frame(race, NAME=="Mercer-KY")
    nodes_mercerKY <- as.Node(race_mercerKY) 
  } #84
  else if(input$selectcounty== "Metcalfe-KY"){
    race_metcalfeKY <- subset.data.frame(race, NAME=="Metcalfe-KY")
    nodes_metcalfeKY <- as.Node(race_metcalfeKY) 
  } #85
  else if(input$selectcounty== "Monroe-KY"){
    race_monroeKY <- subset.data.frame(race, NAME=="Monroe-KY")
    nodes_monroeKY <- as.Node(race_monroeKY) 
  } #86
  else if(input$selectcounty== "Montgomery-KY"){
    race_montgomeryKY <- subset.data.frame(race, NAME=="Montgomery-KY")
    nodes_montgomeryKY <- as.Node(race_montgomeryKY) 
  } #87 
  else if(input$selectcounty== "Morgan-KY"){
    race_morganKY <- subset.data.frame(race, NAME=="Morgan-KY")
    nodes_morganKY <- as.Node(race_morganKY) 
  } #########120
  else if(input$selectcounty== "Muhlenberg-KY"){
    race_MuhlenbergKY <- subset.data.frame(race, NAME=="Muhlenberg-KY")
    nodes_MuhlenbergKY <- as.Node(race_MuhlenbergKY) 
  } #88
  else if(input$selectcounty== "Nelson-KY"){
    race_nelsonKY <- subset.data.frame(race, NAME=="Nelson-KY")
    nodes_nelsonKY <- as.Node(race_nelsonKY) 
  } #89
  else if(input$selectcounty== "Nicholas-KY"){
    race_nicholasKY <- subset.data.frame(race, NAME=="Nicholas-KY")
    nodes_nicholasKY <- as.Node(race_nicholasKY) 
  } #90
  else if(input$selectcounty== "Ohio-KY"){
    race_ohioKY <- subset.data.frame(race, NAME=="Ohio-KY")
    nodes_ohioKY <- as.Node(race_ohioKY) 
  } #91
  else if(input$selectcounty== "Oldham-KY"){
    race_oldmanKY <- subset.data.frame(race, NAME=="Oldham-KY")
    nodes_oldmanKY <- as.Node(race_oldhamKY) 
  } #92
  else if(input$selectcounty== "Owen-KY"){
    race_owenKY <- subset.data.frame(race, NAME=="Owen-KY")
    nodes_owenKY <- as.Node(race_owenKY) 
  } #93
  else if(input$selectcounty== "Owsley-KY"){
    race_owsleyKY <- subset.data.frame(race, NAME=="Owsley-KY")
    nodes_owsleyKY <- as.Node(race_owsleyKY) 
  } #94
  else if(input$selectcounty== "Pendleton-KY"){
    race_pendletonKY <- subset.data.frame(race, NAME=="Pendleton-KY")
    nodes_pendletonKY <- as.Node(race_pendletonKY) 
  } #95
  else if(input$selectcounty== "Perry-KY"){
    race_perryKY <- subset.data.frame(race, NAME=="Perry-KY")
    nodes_perryKY <- as.Node(race_perryKY) 
  } #96
  else if(input$selectcounty== "Pike-KY"){
    race_pikeKY <- subset.data.frame(race, NAME=="Pike-KY")
    nodes_pikeKY <- as.Node(race_pikeKY) 
  } #97
  else if(input$selectcounty== "Powell-KY"){
    race_powellKY <- subset.data.frame(race, NAME=="Powell-KY")
    nodes_powellKY <- as.Node(race_powellKY) 
  } #98
  else if(input$selectcounty== "Pulaski-KY"){
    race_pulaskiKY <- subset.data.frame(race, NAME=="Pulaski-KY")
    nodes_pulaskiKY <- as.Node(race_pulaskiKY) 
  } #99
  else if(input$selectcounty== "Robertson-KY"){
    race_robertsonKY <- subset.data.frame(race, NAME=="Robertson-KY")
    nodes_robertsonKY <- as.Node(race_robertsonKY) 
  } #100
  else if(input$selectcounty== "Rockcastle-KY"){
    race_rockcastleKY <- subset.data.frame(race, NAME=="Rockcastle-KY")
    nodes_rockcastleKY <- as.Node(race_rockcastleKY) 
  } #101
  else if(input$selectcounty== "Rowan-KY"){
    race_rowanKY <- subset.data.frame(race, NAME=="Rowan-KY")
    nodes_rowanKY <- as.Node(race_rowanKY) 
  }  #102
  else if(input$selectcounty== "Russell-KY"){
    race_russellKY <- subset.data.frame(race, NAME=="Russell-KY")
    nodes_russellKY <- as.Node(race_russellKY) 
  } #103
  else if(input$selectcounty== "Scott-KY"){
    race_scottKY <- subset.data.frame(race, NAME=="Scott-KY")
    nodes_scottKY <- as.Node(race_scottKY) 
  } #104
  else if(input$selectcounty== "Shelby-KY"){
    race_shelbyKY <- subset.data.frame(race, NAME=="Shelby-KY")
    nodes_shelbyKY <- as.Node(race_shelbyKY) 
  } #105
  else if(input$selectcounty== "Simpson-KY"){
    race_simpsonKY <- subset.data.frame(race, NAME=="Simpson-KY")
    nodes_simpsonKY <- as.Node(race_simpsonKY) 
  } #106
  else if(input$selectcounty== "Spencer-KY"){
    race_spencerKY <- subset.data.frame(race, NAME=="Spencer-KY")
    nodes_spencerKY <- as.Node(race_spencerKY) 
  } #107
  else if(input$selectcounty== "Taylor-KY"){
    race_taylorKY <- subset.data.frame(race, NAME=="Taylor-KY")
    nodes_taylorKY <- as.Node(race_taylorKY) 
  } #108
  else if(input$selectcounty== "Todd-KY"){
    race_toddKY <- subset.data.frame(race, NAME=="Todd-KY")
    nodes_toddKY <- as.Node(race_toddKY) 
  } #109
  else if(input$selectcounty== "Trigg-KY"){
    race_triggKY <- subset.data.frame(race, NAME=="Trigg-KY")
    nodes_triggKY <- as.Node(race_triggKY) 
  } #110
  else if(input$selectcounty== "Trimble-KY"){
    race_trimbleKY <- subset.data.frame(race, NAME=="Trimble-KY")
    nodes_trimbleKY <- as.Node(race_trimbleKY) 
  } #111
  else if(input$selectcounty== "Union-KY"){
    race_unionKY <- subset.data.frame(race, NAME=="Union-KY")
    nodes_unionKY <- as.Node(race_unionKY) 
  } #112
  else if(input$selectcounty== "Warren-KY"){
    race_warrenKY <- subset.data.frame(race, NAME=="Warren-KY")
    nodes_warrenKY <- as.Node(race_warrenKY) 
  } #113
  else if(input$selectcounty== "Washington-KY"){
    race_washingtonKY <- subset.data.frame(race, NAME=="Washington-KY")
    nodes_washingtonKY <- as.Node(race_washingtonKY) 
  } #114
  else if(input$selectcounty== "Wayne-KY"){
    race_wayneKY <- subset.data.frame(race, NAME=="Wayne-KY")
    nodes_wayneKY <- as.Node(race_wayneKY) 
  } #115
  else if(input$selectcounty== "Webster-KY"){
    race_websterKY <- subset.data.frame(race, NAME=="Webster-KY")
    nodes_websterKY <- as.Node(race_websterKY) 
  } #116
  else if(input$selectcounty== "Whitley-KY"){
    race_whitleyKY <- subset.data.frame(race, NAME=="Whitley-KY")
    nodes_whitleyKY <- as.Node(race_whitleyKY) 
  } #117
  else if(input$selectcounty== "Wolfe-KY"){
    race_wolfeKY <- subset.data.frame(race, NAME=="Wolfe-KY")
    nodes_wolfeKY <- as.Node(race_wolfeKY) 
  } #118
  else if(input$selectcounty== "Woodford-KY"){
    race_woodfordKY <- subset.data.frame(race, NAME=="Woodford-KY")
    nodes_woodfordKY <- as.Node(race_woodfordKY) 
  } #119
######### LOUISIANA #####
  else if(input$selectcounty== "Acadia-LA"){
    race_acadiaLA <- subset.data.frame(race, NAME=="Acadia-LA")
    nodes_acadiaLA <- as.Node(race_acadiaLA) 
  } #1
  else if(input$selectcounty== "Allen-LA"){
    race_allenLA <- subset.data.frame(race, NAME=="Allen-LA")
    nodes_allenLA <- as.Node(race_allenLA) 
  } #2
  else if(input$selectcounty== "Ascension-LA"){
    race_AscensionLA <- subset.data.frame(race, NAME=="Ascension-LA")
    nodes_AscensionLA <- as.Node(race_AscensionLA) 
  } #3 
  else if(input$selectcounty== "Assumption-LA"){
    race_assumptionLA <- subset.data.frame(race, NAME=="Assumption-LA")
    nodes_assumptionLA <- as.Node(race_assumptionLA) 
  } #4
  else if(input$selectcounty== "Avoyelles-LA"){
    race_AvoyellesLA <- subset.data.frame(race, NAME=="Avoyelles-LA")
    nodes_AvoyellesLA <- as.Node(race_AvoyellesLA) 
  } #5
  else if(input$selectcounty== "Beauregard-LA"){
    race_BeauregardLA <- subset.data.frame(race, NAME=="Beauregard-LA")
    nodes_BeauregardLA <- as.Node(race_BeauregardLA) 
  } #6
  else if(input$selectcounty== "Bienville-LA"){
    race_BienvilleLA <- subset.data.frame(race, NAME=="Bienville-LA")
    nodes_BienvilleLA <- as.Node(race_BienvilleLA) 
  } #7
  else if(input$selectcounty== "Bossier-LA"){
    race_BossierLA <- subset.data.frame(race, NAME=="Bossier-LA")
    nodes_BossierLA <- as.Node(race_BossierLA) 
  } #8
  else if(input$selectcounty== "Caddo-LA"){
    race_caddoLA <- subset.data.frame(race, NAME=="Caddo-LA")
    nodes_caddoLA <- as.Node(race_caddoLA) 
  } #9
  else if(input$selectcounty== "Calcasieu-LA"){
    race_CalcasieuLA <- subset.data.frame(race, NAME=="Calcasieu-LA")
    nodes_CalcasieuLA <- as.Node(race_CalcasieuLA) 
  } #10 
  else if(input$selectcounty== "Caldwell-LA"){
    race_CaldwellLA <- subset.data.frame(race, NAME=="Caldwell-LA")
    nodes_CaldwellLA <- as.Node(race_CaldwellLA) 
  } #11
  else if(input$selectcounty== "Cameron-LA"){
    race_CameronLA <- subset.data.frame(race, NAME=="Cameron-LA")
    nodes_CameronLA <- as.Node(race_CameronLA) 
  } #12
  else if(input$selectcounty== "Catahoula-LA"){
    race_CatahoulaLA <- subset.data.frame(race, NAME=="Catahoula-LA")
    nodes_CatahoulaLA <- as.Node(race_CatahoulaLA) 
  } #13
  else if(input$selectcounty== "Claiborne-LA"){
    race_ClaiborneLA <- subset.data.frame(race, NAME=="Claiborne-LA")
    nodes_ClaiborneLA <- as.Node(race_ClaiborneLA) 
  } #14
  else if(input$selectcounty== "Concordia-LA"){
    race_ConcordiaLA <- subset.data.frame(race, NAME=="Concordia-LA")
    nodes_ConcordiaLA <- as.Node(race_ConcordiaLA) 
  } #15
  else if(input$selectcounty== "De Soto-LA"){
    race_DeSotoLA <- subset.data.frame(race, NAME=="De Soto-LA")
    nodes_DeSotoLA <- as.Node(race_DeSotoLA) 
  } #16
  else if(input$selectcounty== "East Baton Rouge-LA"){
    race_EastBatonRougeLA <- subset.data.frame(race, NAME=="East Baton Rouge-LA")
    nodes_EastBatonRougeLA <- as.Node(race_EastBatonRougeLA) 
  } #17 
  else if(input$selectcounty== "East Carroll-LA"){
    race_EastCarrollLA <- subset.data.frame(race, NAME=="East Carroll-LA")
    nodes_EastCarrollLA <- as.Node(race_EastCarrollLA) 
  } #18
  else if(input$selectcounty== "East Feliciana-LA"){
    race_EastFelicianaLA <- subset.data.frame(race, NAME=="East Feliciana-LA")
    nodes_EastFelicianaLA <- as.Node(race_EastFelicianaLA) 
  } #19
  else if(input$selectcounty== "Evangeline-LA"){
    race_EvangelineLA <- subset.data.frame(race, NAME=="Evangeline-LA")
    nodes_EvangelineLA <- as.Node(race_EvangelineLA) 
  } #20
  else if(input$selectcounty== "Franklin-LA"){
    race_FranklinLA <- subset.data.frame(race, NAME=="Franklin-LA")
    nodes_FranklinLA <- as.Node(race_FranklinLA) 
  } #21
  else if(input$selectcounty== "Grant-LA"){
    race_GrantLA <- subset.data.frame(race, NAME=="Grant-LA")
    nodes_GrantLA <- as.Node(race_GrantLA) 
  } #22
  else if(input$selectcounty== "Iberia-LA"){
    race_IberiaLA <- subset.data.frame(race, NAME=="Iberia-LA")
    nodes_IberiaLA <- as.Node(race_IberiaLA) 
  } #23
  else if(input$selectcounty== "Iberville-LA"){
    race_IbervilleLA <- subset.data.frame(race, NAME=="Iberville-LA")
    nodes_IbervilleLA <- as.Node(race_IbervilleLA) 
  } #24
  else if(input$selectcounty== "Jackson-LA"){
    race_JacksonLA <- subset.data.frame(race, NAME=="Jackson-LA")
    nodes_JacksonLA <- as.Node(race_JacksonLA) 
  } #25
  else if(input$selectcounty== "Jefferson-LA"){
    race_JeffersonLA <- subset.data.frame(race, NAME=="Jefferson-LA")
    nodes_JeffersonLA <- as.Node(race_JeffersonLA) 
  } #26
  else if(input$selectcounty== "Jefferson Davis-LA"){
    race_JeffersonDavisLA <- subset.data.frame(race, NAME=="Jefferson Davis-LA")
    nodes_JeffersonDavisLA <- as.Node(race_JeffersonDavisLA) 
  } #27 
  else if(input$selectcounty== "Lafayette-LA"){
    race_LafayetteLA <- subset.data.frame(race, NAME=="Lafayette-LA")
    nodes_LafayetteLA <- as.Node(race_LafayetteLA) 
  } #28
  else if(input$selectcounty== "Lafourch-LA"){
    race_LafourchLA <- subset.data.frame(race, NAME=="Lafourch-LA")
    nodes_LafourchLA <- as.Node(race_LafourchLA) 
  } #29
  else if(input$selectcounty== "LaSalle-LA"){
    race_LaSalleLA <- subset.data.frame(race, NAME=="LaSalle-LA")
    nodes_LaSalleLA <- as.Node(race_LaSalleLA) 
  } #30
  else if(input$selectcounty== "Lincoln-LA"){
    race_LincolnLA <- subset.data.frame(race, NAME=="Lincoln-LA")
    nodes_LincolnLA <- as.Node(race_LincolnLA) 
  } #31
  else if(input$selectcounty== "Livingston-LA"){
    race_LivingstonLA <- subset.data.frame(race, NAME=="Livingston-LA")
    nodes_LivingstonLA <- as.Node(race_LivingstonLA) 
  } #32
  else if(input$selectcounty== "Madison-LA"){
    race_MadisonLA <- subset.data.frame(race, NAME=="Madison-LA")
    nodes_MadisonLA <- as.Node(race_MadisonLA) 
  } #33
  else if(input$selectcounty== "Morehouse-LA"){
    race_MorehouseLA <- subset.data.frame(race, NAME=="Morehouse-LA")
    nodes_MorehouseLA <- as.Node(race_MorehouseLA) 
  } #34
  else if(input$selectcounty== "Natchitoches-LA"){
    race_NatchitochesLA <- subset.data.frame(race, NAME=="Natchitoches-LA")
    nodes_NatchitochesLA <- as.Node(race_NatchitochesLA) 
  } #35
  else if(input$selectcounty== "Orleans-LA"){
    race_OrleansLA <- subset.data.frame(race, NAME=="Orleans-LA")
    nodes_OrleansLA <- as.Node(race_OrleansLA) 
  } #36
  else if(input$selectcounty== "Ouachita-LA"){
    race_OuachitaLA <- subset.data.frame(race, NAME=="Ouachita-LA")
    nodes_OuachitaLA <- as.Node(race_OuachitaLA) 
  } #37
  else if(input$selectcounty== "Plaquemines-LA"){
    race_PlaqueminesLA <- subset.data.frame(race, NAME=="Plaquemines-LA")
    nodes_PlaqueminesLA <- as.Node(race_PlaqueminesLA) 
  } #38
  else if(input$selectcounty== "Pointe Coupee-LA"){
    race_PointeCoupeeLA <- subset.data.frame(race, NAME=="Pointe Coupee-LA")
    nodes_PointeCoupeeLA <- as.Node(race_PointeCoupeeLA) 
  } #39
  else if(input$selectcounty== "Rapides-LA"){
    race_RapidesLA <- subset.data.frame(race, NAME=="Rapides-LA")
    nodes_RapidesLA <- as.Node(race_RapidesLA) 
  } #40
  else if(input$selectcounty== "Red River-LA"){
    race_RedRiverLA <- subset.data.frame(race, NAME=="Red River-LA")
    nodes_RedRiverLA <- as.Node(race_RedRiverLA) 
  } #41
  else if(input$selectcounty== "Richland-LA"){
    race_RichlandLA <- subset.data.frame(race, NAME=="Richland-LA")
    nodes_RichlandLA <- as.Node(race_RichlandLA) 
  } #42
  else if(input$selectcounty== "Sabine-LA"){
    race_SabineLA <- subset.data.frame(race, NAME=="Sabine-LA")
    nodes_SabineLA <- as.Node(race_SabineLA) 
  }  #43
  else if(input$selectcounty== "St. Bernard-LA"){
    race_StBernardLA <- subset.data.frame(race, NAME=="St. Bernard-LA")
    nodes_StBernardLA <- as.Node(race_StBernardLA) 
  } #44
  else if(input$selectcounty== "St. Charles-LA"){
    race_StCharlesLA <- subset.data.frame(race, NAME=="St. Charles-LA")
    nodes_StCharlesLA <- as.Node(race_StCharlesLA) 
  } #45
  else if(input$selectcounty== "St. Helena-LA"){
    race_StHelenaLA <- subset.data.frame(race, NAME=="St. Helena-LA")
    nodes_StHelenaLA <- as.Node(race_StHelenaLA) 
  } #46
  else if(input$selectcounty== "St. James-LA"){
    race_StJamesLA <- subset.data.frame(race, NAME=="St. James-LA")
    nodes_StJamesLA <- as.Node(race_StJamesLA) 
  } #47
  else if(input$selectcounty== "St. John the Baptist-LA"){
    race_StJohntheBaptistLA <- subset.data.frame(race, NAME=="St. John the Baptist-LA")
    nodes_StJohntheBaptistLA <- as.Node(race_StJohntheBaptistLA) 
  } #48 
  else if(input$selectcounty== "St. Landry-LA"){
    race_StLandryLA <- subset.data.frame(race, NAME=="St. Landry-LA")
    nodes_StLandryLA <- as.Node(race_StLandryLA) 
  } #49
  else if(input$selectcounty== "St. Martin-LA"){
    race_StmartinLA <- subset.data.frame(race, NAME=="St. Martin-LA")
    nodes_StmartinLA <- as.Node(race_stmartinLA) 
  } #######63
  else if(input$selectcounty== "St. Mary-LA"){
    race_StmaryLA <- subset.data.frame(race, NAME=="St. Mary-LA")
    nodes_StmaryLA <- as.Node(race_StmaryLA) 
  } #########64
  else if(input$selectcounty== "St. Tammany-LA"){
    race_StTammanyLA <- subset.data.frame(race, NAME=="St. Tammany-LA")
    nodes_StTammanyLA <- as.Node(race_StTammanyLA) 
  } #50
  else if(input$selectcounty== "Tangipahoa-LA"){
    race_TangipahoaLA <- subset.data.frame(race, NAME=="Tangipahoa-LA")
    nodes_TangipahoaLA <- as.Node(race_TangipahoaLA) 
  } #51
  else if(input$selectcounty== "Tensas-LA"){
    race_TensasLA <- subset.data.frame(race, NAME=="Tensas-LA")
    nodes_TensasLA <- as.Node(race_TensasLA) 
  } #52
  else if(input$selectcounty== "Terrebonne-LA"){
    race_TerrebonneLA <- subset.data.frame(race, NAME=="Terrebonne-LA")
    nodes_TerrebonneLA <- as.Node(race_TerrebonneLA) 
  } #53 
  else if(input$selectcounty== "Union-LA"){
    race_UnionLA <- subset.data.frame(race, NAME=="Union-LA")
    nodes_UnionLA <- as.Node(race_UnionLA) 
  } #54
  else if(input$selectcounty== "Vermilion-LA"){
    race_VermilionLA <- subset.data.frame(race, NAME=="Vermilion-LA")
    nodes_VermilionLA <- as.Node(race_VermilionLA) 
  } #55 
  else if(input$selectcounty== "Vernon-LA"){
    race_VernonLA <- subset.data.frame(race, NAME=="Vernon-LA")
    nodes_VernonLA <- as.Node(race_VernonLA) 
  } #56
  else if(input$selectcounty== "Washington-LA"){
    race_WashingtonLA <- subset.data.frame(race, NAME=="Washington-LA")
    nodes_WashingtonLA <- as.Node(race_WashingtonLA) 
  } #57 
  else if(input$selectcounty== "Webster-LA"){
    race_WebsterLA <- subset.data.frame(race, NAME=="Webster-LA")
    nodes_WebsterLA <- as.Node(race_WebsterLA) 
  } #58
  else if(input$selectcounty== "West Baton Rouge-LA"){
    race_WestBatonRougeLA <- subset.data.frame(race, NAME=="West Baton Rouge-LA")
    nodes_WestBatonRougeLA <- as.Node(race_WestBatonRougeLA) 
  } #59 
  else if(input$selectcounty== "West Carroll-LA"){
    race_WestCarrollLA <- subset.data.frame(race, NAME=="West Carroll-LA")
    nodes_WestCarrollLA <- as.Node(race_WestCarrollLA) 
  } #60
  else if(input$selectcounty== "West Feliciana-LA"){
    race_WestFelicianaLA <- subset.data.frame(race, NAME=="West Feliciana-LA")
    nodes_WestFelicianaLA <- as.Node(race_WestFelicianaLA) 
  } #61 
  else if(input$selectcounty== "Winn-LA"){
    race_WinnLA <- subset.data.frame(race, NAME=="Winn-LA")
    nodes_WinnLA <- as.Node(race_WinnLA) 
  } #62

######### MARYLAND ######
  else if(input$selectcounty== "Allegany-MD"){
    race_AlleganyMD <- subset.data.frame(race, NAME=="Allegany-MD")
    nodes_AlleganyMD <- as.Node(race_AlleganyMD) 
  } #1
  else if(input$selectcounty== "Anne Arundel-MD"){
    race_AnneArundelMD <- subset.data.frame(race, NAME=="Anne Arundel-MD")
    nodes_AnneArundelMD <- as.Node(race_AnneArundelMD) 
  } #2
  else if(input$selectcounty== "Baltimore-MD"){
    race_BaltimoreMD <- subset.data.frame(race, NAME=="Baltimore-MD")
    nodes_BaltimoreMD <- as.Node(race_BaltimoreMD) 
  } #3
  else if(input$selectcounty== "Calvert-MD"){
    race_CalvertMD <- subset.data.frame(race, NAME=="Calvert-MD")
    nodes_CalvertMD <- as.Node(race_CalvertMD) 
  } #4
  else if(input$selectcounty== "Caroline-MD"){
    race_CarolineMD <- subset.data.frame(race, NAME=="Caroline-MD")
    nodes_CarolineMD <- as.Node(race_CarolineMD) 
  } #5
  else if(input$selectcounty== "Carroll-MD"){
    race_CarrollMD <- subset.data.frame(race, NAME=="Carroll-MD")
    nodes_CarrollMD <- as.Node(race_CarrollMD) 
  } #6
  else if(input$selectcounty== "Cecil-MD"){
    race_CecilMD <- subset.data.frame(race, NAME=="Cecil-MD")
    nodes_CecilMD <- as.Node(race_CecilMD) 
  } #7
  else if(input$selectcounty== "Charles-MD"){
    race_CharlesMD <- subset.data.frame(race, NAME=="Charles-MD")
    nodes_CharlesMD <- as.Node(race_CharlesMD) 
  } #8
  else if(input$selectcounty== "Dorchester-MD"){
    race_DorchesterMD <- subset.data.frame(race, NAME=="Dorchester-MD")
    nodes_DorchesterMD <- as.Node(race_DorchesterMD) 
  } #9
  else if(input$selectcounty== "Frederick-MD"){
    race_FrederickMD <- subset.data.frame(race, NAME=="Frederick-MD")
    nodes_FrederickMD <- as.Node(race_FrederickMD) 
  } #10
  else if(input$selectcounty== "Garrett-MD"){
    race_GarrettMD <- subset.data.frame(race, NAME=="Garrett-MD")
    nodes_GarrettMD <- as.Node(race_GarrettMD) 
  } #11
  else if(input$selectcounty== "Harford-MD"){
    race_HarfordMD <- subset.data.frame(race, NAME=="Harford-MD")
    nodes_HarfordMD <- as.Node(race_HarfordMD) 
  } #12
  else if(input$selectcounty== "Howard-MD"){
    race_HowardMD <- subset.data.frame(race, NAME=="Howard-MD")
    nodes_HowardMD <- as.Node(race_HowardMD) 
  } #13
  else if(input$selectcounty== "Kent-MD"){
    race_KentMD <- subset.data.frame(race, NAME=="Kent-MD")
    nodes_KentMD <- as.Node(race_KentMD) 
  } #14
  else if(input$selectcounty== "Montgomery-MD"){
    race_MontgomeryMD <- subset.data.frame(race, NAME=="Montgomery-MD")
    nodes_MontgomeryMD <- as.Node(race_MontgomeryMD) 
  } #15
  else if(input$selectcounty== "Prince George's-MD"){
    race_PrinceGeorgesMD <- subset.data.frame(race, NAME=="Prince George's-MD")
    nodes_PrinceGeorgesMD <- as.Node(race_PrinceGeorgesMD) 
  } #16
  else if(input$selectcounty== "Queen Anne's-MD"){
    race_QueenAnnesMD <- subset.data.frame(race, NAME=="Queen Anne's-MD")
    nodes_QueenAnnesMD <- as.Node(race_QueenAnnesMD) 
  } #17
  else if(input$selectcounty== "Somerset-MD"){
    race_SomersetMD <- subset.data.frame(race, NAME=="Somerset-MD")
    nodes_SomersetMD <- as.Node(race_SomersetMD) 
  } #18
  else if(input$selectcounty== "St. Mary's-MD"){
    race_stmaryMD <- subset.data.frame(race, NAME=="St. Mary's-MD")
    nodes_stmaryMD <- as.Node(race_stmaryMD) 
  } #19
  else if(input$selectcounty== "Talbot-MD"){
    race_TalbotMD <- subset.data.frame(race, NAME=="Talbot-MD")
    nodes_TalbotMD <- as.Node(race_TalbotMD) 
  } #20
  else if(input$selectcounty== "Washington-MD"){
    race_WashingtonMD <- subset.data.frame(race, NAME=="Washington-MD")
    nodes_WashingtonMD <- as.Node(race_WashingtonMD) 
  } #21
  else if(input$selectcounty== "Wicomico-MD"){
    race_WicomicoMD <- subset.data.frame(race, NAME=="Wicomico-MD")
    nodes_WicomicoMD <- as.Node(race_WicomicoMD) 
  } #22
  else if(input$selectcounty== "Allegany-MD"){
    race_AlleganyMD <- subset.data.frame(race, NAME=="Allegany-MD")
    nodes_AlleganyMD <- as.Node(race_AlleganyMD) 
  } #23
  else if(input$selectcounty== "Worcester-MD"){
    race_WorcesterMD <- subset.data.frame(race, NAME=="Worcester-MD")
    nodes_WorcesterMD <- as.Node(race_WorcesterMD) 
  } #24
  
######### MAINE ######
  else if(input$selectcounty== "Androscoggin-ME"){
    race_AndroscogginME <- subset.data.frame(race, NAME=="Androscoggin-ME")
    nodes_AndroscogginME <- as.Node(race_AndroscogginME) 
  } #1
  else if(input$selectcounty== "Aroostook-ME"){
    race_AroostookME <- subset.data.frame(race, NAME=="Aroostook-ME")
    nodes_AroostookME <- as.Node(race_AroostookME) 
  } #2
  else if(input$selectcounty== "Cumberland-ME"){
    race_cumberlandME <- subset.data.frame(race, NAME=="Cumberland-ME")
    nodes_cumberlandME <- as.Node(race_cumberlandME) 
  } #######16
  else if(input$selectcounty== "Franklin-ME"){
    race_FranklinME <- subset.data.frame(race, NAME=="Franklin-ME")
    nodes_FranklinME <- as.Node(race_FranklinME) 
  } #3
  else if(input$selectcounty== "Hancock-ME"){
    race_HancockME <- subset.data.frame(race, NAME=="Hancock-ME")
    nodes_HancockME <- as.Node(race_HancockME) 
  } #4
  else if(input$selectcounty== "Kennebec-ME"){
    race_KennebecME <- subset.data.frame(race, NAME=="Kennebec-ME")
    nodes_KennebecME <- as.Node(race_KennebecME) 
  } #5
  else if(input$selectcounty== "Knox-ME"){
    race_KnoxME <- subset.data.frame(race, NAME=="Knox-ME")
    nodes_KnoxME <- as.Node(race_KnoxME) 
  } #6
  else if(input$selectcounty== "Lincoln-ME"){
    race_LincolnME <- subset.data.frame(race, NAME=="Lincoln-ME")
    nodes_LincolnME <- as.Node(race_LincolnME) 
  } #7
  else if(input$selectcounty== "Oxford-ME"){
    race_OxfordME <- subset.data.frame(race, NAME=="Oxford-ME")
    nodes_OxfordME <- as.Node(race_OxfordME) 
  } #8
  else if(input$selectcounty== "Penobscot-ME"){
    race_PenobscotME <- subset.data.frame(race, NAME=="Penobscot-ME")
    nodes_PenobscotME <- as.Node(race_PenobscotME) 
  } #9
  else if(input$selectcounty== "Piscataquis-ME"){
    race_PiscataquisME <- subset.data.frame(race, NAME=="Piscataquis-ME")
    nodes_PiscataquisME <- as.Node(race_PiscataquisME) 
  } #10
  else if(input$selectcounty== "Sagadahoc-ME"){
    race_SagadahocME <- subset.data.frame(race, NAME=="Sagadahoc-ME")
    nodes_SagadahocME <- as.Node(race_SagadahocME) 
  } #11
  else if(input$selectcounty== "Somerset-ME"){
    race_SomersetME <- subset.data.frame(race, NAME=="Somerset-ME")
    nodes_SomersetME <- as.Node(race_SomersetME) 
  } #12
  else if(input$selectcounty== "Waldo-ME"){
    race_WaldoME <- subset.data.frame(race, NAME=="Waldo-ME")
    nodes_WaldoME <- as.Node(race_WaldoME) 
  } #13
  else if(input$selectcounty== "Washington-ME"){
    race_WashingtonME <- subset.data.frame(race, NAME=="Washington-ME")
    nodes_WashingtonME <- as.Node(race_WashingtonME) 
  } #14
  else if(input$selectcounty== "York-ME"){
    race_YorkME <- subset.data.frame(race, NAME=="York-ME")
    nodes_YorkME <- as.Node(race_YorkME) 
  } #15

######### MICHIGAN #####
  else if(input$selectcounty== "Alcona-MI"){
    race_AlconaMI <- subset.data.frame(race, NAME=="Alcona-MI")
    nodes_AlconaMI <- as.Node(race_AlconaMI) 
  } #1
  else if(input$selectcounty== "Alger-MI"){
    race_AlgerMI <- subset.data.frame(race, NAME=="Alger-MI")
    nodes_AlgerMI <- as.Node(race_AlgerMI) 
  } #2
  else if(input$selectcounty== "Allegan-MI"){
    race_AlleganMI <- subset.data.frame(race, NAME=="Allegan-MI")
    nodes_AlleganMI <- as.Node(race_AlleganMI) 
  } #3
  else if(input$selectcounty== "Alpena-MI"){
    race_AlpenaMI <- subset.data.frame(race, NAME=="Alpena-MI")
    nodes_AlpenaMI <- as.Node(race_AlpenaMI) 
  } #4
  else if(input$selectcounty== "Antrim-MI"){
    race_AntrimMI <- subset.data.frame(race, NAME=="Antrim-MI")
    nodes_AntrimMI <- as.Node(race_AntrimMI) 
  } #5
  else if(input$selectcounty== "Arenac-MI"){
    race_ArenacMI <- subset.data.frame(race, NAME=="Arenac-MI")
    nodes_ArenacMI <- as.Node(race_ArenacMI) 
  } #6
  else if(input$selectcounty== "Baraga-MI"){
    race_BaragaMI <- subset.data.frame(race, NAME=="Baraga-MI")
    nodes_BaragaMI <- as.Node(race_BaragaMI) 
  } #7
  else if(input$selectcounty== "Barry-MI"){
    race_BarryMI <- subset.data.frame(race, NAME=="Barry-MI")
    nodes_BarryMI <- as.Node(race_BarryMI) 
  } #8
  else if(input$selectcounty== "Bay-MI"){
    race_BayMI <- subset.data.frame(race, NAME=="Bay-MI")
    nodes_BayMI <- as.Node(race_BayMI) 
  } #9
  else if(input$selectcounty== "Benzie-MI"){
    race_BenzieMI <- subset.data.frame(race, NAME=="Benzie-MI")
    nodes_BenzieMI <- as.Node(race_BenzieMI) 
  } #10
  else if(input$selectcounty== "Berrien-MI"){
    race_BerrienMI <- subset.data.frame(race, NAME=="Berrien-MI")
    nodes_BerrienMI <- as.Node(race_BerrienMI) 
  } #11
  else if(input$selectcounty== "Branch-MI"){
    race_BranchMI <- subset.data.frame(race, NAME=="Branch-MI")
    nodes_BranchMI <- as.Node(race_BranchMI) 
  } #12
  else if(input$selectcounty== "Calhoun-MI"){
    race_CalhounMI <- subset.data.frame(race, NAME=="Calhoun-MI")
    nodes_CalhounMI <- as.Node(race_CalhounMI) 
  } #13
  else if(input$selectcounty== "Cass-MI"){
    race_CassMI <- subset.data.frame(race, NAME=="Cass-MI")
    nodes_CassMI <- as.Node(race_CassMI) 
  } #14
  else if(input$selectcounty== "Charlevoix-MI"){
    race_CharlevoixMI <- subset.data.frame(race, NAME=="Charlevoix-MI")
    nodes_CharlevoixMI <- as.Node(race_CharlevoixMI) 
  } #15
  else if(input$selectcounty== "Cheboygan-MI"){
    race_CheboyganMI <- subset.data.frame(race, NAME=="Cheboygan-MI")
    nodes_CheboyganMI <- as.Node(race_CheboyganMI) 
  } #16
  else if(input$selectcounty== "Chippewa-MI"){
    race_ChippewaMI <- subset.data.frame(race, NAME=="Chippewa-MI")
    nodes_ChippewaMI <- as.Node(race_ChippewaMI) 
  } #17
  else if(input$selectcounty== "Clare-MI"){
    race_ClareMI <- subset.data.frame(race, NAME=="Clare-MI")
    nodes_ClareMI <- as.Node(race_ClareMI) 
  } #18
  else if(input$selectcounty== "Clinton-MI"){
    race_ClintonMI <- subset.data.frame(race, NAME=="Clinton-MI")
    nodes_ClintonMI <- as.Node(race_ClintonMI) 
  } #19
  else if(input$selectcounty== "Crawford-MI"){
    race_CrawfordMI <- subset.data.frame(race, NAME=="Crawford-MI")
    nodes_CrawfordMI <- as.Node(race_CrawfordMI) 
  } #20
  else if(input$selectcounty== "Delta-MI"){
    race_DeltaMI <- subset.data.frame(race, NAME=="Delta-MI")
    nodes_DeltaMI <- as.Node(race_DeltaMI) 
  } #21
  else if(input$selectcounty== "Dickinson-MI"){
    race_DickinsonMI <- subset.data.frame(race, NAME=="Dickinson-MI")
    nodes_DickinsonMI <- as.Node(race_DickinsonMI) 
  } #22
  else if(input$selectcounty== "Eaton-MI"){
    race_EatonMI <- subset.data.frame(race, NAME=="Eaton-MI")
    nodes_EatonMI <- as.Node(race_EatonMI) 
  } #23
  else if(input$selectcounty== "Emmet-MI"){
    race_EmmetMI <- subset.data.frame(race, NAME=="Emmet-MI")
    nodes_EmmetMI <- as.Node(race_EmmetMI) 
  } #24
  else if(input$selectcounty== "Genesee-MI"){
    race_GeneseeMI <- subset.data.frame(race, NAME=="Genesee-MI")
    nodes_GeneseeMI <- as.Node(race_GeneseeMI) 
  } #25
  else if(input$selectcounty== "Gladwin-MI"){
    race_GladwinMI <- subset.data.frame(race, NAME=="Gladwin-MI")
    nodes_GladwinMI <- as.Node(race_GladwinMI) 
  } #26
  else if(input$selectcounty== "Gogebic-MI"){
    race_GogebicMI <- subset.data.frame(race, NAME=="Gogebic-MI")
    nodes_GogebicMI <- as.Node(race_GogebicMI) 
  } #27
  else if(input$selectcounty== "Grand Traverse-MI"){
    race_GrandTraverseMI <- subset.data.frame(race, NAME=="Grand Traverse-MI")
    nodes_GrandTraverseMI <- as.Node(race_GrandTraverseMI) 
  } #28
  else if(input$selectcounty== "Gratiot-MI"){
    race_GratiotMI <- subset.data.frame(race, NAME=="Gratiot-MI")
    nodes_GratiotMI <- as.Node(race_GratiotMI) 
  } #29
  else if(input$selectcounty== "Hillsdale-MI"){
    race_HillsdaleMI <- subset.data.frame(race, NAME=="Hillsdale-MI")
    nodes_HillsdaleMI <- as.Node(race_HillsdaleMI) 
  } #30
  else if(input$selectcounty== "Houghton-MI"){
    race_HoughtonMI <- subset.data.frame(race, NAME=="Houghton-MI")
    nodes_HoughtonMI <- as.Node(race_HoughtonMI) 
  } #31
  else if(input$selectcounty== "Huron-MI"){
    race_HuronMI <- subset.data.frame(race, NAME=="Huron-MI")
    nodes_HuronMI <- as.Node(race_HuronMI) 
  } #32
  else if(input$selectcounty== "Ingham-MI"){
    race_InghamMI <- subset.data.frame(race, NAME=="Ingham-MI")
    nodes_InghamMI <- as.Node(race_InghamMI) 
  } #33
  else if(input$selectcounty== "Ionia-MI"){
    race_IoniaMI <- subset.data.frame(race, NAME=="Ionia-MI")
    nodes_IoniaMI <- as.Node(race_IoniaMI) 
  } #34
  else if(input$selectcounty== "Iosco-MI"){
    race_IoscoMI <- subset.data.frame(race, NAME=="Iosco-MI")
    nodes_IoscoMI <- as.Node(race_IoscoMI) 
  } #35
  else if(input$selectcounty== "Iron-MI"){
    race_IronMI <- subset.data.frame(race, NAME=="Iron-MI")
    nodes_IronMI <- as.Node(race_IronMI) 
  } #36
  else if(input$selectcounty== "Isabella-MI"){
    race_IsabellaMI <- subset.data.frame(race, NAME=="Isabella-MI")
    nodes_IsabellaMI <- as.Node(race_IsabellaMI) 
  } #37
  else if(input$selectcounty== "Jackson-MI"){
    race_JacksonMI <- subset.data.frame(race, NAME=="Jackson-MI")
    nodes_JacksonMI <- as.Node(race_JacksonMI) 
  } #38
  else if(input$selectcounty== "Kalamazoo-MI"){
    race_KalamazooMI <- subset.data.frame(race, NAME=="Kalamazoo-MI")
    nodes_KalamazooMI <- as.Node(race_KalamazooMI) 
  } #39
  else if(input$selectcounty== "Kalkaska-MI"){
    race_KalkaskaMI <- subset.data.frame(race, NAME=="Kalkaska-MI")
    nodes_KalkaskaMI <- as.Node(race_KalkaskaMI) 
  } #40
  else if(input$selectcounty== "Kent-MI"){
    race_KentMI <- subset.data.frame(race, NAME=="Kent-MI")
    nodes_KentMI <- as.Node(race_KentMI) 
  } #41
  else if(input$selectcounty== "Keweenaw-MI"){
    race_KeweenawMI <- subset.data.frame(race, NAME=="Keweenaw-MI")
    nodes_KeweenawMI <- as.Node(race_KeweenawMI) 
  } #42
  else if(input$selectcounty== "Lake-MI"){
    race_LakeMI <- subset.data.frame(race, NAME=="Lake-MI")
    nodes_LakeMI <- as.Node(race_LakeMI) 
  } #43
  else if(input$selectcounty== "Lapeer-MI"){
    race_LapeerMI <- subset.data.frame(race, NAME=="Lapeer-MI")
    nodes_LapeerMI <- as.Node(race_LapeerMI) 
  } #44
  else if(input$selectcounty== "Leelanau-MI"){
    race_LeelanauMI <- subset.data.frame(race, NAME=="Leelanau-MI")
    nodes_LeelanauMI <- as.Node(race_LeelanauMI) 
  } #45
  else if(input$selectcounty== "Livingston-MI"){
    race_LivingstonMI <- subset.data.frame(race, NAME=="Livingston-MI")
    nodes_LivingstonMI <- as.Node(race_LivingstonMI) 
  } ########83
  else if(input$selectcounty== "Lenawee-MI"){
    race_LenaweeMI <- subset.data.frame(race, NAME=="Lenawee-MI")
    nodes_LenaweeMI <- as.Node(race_LenaweeMI) 
  } #46
  else if(input$selectcounty== "Luce-MI"){
    race_LuceMI <- subset.data.frame(race, NAME=="Luce-MI")
    nodes_LuceMI <- as.Node(race_LuceMI) 
  } #47
  else if(input$selectcounty== "Mackinac-MI"){
    race_MackinacMI <- subset.data.frame(race, NAME=="Mackinac-MI")
    nodes_MackinacMI <- as.Node(race_MackinacMI) 
  } #48
  else if(input$selectcounty== "Macomb-MI"){
    race_MacombMI <- subset.data.frame(race, NAME=="Macomb-MI")
    nodes_MacombMI <- as.Node(race_MacombMI) 
  } #49
  else if(input$selectcounty== "Manistee-MI"){
    race_ManisteeMI <- subset.data.frame(race, NAME=="Manistee-MI")
    nodes_ManisteeMI <- as.Node(race_ManisteeMI) 
  } #50
  else if(input$selectcounty== "Marquette-MI"){
    race_MarquetteMI <- subset.data.frame(race, NAME=="Marquette-MI")
    nodes_MarquetteMI <- as.Node(race_MarquetteMI) 
  } #51
  else if(input$selectcounty== "Mason-MI"){
    race_MasonMI <- subset.data.frame(race, NAME=="Mason-MI")
    nodes_MasonMI <- as.Node(race_MasonMI) 
  } #52
  else if(input$selectcounty== "Mecost-MI"){
    race_MecostMI <- subset.data.frame(race, NAME=="Mecost-MI")
    nodes_MecostMI <- as.Node(race_MecostMI) 
  } #53
  else if(input$selectcounty== "Menominee-MI"){
    race_MenomineeMI <- subset.data.frame(race, NAME=="Menominee-MI")
    nodes_MenomineeMI <- as.Node(race_MenomineeMI) 
  } #54
  else if(input$selectcounty== "Midland-MI"){
    race_MidlandMI <- subset.data.frame(race, NAME=="Midland-MI")
    nodes_MidlandMI <- as.Node(race_MidlandMI) 
  } #55
  else if(input$selectcounty== "Missaukee-MI"){
    race_MissaukeeMI <- subset.data.frame(race, NAME=="Missaukee-MI")
    nodes_MissaukeeMI <- as.Node(race_MissaukeeMI) 
  } #56
  else if(input$selectcounty== "Monroe-MI"){
    race_MonroeMI <- subset.data.frame(race, NAME=="Monroe-MI")
    nodes_MonroeMI <- as.Node(race_MonroeMI) 
  } #57
  else if(input$selectcounty== "Montcalm-MI"){
    race_MontcalmMI <- subset.data.frame(race, NAME=="Montcalm-MI")
    nodes_MontcalmMI <- as.Node(race_MontcalmMI) 
  } #58
  else if(input$selectcounty== "Montmorency-MI"){
    race_MontmorencyMI <- subset.data.frame(race, NAME=="Montmorency-MI")
    nodes_MontmorencyMI <- as.Node(race_MontmorencyMI) 
  } #59
  else if(input$selectcounty== "Muskegon-MI"){
    race_MuskegonMI <- subset.data.frame(race, NAME=="Muskegon-MI")
    nodes_MuskegonMI <- as.Node(race_MuskegonMI) 
  } #60
  else if(input$selectcounty== "Newaygo-MI"){
    race_NewaygoMI <- subset.data.frame(race, NAME=="Newaygo-MI")
    nodes_NewaygoMI <- as.Node(race_NewaygoMI) 
  } #61
  else if(input$selectcounty== "Presque Isle-MI"){
    race_PresqueIsleMI <- subset.data.frame(race, NAME=="Presque Isle-MI")
    nodes_PresqueIsleMI <- as.Node(race_PresqueIsleMI) 
  } #62
  else if(input$selectcounty== "Oakland-MI"){
    race_OaklandMI <- subset.data.frame(race, NAME=="Oakland-MI")
    nodes_OaklandMI <- as.Node(race_OaklandMI) 
  } #63
  else if(input$selectcounty== "Oceana-MI"){
    race_OceanaMI <- subset.data.frame(race, NAME=="Oceana-MI")
    nodes_OceanaMI <- as.Node(race_OceanaMI) 
  } #64
  else if(input$selectcounty== "Ogemaw-MI"){
    race_OgemawMI <- subset.data.frame(race, NAME=="Ogemaw-MI")
    nodes_OgemawMI <- as.Node(race_OgemawMI) 
  } #65
  else if(input$selectcounty== "Ontonagon-MI"){
    race_OntonagonMI <- subset.data.frame(race, NAME=="Ontonagon-MI")
    nodes_OntonagonMI <- as.Node(race_OntonagonMI) 
  } #66
  else if(input$selectcounty== "Osceola-MI"){
    race_OsceolaMI <- subset.data.frame(race, NAME=="Osceola-MI")
    nodes_OsceolaMI <- as.Node(race_OsceolaMI) 
  } #67
  else if(input$selectcounty== "Oscoda-MI"){
    race_OscodaMI <- subset.data.frame(race, NAME=="Oscoda-MI")
    nodes_OscodaMI <- as.Node(race_OscodaMI) 
  } #68
  else if(input$selectcounty== "Otsego-MI"){
    race_OtsegoMI <- subset.data.frame(race, NAME=="Otsego-MI")
    nodes_OtsegoMI <- as.Node(race_OtsegoMI) 
  } #69
  else if(input$selectcounty== "Ottawa-MI"){
    race_OttawaMI <- subset.data.frame(race, NAME=="Ottawa-MI")
    nodes_OttawaMI <- as.Node(race_OttawaMI) 
  } #70
  else if(input$selectcounty== "Roscommon-MI"){
    race_RoscommonMI <- subset.data.frame(race, NAME=="Roscommon-MI")
    nodes_RoscommonMI <- as.Node(race_RoscommonMI) 
  } #71
  else if(input$selectcounty== "Saginaw-MI"){
    race_SaginawMI <- subset.data.frame(race, NAME=="Saginaw-MI")
    nodes_SaginawMI <- as.Node(race_SaginawMI) 
  } #72
  else if(input$selectcounty== "Sanilac-MI"){
    race_SanilacMI <- subset.data.frame(race, NAME=="Sanilac-MI")
    nodes_SanilacMI <- as.Node(race_SanilacMI) 
  } #73
  else if(input$selectcounty== "Schoolcraft-MI"){
    race_SchoolcraftMI <- subset.data.frame(race, NAME=="Schoolcraft-MI")
    nodes_SchoolcraftMI <- as.Node(race_SchoolcraftMI) 
  } #74
  else if(input$selectcounty== "Shiawassee--MI"){
    race_Shiawassee-MI <- subset.data.frame(race, NAME=="Shiawassee--MI")
    nodes_Shiawassee-MI <- as.Node(race_Shiawassee-MI) 
  } #75
  else if(input$selectcounty== "St. Clair-MI"){
    race_StClairMI <- subset.data.frame(race, NAME=="St. Clair-MI")
    nodes_StClairMI <- as.Node(race_StClairMI) 
  } #76
  else if(input$selectcounty== "St. Joseph-MI"){
    race_StJosephMI <- subset.data.frame(race, NAME=="St. Joseph-MI")
    nodes_StJosephMI <- as.Node(race_StJosephMI) 
  } #77
  else if(input$selectcounty== "Tuscola-MI"){
    race_TuscolaMI <- subset.data.frame(race, NAME=="Tuscola-MI")
    nodes_TuscolaMI <- as.Node(race_TuscolaMI) 
  } #78
  else if(input$selectcounty== "Van Buren-MI"){
    race_VanBurenMI <- subset.data.frame(race, NAME=="Van Buren-MI")
    nodes_VanBurenMI <- as.Node(race_VanBurenMI) 
  } #79
  else if(input$selectcounty== "Washtenaw-MI"){
    race_WashtenawMI <- subset.data.frame(race, NAME=="Washtenaw-MI")
    nodes_WashtenawMI <- as.Node(race_WashtenawMI) 
  } #80
  else if(input$selectcounty== "Wayne-MI"){
    race_WayneMI <- subset.data.frame(race, NAME=="Wayne-MI")
    nodes_WayneMI <- as.Node(race_WayneMI) 
  } #81
  else if(input$selectcounty== "Wexford-MI"){
    race_WexfordMI <- subset.data.frame(race, NAME=="Wexford-MI")
    nodes_WexfordMI <- as.Node(race_WexfordMI) 
  } #82
  
######### MINNESOTA #####  
  else if(input$selectcounty== "Aitkin-MN"){
    race_AitkinMN <- subset.data.frame(race, NAME=="Aitkin-MN")
    nodes_AitkinMN <- as.Node(race_AitkinMN) 
  } #1
  else if(input$selectcounty== "Anoka-MN"){
    race_AnokaMN <- subset.data.frame(race, NAME=="Anoka-MN")
    nodes_AnokaMN <- as.Node(race_AnokaMN) 
  } #2
  else if(input$selectcounty== "Becker-MN"){
    race_BeckerMN <- subset.data.frame(race, NAME=="Becker-MN")
    nodes_BeckerMN <- as.Node(race_BeckerMN) 
  } #3
  else if(input$selectcounty== "Beltrami-MN"){
    race_BeltramiMN <- subset.data.frame(race, NAME=="Beltrami-MN")
    nodes_BeltramiMN <- as.Node(race_BeltramiMN) 
  } #4
  else if(input$selectcounty== "Benton-MN"){
    race_BentonMN <- subset.data.frame(race, NAME=="Benton-MN")
    nodes_BentonMN <- as.Node(race_BentonMN) 
  } #5
  else if(input$selectcounty== "Big Stone-MN"){
    race_BigStoneMN <- subset.data.frame(race, NAME=="Big Stone-MN")
    nodes_BigStoneMN <- as.Node(race_BigStoneMN) 
  } #6
  else if(input$selectcounty== "Blue Earth-MN"){
    race_BlueEarthMN <- subset.data.frame(race, NAME=="Blue Earth-MN")
    nodes_BlueEarthMN <- as.Node(race_BlueEarthMN) 
  } #7
  else if(input$selectcounty== "Brown-MN"){
    race_BrownMN <- subset.data.frame(race, NAME=="Brown-MN")
    nodes_BrownMN <- as.Node(race_BrownMN) 
  } #8
  else if(input$selectcounty== "Carlton-MN"){
    race_CarltonMN <- subset.data.frame(race, NAME=="Carlton-MN")
    nodes_CarltonMN <- as.Node(race_CarltonMN) 
  } #9
  else if(input$selectcounty== "Carver-MN"){
    race_CarverMN <- subset.data.frame(race, NAME=="Carver-MN")
    nodes_CarverMN <- as.Node(race_CarverMN) 
  } #10
  else if(input$selectcounty== "Cass-MN"){
    race_CassMN <- subset.data.frame(race, NAME=="Cass-MN")
    nodes_CassMN <- as.Node(race_CassMN) 
  } #11
  else if(input$selectcounty== "Chippewa-MN"){
    race_ChippewaMN <- subset.data.frame(race, NAME=="Chippewa-MN")
    nodes_ChippewaMN <- as.Node(race_ChippewaMN) 
  } #12
  else if(input$selectcounty== "Chisago-MN"){
    race_ChisagoMN <- subset.data.frame(race, NAME=="Chisago-MN")
    nodes_ChisagoMN <- as.Node(race_ChisagoMN) 
  } #13
  else if(input$selectcounty== "Clay-MN"){
    race_ClayMN <- subset.data.frame(race, NAME=="Clay-MN")
    nodes_ClayMN <- as.Node(race_ClayMN) 
  } #14
  else if(input$selectcounty== "Clearwater-MN"){
    race_ClearwaterMN <- subset.data.frame(race, NAME=="Clearwater-MN")
    nodes_ClearwaterMN <- as.Node(race_ClearwaterMN) 
  } #15
  else if(input$selectcounty== "Cook-MN"){
    race_CookMN <- subset.data.frame(race, NAME=="Cook-MN")
    nodes_CookMN <- as.Node(race_CookMN) 
  } #16
  else if(input$selectcounty== "Cottonwood-MN"){
    race_CottonwoodMN <- subset.data.frame(race, NAME=="Cottonwood-MN")
    nodes_CottonwoodMN <- as.Node(race_CottonwoodMN) 
  } #17
  else if(input$selectcounty== "Crow Wing-MN"){
    race_CrowWingMN <- subset.data.frame(race, NAME=="Crow Wing-MN")
    nodes_CrowWingMN <- as.Node(race_CrowWingMN) 
  } #18
  else if(input$selectcounty== "Dakota-MN"){
    race_AitkinMN <- subset.data.frame(race, NAME=="Dakota-MN")
    nodes_AitkinMN <- as.Node(race_AitkinMN) 
  } #19
  else if(input$selectcounty== "Dodge-MN"){
    race_DodgeMN <- subset.data.frame(race, NAME=="Dodge-MN")
    nodes_DodgeMN <- as.Node(race_DodgeMN) 
  } #21
  else if(input$selectcounty== "Douglas-MN"){
    race_DouglasMN <- subset.data.frame(race, NAME=="Douglas-MN")
    nodes_DouglasMN <- as.Node(race_DouglasMN) 
  } #22
  else if(input$selectcounty== "Faribault-MN"){
    race_FaribaultMN <- subset.data.frame(race, NAME=="Faribault-MN")
    nodes_FaribaultMN <- as.Node(race_FaribaultMN) 
  } #23
  else if(input$selectcounty== "Fillmore-MN"){
    race_FillmoreMN <- subset.data.frame(race, NAME=="Fillmore-MN")
    nodes_FillmoreMN <- as.Node(race_FillmoreMN) 
  } #24
  else if(input$selectcounty== "Freeborn-MN"){
    race_FreebornMN <- subset.data.frame(race, NAME=="Freeborn-MN")
    nodes_FreebornMN <- as.Node(race_FreebornMN) 
  } #25
  else if(input$selectcounty== "Goodhue-MN"){
    race_GoodhueMN <- subset.data.frame(race, NAME=="Goodhue-MN")
    nodes_GoodhuenMN <- as.Node(race_GoodhueMN) 
  } #26
  else if(input$selectcounty== "Grant-MN"){
    race_GrantMN <- subset.data.frame(race, NAME=="Grant-MN")
    nodes_GrantMN <- as.Node(race_GrantMN) 
  } #27
  else if(input$selectcounty== "Hennepin-MN"){
    race_HennepinMN <- subset.data.frame(race, NAME=="Hennepin-MN")
    nodes_HennepinMN <- as.Node(race_HennepinMN) 
  } #28
  else if(input$selectcounty== "Houston-MN"){
    race_HoustonMN <- subset.data.frame(race, NAME=="Houston-MN")
    nodes_HoustonMN <- as.Node(race_HoustonMN) 
  } #29
  else if(input$selectcounty== "Hubbard-MN"){
    race_HubbardMN <- subset.data.frame(race, NAME=="Hubbard-MN")
    nodes_HubbardMN <- as.Node(race_HubbardMN) 
  } #30
  else if(input$selectcounty== "Isanti-MN"){
    race_IsantiMN <- subset.data.frame(race, NAME=="Isanti-MN")
    nodes_IsantiMN <- as.Node(race_IsantiMN) 
  } #31
  else if(input$selectcounty== "Itasca-MN"){
    race_ItascaMN <- subset.data.frame(race, NAME=="Itasca-MN")
    nodes_ItascaMN <- as.Node(race_ItascaMN) 
  } #32
  else if(input$selectcounty== "Jackson-MN"){
    race_JacksonMN <- subset.data.frame(race, NAME=="Jackson-MN")
    nodes_JacksonMN <- as.Node(race_JacksonMN) 
  } #33
  else if(input$selectcounty== "Kanabec-MN"){
    race_KanabecMN <- subset.data.frame(race, NAME=="Kanabec-MN")
    nodes_KanabecMN <- as.Node(race_KanabecMN) 
  } #34
  else if(input$selectcounty== "Kandiyohi-MN"){
    race_KandiyohiMN <- subset.data.frame(race, NAME=="Kandiyohi-MN")
    nodes_KandiyohiMN <- as.Node(race_KandiyohiMN) 
  } #35
  else if(input$selectcounty== "Kittson-MN"){
    race_KittsonMN <- subset.data.frame(race, NAME=="Kittson-MN")
    nodes_KittsonMN <- as.Node(race_KittsonMN) 
  } #36
  else if(input$selectcounty== "Koochiching-MN"){
    race_KoochichingMN <- subset.data.frame(race, NAME=="Koochiching-MN")
    nodes_KoochichingMN <- as.Node(race_KoochichingMN) 
  } #37
  else if(input$selectcounty== "Lac qui Parle-MN"){
    race_LacquiparleMN <- subset.data.frame(race, NAME=="Lac qui Parle-MN")
    nodes_LacquiparleMN <- as.Node(race_LacquiparleMN) 
  } #38
  else if(input$selectcounty== "Lake-MN"){
    race_LakeMN <- subset.data.frame(race, NAME=="Lake-MN")
    nodes_LakeMN <- as.Node(race_LakeMN) 
  } #39
  else if(input$selectcounty== "Lake of the Woods-MN"){
    race_LakeoftheWoodsMN <- subset.data.frame(race, NAME=="Lake of the Woods-MN")
    nodes_LakeoftheWoodsMN <- as.Node(race_LakeoftheWoodsMN) 
  } #40
  else if(input$selectcounty== "Le Sueur-MN"){
    race_LeSueurMN <- subset.data.frame(race, NAME=="Le Sueur-MN")
    nodes_LeSueurMN <- as.Node(race_LeSueurMN) 
  } #41
  else if(input$selectcounty== "Lincoln-MN"){
    race_LincolnMN <- subset.data.frame(race, NAME=="Lincoln-MN")
    nodes_LincolnMN <- as.Node(race_LincolnMN) 
  } #42
  else if(input$selectcounty== "Lyon-MN"){
    race_LyonMN <- subset.data.frame(race, NAME=="Lyon-MN")
    nodes_LyonMN <- as.Node(race_LyonMN) 
  } #43
  else if(input$selectcounty== "Mahnomen-MN"){
    race_MahnomenMN <- subset.data.frame(race, NAME=="Mahnomen-MN")
    nodes_MahnomenMN <- as.Node(race_MahnomenMN) 
  } #44
  else if(input$selectcounty== "Marshall-MN"){
    race_MarshallMN <- subset.data.frame(race, NAME=="Marshall-MN")
    nodes_MarshallMN <- as.Node(race_MarshallMN) 
  } #45
  else if(input$selectcounty== "Martin-MN"){
    race_MartinMN <- subset.data.frame(race, NAME=="Martin-MN")
    nodes_MartinMN <- as.Node(race_MartinMN) 
  } #46
  else if(input$selectcounty== "McLeod-MN"){
    race_McLeodMN <- subset.data.frame(race, NAME=="McLeod-MN")
    nodes_McLeodMN <- as.Node(race_McLeodMN) 
  } #47
  else if(input$selectcounty== "Meeker-MN"){
    race_MeekerMN <- subset.data.frame(race, NAME=="Meeker-MN")
    nodes_MeekerMN <- as.Node(race_MeekerMN) 
  } #48
  else if(input$selectcounty== "Mille Lacs-MN"){
    race_MilleLacsMN <- subset.data.frame(race, NAME=="Mille Lacs-MN")
    nodes_MilleLacsMN <- as.Node(race_MilleLacsMN) 
  } #49
  else if(input$selectcounty== "Morrison-MN"){
    race_MorrisonMN <- subset.data.frame(race, NAME=="Morrison-MN")
    nodes_MorrisonMN <- as.Node(race_MorrisonMN) 
  } #50
  else if(input$selectcounty== "Mower-MN"){
    race_MowerMN <- subset.data.frame(race, NAME=="Mower-MN")
    nodes_MowerMN <- as.Node(race_MowerMN) 
  } #51
  else if(input$selectcounty== "Murray-MN"){
    race_MurrayMN <- subset.data.frame(race, NAME=="Murray-MN")
    nodes_MurrayMN <- as.Node(race_MurrayMN) 
  } #52
  else if(input$selectcounty== "Nicollet-MN"){
    race_NicolletMN <- subset.data.frame(race, NAME=="Nicollet-MN")
    nodes_NicolletMN <- as.Node(race_NicolletMN) 
  } #53
  else if(input$selectcounty== "Nobles-MN"){
    race_NoblesMN <- subset.data.frame(race, NAME=="Nobles-MN")
    nodes_NoblesMN <- as.Node(race_NoblesMN) 
  } #54
  else if(input$selectcounty== "Norman-MN"){
    race_NormanMN <- subset.data.frame(race, NAME=="Norman-MN")
    nodes_NormanMN <- as.Node(race_NormanMN) 
  } #55
  else if(input$selectcounty== "Otter Tail-MN"){
    race_OtterTailMN <- subset.data.frame(race, NAME=="Otter Tail-MN")
    nodes_OtterTailMN <- as.Node(race_OtterTailMN) 
  } #56
  else if(input$selectcounty== "Olmsted-MN"){
    race_OlmstedMN <- subset.data.frame(race, NAME=="Olmsted-MN")
    nodes_OlmstedMN <- as.Node(race_OlmstedMN) 
  } #57
  else if(input$selectcounty== "Pennington-MN"){
    race_PenningtonMN <- subset.data.frame(race, NAME=="Pennington-MN")
    nodes_PenningtonMN <- as.Node(race_PenningtonMN) 
  } #58
  else if(input$selectcounty== "Pine-MN"){
    race_PineMN <- subset.data.frame(race, NAME=="Pine-MN")
    nodes_PineMN <- as.Node(race_PineMN) 
  } #59
  else if(input$selectcounty== "Pipestone-MN"){
    race_PipestoneMN <- subset.data.frame(race, NAME=="Pipestone-MN")
    nodes_PipestoneMN <- as.Node(race_PipestoneMN) 
  } #60
  else if(input$selectcounty== "Polk-MN"){
    race_PolkMN <- subset.data.frame(race, NAME=="Polk-MN")
    nodes_PolkMN <- as.Node(race_PolkMN) 
  } #61
  else if(input$selectcounty== "Pope-MN"){
    race_PopeMN <- subset.data.frame(race, NAME=="Pope-MN")
    nodes_PopeMN <- as.Node(race_PopeMN) 
  } #62
  else if(input$selectcounty== "Ramsey-MN"){
    race_RamseyMN <- subset.data.frame(race, NAME=="Ramsey-MN")
    nodes_RamseyMN <- as.Node(race_RamseyMN) 
  } #63
  else if(input$selectcounty== "Red Lake-MN"){
    race_RedlakeMN <- subset.data.frame(race, NAME=="Red Lake-MN")
    nodes_RedlakeMN <- as.Node(race_RedlakeMN) 
  } #64
  else if(input$selectcounty== "Redwood-MN"){
    race_RedwoodMN <- subset.data.frame(race, NAME=="Redwood-MN")
    nodes_RedwoodMN <- as.Node(race_RedwoodMN) 
  } #65
  else if(input$selectcounty== "Renville-MN"){
    race_RenvilleMN <- subset.data.frame(race, NAME=="Renville-MN")
    nodes_RenvilleMN <- as.Node(race_RenvilleMN) 
  } #66
  else if(input$selectcounty== "Rice-MN"){
    race_RiceMN <- subset.data.frame(race, NAME=="Rice-MN")
    nodes_RiceMN <- as.Node(race_RiceMN) 
  } #67
  else if(input$selectcounty== "Rock-MN"){
    race_RockMN <- subset.data.frame(race, NAME=="Rock-MN")
    nodes_RockMN <- as.Node(race_RockMN) 
  } #68
  else if(input$selectcounty== "Roseau-MN"){
    race_RoseauMN <- subset.data.frame(race, NAME=="Roseau-MN")
    nodes_RoseauMN <- as.Node(race_RoseauMN) 
  } #69
  else if(input$selectcounty== "Scott-MN"){
    race_ScottMN <- subset.data.frame(race, NAME=="Scott-MN")
    nodes_ScottMN <- as.Node(race_ScottMN) 
  } #70
  else if(input$selectcounty== "Sherburne-MN"){
    race_SherburneMN <- subset.data.frame(race, NAME=="Sherburne-MN")
    nodes_SherburneMN <- as.Node(race_SherburneMN) 
  } #71
  else if(input$selectcounty== "Sibley-MN"){
    race_SibleyMN <- subset.data.frame(race, NAME=="Sibley-MN")
    nodes_SibleyMN <- as.Node(race_SibleyMN) 
  } #72
  else if(input$selectcounty== "St. Louis-MN"){
    race_StLouisMN <- subset.data.frame(race, NAME=="St. LouisMN")
    nodes_StLouisMN <- as.Node(race_StLouisMN) 
  } #73
  else if(input$selectcounty== "Stearns-MN"){
    race_StearnsMN <- subset.data.frame(race, NAME=="Stearns-MN")
    nodes_StearnsMN <- as.Node(race_StearnsMN) 
  } #74
  else if(input$selectcounty== "Steele-MN"){
    race_SteeleMN <- subset.data.frame(race, NAME=="Steele-MN")
    nodes_SteeleMN <- as.Node(race_SteeleMN) 
  } #75
  else if(input$selectcounty== "Stevens-MN"){
    race_StevensMN <- subset.data.frame(race, NAME=="Stevens-MN")
    nodes_StevensMN <- as.Node(race_StevensMN) 
  } #76
  else if(input$selectcounty== "Swift-MN"){
    race_SwiftMN <- subset.data.frame(race, NAME=="Swift-MN")
    nodes_SwiftMN <- as.Node(race_SwiftMN) 
  } #77
  else if(input$selectcounty== "Todd-MN"){
    race_ToddMN <- subset.data.frame(race, NAME=="Todd-MN")
    nodes_ToddMN <- as.Node(race_ToddMN) 
  } #78
  else if(input$selectcounty== "Traverse-MN"){
    race_TraverseMN <- subset.data.frame(race, NAME=="Traverse-MN")
    nodes_TraverseMN <- as.Node(race_TraverseMN) 
  } #79
  else if(input$selectcounty== "Wabasha-MN"){
    race_WabashaMN <- subset.data.frame(race, NAME=="Wabasha-MN")
    nodes_WabashaMN <- as.Node(race_WabashaMN) 
  } #80
  else if(input$selectcounty== "Wadena-MN"){
    race_WadenaMN <- subset.data.frame(race, NAME=="Wadena-MN")
    nodes_WadenaMN <- as.Node(race_WadenaMN) 
  } #81
  else if(input$selectcounty== "Waseca-MN"){
    race_WasecaMN <- subset.data.frame(race, NAME=="Waseca-MN")
    nodes_WasecaMN <- as.Node(race_WasecaMN) 
  } #82
  else if(input$selectcounty== "Washington-MN"){
    race_WashingtonMN <- subset.data.frame(race, NAME=="Washington-MN")
    nodes_WashingtonMN <- as.Node(race_WashingtonMN) 
  } #83
  else if(input$selectcounty== "Watonwan-MN"){
    race_WatonwanMN <- subset.data.frame(race, NAME=="Watonwan-MN")
    nodes_WatonwanMN <- as.Node(race_WatonwanMN) 
  } #84
  else if(input$selectcounty== "Wilkin-MN"){
    race_WilkinMN <- subset.data.frame(race, NAME=="Wilkin-MN")
    nodes_WilkinMN <- as.Node(race_WilkinMN) 
  } #85
  else if(input$selectcounty== "Winona-MN"){
    race_WinonaMN <- subset.data.frame(race, NAME=="Winona-MN")
    nodes_WinonaMN <- as.Node(race_WinonaMN) 
  } #86
  else if(input$selectcounty== "Wright-MN"){
    race_WrightMN <- subset.data.frame(race, NAME=="Wright-MN")
    nodes_WrightMN <- as.Node(race_WrightMN) 
  } #87
  else if(input$selectcounty== "Yellow Medicine-MN"){
    race_YellowMedicineMN <- subset.data.frame(race, NAME=="Yellow Medicine-MN")
    nodes_YellowMedicineMN <- as.Node(race_YellowMedicineMN) 
  }
  
######### MISSOURI #####  
  else if(input$selectcounty== "Adair-MO"){
    race_adairMO <- subset.data.frame(race, NAME=="Adair-MO")
    nodes_adairMO <- as.Node(race_adairMO) 
  } #1
  else if(input$selectcounty== "Andrew-MO"){
    race_AndrewMO <- subset.data.frame(race, NAME=="Andrew-MO")
    nodes_AndrewMO <- as.Node(race_AndrewMO) 
  } #2
  else if(input$selectcounty== "Atchison-MO"){
    race_AtchisonMO <- subset.data.frame(race, NAME=="Atchison-MO")
    nodes_AtchisonMO <- as.Node(race_AtchisonMO) 
  } #3
  else if(input$selectcounty== "Audrain-MO"){
    race_AudrainMO <- subset.data.frame(race, NAME=="Audrain-MO")
    nodes_AudrainMO <- as.Node(race_AudrainMO) 
  } #4
  else if(input$selectcounty== "Barry-MO"){
    race_BarryMO <- subset.data.frame(race, NAME=="Barry-MO")
    nodes_BarryMO <- as.Node(race_BarryMO) 
  } #5
  else if(input$selectcounty== "Barton-MO"){
    race_BartonMO <- subset.data.frame(race, NAME=="Barton-MO")
    nodes_BartonMO <- as.Node(race_BartonMO) 
  } #6
  else if(input$selectcounty== "Bates-MO"){
    race_BatesMO <- subset.data.frame(race, NAME=="Bates-MO")
    nodes_BatesMO <- as.Node(race_BatesMO) 
  } #7
  else if(input$selectcounty== "Benton-MO"){
    race_BentonMO <- subset.data.frame(race, NAME=="Benton-MO")
    nodes_BentonMO <- as.Node(race_BentonMO) 
  } #8
  else if(input$selectcounty== "Bollinger-MO"){
    race_BollingerMO <- subset.data.frame(race, NAME=="Bollinger-MO")
    nodes_BollingerMO <- as.Node(race_BollingerMO) 
  } #9
  else if(input$selectcounty== "Boone-MO"){
    race_BooneMO <- subset.data.frame(race, NAME=="Boone-MO")
    nodes_BooneMO <- as.Node(race_BooneMO) 
  } #10
  else if(input$selectcounty== "Buchanan-MO"){
    race_BuchananMO <- subset.data.frame(race, NAME=="Buchanan-MO")
    nodes_BuchananMO <- as.Node(race_BuchananMO) 
  } #11
  else if(input$selectcounty== "Butler-MO"){
    race_ButlerMO <- subset.data.frame(race, NAME=="Butler-MO")
    nodes_ButlerMO <- as.Node(race_ButlerMO) 
  } #12
  else if(input$selectcounty== "Caldwell-MO"){
    race_CaldwellMO <- subset.data.frame(race, NAME=="Caldwell-MO")
    nodes_CaldwellMO <- as.Node(race_CaldwellMO) 
  } #13
  else if(input$selectcounty== "Callaway-MO"){
    race_CallawayMO <- subset.data.frame(race, NAME=="Callaway-MO")
    nodes_CallawayMO <- as.Node(race_CallawayMO) 
  } #14
  else if(input$selectcounty== "Camden-MO"){
    race_CamdenMO <- subset.data.frame(race, NAME=="Camden-MO")
    nodes_CamdenMO <- as.Node(race_CamdenMO) 
  } #15
  else if(input$selectcounty== "Cape Girardeau-MO"){
    race_CapeGirardeauMO <- subset.data.frame(race, NAME=="Cape Girardeau-MO")
    nodes_CapeGirardeauMO <- as.Node(race_CapeGirardeauMO) 
  } #16
  else if(input$selectcounty== "Carroll-MO"){
    race_CarrollMO <- subset.data.frame(race, NAME=="Carroll-MO")
    nodes_CarrollMO <- as.Node(race_CarrollMO) 
  } #17
  else if(input$selectcounty== "Carter-MO"){
    race_CarterMO <- subset.data.frame(race, NAME=="Carter-MO")
    nodes_CarterMO <- as.Node(race_CarterMO) 
  } #18
  else if(input$selectcounty== "Cass-MO"){
    race_CassMO <- subset.data.frame(race, NAME=="Cass-MO")
    nodes_CassMO <- as.Node(race_CassMO) 
  } #19
  else if(input$selectcounty== "Cedar-MO"){
    race_CedarMO <- subset.data.frame(race, NAME=="Cedar-MO")
    nodes_CedarMO <- as.Node(race_CedarMO) 
  } #20
  else if(input$selectcounty== "Chariton-MO"){
    race_CharitonMO <- subset.data.frame(race, NAME=="Chariton-MO")
    nodes_CharitonMO <- as.Node(race_CharitonMO) 
  } #21
  else if(input$selectcounty== "Christian-MO"){
    race_ChristianMO <- subset.data.frame(race, NAME=="Christian-MO")
    nodes_ChristianMO <- as.Node(race_ChristianMO) 
  } #22
  else if(input$selectcounty== "Clark-MO"){
    race_ClarkMO <- subset.data.frame(race, NAME=="Clark-MO")
    nodes_ClarkMO <- as.Node(race_ClarkMO) 
  } #23
  else if(input$selectcounty== "Clay-MO"){
    race_ClayMO <- subset.data.frame(race, NAME=="Clay-MO")
    nodes_ClayMO <- as.Node(race_ClayMO) 
  } #24
  else if(input$selectcounty== "Clinton-MO"){
    race_ClintonMO <- subset.data.frame(race, NAME=="Clinton-MO")
    nodes_ClintonMO <- as.Node(race_ClintonMO) 
  } #25
  else if(input$selectcounty== "Cole-MO"){
    race_ColeMO <- subset.data.frame(race, NAME=="Cole-MO")
    nodes_ColeMO <- as.Node(race_ColeMO) 
  } #26
  else if(input$selectcounty== "Cooper-MO"){
    race_CooperMO <- subset.data.frame(race, NAME=="Cooper-MO")
    nodes_CooperMO <- as.Node(race_CooperMO) 
  } #27
  else if(input$selectcounty== "Crawford-MO"){
    race_CrawfordMO <- subset.data.frame(race, NAME=="Crawford-MO")
    nodes_CrawfordMO <- as.Node(race_CrawfordMO) 
  } #28
  else if(input$selectcounty== "Dade-MO"){
    race_DadeMO <- subset.data.frame(race, NAME=="Dade-MO")
    nodes_DadeMO <- as.Node(race_DadeMO) 
  } #29
  else if(input$selectcounty== "Dallas-MO"){
    race_DallasMO <- subset.data.frame(race, NAME=="Dallas-MO")
    nodes_DallasMO <- as.Node(race_DallasMO) 
  } #30
  else if(input$selectcounty== "Daviess-MO"){
    race_DaviessMO <- subset.data.frame(race, NAME=="Daviess-MO")
    nodes_DaviessMO <- as.Node(race_DaviessMO) 
  } #31
  else if(input$selectcounty== "DeKalb-MO"){
    race_DeKalbMO <- subset.data.frame(race, NAME=="DeKalb-MO")
    nodes_DeKalbMO <- as.Node(race_DeKalbMO) 
  } #32
  else if(input$selectcounty== "Dent-MO"){
    race_DentMO <- subset.data.frame(race, NAME=="Dent-MO")
    nodes_DentMO <- as.Node(race_DentMO) 
  } #33
  else if(input$selectcounty== "Douglas-MO"){
    race_DouglasMO <- subset.data.frame(race, NAME=="Douglas-MO")
    nodes_DouglasMO <- as.Node(race_DouglasMO) 
  } #34
  else if(input$selectcounty== "Dunklin-MO"){
    race_DunklinMO <- subset.data.frame(race, NAME=="Dunklin-MO")
    nodes_DunklinMO <- as.Node(race_DunklinMO) 
  } #35
  else if(input$selectcounty== "Franklin-MO"){
    race_FranklinMO <- subset.data.frame(race, NAME=="Franklin-MO")
    nodes_FranklinMO <- as.Node(race_FranklinMO) 
  } #36
  else if(input$selectcounty== "Gasconade-MO"){
    race_GasconadeMO <- subset.data.frame(race, NAME=="Gasconade-MO")
    nodes_GasconadeMO <- as.Node(race_GasconadeMO) 
  } #37
  else if(input$selectcounty== "Gentry-MO"){
    race_GentryMO <- subset.data.frame(race, NAME=="Gentry-MO")
    nodes_GentryMO <- as.Node(race_GentryMO) 
  } #38
  else if(input$selectcounty== "Greene-MO"){
    race_GreeneMO <- subset.data.frame(race, NAME=="Greene-MO")
    nodes_GreeneMO <- as.Node(race_GreeneMO) 
  } #39
  else if(input$selectcounty== "Grundy-MO"){
    race_GrundyMO <- subset.data.frame(race, NAME=="Grundy-MO")
    nodes_GrundyMO <- as.Node(race_GrundyMO) 
  } #40
  else if(input$selectcounty== "Harrison-MO"){
    race_HarrisonMO <- subset.data.frame(race, NAME=="Harrison-MO")
    nodes_HarrisonMO <- as.Node(race_HarrisonMO) 
  } #41
  else if(input$selectcounty== "Henry-MO"){
    race_HenryMO <- subset.data.frame(race, NAME=="Henry-MO")
    nodes_HenryMO <- as.Node(race_HenryMO) 
  } #42
  else if(input$selectcounty== "Hickory-MO"){
    race_HickoryMO <- subset.data.frame(race, NAME=="Hickory-MO")
    nodes_HickoryMO <- as.Node(race_HickoryMO) 
  } #43
  else if(input$selectcounty== "Holt-MO"){
    race_HoltMO <- subset.data.frame(race, NAME=="Holt-MO")
    nodes_HoltMO <- as.Node(HoltMO) 
  } #44
  else if(input$selectcounty== "Howard-MO"){
    race_HowardMO <- subset.data.frame(race, NAME=="Howard-MO")
    nodes_HowardMO <- as.Node(race_HowardMO) 
  } #45
  else if(input$selectcounty== "Howell-MO"){
    race_HowellMO <- subset.data.frame(race, NAME=="Howell-MO")
    nodes_HowellMO <- as.Node(race_HowellMO) 
  } #46
  else if(input$selectcounty== "Iron-MO"){
    race_IronMO <- subset.data.frame(race, NAME=="Iron-MO")
    nodes_IronMO <- as.Node(race_IronMO) 
  } #47
  else if(input$selectcounty== "Jackson-MO"){
    race_JacksonMO <- subset.data.frame(race, NAME=="Jackson-MO")
    nodes_JacksonMO <- as.Node(race_JacksonMO) 
  } #48
  else if(input$selectcounty== "Jasper-MO"){
    race_JasperMO <- subset.data.frame(race, NAME=="Jasper-MO")
    nodes_JasperMO <- as.Node(race_JasperMO) 
  } #49
  else if(input$selectcounty== "Jefferson-MO"){
    race_JeffersonMO <- subset.data.frame(race, NAME=="Jefferson-MO")
    nodes_JeffersonMO <- as.Node(race_JeffersonMO) 
  } #50
  else if(input$selectcounty== "Johnson-MO"){
    race_JohnsonMO <- subset.data.frame(race, NAME=="Johnson-MO")
    nodes_JohnsonMO <- as.Node(race_JohnsonMO) 
  } #51
  else if(input$selectcounty== "Knox-MO"){
    race_KnoxMO <- subset.data.frame(race, NAME=="Knox-MO")
    nodes_KnoxMO <- as.Node(race_KnoxMO) 
  } #52
  else if(input$selectcounty== "Laclede-MO"){
    race_LacledeMO <- subset.data.frame(race, NAME=="Laclede-MO")
    nodes_LacledeMO <- as.Node(race_LacledeMO) 
  } #53
  else if(input$selectcounty== "Lafayette-MO"){
    race_LafayetteMO <- subset.data.frame(race, NAME=="Lafayette-MO")
    nodes_LafayetteMO <- as.Node(race_LafayetteMO) 
  } #54
  else if(input$selectcounty== "Lawrence-MO"){
    race_LawrenceMO <- subset.data.frame(race, NAME=="Lawrence-MO")
    nodes_LawrenceMO <- as.Node(race_LawrenceMO) 
  } #55
  else if(input$selectcounty== "Lewis-MO"){
    race_LewisMO <- subset.data.frame(race, NAME=="Lewis-MO")
    nodes_LewisMO <- as.Node(race_LewisMO) 
  } #56
  else if(input$selectcounty== "Lincoln-MO"){
    race_LincolnMO <- subset.data.frame(race, NAME=="Lincoln-MO")
    nodes_LincolnMO <- as.Node(race_LincolnMO) 
  } #57
  else if(input$selectcounty== "Linn-MO"){
    race_LinnMO <- subset.data.frame(race, NAME=="Linn-MO")
    nodes_LinnMO <- as.Node(raceLinnMO) 
  } #58
  else if(input$selectcounty== "Livingston-MO"){
    race_LivingstonMO <- subset.data.frame(race, NAME=="Livingston-MO")
    nodes_LivingstonMO <- as.Node(race_LivingstonMO) 
  } #59
  else if(input$selectcounty== "Macon-MO"){
    race_MaconMO <- subset.data.frame(race, NAME=="Macon-MO")
    nodes_MaconMO <- as.Node(race_MaconMO) 
  } #60
  else if(input$selectcounty== "Madison-MO"){
    race_MadisonMO <- subset.data.frame(race, NAME=="Madison-MO")
    nodes_MadisonMO <- as.Node(race_MadisonMO) 
  } #61
  else if(input$selectcounty== "Maries-MO"){
    race_MariesMO <- subset.data.frame(race, NAME=="Maries-MO")
    nodes_MariesMO <- as.Node(race_MariesMO) 
  } #62
  else if(input$selectcounty== "Marion-MO"){
    race_MarionMO <- subset.data.frame(race, NAME=="Marion-MO")
    nodes_MarionMO <- as.Node(race_MarionMO) 
  } #63
  else if(input$selectcounty== "McDonald-MO"){
    race_McDonaldMO <- subset.data.frame(race, NAME=="McDonald-MO")
    nodes_McDonaldMO <- as.Node(race_McDonaldMO) 
  } #64
  else if(input$selectcounty== "Mercer-MO"){
    race_MercerMO <- subset.data.frame(race, NAME=="Mercer-MO")
    nodes_MercerMO <- as.Node(race_MercerMO) 
  } #65
  else if(input$selectcounty== "Miller-MO"){
    race_MillerMO <- subset.data.frame(race, NAME=="Miller-MO")
    nodes_MillerMO <- as.Node(race_MillerMO) 
  } #66
  else if(input$selectcounty== "Mississippi-MO"){
    race_MississippiMO <- subset.data.frame(race, NAME=="Mississippi-MO")
    nodes_MississippiMO <- as.Node(race_MississippiMO) 
  } #67
  else if(input$selectcounty== "Moniteau-MO"){
    race_MoniteauMO <- subset.data.frame(race, NAME=="Moniteau-MO")
    nodes_MoniteauMO <- as.Node(race_MoniteauMO) 
  } #68
  else if(input$selectcounty== "Monroe-MO"){
    race_MonroeMO <- subset.data.frame(race, NAME=="Monroe-MO")
    nodes_MonroeMO <- as.Node(race_MonroeMO) 
  } #69
  else if(input$selectcounty== "Montgomery-MO"){
    race_MontgomeryMO <- subset.data.frame(race, NAME=="Montgomery-MO")
    nodes_MontgomeryMO <- as.Node(race_MontgomeryMO) 
  } #70
  else if(input$selectcounty== "Morgan-MO"){
    race_MorganMO <- subset.data.frame(race, NAME=="Morgan-MO")
    nodes_MorganMO <- as.Node(race_MorganMO) 
  } #71
  else if(input$selectcounty== "New Madrid-MO"){
    race_NewMadridMO <- subset.data.frame(race, NAME=="New Madrid-MO")
    nodes_NewMadridMO <- as.Node(race_NewMadridMO) 
  } #72
  else if(input$selectcounty== "Newton-MO"){
    race_NewtonMO <- subset.data.frame(race, NAME=="Newton-MO")
    nodes_NewtonMO <- as.Node(race_NewtonMO) 
  } #73
  else if(input$selectcounty== "Nodaway-MO"){
    race_NodawayMO <- subset.data.frame(race, NAME=="Nodaway-MO")
    nodes_NodawayMO <- as.Node(race_NodawayMO) 
  } #74
  else if(input$selectcounty== "Oregon-MO"){
    race_OregonMO <- subset.data.frame(race, NAME=="Oregon-MO")
    nodes_OregonMO <- as.Node(race_OregonMO) 
  } #75
  else if(input$selectcounty== "Osage-MO"){
    race_OsageMO <- subset.data.frame(race, NAME=="Osage-MO")
    nodes_OsageMO <- as.Node(race_OsageMO) 
  } #76
  else if(input$selectcounty== "Ozark-MO"){
    race_OzarkMO <- subset.data.frame(race, NAME=="Ozark-MO")
    nodes_OzarkMO <- as.Node(race_OzarkMO) 
  } #77
  else if(input$selectcounty== "Pemiscot-MO"){
    race_PemiscotMO <- subset.data.frame(race, NAME=="Pemiscot-MO")
    nodes_PemiscotMO <- as.Node(race_PemiscotMO) 
  } #78
  else if(input$selectcounty== "Perry-MO"){
    race_PerryMO <- subset.data.frame(race, NAME=="Perry-MO")
    nodes_PerryMO <- as.Node(race_PerryMO) 
  } #79
  else if(input$selectcounty== "Pettis-MO"){
    race_PettisMO <- subset.data.frame(race, NAME=="Pettis-MO")
    nodes_PettisMO <- as.Node(race_PettisMO) 
  } #80
  else if(input$selectcounty== "Phelps-MO"){
    race_PhelpsMO <- subset.data.frame(race, NAME=="Phelps-MO")
    nodes_PhelpsMO <- as.Node(race_PhelpsMO) 
  } #81
  else if(input$selectcounty== "Pike-MO"){
    race_PikeMO <- subset.data.frame(race, NAME=="Pike-MO")
    nodes_PikeMO <- as.Node(race_PikeMO) 
  } #82
  else if(input$selectcounty== "Platte-MO"){
    race_PlatteMO <- subset.data.frame(race, NAME=="Platte-MO")
    nodes_PlatteMO <- as.Node(race_PlatteMO) 
  } #83
  else if(input$selectcounty== "Polk-MO"){
    race_PolkMO <- subset.data.frame(race, NAME=="Polk-MO")
    nodes_PolkMO <- as.Node(race_PolkMO) 
  } #84
  else if(input$selectcounty== "Pulaski-MO"){
    race_PulaskiMO <- subset.data.frame(race, NAME=="Pulaski-MO")
    nodes_PulaskiMO <- as.Node(race_PulaskiMO) 
  } #85
  else if(input$selectcounty== "Putnam-MO"){
    race_PutnamMO <- subset.data.frame(race, NAME=="Putnam-MO")
    nodes_PutnamMO <- as.Node(race_PutnamMO) 
  } #86
  else if(input$selectcounty== "Ralls-MO"){
    race_RallsMO <- subset.data.frame(race, NAME=="Ralls-MO")
    nodes_RallsMO <- as.Node(race_RallsMO) 
  } #87
  else if(input$selectcounty== "Randolph-MO"){
    race_RandolphMO <- subset.data.frame(race, NAME=="Randolph-MO")
    nodes_RandolphMO <- as.Node(race_RandolphMO) 
  } #88
  else if(input$selectcounty== "Ray-MO"){
    race_RayMO <- subset.data.frame(race, NAME=="Ray-MO")
    nodes_RayMO <- as.Node(race_RayMO) 
  } #89
  else if(input$selectcounty== "Reynolds-MO"){
    race_ReynoldsMO <- subset.data.frame(race, NAME=="Reynolds-MO")
    nodes_ReynoldsMO <- as.Node(race_ReynoldsMO) 
  } #90
  else if(input$selectcounty== "Ripley-MO"){
    race_RipleyMO <- subset.data.frame(race, NAME=="Ripley-MO")
    nodes_RipleyMO <- as.Node(race_RipleyMO) 
  } #91
  else if(input$selectcounty== "Saline-MO"){
    race_SalineMO <- subset.data.frame(race, NAME=="Saline-MO")
    nodes_SalineMO <- as.Node(race_SalineMO) 
  } #92
  else if(input$selectcounty== "Schuyler-MO"){
    race_SchuylerMO <- subset.data.frame(race, NAME=="Schuyler-MO")
    nodes_SchuylerMO <- as.Node(race_SchuylerMO) 
  } #93
  else if(input$selectcounty== "Scotland-MO"){
    race_ScotlandMO <- subset.data.frame(race, NAME=="Scotland-MO")
    nodes_ScotlandMO <- as.Node(race_ScotlandMO) 
  } #94
  else if(input$selectcounty== "Scott-MO"){
    race_ScottMO <- subset.data.frame(race, NAME=="Scott-MO")
    nodes_ScottMO <- as.Node(race_ScottMO) 
  } #95
  else if(input$selectcounty== "Shannon-MO"){
    race_ShannonMO <- subset.data.frame(race, NAME=="Shannon-MO")
    nodes_ShannonMO <- as.Node(race_ShannonMO) 
  } #96
  else if(input$selectcounty== "Shelby-MO"){
    race_ShelbyMO <- subset.data.frame(race, NAME=="Shelby-MO")
    nodes_ShelbyMO <- as.Node(race_ShelbyMO) 
  } #97
  else if(input$selectcounty== "St. Charles-MO"){
    race_StCharlesMO <- subset.data.frame(race, NAME=="St. Charles-MO")
    nodes_StCharlesMO <- as.Node(race_StCharlesMO) 
  } #98
  else if(input$selectcounty== "St. Clair-MO"){
    race_StClairMO <- subset.data.frame(race, NAME=="St. Clair-MO")
    nodes_StClairMO <- as.Node(race_StClairMO) 
  } #99
  else if(input$selectcounty== "St. Francois-MO"){
    race_StFrancoisMO <- subset.data.frame(race, NAME=="St. Francois-MO")
    nodes_StFrancoisMO <- as.Node(race_StFrancoisMO) 
  } #100
  else if(input$selectcounty== "St. Louis-MO"){
    race_StLouisMO <- subset.data.frame(race, NAME=="St. Louis-MO")
    nodes_StLouisMO <- as.Node(race_StLouisMO) 
  } #101
  else if(input$selectcounty== "Ste. Genevieve-MO"){
    race_SteGenevieveMO <- subset.data.frame(race, NAME=="Ste. Genevieve-MO")
    nodes_SteGenevieveMO <- as.Node(race_SteGenevieveMO) 
  } #102
  else if(input$selectcounty== "Stoddard-MO"){
    race_StoddardMO <- subset.data.frame(race, NAME=="Stoddard-MO")
    nodes_StoddardMO <- as.Node(race_StoddardMO) 
  } #103
  else if(input$selectcounty== "Stone-MO"){
    race_StoneMO <- subset.data.frame(race, NAME=="Stone-MO")
    nodes_StoneMO <- as.Node(race_StoneMO) 
  } #104
  else if(input$selectcounty== "Sullivan-MO"){
    race_SullivanMO <- subset.data.frame(race, NAME=="Sullivan-MO")
    nodes_SullivanMO <- as.Node(race_SullivanMO) 
  } #105
  else if(input$selectcounty== "Taney-MO"){
    race_TaneyMO <- subset.data.frame(race, NAME=="Taney-MO")
    nodes_TaneyMO <- as.Node(race_TaneyMO) 
  } #106
  else if(input$selectcounty== "Texas-MO"){
    race_TexasMO <- subset.data.frame(race, NAME=="Texas-MO")
    nodes_TexasMO <- as.Node(race_TexasMO) 
  } #107
  else if(input$selectcounty== "Vernon-MO"){
    race_VernonMO <- subset.data.frame(race, NAME=="Vernon-MO")
    nodes_VernonMO <- as.Node(race_VernonMO) 
  } #108
  else if(input$selectcounty== "Warren-MO"){
    race_WarrenMO <- subset.data.frame(race, NAME=="Warren-MO")
    nodes_WarrenMO <- as.Node(race_WarrenMO) 
  } #109
  else if(input$selectcounty== "Washington-MO"){
    race_WashingtonMO <- subset.data.frame(race, NAME=="Washington-MO")
    nodes_WashingtonMO <- as.Node(race_WashingtonMO) 
  } #110
  else if(input$selectcounty== "Wayne-MO"){
    race_WayneMO <- subset.data.frame(race, NAME=="Wayne-MO")
    nodes_WayneMO <- as.Node(race_WayneMO) 
  } #111
  else if(input$selectcounty== "Webster-MO"){
    race_WebsterMO <- subset.data.frame(race, NAME=="Webster-MO")
    nodes_WebsterMO <- as.Node(race_WebsterMO) 
  } #112
  else if(input$selectcounty== "Worth-MO"){
    race_WorthMO <- subset.data.frame(race, NAME=="Worth-MO")
    nodes_WorthMO <- as.Node(race_WorthMO) 
  } #113
  else if(input$selectcounty== "Wright-MO"){
    race_WrightMO <- subset.data.frame(race, NAME=="Wright-MO")
    nodes_WrightMO <- as.Node(race_WrightMO) 
  } #114

######### MISSISSIPPI #####  
  else if(input$selectcounty== "Adams-MS"){
    race_adairMO <- subset.data.frame(race, NAME=="Adams-MS")
    nodes_adairMO <- as.Node(race_AdamsMS) 
  }  #1
  else if(input$selectcounty== "Alcorn-MS"){
    race_AlcornMO <- subset.data.frame(race, NAME=="Alcorn-MS")
    nodes_AlcornMO <- as.Node(race_AlcornMS) 
  } #2
  else if(input$selectcounty== "Amite-MS"){
    race_AmiteMO <- subset.data.frame(race, NAME=="Amite-MS")
    nodes_AmiteMO <- as.Node(race_AmiteMS) 
  }  #3
  else if(input$selectcounty== "Attala-MS"){
    race_AttalaMO <- subset.data.frame(race, NAME=="Attala-MS")
    nodes_AttalaMO <- as.Node(race_AttalaMS) 
  } #4
  else if(input$selectcounty== "Benton-MS"){
    race_BentonMO <- subset.data.frame(race, NAME=="Benton-MS")
    nodes_BentonMO <- as.Node(race_BentonMS) 
  } #5
  else if(input$selectcounty== "Bolivar-MS"){
    race_BolivarMO <- subset.data.frame(race, NAME=="Bolivar-MS")
    nodes_BolivarMO <- as.Node(race_BolivarMS) 
  } #6
  else if(input$selectcounty== "Calhoun-MS"){
    race_CalhounMO <- subset.data.frame(race, NAME=="Calhoun-MS")
    nodes_CalhounMO <- as.Node(race_CalhounMS) 
  } #7
  else if(input$selectcounty== "Carroll-MS"){
    race_CarrollMO <- subset.data.frame(race, NAME=="Carroll-MS")
    nodes_CarrollMO <- as.Node(race_CarrollMS) 
  } #8
  else if(input$selectcounty== "Chickasaw-MS"){
    race_ChickasawMO <- subset.data.frame(race, NAME=="Chickasaw-MS")
    nodes_ChickasawMO <- as.Node(race_ChickasawMS) 
  } #9
  else if(input$selectcounty== "Choctaw-MS"){
    race_ChoctawMO <- subset.data.frame(race, NAME=="Choctaw-MS")
    nodes_ChoctawMO <- as.Node(race_ChoctawMS) 
  } #10
  else if(input$selectcounty== "Claiborne-MS"){
    race_ClaiborneMO <- subset.data.frame(race, NAME=="Claiborne-MS")
    nodes_ClaiborneMO <- as.Node(race_ClaiborneMS) 
  } #11
  else if(input$selectcounty== "Clarke-MS"){
    race_ClarkeMO <- subset.data.frame(race, NAME=="Clarke-MS")
    nodes_ClarkeMO <- as.Node(race_ClarkeMS) 
  } #12
  else if(input$selectcounty== "Clay-MS"){
    race_ClayMO <- subset.data.frame(race, NAME=="Clay-MS")
    nodes_ClayMO <- as.Node(race_ClayMS) 
  } #13
  else if(input$selectcounty== "Coahoma-MS"){
    race_CoahomaMO <- subset.data.frame(race, NAME=="Coahoma-MS")
    nodes_CoahomaMO <- as.Node(race_CoahomaMS) 
  } #14
  else if(input$selectcounty== "Copiah-MS"){
    race_CopiahMO <- subset.data.frame(race, NAME=="Copiah-MS")
    nodes_CopiahMO <- as.Node(race_CopiahMS) 
  } #15
  else if(input$selectcounty== "Covington-MS"){
    race_CovingtonMO <- subset.data.frame(race, NAME=="Covington-MS")
    nodes_CovingtonMO <- as.Node(race_CovingtonMS) 
  } #16
  else if(input$selectcounty== "DeSoto-MS"){
    race_DeSotoMO <- subset.data.frame(race, NAME=="DeSoto-MS")
    nodes_DeSotoMO <- as.Node(race_DeSotoMS) 
  } #17
  else if(input$selectcounty== "Forrest-MS"){
    race_ForrestMO <- subset.data.frame(race, NAME=="Forrest-MS")
    nodes_ForrestMO <- as.Node(race_ForrestMS) 
  } #18
  else if(input$selectcounty== "Franklin-MS"){
    race_FranklinMO <- subset.data.frame(race, NAME=="Franklin-MS")
    nodes_FranklinMO <- as.Node(race_FranklinMS) 
  } #19
  else if(input$selectcounty== "George-MS"){
    race_GeorgeMO <- subset.data.frame(race, NAME=="George-MS")
    nodes_GeorgeMO <- as.Node(race_GeorgeMS) 
  } #20
  else if(input$selectcounty== "Greene-MS"){
    race_GreeneMO <- subset.data.frame(race, NAME=="Greene-MS")
    nodes_GreeneMO <- as.Node(race_GreeneMS) 
  } #21
  else if(input$selectcounty== "Grenada-MS"){
    race_GrenadaMO <- subset.data.frame(race, NAME=="Grenada-MS")
    nodes_GrenadaMO <- as.Node(race_GrenadaMS) 
  } #22
  else if(input$selectcounty== "Hancock-MS"){
    race_HancockMO <- subset.data.frame(race, NAME=="Hancock-MS")
    nodes_HancockMO <- as.Node(race_HancockMS) 
  } #23
  else if(input$selectcounty== "Harrison-MS"){
    race_HarrisonMO <- subset.data.frame(race, NAME=="Harrison-MS")
    nodes_HarrisonMO <- as.Node(race_HarrisonMS) 
  } #24
  else if(input$selectcounty== "Hinds-MS"){
    race_HindsMO <- subset.data.frame(race, NAME=="Hinds-MS")
    nodes_HindsMO <- as.Node(race_HindsMS) 
  } #25
  else if(input$selectcounty== "Holmes-MS"){
    race_HolmesMO <- subset.data.frame(race, NAME=="Holmes-MS")
    nodes_HolmesMO <- as.Node(race_HolmesMS) 
  } #26
  else if(input$selectcounty== "Humphreys-MS"){
    race_HumphreysMO <- subset.data.frame(race, NAME=="Humphreys-MS")
    nodes_HumphreysMO <- as.Node(race_HumphreysMS) 
  } #27
  else if(input$selectcounty== "Issaquena-MS"){
    race_IssaquenaMO <- subset.data.frame(race, NAME=="Issaquena-MS")
    nodes_IssaquenaMO <- as.Node(race_IssaquenaMS) 
  } #28
  else if(input$selectcounty== "Itawamba-MS"){
    race_ItawambaMO <- subset.data.frame(race, NAME=="Itawamba-MS")
    nodes_ItawambaMO <- as.Node(race_ItawambaMS) 
  } #29
  else if(input$selectcounty== "Jackson-MS"){
    race_JacksonMO <- subset.data.frame(race, NAME=="Jackson-MS")
    nodes_JacksonMO <- as.Node(race_JacksonMS) 
  } #30
  else if(input$selectcounty== "Jasper-MS"){
    race_JasperMO <- subset.data.frame(race, NAME=="Jasper-MS")
    nodes_JasperMO <- as.Node(race_JasperMS) 
  } #31
  else if(input$selectcounty== "Jefferson-MS"){
    race_JeffersonMO <- subset.data.frame(race, NAME=="Jefferson-MS")
    nodes_JeffersonMO <- as.Node(race_JeffersonMS) 
  } #32
  else if(input$selectcounty== "Jefferson Davis-MS"){
    race_JeffersonDavisMO <- subset.data.frame(race, NAME=="Jefferson Davis-MS")
    nodes_JeffersonDavisMO <- as.Node(race_JeffersonDavisMS) 
  } ####81
  else if(input$selectcounty== "Jones-MS"){
    race_JonesMO <- subset.data.frame(race, NAME=="Jones-MS")
    nodes_JonesMO <- as.Node(race_JonesMS) 
  } #33
  else if(input$selectcounty== "Kemper-MS"){
    race_KemperMO <- subset.data.frame(race, NAME=="Kemper-MS")
    nodes_KemperMO <- as.Node(race_KemperMS) 
  } #34
  else if(input$selectcounty== "Lafayette-MS"){
    race_LafayetteMO <- subset.data.frame(race, NAME=="Lafayette-MS")
    nodes_LafayetteMO <- as.Node(race_LafayetteMS) 
  } #35
  else if(input$selectcounty== "Lamar-MS"){
    race_LamarMO <- subset.data.frame(race, NAME=="Lamar-MS")
    nodes_LamarMO <- as.Node(race_LamarMS) 
  } #36
  else if(input$selectcounty== "Lauderdale-MS"){
    race_LauderdaleMO <- subset.data.frame(race, NAME=="Lauderdale-MS")
    nodes_LauderdaleMO <- as.Node(race_LauderdaleMS) 
  } #37 
  else if(input$selectcounty== "Lawrence-MS"){
    race_LawrenceMO <- subset.data.frame(race, NAME=="Lawrence-MS")
    nodes_LawrenceMO <- as.Node(race_LawrenceMS) 
  } #38
  else if(input$selectcounty== "Leake-MS"){
    race_LeakeMO <- subset.data.frame(race, NAME=="Leake-MS")
    nodes_LeakeMO <- as.Node(race_LeakeMS) 
  } #39
  else if(input$selectcounty== "Lee-MS"){
    race_LeeMO <- subset.data.frame(race, NAME=="Lee-MS")
    nodes_LeeMO <- as.Node(race_LeeMS) 
  } #40
  else if(input$selectcounty== "Leflore-MS"){
    race_LefloreMO <- subset.data.frame(race, NAME=="Leflore-MS")
    nodes_LefloreMO <- as.Node(race_LefloreMS) 
  } #41 
  else if(input$selectcounty== "Lincoln-MS"){
    race_LincolnMO <- subset.data.frame(race, NAME=="Lincoln-MS")
    nodes_LincolnMO <- as.Node(race_LincolnMS) 
  } #42
  else if(input$selectcounty== "Lowndes-MS"){
    race_LowndesMO <- subset.data.frame(race, NAME=="Lowndes-MS")
    nodes_LowndesMO <- as.Node(race_LowndesMS) 
  } #43
  else if(input$selectcounty== "Madison-MS"){
    race_MadisonMO <- subset.data.frame(race, NAME=="Madison-MS")
    nodes_MadisonMO <- as.Node(race_MadisonMS) 
  } #44
  else if(input$selectcounty== "Marion-MS"){
    race_MarionMO <- subset.data.frame(race, NAME=="Marion-MS")
    nodes_MarionMO <- as.Node(race_MarionMS) 
  } #45
  else if(input$selectcounty== "Marshall-MS"){
    race_MarshallMO <- subset.data.frame(race, NAME=="Marshall-MS")
    nodes_MarshallMO <- as.Node(race_MarshallMS) 
  } #46
  else if(input$selectcounty== "Monroe-MS"){
    race_MonroeMO <- subset.data.frame(race, NAME=="Monroe-MS")
    nodes_MonroeMO <- as.Node(race_MonroeMS) 
  } #47
  else if(input$selectcounty== "Montgomery-MS"){
    race_MontgomeryMO <- subset.data.frame(race, NAME=="Montgomery-MS")
    nodes_MontgomeryMO <- as.Node(race_MontgomeryMS) 
  } #48 
  else if(input$selectcounty== "Neshoba-MS"){
    race_NeshobaMO <- subset.data.frame(race, NAME=="Neshoba-MS")
    nodes_NeshobaMO <- as.Node(race_NeshobaMS) 
  } #49
  else if(input$selectcounty== "Newton-MS"){
    race_NewtonMO <- subset.data.frame(race, NAME=="Newton-MS")
    nodes_NewtonMO <- as.Node(race_NewtonMS) 
  } #50
  else if(input$selectcounty== "Noxubee-MS"){
    race_NoxubeeMO <- subset.data.frame(race, NAME=="Noxubee-MS")
    nodes_NoxubeeMO <- as.Node(race_NoxubeeMS) 
  } #51
  else if(input$selectcounty== "Oktibbeha-MS"){
    race_OktibbehaMO <- subset.data.frame(race, NAME=="Oktibbeha-MS")
    nodes_OktibbehaMO <- as.Node(race_OktibbehaMS) 
  } #52
  else if(input$selectcounty== "Panola-MS"){
    race_PanolaMO <- subset.data.frame(race, NAME=="Panola-MS")
    nodes_PanolaMO <- as.Node(race_PanolaMS) 
  } #53
  else if(input$selectcounty== "Pearl River-MS"){
    race_PearlRiverMO <- subset.data.frame(race, NAME=="Pearl River-MS")
    nodes_PearlRiverMO <- as.Node(race_PearlRiverMS) 
  } #####82
  else if(input$selectcounty== "Perry-MS"){
    race_PerryMO <- subset.data.frame(race, NAME=="Perry-MS")
    nodes_PerryMO <- as.Node(race_PerryMS) 
  } #54
  else if(input$selectcounty== "Pike-MS"){
    race_PikeMO <- subset.data.frame(race, NAME=="Pike-MS")
    nodes_PikeMO <- as.Node(race_PikeMS) 
  } #55
  else if(input$selectcounty== "Pontotoc-MS"){
    race_PontotocMO <- subset.data.frame(race, NAME=="Pontotoc-MS")
    nodes_PontotocMO <- as.Node(race_PontotocMS) 
  } #56 
  else if(input$selectcounty== "Prentiss-MS"){
    race_PrentissMO <- subset.data.frame(race, NAME=="Prentiss-MS")
    nodes_PrentissMO <- as.Node(race_PrentissMS) 
  } #57
  else if(input$selectcounty== "Quitman-MS"){
    race_QuitmanMO <- subset.data.frame(race, NAME=="Quitman-MS")
    nodes_QuitmanMO <- as.Node(race_QuitmanMS) 
  } #58
  else if(input$selectcounty== "Rankin-MS"){
    race_RankinMO <- subset.data.frame(race, NAME=="Rankin-MS")
    nodes_RankinMO <- as.Node(race_RankinMS) 
  } #59
  else if(input$selectcounty== "Scott-MS"){
    race_ScottMO <- subset.data.frame(race, NAME=="Scott-MS")
    nodes_ScottMO <- as.Node(race_ScottMS) 
  } #60
  else if(input$selectcounty== "Sharkey-MS"){
    race_SharkeyMO <- subset.data.frame(race, NAME=="Sharkey-MS")
    nodes_SharkeyMO <- as.Node(race_SharkeyMS) 
  } #61
  else if(input$selectcounty== "Simpson-MS"){
    race_SimpsonMO <- subset.data.frame(race, NAME=="Simpson-MS")
    nodes_SimpsonMO <- as.Node(race_SimpsonMS) 
  } #62
  else if(input$selectcounty== "Smith-MS"){
    race_SmithMO <- subset.data.frame(race, NAME=="Smith-MS")
    nodes_SmithMO <- as.Node(race_SmithMS) 
  } #63
  else if(input$selectcounty== "Stone-MS"){
    race_StoneMO <- subset.data.frame(race, NAME=="Stone-MS")
    nodes_StoneMO <- as.Node(race_StoneMS) 
  } #64
  else if(input$selectcounty== "Sunflower-MS"){
    race_SunflowerMO <- subset.data.frame(race, NAME=="Sunflower-MS")
    nodes_SunflowerMO <- as.Node(race_SunflowerMS) 
  } #65 
  else if(input$selectcounty== "Tallahatchie-MS"){
    race_TallahatchieMO <- subset.data.frame(race, NAME=="Tallahatchie-MS")
    nodes_TallahatchieMO <- as.Node(race_TallahatchieMS) 
  } #66
  else if(input$selectcounty== "Tate-MS"){
    race_TateMO <- subset.data.frame(race, NAME=="Tate-MS")
    nodes_TateMO <- as.Node(race_TateMS) 
  } #67
  else if(input$selectcounty== "Tippah-MS"){
    race_TippahMO <- subset.data.frame(race, NAME=="Tippah-MS")
    nodes_TippahMO <- as.Node(race_TippahMS) 
  } #68
  else if(input$selectcounty== "Tishomingo-MS"){
    race_TishomingoMO <- subset.data.frame(race, NAME=="Tishomingo-MS")
    nodes_TishomingoMO <- as.Node(race_TishomingoMS) 
  } #69 
  else if(input$selectcounty== "Tunica-MS"){
    race_TunicaMO <- subset.data.frame(race, NAME=="Tunica-MS")
    nodes_TunicaMO <- as.Node(race_TunicaMS) 
  } #70
  else if(input$selectcounty== "Union-MS"){
    race_UnionMO <- subset.data.frame(race, NAME=="Union-MS")
    nodes_UnionMO <- as.Node(race_UnionMS) 
  } #71
  else if(input$selectcounty== "Walthall-MS"){
    race_WalthallMO <- subset.data.frame(race, NAME=="Walthall-MS")
    nodes_WalthallMO <- as.Node(race_WalthallMS) 
  } #72
  else if(input$selectcounty== "Warren-MS"){
    race_WarrenMO <- subset.data.frame(race, NAME=="Warren-MS")
    nodes_WarrenMO <- as.Node(race_WarrenMS) 
  } #73
  else if(input$selectcounty== "Washington-MS"){
    race_WashingtonMO <- subset.data.frame(race, NAME=="Washington-MS")
    nodes_WashingtonMO <- as.Node(race_WashingtonMS) 
  } #74 
  else if(input$selectcounty== "Wayne-MS"){
    race_WayneMO <- subset.data.frame(race, NAME=="Wayne-MS")
    nodes_WayneMO <- as.Node(race_WayneMS) 
  } #75
  else if(input$selectcounty== "Webster-MS"){
    race_WebsterMO <- subset.data.frame(race, NAME=="Webster-MS")
    nodes_WebsterMO <- as.Node(race_WebsterMS) 
  } #76
  else if(input$selectcounty== "Wilkinson-MS"){
    race_WilkinsonMO <- subset.data.frame(race, NAME=="Wilkinson-MS")
    nodes_WilkinsonMO <- as.Node(race_WilkinsonMS) 
  } #77
  else if(input$selectcounty== "Winston-MS"){
    race_WinstonMO <- subset.data.frame(race, NAME=="Winston-MS")
    nodes_WinstonMO <- as.Node(race_WinstonMS) 
  } #78
  else if(input$selectcounty== "Yalobusha-MS"){
    race_YalobushaMO <- subset.data.frame(race, NAME=="Yalobusha-MS")
    nodes_YalobushaMO <- as.Node(race_YalobushaMS) 
  } #79
  else if(input$selectcounty== "Yazoo-MS"){
    race_YazooMO <- subset.data.frame(race, NAME=="Yazoo-MS")
    nodes_YazooMO <- as.Node(race_YazooMS) 
  } #80
  
######### MONTANA  ########
  else if(input$selectcounty== "Beaverhead-MT"){
    race_BeaverheadMT <- subset.data.frame(race, NAME=="Beaverhead-MT")
    nodes_BeaverheadMT <- as.Node(race_BeaverheadMT) 
  } #1
  else if(input$selectcounty== "Big Horn-MT"){
    race_BigHornMT <- subset.data.frame(race, NAME=="Big Horn-MT")
    nodes_BigHornMT <- as.Node(race_BigHornMT) 
  } #######51
  else if(input$selectcounty== "Blaine-MT"){
    race_BlaineMT <- subset.data.frame(race, NAME=="Blaine-MT")
    nodes_BlaineMT <- as.Node(race_BlaineMT) 
  } #2
  else if(input$selectcounty== "Broadwater-MT"){
    race_BroadwaterMT <- subset.data.frame(race, NAME=="Broadwater-MT")
    nodes_BroadwaterMT <- as.Node(race_BroadwaterMT) 
  } #3 
  else if(input$selectcounty== "Carbon-MT"){
    race_CarbonMT <- subset.data.frame(race, NAME=="Carbon-MT")
    nodes_CarbonMT <- as.Node(race_CarbonMT) 
  } #4
  else if(input$selectcounty== "Carter-MT"){
    race_CarterMT <- subset.data.frame(race, NAME=="Carter-MT")
    nodes_CarterMT <- as.Node(race_CarterMT) 
  } #5
  else if(input$selectcounty== "Cascade-MT"){
    race_CascadeMT <- subset.data.frame(race, NAME=="Cascade-MT")
    nodes_CascadeMT <- as.Node(race_CascadeMT) 
  } #6
  else if(input$selectcounty== "Chouteau-MT"){
    race_ChouteauMT <- subset.data.frame(race, NAME=="Chouteau-MT")
    nodes_ChouteauMT <- as.Node(race_ChouteauMT) 
  } #7
  else if(input$selectcounty== "Custer-MT"){
    race_CusterMT <- subset.data.frame(race, NAME=="Custer-MT")
    nodes_CusterMT <- as.Node(race_CusterMT) 
  } #8
  else if(input$selectcounty== "Daniels-MT"){
    race_DanielsMT <- subset.data.frame(race, NAME=="Daniels-MT")
    nodes_DanielsMT <- as.Node(race_DanielsMT) 
  } #9
  else if(input$selectcounty== "Deer Lodge-MT"){
    race_DeerlodgeMT <- subset.data.frame(race, NAME=="Deer Lodge-MT")
    nodes_DeerlodgeMT <- as.Node(race_DeerlodgeMT) 
  } #10 
  else if(input$selectcounty== "Dawson-MT"){
    race_DawsonMT <- subset.data.frame(race, NAME=="Dawson-MT")
    nodes_DawsonMT <- as.Node(race_DawsonMT) 
  } #11
  else if(input$selectcounty== "Fallon-MT"){
    race_FallonMT <- subset.data.frame(race, NAME=="Fallon-MT")
    nodes_FallonMT <- as.Node(race_FallonMT) 
  } #12
  else if(input$selectcounty== "Fergus-MT"){
    race_FergusMT <- subset.data.frame(race, NAME=="Fergus-MT")
    nodes_FergusMT <- as.Node(race_FergusMT) 
  } #13
  else if(input$selectcounty== "Flathead-MT"){
    race_FlatheadMT <- subset.data.frame(race, NAME=="Flathead-MT")
    nodes_FlatheadMT <- as.Node(race_FlatheadMT) 
  } #14
  else if(input$selectcounty== "Gallatin-MT"){
    race_GallatinMT <- subset.data.frame(race, NAME=="Gallatin-MT")
    nodes_GallatinMT <- as.Node(race_GallatinMT) 
  } #15
  else if(input$selectcounty== "Garfield-MT"){
    race_GarfieldMT <- subset.data.frame(race, NAME=="Garfield-MT")
    nodes_GarfieldMT <- as.Node(race_GarfieldMT) 
  } #16
  else if(input$selectcounty== "Glacier-MT"){
    race_GlacierMT <- subset.data.frame(race, NAME=="Glacier-MT")
    nodes_GlacierMT <- as.Node(race_GlacierMT) 
  } #17
  else if(input$selectcounty== "Granite-MT"){
    race_GraniteMT <- subset.data.frame(race, NAME=="Granite-MT")
    nodes_GraniteMT <- as.Node(race_GraniteMT) 
  } #18
  else if(input$selectcounty== "Golden Valley-MT"){
    race_GoldenValleyMT <- subset.data.frame(race, NAME=="Golden Valley-MT")
    nodes_GoldenValleyMT <- as.Node(race_GoldenValleyMT) 
  } ######52
  else if(input$selectcounty== "Hill-MT"){
    race_HillMT <- subset.data.frame(race, NAME=="Hill-MT")
    nodes_HillMT <- as.Node(race_HillMT) 
  } #19
  else if(input$selectcounty== "Jefferson-MT"){
    race_JeffersonMT <- subset.data.frame(race, NAME=="Jefferson-MT")
    nodes_JeffersonMT <- as.Node(race_JeffersonMT) 
  } #20 
  else if(input$selectcounty== "Judith Basin-MT"){
    race_JudithBasinMT <- subset.data.frame(race, NAME=="Judith Basin-MT")
    nodes_JudithBasinMT <- as.Node(race_JudithBasinMT) 
  } ########53
  else if(input$selectcounty== "Lake-MT"){
    race_LakeMT <- subset.data.frame(race, NAME=="Lake-MT")
    nodes_LakeMT <- as.Node(race_LakeMT) 
  } #21
  else if(input$selectcounty== "Lewis and Clark-MT"){
    race_LewisandClarkMT <- subset.data.frame(race, NAME=="Lewis and Clark-MT")
    nodes_LewisandClarkMT <- as.Node(race_LewisandClarkMT) 
  } ########54
  else if(input$selectcounty== "Liberty-MT"){
    race_LibertyMT <- subset.data.frame(race, NAME=="Liberty-MT")
    nodes_LibertyMT <- as.Node(race_LibertyMT) 
  } #22
  else if(input$selectcounty== "Lincoln-MT"){
    race_LincolnMT <- subset.data.frame(race, NAME=="Lincoln-MT")
    nodes_LincolnMT <- as.Node(race_LincolnMT) 
  } #23
  else if(input$selectcounty== "Madison-MT"){
    race_MadisonMT <- subset.data.frame(race, NAME=="Madison-MT")
    nodes_MadisonMT <- as.Node(race_MadisonMT) 
  } #24
  else if(input$selectcounty== "McCone-MT"){
    race_McConeMT <- subset.data.frame(race, NAME=="McCone-MT")
    nodes_McConeMT <- as.Node(race_McConeMT) 
  } #25
  else if(input$selectcounty== "Meagher-MT"){
    race_MeagherMT <- subset.data.frame(race, NAME=="Meagher-MT")
    nodes_MeagherMT <- as.Node(race_MeagherMT) 
  } #26
  else if(input$selectcounty== "Mineral-MT"){
    race_MineralMT <- subset.data.frame(race, NAME=="Mineral-MT")
    nodes_MineralMT <- as.Node(race_MineralMT) 
  } #27
  else if(input$selectcounty== "Missoula-MT"){
    race_MissoulaMT <- subset.data.frame(race, NAME=="Missoula-MT")
    nodes_MissoulaMT <- as.Node(race_MissoulaMT) 
  } #28
  else if(input$selectcounty== "Musselshell-MT"){
    race_MusselshellMT <- subset.data.frame(race, NAME=="Musselshell-MT")
    nodes_MusselshellMT <- as.Node(race_MusselshellMT) 
  } #29
  else if(input$selectcounty== "Park-MT"){
    race_ParkMT <- subset.data.frame(race, NAME=="Park-MT")
    nodes_ParkMT <- as.Node(race_ParkMT) 
  } #30
  else if(input$selectcounty== "Petroleum-MT"){
    race_PetroleumMT <- subset.data.frame(race, NAME=="Petroleum-MT")
    nodes_PetroleumMT <- as.Node(race_PetroleumMT) 
  } #31 
  else if(input$selectcounty== "Phillips-MT"){
    race_PhillipsMT <- subset.data.frame(race, NAME=="Phillips-MT")
    nodes_PhillipsMT <- as.Node(race_PhillipsMT) 
  } #32
  else if(input$selectcounty== "Pondera-MT"){
    race_PonderaMT <- subset.data.frame(race, NAME=="Pondera-MT")
    nodes_PonderaMT <- as.Node(race_PonderaMT) 
  } #33
  else if(input$selectcounty== "Powder River-MT"){
    race_PowderRiverMT <- subset.data.frame(race, NAME=="Powder River-MT")
    nodes_PowderRiverMT <- as.Node(race_PowderRiverMT) 
  } ##########55
  else if(input$selectcounty== "Powell-MT"){
    race_PowellMT <- subset.data.frame(race, NAME=="Powell-MT")
    nodes_PowellMT <- as.Node(race_PowellMT) 
  } #34
  else if(input$selectcounty== "Prairie-MT"){
    race_PrairieMT <- subset.data.frame(race, NAME=="Prairie-MT")
    nodes_PrairieMT <- as.Node(race_PrairieMT) 
  } #35
  else if(input$selectcounty== "Ravalli-MT"){
    race_RavalliMT <- subset.data.frame(race, NAME=="Ravalli-MT")
    nodes_RavalliMT <- as.Node(race_RavalliMT) 
  } #36
  else if(input$selectcounty== "Richland-MT"){
    race_RichlandMT <- subset.data.frame(race, NAME=="Richland-MT")
    nodes_RichlandMT <- as.Node(race_RichlandMT) 
  } #37
  else if(input$selectcounty== "Roosevelt-MT"){
    race_RooseveltMT <- subset.data.frame(race, NAME=="Roosevelt-MT")
    nodes_RooseveltMT <- as.Node(race_RooseveltMT) 
  } #38
  else if(input$selectcounty== "Rosebud-MT"){
    race_RosebudMT <- subset.data.frame(race, NAME=="Rosebud-MT")
    nodes_RosebudMT <- as.Node(race_RosebudMT) 
  } #39
  else if(input$selectcounty== "Sanders-MT"){
    race_SandersMT <- subset.data.frame(race, NAME=="Sanders-MT")
    nodes_SandersMT <- as.Node(race_SandersMT) 
  } #40
  else if(input$selectcounty== "Silver Bow-MT"){
    race_SilverBowMT <- subset.data.frame(race, NAME=="Silver Bow-MT")
    nodes_SilverBowMT <- as.Node(race_SilverBowMT) 
  } #41
  else if(input$selectcounty== "Sheridan-MT"){
    race_SheridanMT <- subset.data.frame(race, NAME=="Sheridan-MT")
    nodes_SheridanMT <- as.Node(race_SheridanMT) 
  } #42
  else if(input$selectcounty== "Stillwater-MT"){
    race_StillwaterMT <- subset.data.frame(race, NAME=="Stillwater-MT")
    nodes_StillwaterMT <- as.Node(race_StillwaterMT) 
  } #43
  else if(input$selectcounty== "Sweet Grass-MT"){
    race_SweetGrassMT <- subset.data.frame(race, NAME=="Sweet Grass-MT")
    nodes_SweetGrassMT <- as.Node(race_SweetGrassMT) 
  } ##########56
  else if(input$selectcounty== "Teton-MT"){
    race_TetonMT <- subset.data.frame(race, NAME=="Teton-MT")
    nodes_TetonMT <- as.Node(race_TetonMT) 
  } #44
  else if(input$selectcounty== "Toole-MT"){
    race_TooleMT <- subset.data.frame(race, NAME=="Toole-MT")
    nodes_TooleMT <- as.Node(race_TooleMT) 
  } #45
  else if(input$selectcounty== "Treasure-MT"){
    race_TreasureMT <- subset.data.frame(race, NAME=="Treasure-MT")
    nodes_TreasureMT <- as.Node(race_TreasureMT) 
  } #46
  else if(input$selectcounty== "Valley-MT"){
    race_ValleyMT <- subset.data.frame(race, NAME=="Valley-MT")
    nodes_ValleyMT <- as.Node(race_ValleyMT) 
  } #47
  else if(input$selectcounty== "Wheatland-MT"){
    race_WheatlandMT <- subset.data.frame(race, NAME=="Wheatland-MT")
    nodes_WheatlandMT <- as.Node(race_WheatlandMT) 
  } #48
  else if(input$selectcounty== "Wibaux-MT"){
    race_WibauxMT <- subset.data.frame(race, NAME=="Wibaux-MT")
    nodes_WibauxMT <- as.Node(race_WibauxMT) 
  } #49
  else if(input$selectcounty== "Yellowstone-MT"){
    race_YellowstoneMT <- subset.data.frame(race, NAME=="Yellowstone-MT")
    nodes_YellowstoneMT <- as.Node(race_YellowstoneMT) 
  } #50 
 
######### NORTH CAROLINA ########   
  else if(input$selectcounty== "Alamance-NC"){
    race_AlamanceNC <- subset.data.frame(race, NAME=="Alamance-NC")
    nodes_AlamanceNC <- as.Node(race_AlamanceNC) 
  } #1
  else if(input$selectcounty== "Alexander-NC"){
    race_AlexanderNC <- subset.data.frame(race, NAME=="Alexander-NC")
    nodes_AlexanderNC <- as.Node(race_AlexanderNC) 
  } #2
  else if(input$selectcounty== "Alleghany-NC"){
    race_AlleghanyNC <- subset.data.frame(race, NAME=="Alleghany-NC")
    nodes_AlleghanyNC <- as.Node(race_AlleghanyNC) 
  } #3
  else if(input$selectcounty== "Anson-NC"){
    race_AnsonNC <- subset.data.frame(race, NAME=="Anson-NC")
    nodes_AnsonNC <- as.Node(race_AnsonNC) 
  } #4
  else if(input$selectcounty== "Ashe-NC"){
    race_AsheNC <- subset.data.frame(race, NAME=="Ashe-NC")
    nodes_AsheNC <- as.Node(race_AsheNC) 
  } #5
  else if(input$selectcounty== "Avery-NC"){
    race_AveryNC <- subset.data.frame(race, NAME=="Avery-NC")
    nodes_AveryNC <- as.Node(race_AveryNC) 
  } #6
  else if(input$selectcounty== "Beaufort-NC"){
    race_BeaufortNC <- subset.data.frame(race, NAME=="Beaufort-NC")
    nodes_BeaufortNC <- as.Node(race_BeaufortNC) 
  } #7 
  else if(input$selectcounty== "Bertie-NC"){
    race_BertieNC <- subset.data.frame(race, NAME=="Bertie-NC")
    nodes_BertieNC <- as.Node(race_BertieNC) 
  } #8
  else if(input$selectcounty== "Bladen-NC"){
    race_BladenNC <- subset.data.frame(race, NAME=="Bladen-NC")
    nodes_BladenNC <- as.Node(race_BladenNC) 
  } #9
  else if(input$selectcounty== "Brunswick-NC"){
    race_BrunswickNC <- subset.data.frame(race, NAME=="Brunswick-NC")
    nodes_BrunswickNC <- as.Node(race_BrunswickNC) 
  } #10 
  else if(input$selectcounty== "Buncombe-NC"){
    race_BuncombeNC <- subset.data.frame(race, NAME=="Buncombe-NC")
    nodes_BuncombeNC <- as.Node(race_BuncombeNC) 
  } #11
  else if(input$selectcounty== "Burke-NC"){
    race_BurkeNC <- subset.data.frame(race, NAME=="Burke-NC")
    nodes_BurkeNC <- as.Node(race_BurkeNC) 
  } #12
  else if(input$selectcounty== "Cabarrus-NC"){
    race_CabarrusNC <- subset.data.frame(race, NAME=="Cabarrus-NC")
    nodes_CabarrusNC <- as.Node(race_CabarrusNC) 
  } #13
  else if(input$selectcounty== "Caldwell-NC"){
    race_CaldwellNC <- subset.data.frame(race, NAME=="Caldwell-NC")
    nodes_CaldwellNC <- as.Node(race_CaldwellNC) 
  } #14
  else if(input$selectcounty== "Camden-NC"){
    race_CamdenNC <- subset.data.frame(race, NAME=="Camden-NC")
    nodes_CamdenNC <- as.Node(race_CamdenNC) 
  } ############99
  else if(input$selectcounty== "Carteret-NC"){
    race_CarteretNC <- subset.data.frame(race, NAME=="Carteret-NC")
    nodes_CarteretNC <- as.Node(race_CarteretNC) 
  } #15
  else if(input$selectcounty== "Caswell-NC"){
    race_CaswellNC <- subset.data.frame(race, NAME=="Caswell-NC")
    nodes_CaswellNC <- as.Node(race_CaswellNC) 
  } #16
  else if(input$selectcounty== "Catawba-NC"){
    race_CatawbaNC <- subset.data.frame(race, NAME=="Catawba-NC")
    nodes_CatawbaNC <- as.Node(race_CatawbaNC) 
  } #17
  else if(input$selectcounty== "Chatham-NC"){
    race_ChathamNC <- subset.data.frame(race, NAME=="Chatham-NC")
    nodes_ChathamNC <- as.Node(race_ChathamNC) 
  } #18
  else if(input$selectcounty== "Cherokee-NC"){
    race_CherokeeNC <- subset.data.frame(race, NAME=="Cherokee-NC")
    nodes_CherokeeNC <- as.Node(race_CherokeeNC) 
  } #19
  else if(input$selectcounty== "Chowan-NC"){
    race_ChowanNC <- subset.data.frame(race, NAME=="Chowan-NC")
    nodes_ChowanNC <- as.Node(race_ChowanNC) 
  } #20
  else if(input$selectcounty== "Clay-NC"){
    race_ClayNC <- subset.data.frame(race, NAME=="Clay-NC")
    nodes_ClayNC <- as.Node(race_ClayNC) 
  } #21
  else if(input$selectcounty== "Cleveland-NC"){
    race_ClevelandNC <- subset.data.frame(race, NAME=="Cleveland-NC")
    nodes_ClevelandNC <- as.Node(race_ClevelandNC) 
  } #22 
  else if(input$selectcounty== "Columbus-NC"){
    race_ColumbusNC <- subset.data.frame(race, NAME=="Columbus-NC")
    nodes_ColumbusNC <- as.Node(race_ColumbusNC) 
  } #23
  else if(input$selectcounty== "Craven-NC"){
    race_CravenNC <- subset.data.frame(race, NAME=="Craven-NC")
    nodes_CravenNC <- as.Node(race_CravenNC) 
  } #24
  else if(input$selectcounty== "Cumberland-NC"){
    race_CumberlandNC <- subset.data.frame(race, NAME=="Cumberland-NC")
    nodes_CumberlandNC <- as.Node(race_CumberlandNC) 
  } #25 
  else if(input$selectcounty== "Currituck-NC"){
    race_CurrituckNC <- subset.data.frame(race, NAME=="Currituck-NC")
    nodes_CurrituckNC <- as.Node(race_CurrituckNC) 
  } #26
  else if(input$selectcounty== "Dare-NC"){
    race_DareNC <- subset.data.frame(race, NAME=="Dare-NC")
    nodes_DareNC <- as.Node(race_DareNC) 
  } #27
  else if(input$selectcounty== "Davidson-NC"){
    race_DavidsonNC <- subset.data.frame(race, NAME=="Davidson-NC")
    nodes_DavidsonNC <- as.Node(race_DavidsonNC) 
  } #28 
  else if(input$selectcounty== "Davie-NC"){
    race_DavieNC <- subset.data.frame(race, NAME=="Davie-NC")
    nodes_DavieNC <- as.Node(race_DavieNC) 
  } #29
  else if(input$selectcounty== "Duplin-NC"){
    race_DuplinNC <- subset.data.frame(race, NAME=="Duplin-NC")
    nodes_DuplinNC <- as.Node(race_DuplinNC) 
  } #30
  else if(input$selectcounty== "Durham-NC"){
    race_DurhamNC <- subset.data.frame(race, NAME=="Durham-NC")
    nodes_DurhamNC <- as.Node(race_DurhamNC) 
  } #31
  else if(input$selectcounty== "Edgecombe-NC"){
    race_EdgecombeNC <- subset.data.frame(race, NAME=="Edgecombe-NC")
    nodes_EdgecombeNC <- as.Node(race_EdgecombeNC) 
  } #32
  else if(input$selectcounty== "Forsyth-NC"){
    race_ForsythNC <- subset.data.frame(race, NAME=="Forsyth-NC")
    nodes_ForsythNC <- as.Node(race_ForsythNC) 
  } #33
  else if(input$selectcounty== "Franklin-NC"){
    race_FranklinNC <- subset.data.frame(race, NAME=="Franklin-NC")
    nodes_FranklinNC <- as.Node(race_FranklinNC) 
  } #34
  else if(input$selectcounty== "Gaston-NC"){
    race_GastonNC <- subset.data.frame(race, NAME=="Gaston-NC")
    nodes_GastonNC <- as.Node(race_GastonNC) 
  } #35
  else if(input$selectcounty== "Gates-NC"){
    race_GatesNC <- subset.data.frame(race, NAME=="Gates-NC")
    nodes_GatesNC <- as.Node(race_GatesNC) 
  } #36
  else if(input$selectcounty== "Graham-NC"){
    race_GrahamNC <- subset.data.frame(race, NAME=="Graham-NC")
    nodes_GrahamNC <- as.Node(race_GrahamNC) 
  } #37
  else if(input$selectcounty== "Granville-NC"){
    race_GranvilleNC <- subset.data.frame(race, NAME=="Granville-NC")
    nodes_GranvilleNC <- as.Node(race_GranvilleNC) 
  } #38
  else if(input$selectcounty== "Greene-NC"){
    race_GreeneNC <- subset.data.frame(race, NAME=="Greene-NC")
    nodes_GreeneNC <- as.Node(race_GreeneNC) 
  } #39
  else if(input$selectcounty== "Guilford-NC"){
    race_GuilfordNC <- subset.data.frame(race, NAME=="Guilford-NC")
    nodes_GuilfordNC <- as.Node(race_GuilfordNC) 
  } #40
  else if(input$selectcounty== "Halifax-NC"){
    race_HalifaxNC <- subset.data.frame(race, NAME=="Halifax-NC")
    nodes_HalifaxNC <- as.Node(race_HalifaxNC) 
  } #41
  else if(input$selectcounty== "Harnett-NC"){
    race_HarnettNC <- subset.data.frame(race, NAME=="Harnett-NC")
    nodes_HarnettNC <- as.Node(race_HarnettNC) 
  } #42
  else if(input$selectcounty== "Haywood-NC"){
    race_HaywoodNC <- subset.data.frame(race, NAME=="Haywood-NC")
    nodes_HaywoodNC <- as.Node(race_HaywoodNC) 
  } #43
  else if(input$selectcounty== "Henderson-NC"){
    race_HendersonNC <- subset.data.frame(race, NAME=="Henderson-NC")
    nodes_HendersonNC <- as.Node(race_HendersonNC) 
  } #44
  else if(input$selectcounty== "Hertford-NC"){
    race_HertfordNC <- subset.data.frame(race, NAME=="Hertford-NC")
    nodes_HertfordNC <- as.Node(race_HertfordNC) 
  } #45
  else if(input$selectcounty== "Hoke-NC"){
    race_HokeNC <- subset.data.frame(race, NAME=="Hoke-NC")
    nodes_HokeNC <- as.Node(race_HokeNC) 
  } #46
  else if(input$selectcounty== "Hyde-NC"){
    race_HydeNC <- subset.data.frame(race, NAME=="Hyde-NC")
    nodes_HydeNC <- as.Node(race_HydeNC) 
  } #47
  else if(input$selectcounty== "Iredell-NC"){
    race_IredellNC <- subset.data.frame(race, NAME=="Iredell-NC")
    nodes_IredellNC <- as.Node(race_IredellNC) 
  } #48
  else if(input$selectcounty== "Jackson-NC"){
    race_JacksonNC <- subset.data.frame(race, NAME=="Jackson-NC")
    nodes_JacksonNC <- as.Node(race_JacksonNC) 
  } #49
  else if(input$selectcounty== "Johnston-NC"){
    race_JohnstonNC <- subset.data.frame(race, NAME=="Johnston-NC")
    nodes_JohnstonNC <- as.Node(race_JohnstonNC) 
  } #50
  else if(input$selectcounty== "Jones-NC"){
    race_JonesNC <- subset.data.frame(race, NAME=="Jones-NC")
    nodes_JonesNC <- as.Node(race_JonesNC) 
  } #51
  else if(input$selectcounty== "Lee-NC"){
    race_LeeNC <- subset.data.frame(race, NAME=="Lee-NC")
    nodes_LeeNC <- as.Node(race_LeeNC) 
  } #52
  else if(input$selectcounty== "Lenoir-NC"){
    race_LenoirNC <- subset.data.frame(race, NAME=="Lenoir-NC")
    nodes_LenoirNC <- as.Node(race_LenoirNC) 
  } #53
  else if(input$selectcounty== "Lincoln-NC"){
    race_LincolnNC <- subset.data.frame(race, NAME=="Lincoln-NC")
    nodes_LincolnNC <- as.Node(race_LincolnNC) 
  } #54
  else if(input$selectcounty== "Macon-NC"){
    race_MaconNC <- subset.data.frame(race, NAME=="Macon-NC")
    nodes_MaconNC <- as.Node(race_MaconNC) 
  } #55
  else if(input$selectcounty== "Madison-NC"){
    race_MadisonNC <- subset.data.frame(race, NAME=="Madison-NC")
    nodes_MadisonNC <- as.Node(race_MadisonNC) 
  } #56
  else if(input$selectcounty== "Martin-NC"){
    race_MartinNC <- subset.data.frame(race, NAME=="Martin-NC")
    nodes_MartinNC <- as.Node(race_MartinNC) 
  } #57
  else if(input$selectcounty== "McDowell-NC"){
    race_McDowellNC <- subset.data.frame(race, NAME=="McDowell-NC")
    nodes_McDowellNC <- as.Node(race_McDowellNC) 
  } #58
  else if(input$selectcounty== "Mecklenburg-NC"){
    race_MecklenburgNC <- subset.data.frame(race, NAME=="Mecklenburg-NC")
    nodes_MecklenburgNC <- as.Node(race_MecklenburgNC) 
  } #59
  else if(input$selectcounty== "Mitchell-NC"){
    race_MitchellNC <- subset.data.frame(race, NAME=="Mitchell-NC")
    nodes_MitchellNC <- as.Node(race_MitchellNC) 
  } #60
  else if(input$selectcounty== "Montgomery-NC"){
    race_MontgomeryNC <- subset.data.frame(race, NAME=="Montgomery-NC")
    nodes_MontgomeryNC <- as.Node(race_MontgomeryNC) 
  } #61
  else if(input$selectcounty== "Moore-NC"){
    race_MooreNC <- subset.data.frame(race, NAME=="Moore-NC")
    nodes_MooreNC <- as.Node(race_MooreNC) 
  } #62
  else if(input$selectcounty== "Nash-NC"){
    race_NashNC <- subset.data.frame(race, NAME=="Nash-NC")
    nodes_NashNC <- as.Node(race_NashNC) 
  } #63
  else if(input$selectcounty== "New Hanover-NC"){
    race_NewHavenNC <- subset.data.frame(race, NAME=="New Hanover-NC")
    nodes_NewHavenNC <- as.Node(race_NewHavenNC) 
  } ########99
  else if(input$selectcounty== "Northampton-NC"){
    race_NorthamptonNC <- subset.data.frame(race, NAME=="Northampton-NC")
    nodes_NorthamptonNC <- as.Node(race_NorthamptonNC) 
  } #64
  else if(input$selectcounty== "Onslow-NC"){
    race_OnslowNC <- subset.data.frame(race, NAME=="Onslow-NC")
    nodes_OnslowNC <- as.Node(race_OnslowNC) 
  } #65
  else if(input$selectcounty== "Orange-NC"){
    race_OrangeNC <- subset.data.frame(race, NAME=="Orange-NC")
    nodes_OrangeNC <- as.Node(race_OrangeNC) 
  } #66
  else if(input$selectcounty== "Pamlico-NC"){
    race_PamlicoNC <- subset.data.frame(race, NAME=="Pamlico-NC")
    nodes_PamlicoNC <- as.Node(race_PamlicoNC) 
  } #67
  else if(input$selectcounty== "Pasquotank-NC"){
    race_PasquotankNC <- subset.data.frame(race, NAME=="Pasquotank-NC")
    nodes_PasquotankNC <- as.Node(race_PasquotankNC) 
  } #68
  else if(input$selectcounty== "Pender-NC"){
    race_PenderNC <- subset.data.frame(race, NAME=="Pender-NC")
    nodes_PenderNC <- as.Node(race_PenderNC) 
  } #69
  else if(input$selectcounty== "Perquimans-NC"){
    race_PerquimansNC <- subset.data.frame(race, NAME=="Perquimans-NC")
    nodes_PerquimansNC <- as.Node(race_PerquimansNC) 
  } #70
  else if(input$selectcounty== "Person-NC"){
    race_PersonNC <- subset.data.frame(race, NAME=="Person-NC")
    nodes_PersonNC <- as.Node(race_PersonNC) 
  } #71
  else if(input$selectcounty== "Pitt-NC"){
    race_PittNC <- subset.data.frame(race, NAME=="Pitt-NC")
    nodes_PittNC <- as.Node(race_PittNC) 
  } #72
  else if(input$selectcounty== "Polk-NC"){
    race_PolkNC <- subset.data.frame(race, NAME=="Polk-NC")
    nodes_PolkNC <- as.Node(race_PolkNC) 
  } #73
  else if(input$selectcounty== "Randolph-NC"){
    race_RandolphNC <- subset.data.frame(race, NAME=="Randolph-NC")
    nodes_RandolphNC <- as.Node(race_RandolphNC) 
  } #74
  else if(input$selectcounty== "Richmond-NC"){
    race_RichmondNC <- subset.data.frame(race, NAME=="Richmond-NC")
    nodes_RichmondNC <- as.Node(race_RichmondNC) 
  } #75
  else if(input$selectcounty== "Robeson-NC"){
    race_RobesonNC <- subset.data.frame(race, NAME=="Robeson-NC")
    nodes_RobesonNC <- as.Node(race_RobesonNC) 
  } #76
  else if(input$selectcounty== "Rockingham-NC"){
    race_RockinghamNC <- subset.data.frame(race, NAME=="Rockingham-NC")
    nodes_RockinghamNC <- as.Node(race_RockinghamNC) 
  } #77
  else if(input$selectcounty== "Rowan-NC"){
    race_RowanNC <- subset.data.frame(race, NAME=="Rowan-NC")
    nodes_RowanNC <- as.Node(race_RowanNC) 
  } #78
  else if(input$selectcounty== "Rutherford-NC"){
    race_RutherfordNC <- subset.data.frame(race, NAME=="Rutherford-NC")
    nodes_RutherfordNC <- as.Node(race_RutherfordNC) 
  } #79
  else if(input$selectcounty== "Sampson-NC"){
    race_SampsonNC <- subset.data.frame(race, NAME=="Sampson-NC")
    nodes_SampsonNC <- as.Node(race_SampsonNC) 
  } #80
  else if(input$selectcounty== "Scotland-NC"){
    race_ScotlandNC <- subset.data.frame(race, NAME=="Scotland-NC")
    nodes_ScotlandNC <- as.Node(race_ScotlandNC) 
  } #81
  else if(input$selectcounty== "Stanly-NC"){
    race_StanlyNC <- subset.data.frame(race, NAME=="Stanly-NC")
    nodes_StanlyNC <- as.Node(race_StanlyNC) 
  } #82
  else if(input$selectcounty== "Stokes-NC"){
    race_StokesNC <- subset.data.frame(race, NAME=="Stokes-NC")
    nodes_StokesNC <- as.Node(race_StokesNC) 
  } #83
  else if(input$selectcounty== "Surry-NC"){
    race_SurryNC <- subset.data.frame(race, NAME=="Surry-NC")
    nodes_SurryNC <- as.Node(race_SurryNC) 
  } #84
  else if(input$selectcounty== "Swain-NC"){
    race_SwainNC <- subset.data.frame(race, NAME=="Swain-NC")
    nodes_SwainNC <- as.Node(race_SwainNC) 
  } #85
  else if(input$selectcounty== "Transylvania-NC"){
    race_TransylvaniaNC <- subset.data.frame(race, NAME=="Transylvania-NC")
    nodes_TransylvaniaNC <- as.Node(race_TransylvaniaNC) 
  } #86
  else if(input$selectcounty== "Tyrrell-NC"){
    race_TyrrellNC <- subset.data.frame(race, NAME=="Tyrrell-NC")
    nodes_TyrrellNC <- as.Node(race_TyrrellNC) 
  } #87
  else if(input$selectcounty== "Union-NC"){
    race_UnionNC <- subset.data.frame(race, NAME=="Union-NC")
    nodes_UnionNC <- as.Node(race_UnionNC) 
  } #88
  else if(input$selectcounty== "Vance-NC"){
    race_VanceNC <- subset.data.frame(race, NAME=="Vance-NC")
    nodes_VanceNC <- as.Node(race_VanceNC) 
  } #89
  else if(input$selectcounty== "Wake-NC"){
    race_WakeNC <- subset.data.frame(race, NAME=="Wake-NC")
    nodes_WakeNC <- as.Node(race_WakeNC) 
  } #90
  else if(input$selectcounty== "Warren-NC"){
    race_WarrenNC <- subset.data.frame(race, NAME=="Warren-NC")
    nodes_WarrenNC <- as.Node(race_WarrenNC) 
  } #91
  else if(input$selectcounty== "Washington-NC"){
    race_WashingtonNC <- subset.data.frame(race, NAME=="Washington-NC")
    nodes_WashingtonNC <- as.Node(race_WashingtonNC) 
  } #92
  else if(input$selectcounty== "Watauga-NC"){
    race_WataugaNC <- subset.data.frame(race, NAME=="Watauga-NC")
    nodes_WataugaNC <- as.Node(race_WataugaNC) 
  } #93
  else if(input$selectcounty== "Wayne-NC"){
    race_WayneNC <- subset.data.frame(race, NAME=="Wayne-NC")
    nodes_WayneNC <- as.Node(race_WayneNC) 
  } #94
  else if(input$selectcounty== "Wilkes-NC"){
    race_WilkesNC <- subset.data.frame(race, NAME=="Wilkes-NC")
    nodes_WilkesNC <- as.Node(race_WilkesNC) 
  } #95
  else if(input$selectcounty== "Wilson-NC"){
    race_WilsonNC <- subset.data.frame(race, NAME=="Wilson-NC")
    nodes_WilsonNC <- as.Node(race_WilsonNC) 
  } #96
  else if(input$selectcounty== "Yadkin-NC"){
    race_YadkinNC <- subset.data.frame(race, NAME=="Yadkin-NC")
    nodes_YadkinNC <- as.Node(race_YadkinNC) 
  } #97
  else if(input$selectcounty== "Yancey-NC"){
    race_YanceyNC <- subset.data.frame(race, NAME=="Yancey-NC")
    nodes_YanceyNC <- as.Node(race_YanceyNC) 
  } #98

######### NORTH DAKOTA #########
  else if(input$selectcounty== "Adams-ND"){
    race_AdamsND <- subset.data.frame(race, NAME=="Adams-ND")
    nodes_AdamsND <- as.Node(race_AdamsND) 
  } #1
  else if(input$selectcounty== "Barnes-ND"){
    race_BarnesND <- subset.data.frame(race, NAME=="Barnes-ND")
    nodes_BarnesND <- as.Node(race_BarnesND) 
  } #2
  else if(input$selectcounty== "Benson-ND"){
    race_BensonND <- subset.data.frame(race, NAME=="Benson-ND")
    nodes_BensonND <- as.Node(race_BensonND) 
  } #3
  else if(input$selectcounty== "Billings-ND"){
    race_BillingsND <- subset.data.frame(race, NAME=="Billings-ND")
    nodes_BillingsND <- as.Node(race_BillingsND) 
  } #4
  else if(input$selectcounty== "Bottineau-ND"){
    race_BottineauND <- subset.data.frame(race, NAME=="Bottineau-ND")
    nodes_BottineauND <- as.Node(race_BottineauND) 
  } #5
  else if(input$selectcounty== "Bowman-ND"){
    race_BowmanND <- subset.data.frame(race, NAME=="Bowman-ND")
    nodes_BowmanND <- as.Node(race_BowmanND) 
  } #6
  else if(input$selectcounty== "Burke-ND"){
    race_BurkeND <- subset.data.frame(race, NAME=="Burke-ND")
    nodes_BurkeND <- as.Node(race_BurkeND) 
  } #7
  else if(input$selectcounty== "Burleigh-ND"){
    race_BurleighND <- subset.data.frame(race, NAME=="Burleigh-ND")
    nodes_BurleighND <- as.Node(race_BurleighND) 
  } #8
  else if(input$selectcounty== "Cass-ND"){
    race_CassND <- subset.data.frame(race, NAME=="Cass-ND")
    nodes_CassND <- as.Node(race_CassND) 
  } #9
  else if(input$selectcounty== "Cavalier-ND"){
    race_CavalierND <- subset.data.frame(race, NAME=="Cavalier-ND")
    nodes_CavalierND <- as.Node(race_CavalierND) 
  } #10
  else if(input$selectcounty== "Dickey-ND"){
    race_DickeyND <- subset.data.frame(race, NAME=="Dickey-ND")
    nodes_DickeyND <- as.Node(race_DickeyND) 
  } #11
  else if(input$selectcounty== "Divide-ND"){
    race_DivideND <- subset.data.frame(race, NAME=="Divide-ND")
    nodes_DivideND <- as.Node(race_DivideND) 
  } #12
  else if(input$selectcounty== "Dunn-ND"){
    race_DunnND <- subset.data.frame(race, NAME=="Dunn-ND")
    nodes_DunnND <- as.Node(race_DunnND) 
  } #13
  else if(input$selectcounty== "Eddy-ND"){
    race_EddyND <- subset.data.frame(race, NAME=="Eddy-ND")
    nodes_EddyND <- as.Node(race_EddyND) 
  } #14
  else if(input$selectcounty== "Emmons-ND"){
    race_EmmonsND <- subset.data.frame(race, NAME=="Emmons-ND")
    nodes_EmmonsND <- as.Node(race_EmmonsND) 
  } #15
  else if(input$selectcounty== "Foster-ND"){
    race_FosterND <- subset.data.frame(race, NAME=="Foster-ND")
    nodes_FosterND <- as.Node(race_FosterND) 
  } #16
  else if(input$selectcounty== "Grant-ND"){
    race_GrantND <- subset.data.frame(race, NAME=="Grant-ND")
    nodes_GrantND <- as.Node(race_GrantND) 
  } #17
  else if(input$selectcounty== "Golden Valley-ND"){
    race_goldenvalleyND <- subset.data.frame(race, NAME=="Golden Valley-ND")
    nodes_goldenvalleyND <- as.Node(race_goldenvalleyND) 
  } ########52
  else if(input$selectcounty== "Grand Forks-ND"){
    race_GrandForksND <- subset.data.frame(race, NAME=="Grand Forks-ND")
    nodes_GrandForksND <- as.Node(race_GrandForksND) 
  } ##########53
  else if(input$selectcounty== "Griggs-ND"){
    race_GriggsND <- subset.data.frame(race, NAME=="Griggs-ND")
    nodes_GriggsND <- as.Node(race_GriggsND) 
  } #18
  else if(input$selectcounty== "Hettinger-ND"){
    race_HettingerND <- subset.data.frame(race, NAME=="Hettinger-ND")
    nodes_HettingerND <- as.Node(race_HettingerND) 
  } #19
  else if(input$selectcounty== "Kidder-ND"){
    race_KidderND <- subset.data.frame(race, NAME=="Kidder-ND")
    nodes_KidderND <- as.Node(race_KidderND) 
  } #20
  else if(input$selectcounty== "LaMoure-ND"){
    race_LaMoureND <- subset.data.frame(race, NAME=="LaMoure-ND")
    nodes_LaMoureND <- as.Node(race_LaMoureND) 
  } #21
  else if(input$selectcounty== "Logan-ND"){
    race_LoganND <- subset.data.frame(race, NAME=="Logan-ND")
    nodes_LoganND <- as.Node(race_LoganND) 
  } #22
  else if(input$selectcounty== "McHenry-ND"){
    race_McHenryND <- subset.data.frame(race, NAME=="McHenry-ND")
    nodes_McHenryND <- as.Node(race_McHenryND) 
  } #23
  else if(input$selectcounty== "McIntosh-ND"){
    race_McIntoshND <- subset.data.frame(race, NAME=="McIntosh-ND")
    nodes_McIntoshND <- as.Node(race_McIntoshND) 
  } #24
  else if(input$selectcounty== "McKenzie-ND"){
    race_McKenzieND <- subset.data.frame(race, NAME=="McKenzie-ND")
    nodes_McKenzieND <- as.Node(race_McKenzieND) 
  } #25
  else if(input$selectcounty== "McLean-ND"){
    race_McLeanND <- subset.data.frame(race, NAME=="McLean-ND")
    nodes_McLeanND <- as.Node(race_McLeanND) 
  } #26
  else if(input$selectcounty== "Mercer-ND"){
    race_MercerND <- subset.data.frame(race, NAME=="Mercer-ND")
    nodes_MercerND <- as.Node(race_MercerND) 
  } #27
  else if(input$selectcounty== "Morton-ND"){
    race_MortonND <- subset.data.frame(race, NAME=="Morton-ND")
    nodes_MortonND <- as.Node(race_MortonND) 
  } #28
  else if(input$selectcounty== "Mountrail-ND"){
    race_MountrailND <- subset.data.frame(race, NAME=="Mountrail-ND")
    nodes_MountrailND <- as.Node(race_MountrailND) 
  } #29
  else if(input$selectcounty== "Nelson-ND"){
    race_NelsonND <- subset.data.frame(race, NAME=="Nelson-ND")
    nodes_NelsonND <- as.Node(race_NelsonND) 
  } #30
  else if(input$selectcounty== "Oliver-ND"){
    race_OliverND <- subset.data.frame(race, NAME=="Oliver-ND")
    nodes_OliverND <- as.Node(race_OliverND) 
  }#31
  else if(input$selectcounty== "Pembina-ND"){
    race_PembinaND <- subset.data.frame(race, NAME=="Pembina-ND")
    nodes_PembinaND <- as.Node(race_PembinaND) 
  } #32
  else if(input$selectcounty== "Pierce-ND"){
    race_PierceND <- subset.data.frame(race, NAME=="Pierce-ND")
    nodes_PierceND <- as.Node(race_PierceND) 
  } #33
  else if(input$selectcounty== "Ramsey-ND"){
    race_RamseyND <- subset.data.frame(race, NAME=="Ramsey-ND")
    nodes_RamseyND <- as.Node(race_RamseyND) 
  } #34
  else if(input$selectcounty== "Ransom-ND"){
    race_RansomND <- subset.data.frame(race, NAME=="Ransom-ND")
    nodes_RansomND <- as.Node(race_RansomND) 
  } #35
  else if(input$selectcounty== "Renville-ND"){
    race_RenvilleND <- subset.data.frame(race, NAME=="Renville-ND")
    nodes_RenvilleND <- as.Node(race_RenvilleND) 
  } #36
  else if(input$selectcounty== "Richland-ND"){
    race_RichlandND <- subset.data.frame(race, NAME=="Richland-ND")
    nodes_RichlandND <- as.Node(race_RichlandND) 
  } #37
  else if(input$selectcounty== "Rolette-ND"){
    race_RoletteND <- subset.data.frame(race, NAME=="Rolette-ND")
    nodes_RoletteND <- as.Node(race_RoletteND) 
  } #38
  else if(input$selectcounty== "Sargent-ND"){
    race_SargentND <- subset.data.frame(race, NAME=="Sargent-ND")
    nodes_SargentND <- as.Node(race_SargentND) 
  } #39
  else if(input$selectcounty== "Sheridan-ND"){
    race_SheridanND <- subset.data.frame(race, NAME=="Sheridan-ND")
    nodes_SheridanND <- as.Node(race_SheridanND) 
  } #40
  else if(input$selectcounty== "Sioux-ND"){
    race_SiouxND <- subset.data.frame(race, NAME=="Sioux-ND")
    nodes_SiouxND <- as.Node(race_SiouxND) 
  } #41
  else if(input$selectcounty== "Slope-ND"){
    race_SlopeND <- subset.data.frame(race, NAME=="Slope-ND")
    nodes_SlopeND <- as.Node(race_SlopeND) 
  } #42
  else if(input$selectcounty== "Stark-ND"){
    race_StarkND <- subset.data.frame(race, NAME=="Stark-ND")
    nodes_StarkND <- as.Node(race_StarkND) 
  } #43
  else if(input$selectcounty== "Steele-ND"){
    race_SteeleND <- subset.data.frame(race, NAME=="Steele-ND")
    nodes_SteeleND <- as.Node(race_SteeleND) 
  } #44
  else if(input$selectcounty== "Stutsman-ND"){
    race_StutsmanND <- subset.data.frame(race, NAME=="Stutsman-ND")
    nodes_StutsmanND <- as.Node(race_StutsmanND) 
  } #45
  else if(input$selectcounty== "Towner-ND"){
    race_TownerND <- subset.data.frame(race, NAME=="Towner-ND")
    nodes_TownerND <- as.Node(race_TownerND) 
  } #46
  else if(input$selectcounty== "Traill-ND"){
    race_TraillND <- subset.data.frame(race, NAME=="Traill-ND")
    nodes_TraillND <- as.Node(race_TraillND) 
  } #47
  else if(input$selectcounty== "Walsh-ND"){
    race_WalshND <- subset.data.frame(race, NAME=="Walsh-ND")
    nodes_WalshND <- as.Node(race_WalshND) 
  } #48
  else if(input$selectcounty== "Ward-ND"){
    race_WardND <- subset.data.frame(race, NAME=="Ward-ND")
    nodes_WardND <- as.Node(race_WardND) 
  } #49
  else if(input$selectcounty== "Wells-ND"){
    race_WellsND <- subset.data.frame(race, NAME=="Wells-ND")
    nodes_WellsND <- as.Node(race_WellsND) 
  } #50
  else if(input$selectcounty== "Williams-ND"){
    race_WilliamsND <- subset.data.frame(race, NAME=="Williams-ND")
    nodes_WilliamsND <- as.Node(race_WilliamsND) 
  } #51
######### NEBRASKA, GO! BIG! RED! #########
  else if(input$selectcounty== "Adams-NE"){
    race_AdamsNE <- subset.data.frame(race, NAME=="Adams-NE")
    nodes_AdamsNE <- as.Node(race_AdamsNE) 
  } #1
  else if(input$selectcounty== "Antelope-NE"){
    race_AntelopeNE <- subset.data.frame(race, NAME=="Antelope-NE")
    nodes_AntelopeNE <- as.Node(race_AntelopeNE) 
  } #2
  else if(input$selectcounty== "Arthur-NE"){
    race_ArthurNE <- subset.data.frame(race, NAME=="Arthur-NE")
    nodes_ArthurNE <- as.Node(race_ArthurNE) 
  } #3
  else if(input$selectcounty== "Banner-NE"){
    race_BannerNE <- subset.data.frame(race, NAME=="Banner-NE")
    nodes_BannerNE <- as.Node(race_BannerNE) 
  } #4
  else if(input$selectcounty== "Blaine-NE"){
    race_BlaineNE <- subset.data.frame(race, NAME=="Blaine-NE")
    nodes_BlaineNE <- as.Node(race_BlaineNE) 
  } #5
  else if(input$selectcounty== "Boone-NE"){
    race_BooneNE <- subset.data.frame(race, NAME=="Boone-NE")
    nodes_BooneNE <- as.Node(race_BooneNE) 
  } #6
  else if(input$selectcounty== "Boyd-NE"){
    race_BoydNE <- subset.data.frame(race, NAME=="Boyd-NE")
    nodes_BoydNE <- as.Node(race_BoydNE) 
  } #7
  else if(input$selectcounty== "Box Butte-NE"){
    race_BoxButteNE <- subset.data.frame(race, NAME=="Box Butte-NE")
    nodes_BoxButteNE <- as.Node(race_BoxButteNE) 
  } #8
  else if(input$selectcounty== "Brown-NE"){
    race_BrownNE <- subset.data.frame(race, NAME=="Brown-NE")
    nodes_BrownNE <- as.Node(race_BrownNE) 
  } #9
  else if(input$selectcounty== "Buffalo-NE"){
    race_BuffaloNE <- subset.data.frame(race, NAME=="Buffalo-NE")
    nodes_BuffaloNE <- as.Node(race_BuffaloNE) 
  } #10
  else if(input$selectcounty== "Burt-NE"){
    race_BurtNE <- subset.data.frame(race, NAME=="Burt-NE")
    nodes_BurtNE <- as.Node(race_BurtNE) 
  } #11
  else if(input$selectcounty== "Butler-NE"){
    race_ButlerNE <- subset.data.frame(race, NAME=="Butler-NE")
    nodes_ButlerNE <- as.Node(race_ButlerNE) 
  } #12
  else if(input$selectcounty== "Cass-NE"){
    race_CassNE <- subset.data.frame(race, NAME=="Cass-NE")
    nodes_CassNE <- as.Node(race_CassNE) 
  } #13
  else if(input$selectcounty== "Cedar-NE"){
    race_CedarNE <- subset.data.frame(race, NAME=="Cedar-NE")
    nodes_CedarNE <- as.Node(race_CedarNE) 
  } #14
  else if(input$selectcounty== "Chase-NE"){
    race_ChaseNE <- subset.data.frame(race, NAME=="Chase-NE")
    nodes_ChaseNE <- as.Node(race_ChaseNE) 
  } #15
  else if(input$selectcounty== "Cherry-NE"){
    race_CherryNE <- subset.data.frame(race, NAME=="Cherry-NE")
    nodes_CherryNE <- as.Node(race_CherryNE) 
  } #16
  else if(input$selectcounty== "Cheyenne-NE"){
    race_CheyenneNE <- subset.data.frame(race, NAME=="Cheyenne-NE")
    nodes_CheyenneNE <- as.Node(race_CheyenneNE) 
  } #17
  else if(input$selectcounty== "Clay-NE"){
    race_ClayNE <- subset.data.frame(race, NAME=="Clay-NE")
    nodes_ClayNE <- as.Node(race_ClayNE) 
  } #18
  else if(input$selectcounty== "Colfax-NE"){
    race_ColfaxNE <- subset.data.frame(race, NAME=="Colfax-NE")
    nodes_ColfaxNE <- as.Node(race_ColfaxNE) 
  } #19
  else if(input$selectcounty== "Cuming-NE"){
    race_CumingNE <- subset.data.frame(race, NAME=="Cuming-NE")
    nodes_CumingNE <- as.Node(race_CumingNE) 
  } #20
  else if(input$selectcounty== "Custer-NE"){
    race_CusterNE <- subset.data.frame(race, NAME=="Custer-NE")
    nodes_CusterNE <- as.Node(race_CusterNE) 
  } #21
  else if(input$selectcounty== "Dakota-NE"){
    race_DakotaNE <- subset.data.frame(race, NAME=="Dakota-NE")
    nodes_DakotaNE <- as.Node(race_DakotaNE) 
  } #22
  else if(input$selectcounty== "Dawes-NE"){
    race_DawesNE <- subset.data.frame(race, NAME=="Dawes-NE")
    nodes_DawesNE <- as.Node(race_DawesNE) 
  } #23
  else if(input$selectcounty== "Dawson-NE"){
    race_DawsonNE <- subset.data.frame(race, NAME=="Dawson-NE")
    nodes_DawsonNE <- as.Node(race_DawsonNE) 
  } #24
  else if(input$selectcounty== "Deuel-NE"){
    race_DeuelNE <- subset.data.frame(race, NAME=="Deuel-NE")
    nodes_DeuelNE <- as.Node(race_DeuelNE) 
  } #25
  else if(input$selectcounty== "Dixon-NE"){
    race_DixonNE <- subset.data.frame(race, NAME=="Dixon-NE")
    nodes_DixonNE <- as.Node(race_DixonNE) 
  } #26
  else if(input$selectcounty== "Dodge-NE"){
    race_DodgeNE <- subset.data.frame(race, NAME=="Dodge-NE")
    nodes_DodgeNE <- as.Node(race_DodgeNE) 
  } #27
  else if(input$selectcounty== "Douglas-NE"){
    race_DouglasNE <- subset.data.frame(race, NAME=="Douglas-NE")
    nodes_DouglasNE <- as.Node(race_DouglasNE) 
  } #28
  else if(input$selectcounty== "Dundy-NE"){
    race_DundyNE <- subset.data.frame(race, NAME=="Dundy-NE")
    nodes_DundyNE <- as.Node(race_DundyNE) 
  } #29
  else if(input$selectcounty== "Fillmore-NE"){
    race_FillmoreNE <- subset.data.frame(race, NAME=="Fillmore-NE")
    nodes_FillmoreNE <- as.Node(race_FillmoreNE) 
  } #30
  else if(input$selectcounty== "Franklin-NE"){
    race_FranklinNE <- subset.data.frame(race, NAME=="Franklin-NE")
    nodes_FranklinNE <- as.Node(race_FranklinNE) 
  } #31
  else if(input$selectcounty== "Frontier-NE"){
    race_FrontierNE <- subset.data.frame(race, NAME=="Frontier-NE")
    nodes_FrontierNE <- as.Node(race_FrontierNE) 
  } #32
  else if(input$selectcounty== "Furnas-NE"){
    race_FurnasNE <- subset.data.frame(race, NAME=="Furnas-NE")
    nodes_FurnasNE <- as.Node(race_FurnasNE) 
  } #33
  else if(input$selectcounty== "Gage-NE"){
    race_GageNE <- subset.data.frame(race, NAME=="Gage-NE")
    nodes_GageNE <- as.Node(race_GageNE) 
  } #34
  else if(input$selectcounty== "Garden-NE"){
    race_GardenNE <- subset.data.frame(race, NAME=="Garden-NE")
    nodes_GardenNE <- as.Node(race_GardenNE) 
  } #35
  else if(input$selectcounty== "Garfield-NE"){
    race_GarfieldNE <- subset.data.frame(race, NAME=="Garfield-NE")
    nodes_GarfieldNE <- as.Node(race_GarfieldNE) 
  } #36
  else if(input$selectcounty== "Gosper-NE"){
    race_GosperNE <- subset.data.frame(race, NAME=="Gosper-NE")
    nodes_GosperNE <- as.Node(race_GosperNE) 
  } #37
  else if(input$selectcounty== "Grant-NE"){
    race_GrantNE <- subset.data.frame(race, NAME=="Grant-NE")
    nodes_GrantNE <- as.Node(race_GrantNE) 
  } #38
  else if(input$selectcounty== "Greeley-NE"){
    race_GreeleyNE <- subset.data.frame(race, NAME=="Greeley-NE")
    nodes_GreeleyNE <- as.Node(race_GreeleyNE) 
  } #39
  else if(input$selectcounty== "Hall-NE"){
    race_HallNE <- subset.data.frame(race, NAME=="Hall-NE")
    nodes_HallNE <- as.Node(race_HallNE) 
  } #40
  else if(input$selectcounty== "Hamilton-NE"){
    race_HamiltonNE <- subset.data.frame(race, NAME=="Hamilton-NE")
    nodes_HamiltonNE <- as.Node(race_HamiltonNE) 
  } #41
  else if(input$selectcounty== "Harlan-NE"){
    race_HarlanNE <- subset.data.frame(race, NAME=="Harlan-NE")
    nodes_HarlanNE <- as.Node(race_HarlanNE) 
  } #42
  else if(input$selectcounty== "Hayes-NE"){
    race_HayesNE <- subset.data.frame(race, NAME=="Hayes-NE")
    nodes_HayesNE <- as.Node(race_HayesNE) 
  } #43
  else if(input$selectcounty== "Hitchcock-NE"){
    race_HitchcockNE <- subset.data.frame(race, NAME=="Hitchcock-NE")
    nodes_HitchcockNE <- as.Node(race_HitchcockNE) 
  } #44
  else if(input$selectcounty== "Holt-NE"){
    race_HoltNE <- subset.data.frame(race, NAME=="Holt-NE")
    nodes_HoltNE <- as.Node(race_HoltNE) 
  } #45
  else if(input$selectcounty== "Hooker-NE"){
    race_HookerNE <- subset.data.frame(race, NAME=="Hooker-NE")
    nodes_HookerNE <- as.Node(race_HookerNE) 
  } #46
  else if(input$selectcounty== "Howard-NE"){
    race_HowardNE <- subset.data.frame(race, NAME=="Howard-NE")
    nodes_HowardNE <- as.Node(race_HowardNE) 
  } #47
  else if(input$selectcounty== "Jefferson-NE"){
    race_JeffersonNE <- subset.data.frame(race, NAME=="Jefferson-NE")
    nodes_JeffersonNE <- as.Node(race_JeffersonNE) 
  } #48
  else if(input$selectcounty== "Johnson-NE"){
    race_JohnsonNE <- subset.data.frame(race, NAME=="Johnson-NE")
    nodes_JohnsonNE <- as.Node(race_JohnsonNE) 
  } #49
  else if(input$selectcounty== "Kearney-NE"){
    race_KearneyNE <- subset.data.frame(race, NAME=="Kearney-NE")
    nodes_KearneyNE <- as.Node(race_KearneyNE) 
  } #50
  else if(input$selectcounty== "Keith-NE"){
    race_KeithNE <- subset.data.frame(race, NAME=="Keith-NE")
    nodes_KeithNE <- as.Node(race_KeithNE) 
  } #51
  else if(input$selectcounty== "Keya Paha-NE"){
    race_KeyaPahaNE <- subset.data.frame(race, NAME=="Keya Paha-NE")
    nodes_KeyaPahaNE <- as.Node(race_KeyaPahaNE) 
  } #52
  else if(input$selectcounty== "Kimball-NE"){
    race_KimballNE <- subset.data.frame(race, NAME=="Kimball-NE")
    nodes_KimballNE <- as.Node(race_KimballNE) 
  } #53
  else if(input$selectcounty== "Knox-NE"){
    race_KnoxNE <- subset.data.frame(race, NAME=="Knox-NE")
    nodes_KnoxNE <- as.Node(race_KnoxNE) 
  } #54
  else if(input$selectcounty== "Lancaster-NE"){
    race_LancasterNE <- subset.data.frame(race, NAME=="Lancaster-NE")
    nodes_LancasterNE <- as.Node(race_LancasterNE) 
  } #55
  else if(input$selectcounty== "Lincoln-NE"){
    race_LincolnNE <- subset.data.frame(race, NAME=="Lincoln-NE")
    nodes_LincolnNE <- as.Node(race_LincolnNE) 
  } #56
  else if(input$selectcounty== "Logan-NE"){
    race_LoganNE <- subset.data.frame(race, NAME=="Logan-NE")
    nodes_LoganNE <- as.Node(race_LoganNE) 
  } #57
  else if(input$selectcounty== "Loup-NE"){
    race_LoupNE <- subset.data.frame(race, NAME=="Loup-NE")
    nodes_LoupNE <- as.Node(race_LoupNE) 
  } #58
  else if(input$selectcounty== "Madison-NE"){
    race_MadisonNE <- subset.data.frame(race, NAME=="Madison-NE")
    nodes_MadisonNE <- as.Node(race_MadisonNE) 
  } #59
  else if(input$selectcounty== "McPherson-NE"){
    race_McPhersonNE <- subset.data.frame(race, NAME=="McPherson-NE")
    nodes_McPhersonNE <- as.Node(race_McPhersonNE) 
  } #60
  else if(input$selectcounty== "Merrick-NE"){
    race_MerrickNE <- subset.data.frame(race, NAME=="Merrick-NE")
    nodes_MerrickNE <- as.Node(race_MerrickNE) 
  } #61
  else if(input$selectcounty== "Morrill-NE"){
    race_MorrillNE <- subset.data.frame(race, NAME=="Morrill-NE")
    nodes_MorrillNE <- as.Node(race_MorrillNE) 
  } #62
  else if(input$selectcounty== "Nance-NE"){
    race_NanceNE <- subset.data.frame(race, NAME=="Nance-NE")
    nodes_NanceNE <- as.Node(race_NanceNE) 
  } #63
  else if(input$selectcounty== "Nemaha-NE"){
    race_NemahaNE <- subset.data.frame(race, NAME=="Nemaha-NE")
    nodes_NemahaNE <- as.Node(race_NemahaNE) 
  } #64
  else if(input$selectcounty== "Nuckolls-NE"){
    race_NuckollsNE <- subset.data.frame(race, NAME=="Nuckolls-NE")
    nodes_NuckollsNE <- as.Node(race_NuckollsNE) 
  } #65
  else if(input$selectcounty== "Otoe-NE"){
    race_OtoeNE <- subset.data.frame(race, NAME=="Otoe-NE")
    nodes_OtoeNE <- as.Node(race_OtoeNE) 
  } #66
  else if(input$selectcounty== "Pawnee-NE"){
    race_PawneeNE <- subset.data.frame(race, NAME=="Pawnee-NE")
    nodes_PawneeNE <- as.Node(race_PawneeNE) 
  } #67
  else if(input$selectcounty== "Perkins-NE"){
    race_PerkinsNE <- subset.data.frame(race, NAME=="Perkins-NE")
    nodes_PerkinsNE <- as.Node(race_PerkinsNE) 
  } #68
  else if(input$selectcounty== "Phelps-NE"){
    race_PhelpsNE <- subset.data.frame(race, NAME=="Phelps-NE")
    nodes_PhelpsNE <- as.Node(race_PhelpsNE) 
  } #69
  else if(input$selectcounty== "Pierce-NE"){
    race_PierceNE <- subset.data.frame(race, NAME=="Pierce-NE")
    nodes_PierceNE <- as.Node(race_PierceNE) 
  } #70
  else if(input$selectcounty== "Platte-NE"){
    race_PlatteNE <- subset.data.frame(race, NAME=="Platte-NE")
    nodes_PlatteNE <- as.Node(race_PlatteNE) 
  } #71
  else if(input$selectcounty== "Polk-NE"){
    race_PolkNE <- subset.data.frame(race, NAME=="Polk-NE")
    nodes_PolkNE <- as.Node(race_PolkNE) 
  } #72
  else if(input$selectcounty== "Red Willow-NE"){
    race_RedWillowNE <- subset.data.frame(race, NAME=="Red Willow-NE")
    nodes_RedWillowNE <- as.Node(race_RedWillowNE) 
  } #73
  else if(input$selectcounty== "Richardson-NE"){
    race_RichardsonNE <- subset.data.frame(race, NAME=="Richardson-NE")
    nodes_RichardsonNE <- as.Node(race_RichardsonNE) 
  } #74
  else if(input$selectcounty== "Rock-NE"){
    race_RockNE <- subset.data.frame(race, NAME=="Rock-NE")
    nodes_RockNE <- as.Node(race_RockNE) 
  } #75
  else if(input$selectcounty== "Saline-NE"){
    race_SalineNE <- subset.data.frame(race, NAME=="Saline-NE")
    nodes_SalineNE <- as.Node(race_SalineNE) 
  } #76
  else if(input$selectcounty== "Sarpy-NE"){
    race_SarpyNE <- subset.data.frame(race, NAME=="Sarpy-NE")
    nodes_SarpyNE <- as.Node(race_SarpyNE) 
  } #77
  else if(input$selectcounty== "Saunders-NE"){
    race_SaundersNE <- subset.data.frame(race, NAME=="Saunders-NE")
    nodes_SaundersNE <- as.Node(race_SaundersNE) 
  } #78
  else if(input$selectcounty== "Scotts Bluff-NE"){
    race_ScottsBluffNE <- subset.data.frame(race, NAME=="Scotts Bluff-NE")
    nodes_ScottsBluffNE <- as.Node(race_ScottsBluffNE) 
  } #79
  else if(input$selectcounty== "Seward-NE"){
    race_SewardNE <- subset.data.frame(race, NAME=="Seward-NE")
    nodes_SewardNE <- as.Node(race_SewardNE) 
  } #80
  else if(input$selectcounty== "Sheridan-NE"){
    race_SheridanNE <- subset.data.frame(race, NAME=="Sheridan-NE")
    nodes_SheridanNE <- as.Node(race_SheridanNE) 
  } #81
  else if(input$selectcounty== "Sherman-NE"){
    race_ShermanNE <- subset.data.frame(race, NAME=="Sherman-NE")
    nodes_ShermanNE <- as.Node(race_ShermanNE) 
  } #82
  else if(input$selectcounty== "Sioux-NE"){
    race_SiouxNE <- subset.data.frame(race, NAME=="Sioux-NE")
    nodes_SiouxNE <- as.Node(race_SiouxNE) 
  } #83
  else if(input$selectcounty== "Stanton-NE"){
    race_StantonNE <- subset.data.frame(race, NAME=="Stanton-NE")
    nodes_StantonNE <- as.Node(race_StantonNE) 
  } #84
  else if(input$selectcounty== "Thayer-NE"){
    race_ThayerNE <- subset.data.frame(race, NAME=="Thayer-NE")
    nodes_ThayerNE <- as.Node(race_ThayerNE) 
  } #85
  else if(input$selectcounty== "Thomas-NE"){
    race_ThomasNE <- subset.data.frame(race, NAME=="Thomas-NE")
    nodes_ThomasNE <- as.Node(race_ThomasNE) 
  } #86
  else if(input$selectcounty== "Thurston-NE"){
    race_ThurstonNE <- subset.data.frame(race, NAME=="Thurston-NE")
    nodes_ThurstonNE <- as.Node(race_ThurstonNE) 
  } #87
  else if(input$selectcounty== "Valley-NE"){
    race_ValleyNE <- subset.data.frame(race, NAME=="Valley-NE")
    nodes_ValleyNE <- as.Node(race_ValleyNE) 
  } #88
  else if(input$selectcounty== "Washington-NE"){
    race_WashingtonNE <- subset.data.frame(race, NAME=="Washington-NE")
    nodes_WashingtonNE <- as.Node(race_WashingtonNE) 
  } #89
  else if(input$selectcounty== "Wayne-NE"){
    race_WayneNE <- subset.data.frame(race, NAME=="Wayne-NE")
    nodes_WayneNE <- as.Node(race_WayneNE) 
  } #90
  else if(input$selectcounty== "Webster-NE"){
    race_WebsterNE <- subset.data.frame(race, NAME=="Webster-NE")
    nodes_WebsterNE <- as.Node(race_WebsterNE) 
  } #91
  else if(input$selectcounty== "Wheeler-NE"){
    race_WheelerNE <- subset.data.frame(race, NAME=="Wheeler-NE")
    nodes_WheelerNE <- as.Node(race_WheelerNE) 
  } #92
  else if(input$selectcounty== "York-NE"){
    race_YorkNE <- subset.data.frame(race, NAME=="York-NE")
    nodes_YorkNE <- as.Node(race_YorkNE) 
  } #93
######### NEW HAMPSHIRE ############
  else if(input$selectcounty== "Belknap-NH"){
    race_BelknapNH <- subset.data.frame(race, NAME=="Belknap-NH")
    nodes_BelknapNH <- as.Node(race_BelknapNH) 
  } #1
  else if(input$selectcounty== "Carroll-NH"){
    race_CarrollNH <- subset.data.frame(race, NAME=="Carroll-NH")
    nodes_CarrollNH <- as.Node(race_CarrollNH) 
  } #2
  else if(input$selectcounty== "Cheshire-NH"){
    race_CheshireNH <- subset.data.frame(race, NAME=="Cheshire-NH")
    nodes_CheshireNH <- as.Node(race_CheshireNH) 
  } #3
  else if(input$selectcounty== "Coos-NH"){
    race_CoosNH <- subset.data.frame(race, NAME=="Coos-NH")
    nodes_CoosNH <- as.Node(race_CoosNH) 
  } #4
  else if(input$selectcounty== "Grafton-NH"){
    race_GraftonNH <- subset.data.frame(race, NAME=="Grafton-NH")
    nodes_GraftonNH <- as.Node(race_GraftonNH) 
  } #5
  else if(input$selectcounty== "Hillsborough-NH"){
    race_HillsboroughNH <- subset.data.frame(race, NAME=="Hillsborough-NH")
    nodes_HillsboroughNH <- as.Node(race_HillsboroughNH) 
  } #6
  else if(input$selectcounty== "Merrimack-NH"){
    race_MerrimackNH <- subset.data.frame(race, NAME=="Merrimack-NH")
    nodes_MerrimackNH <- as.Node(race_MerrimackNH) 
  } #7
  else if(input$selectcounty== "Rockingham-NH"){
    race_RockinghamNH <- subset.data.frame(race, NAME=="Rockingham-NH")
    nodes_RockinghamNH <- as.Node(race_RockinghamNH) 
  } #8
  else if(input$selectcounty== "Strafford-NH"){
    race_StraffordNH <- subset.data.frame(race, NAME=="Strafford-NH")
    nodes_StraffordNH <- as.Node(race_StraffordNH) 
  } #9
  else if(input$selectcounty== "Sullivan-NH"){
    race_SullivanNH <- subset.data.frame(race, NAME=="Sullivan-NH")
    nodes_SullivanNH <- as.Node(race_SullivanNH) 
  } #10
######### NEW JERSEY #########
  else if(input$selectcounty== "Atlantic-NJ"){
    race_AtlanticNJ <- subset.data.frame(race, NAME=="Atlantic-NJ")
    nodes_AtlanticNJ <- as.Node(race_AtlanticNJ) 
  } #1
  else if(input$selectcounty== "Bergen-NJ"){
    race_BergenNJ <- subset.data.frame(race, NAME=="Bergen-NJ")
    nodes_BergenNJ <- as.Node(race_BergenNJ) 
  }  #2
  else if(input$selectcounty== "Burlington-NJ"){
    race_BurlingtonNJ <- subset.data.frame(race, NAME=="Burlington-NJ")
    nodes_BurlingtonNJ <- as.Node(race_BurlingtonNJ) 
  } #3 
  else if(input$selectcounty== "Camden-NJ"){
    race_CamdenNJ <- subset.data.frame(race, NAME=="Camden-NJ")
    nodes_CamdenNJ <- as.Node(race_CamdenNJ) 
  } #4
  else if(input$selectcounty== "Cumberland-NJ"){
    race_CumberlandNJ <- subset.data.frame(race, NAME=="Cumberland-NJ")
    nodes_CumberlandNJ <- as.Node(race_CumberlandNJ) 
  } #5 
  else if(input$selectcounty== "Essex-NJ"){
    race_EssexNJ <- subset.data.frame(race, NAME=="Essex-NJ")
    nodes_EssexNJ <- as.Node(race_EssexNJ) 
  }  #6
  else if(input$selectcounty== "Gloucester-NJ"){
    race_GloucesterNJ <- subset.data.frame(race, NAME=="Gloucester-NJ")
    nodes_GloucesterNJ <- as.Node(race_GloucesterNJ) 
  } #7 
  else if(input$selectcounty== "Hudson-NJ"){
    race_HudsonNJ <- subset.data.frame(race, NAME=="Hudson-NJ")
    nodes_HudsonNJ <- as.Node(race_HudsonNJ) 
  } #8
  else if(input$selectcounty== "Hunterdon-NJ"){
    race_HunterdonNJ <- subset.data.frame(race, NAME=="Hunterdon-NJ")
    nodes_HunterdonNJ <- as.Node(race_HunterdonNJ) 
  } #9
  else if(input$selectcounty== "Mercer-NJ"){
    race_MercerNJ <- subset.data.frame(race, NAME=="Mercer-NJ")
    nodes_MercerNJ <- as.Node(race_MercerNJ) 
  } #10
  else if(input$selectcounty== "Hudson-NJ"){
    race_HudsonNJ <- subset.data.frame(race, NAME=="Hudson-NJ")
    nodes_HudsonNJ <- as.Node(race_HudsonNJ) 
  } #11
  else if(input$selectcounty== "Middlesex-NJ"){
    race_MiddlesexNJ <- subset.data.frame(race, NAME=="Middlesex-NJ")
    nodes_MiddlesexNJ <- as.Node(race_MiddlesexNJ) 
  } #12
  else if(input$selectcounty== "Monmouth-NJ"){
    race_MonmouthNJ <- subset.data.frame(race, NAME=="Monmouth-NJ")
    nodes_MonmouthNJ <- as.Node(race_MonmouthNJ) 
  } #13
  else if(input$selectcounty== "Morris-NJ"){
    race_MorrisNJ <- subset.data.frame(race, NAME=="Morris-NJ")
    nodes_MorrisNJ <- as.Node(race_MorrisNJ) 
  } #14
  else if(input$selectcounty== "Ocean-NJ"){
    race_OceanNJ <- subset.data.frame(race, NAME=="Ocean-NJ")
    nodes_OceanNJ <- as.Node(race_OceanNJ) 
  } #15
  else if(input$selectcounty== "Passaic-NJ"){
    race_PassaicNJ <- subset.data.frame(race, NAME=="Passaic-NJ")
    nodes_PassaicNJ <- as.Node(race_PassaicNJ) 
  } #16
  else if(input$selectcounty== "Salem-NJ"){
    race_SalemNJ <- subset.data.frame(race, NAME=="Salem-NJ")
    nodes_SalemNJ <- as.Node(race_SalemNJ) 
  } #17
  else if(input$selectcounty== "Somerset-NJ"){
    race_SomersetNJ<- subset.data.frame(race, NAME=="Somerset-NJ")
    nodes_SomersetNJ<- as.Node(race_SomersetNJ) 
  } #18
  else if(input$selectcounty== "Sussex-NJ"){
    race_SussexNJ <- subset.data.frame(race, NAME=="Sussex-NJ")
    nodes_SussexNJ <- as.Node(race_SussexNJ) 
  } #19
  else if(input$selectcounty== "Union-NJ"){
    race_UnionNJ <- subset.data.frame(race, NAME=="Union-NJ")
    nodes_UnionNJ <- as.Node(race_UnionNJ) 
  } #20
  else if(input$selectcounty== "Warren-NJ"){
    race_warrenNJ <- subset.data.frame(race, NAME=="Warren-NJ")
    nodes_warrenNJ <- as.Node(race_warrenNJ) 
  } #21
  
######### NEW MEXICO ########  
  else if(input$selectcounty== "Bernalillo-NM"){
    race_BernalilloNM <- subset.data.frame(race, NAME=="Bernalillo-NM")
    nodes_BernalilloNM <- as.Node(race_BernalilloNM) 
  } #1
  else if(input$selectcounty== "Catron-NM"){
    race_CatronNM <- subset.data.frame(race, NAME=="Catron-NM")
    nodes_CatronNM <- as.Node(race_CatronNM) 
  }  #2
  else if(input$selectcounty== "Chaves-NM"){
    race_ChavesNM <- subset.data.frame(race, NAME=="Chaves-NM")
    nodes_ChavesNM <- as.Node(race_ChavesNM) 
  } #3
  else if(input$selectcounty== "Cibola-NM"){
    race_CibolaNM <- subset.data.frame(race, NAME=="Cibola-NM")
    nodes_CibolaNM <- as.Node(race_CibolaNM) 
  } #4
  else if(input$selectcounty== "Colfax-NM"){
    race_ColfaxNM <- subset.data.frame(race, NAME=="Colfax-NM")
    nodes_ColfaxNM <- as.Node(race_ColfaxNM) 
  } #5
  else if(input$selectcounty== "Curry-NM"){
    race_CurryNM <- subset.data.frame(race, NAME=="Curry-NM")
    nodes_CurryNM <- as.Node(race_CurryNM) 
  } #6
  else if(input$selectcounty== "De Baca-NM"){
    race_DeBacaNM <- subset.data.frame(race, NAME=="De Baca-NM")
    nodes_DeBacaNM <- as.Node(race_DeBacaNM) 
  } #7
  else if(input$selectcounty== "Dona Ana-NM"){
    race_DonaAnaNM <- subset.data.frame(race, NAME=="Dona Ana-NM")
    nodes_DonaAnaNM <- as.Node(race_DonaAnaNM) 
  } #8
  else if(input$selectcounty== "Eddy-NM"){
    race_EddyNM <- subset.data.frame(race, NAME=="Eddy-NM")
    nodes_EddyNM <- as.Node(race_EddyNM) 
  } #9
  else if(input$selectcounty== "Grant-NM"){
    race_GrantNM <- subset.data.frame(race, NAME=="Grant-NM")
    nodes_GrantNM <- as.Node(race_GrantNM) 
  } #10
  else if(input$selectcounty== "Guadalupe-NM"){
    race_GuadalupeNM <- subset.data.frame(race, NAME=="Guadalupe-NM")
    nodes_GuadalupeNM <- as.Node(race_GuadalupeNM) 
  } #11 
  else if(input$selectcounty== "Harding-NM"){
    race_HardingNM <- subset.data.frame(race, NAME=="Harding-NM")
    nodes_HardingNM <- as.Node(race_HardingNM) 
  } #12
  else if(input$selectcounty== "Hidalgo-NM"){
    race_HidalgoNM <- subset.data.frame(race, NAME=="Hidalgo-NM")
    nodes_HidalgoNM <- as.Node(race_HidalgoNM) 
  } #13
  else if(input$selectcounty== "Lea-NM"){
    race_LeaNM <- subset.data.frame(race, NAME=="Lea-NM")
    nodes_LeaNM <- as.Node(race_LeaNM) 
  } #14
  else if(input$selectcounty== "Lincoln-NM"){
    race_LincolnNM <- subset.data.frame(race, NAME=="Lincoln-NM")
    nodes_LincolnNM <- as.Node(race_LincolnNM) 
  } #15 
  else if(input$selectcounty== "Los Alamos-NM"){
    race_LosAlamosNM <- subset.data.frame(race, NAME=="Los Alamos-NM")
    nodes_LosAlamosNM <- as.Node(race_LosAlamosNM) 
  } #16
  else if(input$selectcounty== "Luna-NM"){
    race_LunaNM <- subset.data.frame(race, NAME=="Luna-NM")
    nodes_LunaNM <- as.Node(race_LunaNM) 
  } #17
  else if(input$selectcounty== "McKinley-NM"){
    race_McKinleyNM <- subset.data.frame(race, NAME=="McKinley-NM")
    nodes_McKinleyNM <- as.Node(race_McKinleyNM) 
  } #18 
  else if(input$selectcounty== "Mora-NM"){
    race_MoraNM <- subset.data.frame(race, NAME=="Mora-NM")
    nodes_MoraNM <- as.Node(race_MoraNM) 
  } #19
  else if(input$selectcounty== "Otero-NM"){
    race_OteroNM <- subset.data.frame(race, NAME=="Otero-NM")
    nodes_OteroNM <- as.Node(race_OteroNM) 
  } #20
  else if(input$selectcounty== "Quay-NM"){
    race_QuayNM <- subset.data.frame(race, NAME=="Quay-NM")
    nodes_QuayNM <- as.Node(race_QuayNM) 
  } #21
  else if(input$selectcounty== "Rio Arriba-NM"){
    race_RioArribaNM <- subset.data.frame(race, NAME=="Rio Arriba-NM")
    nodes_RioArribaNM <- as.Node(race_RioArribaNM) 
  } #22 
  else if(input$selectcounty== "Roosevelt-NM"){
    race_RooseveltNM <- subset.data.frame(race, NAME=="Roosevelt-NM")
    nodes_RooseveltNM <- as.Node(race_RooseveltNM) 
  } #23
  else if(input$selectcounty== "San Juan-NM"){
    race_SanJuanNM <- subset.data.frame(race, NAME=="San Juan-NM")
    nodes_SanJuanNM <- as.Node(race_SanJuanNM) 
  } #24
  else if(input$selectcounty== "San Miguel-NM"){
    race_SanMiguelNM <- subset.data.frame(race, NAME=="San Miguel-NM")
    nodes_SanMiguelNM <- as.Node(race_SanMiguelNM) 
  } #25
  else if(input$selectcounty== "Sandoval-NM"){
    race_SandovalNM <- subset.data.frame(race, NAME=="Sandoval-NM")
    nodes_SandovalNM <- as.Node(race_SandovalNM) 
  } #26
  else if(input$selectcounty== "Sierra-NM"){
    race_SierraNM <- subset.data.frame(race, NAME=="Sierra-NM")
    nodes_SierraNM <- as.Node(race_SierraNM) 
  } #27
  else if(input$selectcounty== "Santa Fe-NM"){
    race_SantaFeNM <- subset.data.frame(race, NAME=="Santa Fe-NM")
    nodes_SantaFeNM <- as.Node(race_SantaFeNM) 
  } #28
  else if(input$selectcounty== "Socorro-NM"){
    race_SocorroNM <- subset.data.frame(race, NAME=="Socorro-NM")
    nodes_SocorroNM <- as.Node(race_SocorroNM) 
  } #29
  else if(input$selectcounty== "Taos-NM"){
    race_TaosNM <- subset.data.frame(race, NAME=="Taos-NM")
    nodes_TaosNM <- as.Node(race_TaosNM) 
  } #30
  else if(input$selectcounty== "Torrance-NM"){
    race_TorranceNM <- subset.data.frame(race, NAME=="Torrance-NM")
    nodes_TorranceNM <- as.Node(race_TorranceNM) 
  } #31 
  else if(input$selectcounty== "Union-NM"){
    race_UnionNM <- subset.data.frame(race, NAME=="Union-NM")
    nodes_UnionNM <- as.Node(race_UnionNM) 
  } #32
  else if(input$selectcounty== "Valencia-NM"){
    race_ValenciaNM <- subset.data.frame(race, NAME=="Valencia-NM")
    nodes_ValenciaNM <- as.Node(race_ValenciaNM) 
  } #33
  
  #### *******************DONA ANA COUNTY NEEDS TO BE FIXED IN COUNTIES1
######### NEVADA #########
  else if(input$selectcounty== "Carson City-NV"){
    race_CarsonCityNV <- subset.data.frame(race, NAME=="Carson City-NV")
    nodes_CarsonCityNV <- as.Node(race_CarsonCityNV) 
  } #16 
  else if(input$selectcounty== "Churchill-NV"){
    race_ChurchillNV <- subset.data.frame(race, NAME=="Churchill-NV")
    nodes_ChurchillNV <- as.Node(race_ChurchillNV) 
  } #1
  else if(input$selectcounty== "Clark-NV"){
    race_ClarkNV <- subset.data.frame(race, NAME=="Clark-NV")
    nodes_ClarkNV <- as.Node(race_ClarkNV) 
  } #2
  else if(input$selectcounty== "Douglas-NV"){
    race_DouglasNV <- subset.data.frame(race, NAME=="Douglas-NV")
    nodes_DouglasNV <- as.Node(race_DouglasNV) 
  } #3
  else if(input$selectcounty== "Elko-NV"){
    race_ElkoNV <- subset.data.frame(race, NAME=="Elko-NV")
    nodes_ElkoNV <- as.Node(race_ElkoNV) 
  } #4
  else if(input$selectcounty== "Esmeralda-NV"){
    race_EsmeraldaNV <- subset.data.frame(race, NAME=="Esmeralda-NV")
    nodes_EsmeraldaNV <- as.Node(race_EsmeraldaNV) 
  } #5 
  else if(input$selectcounty== "Eureka-NV"){
    race_EurekaNV <- subset.data.frame(race, NAME=="Eureka-NV")
    nodes_EurekaNV <- as.Node(race_EurekaNV) 
  } #6
  else if(input$selectcounty== "Humboldt-NV"){
    race_HumboldtNV <- subset.data.frame(race, NAME=="Humboldt-NV")
    nodes_HumboldtNV <- as.Node(race_HumboldtNV) 
  } #7
  else if(input$selectcounty== "Lander-NV"){
    race_LanderNV <- subset.data.frame(race, NAME=="Lander-NV")
    nodes_LanderNV <- as.Node(race_LanderNV) 
  } #8
  else if(input$selectcounty== "Lincoln-NV"){
    race_LincolnNV <- subset.data.frame(race, NAME=="Lincoln-NV")
    nodes_LincolnNV <- as.Node(race_LincolnNV) 
  } #9
  else if(input$selectcounty== "Lyon-NV"){
    race_LyonNV <- subset.data.frame(race, NAME=="Lyon-NV")
    nodes_LyonNV <- as.Node(race_LyonNV) 
  } #10
  else if(input$selectcounty== "Mineral-NV"){
    race_MineralNV <- subset.data.frame(race, NAME=="Mineral-NV")
    nodes_MineralNV <- as.Node(race_MineralNV) 
  } #11
  else if(input$selectcounty== "Nye-NV"){
    race_NyeNV <- subset.data.frame(race, NAME=="Nye-NV")
    nodes_NyeNV <- as.Node(race_NyeNV) 
  } #12
  else if(input$selectcounty== "Pershing-NV"){
    race_PershingNV <- subset.data.frame(race, NAME=="Pershing-NV")
    nodes_PershingNV <- as.Node(race_PershingNV) 
  } #13 
  else if(input$selectcounty== "Storey-NV"){
    race_StoreyNV <- subset.data.frame(race, NAME=="Storey-NV")
    nodes_StoreyNV <- as.Node(race_StoreyNV) 
  } #14
  else if(input$selectcounty== "Washoe-NV"){
    race_WashoeNV <- subset.data.frame(race, NAME=="Washoe-NV")
    nodes_WashoeNV <- as.Node(race_WashoeNV) 
  } #15
  else if(input$selectcounty== "White Pine-NV"){
    race_WhitePineNV <- subset.data.frame(race, NAME=="White Pine-NV")
    nodes_WhitePineNV <- as.Node(race_WhitePineNV) 
  }
######### NEW YORK ######## 
  else if(input$selectcounty== "Albany-NY"){
    race_AlbanyNY <- subset.data.frame(race, NAME=="Albany-NY")
    nodes_AlbanyNY <- as.Node(race_AlbanyNY) 
  } #1
  else if(input$selectcounty== "Allegany-NY"){
    race_AlleganyNY <- subset.data.frame(race, NAME=="Allegany-NY")
    nodes_AlleganyNY <- as.Node(race_AlleganyNY) 
  } #2
  else if(input$selectcounty== "Bronx-NY"){
    race_BronxNY <- subset.data.frame(race, NAME=="Bronx-NY")
    nodes_BronxNY <- as.Node(race_BronxNY) 
  } #3
  else if(input$selectcounty== "Broome-NY"){
    race_BroomeNY <- subset.data.frame(race, NAME=="Broome-NY")
    nodes_BroomeNY <- as.Node(race_BroomeNY) 
  } #4
  else if(input$selectcounty== "Cattaraugus-NY"){
    race_CattaraugusNY <- subset.data.frame(race, NAME=="Cattaraugus-NY")
    nodes_CattaraugusNY <- as.Node(race_CattaraugusNY) 
  } #5 
  else if(input$selectcounty== "Cayuga-NY"){
    race_CayugaNY <- subset.data.frame(race, NAME=="Cayuga-NY")
    nodes_CayugaNY <- as.Node(race_CayugaNY) 
  } #6
  else if(input$selectcounty== "Chautauqua-NY"){
    race_ChautauquaNY <- subset.data.frame(race, NAME=="Chautauqua-NY")
    nodes_ChautauquaNY <- as.Node(race_ChautauquaNY) 
  } #7 
  else if(input$selectcounty== "Chemung-NY"){
    race_ChemungNY <- subset.data.frame(race, NAME=="Chemung-NY")
    nodes_ChemungNY <- as.Node(race_ChemungNY) 
  } #8
  else if(input$selectcounty== "Chenango-NY"){
    race_ChenangoNY <- subset.data.frame(race, NAME=="Chenango-NY")
    nodes_ChenangoNY <- as.Node(race_ChenangoNY) 
  } #9
  else if(input$selectcounty== "Clinton-NY"){
    race_ClintonNY <- subset.data.frame(race, NAME=="Clinton-NY")
    nodes_ClintonNY <- as.Node(race_ClintonNY) 
  } #10
  else if(input$selectcounty== "Columbia-NY"){
    race_ColumbiaNY <- subset.data.frame(race, NAME=="Columbia-NY")
    nodes_ColumbiaNY <- as.Node(race_ColumbiaNY) 
  } #11
  else if(input$selectcounty== "Cortland-NY"){
    race_CortlandNY <- subset.data.frame(race, NAME=="Cortland-NY")
    nodes_CortlandNY <- as.Node(race_CortlandNY) 
  } #12
  else if(input$selectcounty== "Delaware-NY"){
    race_DelawareNY <- subset.data.frame(race, NAME=="Delaware-NY")
    nodes_DelawareNY <- as.Node(race_DelawareNY) 
  } #13
  else if(input$selectcounty== "Dutchess-NY"){
    race_DutchessNY <- subset.data.frame(race, NAME=="Dutchess-NY")
    nodes_DutchessNY <- as.Node(race_DutchessNY) 
  } #14
  else if(input$selectcounty== "Erie-NY"){
    race_ErieNY <- subset.data.frame(race, NAME=="Erie-NY")
    nodes_ErieNY <- as.Node(race_ErieNY) 
  } #15
  else if(input$selectcounty== "Essex-NY"){
    race_EssexNY <- subset.data.frame(race, NAME=="Essex-NY")
    nodes_EssexNY <- as.Node(race_EssexNY) 
  } #16
  else if(input$selectcounty== "Franklin-NY"){
    race_FranklinNY <- subset.data.frame(race, NAME=="Franklin-NY")
    nodes_FranklinNY <- as.Node(race_FranklinNY) 
  } #17
  else if(input$selectcounty== "Fulton-NY"){
    race_FultonNY <- subset.data.frame(race, NAME=="Fulton-NY")
    nodes_FultonNY <- as.Node(race_FultonNY) 
  } #18
  else if(input$selectcounty== "Genesee-NY"){
    race_GeneseeNY <- subset.data.frame(race, NAME=="Genesee-NY")
    nodes_GeneseeNY <- as.Node(race_GeneseeNY) 
  } #19
  else if(input$selectcounty== "Greene-NY"){
    race_GreeneNY <- subset.data.frame(race, NAME=="Greene-NY")
    nodes_GreeneNY <- as.Node(race_GreeneNY) 
  } #20
  else if(input$selectcounty== "Hamilton-NY"){
    race_HamiltonNY <- subset.data.frame(race, NAME=="Hamilton-NY")
    nodes_HamiltonNY <- as.Node(race_HamiltonNY) 
  } #21
  else if(input$selectcounty== "Herkimer-NY"){
    race_HerkimerNY <- subset.data.frame(race, NAME=="Herkimer-NY")
    nodes_HerkimerNY <- as.Node(race_HerkimerNY) 
  } #22
  else if(input$selectcounty== "Jefferson-NY"){
    race_JeffersonNY <- subset.data.frame(race, NAME=="Jefferson-NY")
    nodes_JeffersonNY <- as.Node(race_JeffersonNY) 
  } #23
  else if(input$selectcounty== "Kings-NY"){
    race_KingsNY <- subset.data.frame(race, NAME=="Kings-NY")
    nodes_KingsNY <- as.Node(race_KingsNY) 
  } #24
  else if(input$selectcounty== "Lewis-NY"){
    race_LewisNY <- subset.data.frame(race, NAME=="Lewis-NY")
    nodes_LewisNY <- as.Node(race_LewisNY) 
  } #25
  else if(input$selectcounty== "Livingston-NY"){
    race_LivingstonNY <- subset.data.frame(race, NAME=="Livingston-NY")
    nodes_LivingstonNY <- as.Node(race_LivingstonNY) 
  } #26 
  else if(input$selectcounty== "Madison-NY"){
    race_MadisonNY <- subset.data.frame(race, NAME=="Madison-NY")
    nodes_MadisonNY <- as.Node(race_MadisonNY) 
  } #27
  else if(input$selectcounty== "Monroe-NY"){
    race_MonroeNY <- subset.data.frame(race, NAME=="Monroe-NY")
    nodes_MonroeNY <- as.Node(race_MonroeNY) 
  } #28
  else if(input$selectcounty== "Montgomery-NY"){
    race_MontgomeryNY <- subset.data.frame(race, NAME=="Montgomery-NY")
    nodes_MontgomeryNY <- as.Node(race_MontgomeryNY) 
  } #29 
  else if(input$selectcounty== "Nassau-NY"){
    race_NassauNY <- subset.data.frame(race, NAME=="Nassau-NY")
    nodes_NassauNY <- as.Node(race_NassauNY) 
  } #30
  else if(input$selectcounty== "New York-NY"){
    race_NewYorkNY <- subset.data.frame(race, NAME=="New York-NY")
    nodes_NewYorkNY <- as.Node(race_NewYorkNY) 
  } ##########62
  else if(input$selectcounty== "Niagara-NY"){
    race_NiagaraNY <- subset.data.frame(race, NAME=="Niagara-NY")
    nodes_NiagaraNY <- as.Node(race_NiagaraNY) 
  } #31
  else if(input$selectcounty== "Oneida-NY"){
    race_OneidaNY <- subset.data.frame(race, NAME=="Oneida-NY")
    nodes_OneidaNY <- as.Node(race_OneidaNY) 
  } #32
  else if(input$selectcounty== "Onondaga-NY"){
    race_OnondagaNY <- subset.data.frame(race, NAME=="Onondaga-NY")
    nodes_OnondagaNY <- as.Node(race_OnondagaNY) 
  } #33
  else if(input$selectcounty== "Ontario-NY"){
    race_OntarioNY <- subset.data.frame(race, NAME=="Ontario-NY")
    nodes_OntarioNY <- as.Node(race_OntarioNY) 
  } #34
  else if(input$selectcounty== "Orange-NY"){
    race_OrangeNY <- subset.data.frame(race, NAME=="Orange-NY")
    nodes_OrangeNY <- as.Node(race_OrangeNY) 
  } #35
  else if(input$selectcounty== "Orleans-NY"){
    race_OrleansNY <- subset.data.frame(race, NAME=="Orleans-NY")
    nodes_OrleansNY <- as.Node(race_OrleansNY) 
  } #36
  else if(input$selectcounty== "Oswego-NY"){
    race_OswegoNY <- subset.data.frame(race, NAME=="Oswego-NY")
    nodes_OswegoNY <- as.Node(race_OswegoNY) 
  } #37
  else if(input$selectcounty== "Otsego-NY"){
    race_OtsegoNY <- subset.data.frame(race, NAME=="Otsego-NY")
    nodes_OtsegoNY <- as.Node(race_OtsegoNY) 
  } #38
  else if(input$selectcounty== "Putnam-NY"){
    race_PutnamNY <- subset.data.frame(race, NAME=="Putnam-NY")
    nodes_PutnamNY <- as.Node(race_PutnamNY) 
  } #39
  else if(input$selectcounty== "Queens-NY"){
    race_QueensNY <- subset.data.frame(race, NAME=="Queens-NY")
    nodes_QueensNY <- as.Node(race_QueensNY) 
  } #40
  else if(input$selectcounty== "Rensselaer-NY"){
    race_RensselaerNY <- subset.data.frame(race, NAME=="Rensselaer-NY")
    nodes_RensselaerNY <- as.Node(race_RensselaerNY) 
  } #41
  else if(input$selectcounty== "Richmond-NY"){
    race_RichmondNY <- subset.data.frame(race, NAME=="Richmond-NY")
    nodes_RichmondNY <- as.Node(race_RichmondNY) 
  } #42
  else if(input$selectcounty== "Rockland-NY"){
    race_RocklandNY <- subset.data.frame(race, NAME=="Rockland-NY")
    nodes_RocklandNY <- as.Node(race_RocklandNY) 
  } #43
  else if(input$selectcounty== "Saratoga-NY"){
    race_SaratogaNY <- subset.data.frame(race, NAME=="Saratoga-NY")
    nodes_SaratogaNY <- as.Node(race_SaratogaNY) 
  } #44
  else if(input$selectcounty== "Schenectady-NY"){
    race_SchenectadyNY <- subset.data.frame(race, NAME=="Schenectady-NY")
    nodes_SchenectadyNY <- as.Node(race_SchenectadyNY) 
  } #45
  else if(input$selectcounty== "Schoharie-NY"){
    race_SchoharieNY <- subset.data.frame(race, NAME=="Schoharie-NY")
    nodes_SchoharieNY <- as.Node(race_SchoharieNY) 
  } #46
  else if(input$selectcounty== "Schuyler-NY"){
    race_SchuylerNY <- subset.data.frame(race, NAME=="Schuyler-NY")
    nodes_SchuylerNY <- as.Node(race_SchuylerNY) 
  } #47
  else if(input$selectcounty== "Seneca-NY"){
    race_SenecaNY <- subset.data.frame(race, NAME=="Seneca-NY")
    nodes_SenecaNY <- as.Node(race_SenecaNY) 
  } #48
  else if(input$selectcounty== "Steuben-NY"){
    race_SteubenNY <- subset.data.frame(race, NAME=="Steuben-NY")
    nodes_SteubenNY <- as.Node(race_SteubenNY) 
  } #49
  else if(input$selectcounty== "Suffolk-NY"){
    race_SuffolkNY <- subset.data.frame(race, NAME=="Suffolk-NY")
    nodes_SuffolkNY <- as.Node(race_SuffolkNY) 
  } #50
  else if(input$selectcounty== "Sullivan-NY"){
    race_SullivanNY <- subset.data.frame(race, NAME=="Sullivan-NY")
    nodes_SullivanNY <- as.Node(race_SullivanNY) 
  } #51
  else if(input$selectcounty== "St. Lawrence-NY"){
    race_StLawrenceNY <- subset.data.frame(race, NAME=="St. Lawrence-NY")
    nodes_StLawrenceNY <- as.Node(race_StLawrenceNY) 
  } #52
  else if(input$selectcounty== "Tioga-NY"){
    race_TiogaNY <- subset.data.frame(race, NAME=="Tioga-NY")
    nodes_TiogaNY <- as.Node(race_TiogaNY) 
  } #53
  else if(input$selectcounty== "Tompkins-NY"){
    race_TompkinsNY <- subset.data.frame(race, NAME=="Tompkins-NY")
    nodes_TompkinsNY <- as.Node(race_TompkinsNY) 
  } #54
  else if(input$selectcounty== "Ulster-NY"){
    race_UlsterNY <- subset.data.frame(race, NAME=="Ulster-NY")
    nodes_UlsterNY <- as.Node(race_UlsterNY) 
  } #55
  else if(input$selectcounty== "Warren-NY"){
    race_WarrenNY <- subset.data.frame(race, NAME=="Warren-NY")
    nodes_WarrenNY <- as.Node(race_WarrenNY) 
  } #56
  else if(input$selectcounty== "Washington-NY"){
    race_WashingtonNY <- subset.data.frame(race, NAME=="Washington-NY")
    nodes_WashingtonNY <- as.Node(race_WashingtonNY) 
  } #57
  else if(input$selectcounty== "Wayne-NY"){
    race_WayneNY <- subset.data.frame(race, NAME=="Wayne-NY")
    nodes_WayneNY <- as.Node(race_WayneNY) 
  } #58
  else if(input$selectcounty== "Westchester-NY"){
    race_WestchesterNY <- subset.data.frame(race, NAME=="Westchester-NY")
    nodes_WestchesterNY <- as.Node(race_WestchesterNY) 
  } #59
  else if(input$selectcounty== "Wyoming-NY"){
    race_WyomingNY <- subset.data.frame(race, NAME=="Wyoming-NY")
    nodes_WyomingNY <- as.Node(race_WyomingNY) 
  } #60
  else if(input$selectcounty== "Yates-NY"){
    race_YatesNY <- subset.data.frame(race, NAME=="Yates-NY")
    nodes_YatesNY <- as.Node(race_YatesNY) 
  } #61
  
  #### ***** READY
######### OHIO ##########  
  else if(input$selectcounty== "Adams-OH"){
    race_AdamsOH <- subset.data.frame(race, NAME=="Adams-OH")
    nodes_AdamsOH <- as.Node(race_AdamsOH) 
  } #1
  else if(input$selectcounty== "Allen-OH"){
    race_AllenOH <- subset.data.frame(race, NAME=="Allen-OH")
    nodes_AllenOH <- as.Node(race_AllenOH) 
  } #2
  else if(input$selectcounty== "Ashland-OH"){
    race_AshlandOH <- subset.data.frame(race, NAME=="Ashland-OH")
    nodes_AshlandOH <- as.Node(race_AshlandOH) 
  } #3
  else if(input$selectcounty== "Ashtabula-OH"){
    race_AshtabulaOH <- subset.data.frame(race, NAME=="Ashtabula-OH")
    nodes_AshtabulaOH <- as.Node(race_AshtabulaOH) 
  } #4
  else if(input$selectcounty== "Athens-OH"){
    race_AthensOH <- subset.data.frame(race, NAME=="Athens-OH")
    nodes_AthensOH <- as.Node(race_AthensOH) 
  } #5
  else if(input$selectcounty== "Auglaize-OH"){
    race_AuglaizeOH <- subset.data.frame(race, NAME=="Auglaize-OH")
    nodes_AuglaizeOH <- as.Node(race_AuglaizeOH) 
  } #6
  else if(input$selectcounty== "Belmont-OH"){
    race_BelmontOH <- subset.data.frame(race, NAME=="Belmont-OH")
    nodes_BelmontOH <- as.Node(race_BelmontOH) 
  } #7
  else if(input$selectcounty== "Brown-OH"){
    race_BrownOH <- subset.data.frame(race, NAME=="Brown-OH")
    nodes_BrownOH <- as.Node(race_BrownOH) 
  } #8
  else if(input$selectcounty== "Butler-OH"){
    race_ButlerOH <- subset.data.frame(race, NAME=="Butler-OH")
    nodes_ButlerOH <- as.Node(race_ButlerOH) 
  } #9
  else if(input$selectcounty== "Carroll-OH"){
    race_CarrollOH <- subset.data.frame(race, NAME=="Carroll-OH")
    nodes_CarrollOH <- as.Node(race_CarrollOH) 
  } #10
  else if(input$selectcounty== "Champaign-OH"){
    race_ChampaignOH <- subset.data.frame(race, NAME=="Champaign-OH")
    nodes_ChampaignOH <- as.Node(race_ChampaignOH) 
  } #11
  else if(input$selectcounty== "Clark-OH"){
    race_ClarkOH <- subset.data.frame(race, NAME=="Clark-OH")
    nodes_ClarkOH <- as.Node(race_ClarkOH) 
  } #12
  else if(input$selectcounty== "Clermont-OH"){
    race_ClermontOH <- subset.data.frame(race, NAME=="Clermont-OH")
    nodes_ClermontOH <- as.Node(race_ClermontOH) 
  } #13
  else if(input$selectcounty== "Clinton-OH"){
    race_ClintonOH <- subset.data.frame(race, NAME=="Clinton-OH")
    nodes_ClintonOH <- as.Node(race_ClintonOH) 
  } #14
  else if(input$selectcounty== "Columbiana-OH"){
    race_ColumbianaOH <- subset.data.frame(race, NAME=="Columbiana-OH")
    nodes_ColumbianaOH <- as.Node(race_ColumbianaOH) 
  } #15
  else if(input$selectcounty== "Coshocton-OH"){
    race_CoshoctonOH <- subset.data.frame(race, NAME=="Coshocton-OH")
    nodes_CoshoctonOH <- as.Node(race_CoshoctonOH) 
  } #16
  else if(input$selectcounty== "Crawford-OH"){
    race_CrawfordOH <- subset.data.frame(race, NAME=="Crawford-OH")
    nodes_CrawfordOH <- as.Node(race_CrawfordOH) 
  } #17
  else if(input$selectcounty== "Cuyahoga-OH"){
    race_CuyahogaOH <- subset.data.frame(race, NAME=="Cuyahoga-OH")
    nodes_CuyahogaOH <- as.Node(race_CuyahogaOH) 
  } #18
  else if(input$selectcounty== "Darke-OH"){
    race_DarkeOH <- subset.data.frame(race, NAME=="Darke-OH")
    nodes_DarkeOH <- as.Node(race_DarkeOH) 
  } #19
  else if(input$selectcounty== "Defiance-OH"){
    race_DefianceOH <- subset.data.frame(race, NAME=="Defiance-OH")
    nodes_DefianceOH <- as.Node(race_DefianceOH) 
  } #20
  else if(input$selectcounty== "Delaware-OH"){
    race_DelawareOH <- subset.data.frame(race, NAME=="Delaware-OH")
    nodes_DelawareOH <- as.Node(race_DelawareOH) 
  } #21
  else if(input$selectcounty== "Erie-OH"){
    race_ErieOH <- subset.data.frame(race, NAME=="Erie-OH")
    nodes_ErieOH <- as.Node(race_ErieOH) 
  } #22
  else if(input$selectcounty== "Fairfield-OH"){
    race_FairfieldOH <- subset.data.frame(race, NAME=="Fairfield-OH")
    nodes_FairfieldOH <- as.Node(race_FairfieldOH) 
  } #23
  else if(input$selectcounty== "Fayette-OH"){
    race_FayetteOH <- subset.data.frame(race, NAME=="Fayette-OH")
    nodes_FayetteOH <- as.Node(race_FayetteOH) 
  } #24
  else if(input$selectcounty== "Franklin-OH"){
    race_FranklinOH <- subset.data.frame(race, NAME=="Franklin-OH")
    nodes_FranklinOH <- as.Node(race_FranklinOH) 
  } #25
  else if(input$selectcounty== "Fulton-OH"){
    race_FultonOH <- subset.data.frame(race, NAME=="Fulton-OH")
    nodes_FultonOH <- as.Node(race_FultonOH) 
  } #26
  else if(input$selectcounty== "Gallia-OH"){
    race_GalliaOH <- subset.data.frame(race, NAME=="Gallia-OH")
    nodes_GalliaOH <- as.Node(race_GalliaOH) 
  } #27
  else if(input$selectcounty== "Geauga-OH"){
    race_GeaugaOH <- subset.data.frame(race, NAME=="Geauga-OH")
    nodes_GeaugaOH <- as.Node(race_GeaugaOH) 
  } #28
  else if(input$selectcounty== "Greene-OH"){
    race_GreeneOH <- subset.data.frame(race, NAME=="Greene-OH")
    nodes_GreeneOH <- as.Node(race_GreeneOH) 
  } #29
  else if(input$selectcounty== "Guernsey-OH"){
    race_GuernseyOH <- subset.data.frame(race, NAME=="Guernsey-OH")
    nodes_GuernseyOH <- as.Node(race_GuernseyOH) 
  } #30
  else if(input$selectcounty== "Hamilton-OH"){
    race_HamiltonOH <- subset.data.frame(race, NAME=="Hamilton-OH")
    nodes_HamiltonOH <- as.Node(race_HamiltonOH) 
  } #31
  else if(input$selectcounty== "Hancock-OH"){
    race_HancockOH <- subset.data.frame(race, NAME=="Hancock-OH")
    nodes_HancockOH <- as.Node(race_HancockOH) 
  }#32
  else if(input$selectcounty== "Hardin-OH"){
    race_HardinOH <- subset.data.frame(race, NAME=="Hardin-OH")
    nodes_HardinOH <- as.Node(race_HardinOH) 
  } #33
  else if(input$selectcounty== "Harrison-OH"){
    race_HarrisonOH <- subset.data.frame(race, NAME=="Harrison-OH")
    nodes_HarrisonOH <- as.Node(race_HarrisonOH) 
  } #34
  else if(input$selectcounty== "Henry-OH"){
    race_HenryOH <- subset.data.frame(race, NAME=="Henry-OH")
    nodes_HenryOH <- as.Node(race_HenryOH) 
  } #35
  else if(input$selectcounty== "Highland-OH"){
    race_HighlandOH <- subset.data.frame(race, NAME=="Highland-OH")
    nodes_HighlandOH <- as.Node(race_HighlandOH) 
  } #36
  else if(input$selectcounty== "Hocking-OH"){
    race_HockingOH <- subset.data.frame(race, NAME=="Hocking-OH")
    nodes_HockingOH <- as.Node(race_HockingOH) 
  } #37
  else if(input$selectcounty== "Holmes-OH"){
    race_HolmesOH <- subset.data.frame(race, NAME=="Holmes-OH")
    nodes_HolmesOH <- as.Node(race_HolmesOH) 
  } #38
  else if(input$selectcounty== "Huron-OH"){
    race_HuronOH <- subset.data.frame(race, NAME=="Huron-OH")
    nodes_HuronOH <- as.Node(race_HuronOH) 
  } #39
  else if(input$selectcounty== "Jackson-OH"){
    race_JacksonOH <- subset.data.frame(race, NAME=="Jackson-OH")
    nodes_JacksonOH <- as.Node(race_JacksonOH) 
  } #40
  else if(input$selectcounty== "Jefferson-OH"){
    race_JeffersonOH <- subset.data.frame(race, NAME=="Jefferson-OH")
    nodes_JeffersonOH <- as.Node(race_JeffersonOH) 
  } #41
  else if(input$selectcounty== "Knox-OH"){
    race_KnoxOH <- subset.data.frame(race, NAME=="Knox-OH")
    nodes_KnoxOH <- as.Node(race_KnoxOH) 
  } #42
  else if(input$selectcounty== "Lake-OH"){
    race_LakeOH <- subset.data.frame(race, NAME=="Lake-OH")
    nodes_LakeOH <- as.Node(race_LakeOH) 
  } #43
  else if(input$selectcounty== "Lawrence-OH"){
    race_LawrenceOH <- subset.data.frame(race, NAME=="Lawrence-OH")
    nodes_LawrenceOH <- as.Node(race_LawrenceOH) 
  } #44
  else if(input$selectcounty== "Licking-OH"){
    race_LickingOH <- subset.data.frame(race, NAME=="Licking-OH")
    nodes_LickingOH <- as.Node(race_LickingOH) 
  } #45
  else if(input$selectcounty== "Logan-OH"){
    race_LoganOH <- subset.data.frame(race, NAME=="Logan-OH")
    nodes_LoganOH <- as.Node(race_LoganOH) 
  } #46
  else if(input$selectcounty== "Lorain-OH"){
    race_LorainOH <- subset.data.frame(race, NAME=="Lorain-OH")
    nodes_LorainOH <- as.Node(race_LorainOH) 
  } #47
  else if(input$selectcounty== "Lucas-OH"){
    race_LucasOH <- subset.data.frame(race, NAME=="Lucas-OH")
    nodes_LucasOH <- as.Node(race_LucasOH) 
  } #48
  else if(input$selectcounty== "Madison-OH"){
    race_MadisonOH <- subset.data.frame(race, NAME=="Madison-OH")
    nodes_MadisonOH <- as.Node(race_MadisonOH) 
  } #49
  else if(input$selectcounty== "Mahoning-OH"){
    race_MahoningOH <- subset.data.frame(race, NAME=="Mahoning-OH")
    nodes_MahoningOH <- as.Node(race_MahoningOH) 
  } #50
  else if(input$selectcounty== "Marion-OH"){
    race_MarionOH <- subset.data.frame(race, NAME=="Marion-OH")
    nodes_MarionOH <- as.Node(race_MarionOH) 
  } #51
  else if(input$selectcounty== "Medina-OH"){
    race_MedinaOH <- subset.data.frame(race, NAME=="Medina-OH")
    nodes_MedinaOH <- as.Node(race_MedinaOH) 
  } #52
  else if(input$selectcounty== "Meigs-OH"){
    race_MeigsOH <- subset.data.frame(race, NAME=="Meigs-OH")
    nodes_MeigsOH <- as.Node(race_MeigsOH) 
  } #53
  else if(input$selectcounty== "Mercer-OH"){
    race_MercerOH <- subset.data.frame(race, NAME=="Mercer-OH")
    nodes_MercerOH <- as.Node(race_MercerOH) 
  } #54
  else if(input$selectcounty== "Miami-OH"){
    race_MiamiOH <- subset.data.frame(race, NAME=="Miami-OH")
    nodes_MiamiOH <- as.Node(race_MiamiOH) 
  } #55
  else if(input$selectcounty== "Monroe-OH"){
    race_MonroeOH <- subset.data.frame(race, NAME=="Monroe-OH")
    nodes_MonroeOH <- as.Node(race_MonroeOH) 
  } #56
  else if(input$selectcounty== "Montgomery-OH"){
    race_MontgomeryOH <- subset.data.frame(race, NAME=="Montgomery-OH")
    nodes_MontgomeryOH <- as.Node(race_MontgomeryOH) 
  } #57
  else if(input$selectcounty== "Morgan-OH"){
    race_MorganOH <- subset.data.frame(race, NAME=="Morgan-OH")
    nodes_MorganOH <- as.Node(race_MorganOH) 
  } #58
  else if(input$selectcounty== "Morrow-OH"){
    race_MorrowOH <- subset.data.frame(race, NAME=="Morrow-OH")
    nodes_MorrowOH <- as.Node(race_MorrowOH) 
  } #59
  else if(input$selectcounty== "Muskingum-OH"){
    race_MuskingumOH <- subset.data.frame(race, NAME=="Muskingum-OH")
    nodes_MuskingumOH <- as.Node(race_MuskingumOH) 
  } #60
  else if(input$selectcounty== "Noble-OH"){
    race_NobleOH <- subset.data.frame(race, NAME=="Noble-OH")
    nodes_NobleOH <- as.Node(race_NobleOH) 
  } #61
  else if(input$selectcounty== "Ottawa-OH"){
    race_OttawaOH <- subset.data.frame(race, NAME=="Ottawa-OH")
    nodes_OttawaOH <- as.Node(race_OttawaOH) 
  } #62
  else if(input$selectcounty== "Paulding-OH"){
    race_PauldingOH <- subset.data.frame(race, NAME=="Paulding-OH")
    nodes_PauldingOH <- as.Node(race_PauldingOH) 
  } #63
  else if(input$selectcounty== "Perry-OH"){
    race_PerryOH <- subset.data.frame(race, NAME=="Perry-OH")
    nodes_PerryOH <- as.Node(race_PerryOH) 
  } #64
  else if(input$selectcounty== "Pickaway-OH"){
    race_PickawayOH <- subset.data.frame(race, NAME=="Pickaway-OH")
    nodes_PickawayOH <- as.Node(race_PickawayOH) 
  } #65
  else if(input$selectcounty== "Pike-OH"){
    race_PikeOH <- subset.data.frame(race, NAME=="Pike-OH")
    nodes_PikeOH <- as.Node(race_PikeOH) 
  } #66
  else if(input$selectcounty== "Portage-OH"){
    race_PortageOH <- subset.data.frame(race, NAME=="Portage-OH")
    nodes_PortageOH <- as.Node(race_PortageOH) 
  } #67
  else if(input$selectcounty== "Preble-OH"){
    race_PrebleOH <- subset.data.frame(race, NAME=="Preble-OH")
    nodes_PrebleOH <- as.Node(race_PrebleOH) 
  } #68
  else if(input$selectcounty== "Putnam-OH"){
    race_PutnamOH <- subset.data.frame(race, NAME=="Putnam-OH")
    nodes_PutnamOH <- as.Node(race_PutnamOH) 
  } #69
  else if(input$selectcounty== "Richland-OH"){
    race_RichlandOH <- subset.data.frame(race, NAME=="Richland-OH")
    nodes_RichlandOH <- as.Node(race_RichlandOH) 
  } #70
  else if(input$selectcounty== "Ross-OH"){
    race_RossOH <- subset.data.frame(race, NAME=="Ross-OH")
    nodes_RossOH <- as.Node(race_RossOH) 
  } #71
  else if(input$selectcounty== "Sandusky-OH"){
    race_SanduskyOH <- subset.data.frame(race, NAME=="Sandusky-OH")
    nodes_SanduskyOH <- as.Node(race_SanduskyOH) 
  } #72
  else if(input$selectcounty== "Scioto-OH"){
    race_SciotoOH <- subset.data.frame(race, NAME=="Scioto-OH")
    nodes_SciotoOH <- as.Node(race_SciotoOH) 
  } #73
  else if(input$selectcounty== "Seneca-OH"){
    race_SenecaOH <- subset.data.frame(race, NAME=="Seneca-OH")
    nodes_SenecaOH <- as.Node(race_SenecaOH) 
  } #74
  else if(input$selectcounty== "Shelby-OH"){
    race_ShelbyOH <- subset.data.frame(race, NAME=="Shelby-OH")
    nodes_ShelbyOH <- as.Node(race_ShelbyOH) 
  } #75
  else if(input$selectcounty== "Stark-OH"){
    race_StarkOH <- subset.data.frame(race, NAME=="Stark-OH")
    nodes_StarkOH <- as.Node(race_StarkOH) 
  } #76
  else if(input$selectcounty== "Summit-OH"){
    race_SummitOH <- subset.data.frame(race, NAME=="Summit-OH")
    nodes_SummitOH <- as.Node(race_SummitOH) 
  } #77
  else if(input$selectcounty== "Trumbull-OH"){
    race_TrumbullOH <- subset.data.frame(race, NAME=="Trumbull-OH")
    nodes_TrumbullOH <- as.Node(race_TrumbullOH) 
  } #78
  else if(input$selectcounty== "Tuscarawas-OH"){
    race_TuscarawasOH <- subset.data.frame(race, NAME=="Tuscarawas-OH")
    nodes_TuscarawasOH <- as.Node(race_TuscarawasOH) 
  } #79
  else if(input$selectcounty== "Union-OH"){
    race_UnionOH <- subset.data.frame(race, NAME=="Union-OH")
    nodes_UnionOH <- as.Node(race_UnionOH) 
  } #80
  else if(input$selectcounty== "Van Wert-OH"){
    race_VanWertOH <- subset.data.frame(race, NAME=="Van Wert-OH")
    nodes_VanWertOH <- as.Node(race_VanWertOH) 
  } ########87
  else if(input$selectcounty== "Vinton-OH"){
    race_VintonOH <- subset.data.frame(race, NAME=="Vinton-OH")
    nodes_VintonOH <- as.Node(race_VintonOH) 
  } #########88
  else if(input$selectcounty== "Warren-OH"){
    race_WarrenOH <- subset.data.frame(race, NAME=="Warren-OH")
    nodes_WarrenOH <- as.Node(race_WarrenOH) 
  } #81
  else if(input$selectcounty== "Washington-OH"){
    race_WashingtonOH <- subset.data.frame(race, NAME=="Washington-OH")
    nodes_WashingtonOH <- as.Node(race_WashingtonOH) 
  } #82
  else if(input$selectcounty== "Wayne-OH"){
    race_WayneOH <- subset.data.frame(race, NAME=="Wayne-OH")
    nodes_WayneOH <- as.Node(race_WayneOH) 
  } #83
  else if(input$selectcounty== "Williams-OH"){
    race_WilliamsOH <- subset.data.frame(race, NAME=="Williams-OH")
    nodes_WilliamsOH <- as.Node(race_WilliamsOH) 
  } #84
  else if(input$selectcounty== "Wood-OH"){
    race_WoodOH <- subset.data.frame(race, NAME=="Wood-OH")
    nodes_WoodOH <- as.Node(race_WoodOH) 
  } #85
  else if(input$selectcounty== "Wyandot-OH"){
    race_WyandotOH <- subset.data.frame(race, NAME=="Wyandot-OH")
    nodes_WyandotOH <- as.Node(race_WyandotOH) 
  } #86
  
  ######************************* MISSING ONE ****************************
######### OKLAHOMA ########
  else if(input$selectcounty== "Adair-OK"){
    race_AdairOK <- subset.data.frame(race, NAME=="Adair-OK")
    nodes_AdairOK <- as.Node(race_AdairOK) 
  } #1
  else if(input$selectcounty== "Alfalfa-OK"){
    race_AlfalfaOK <- subset.data.frame(race, NAME=="Alfalfa-OK")
    nodes_AlfalfaOK <- as.Node(race_AlfalfaOK) 
  } #2
  else if(input$selectcounty== "Atoka-OK"){
    race_AtokaOK <- subset.data.frame(race, NAME=="Atoka-OK")
    nodes_AtokaOK <- as.Node(race_AtokaOK) 
  } #3
  else if(input$selectcounty== "Beaver-OK"){
    race_BeaverOK <- subset.data.frame(race, NAME=="Beaver-OK")
    nodes_BeaverOK <- as.Node(race_BeaverOK) 
  } #4
  else if(input$selectcounty== "Beckham-OK"){
    race_BeckhamOK <- subset.data.frame(race, NAME=="Beckham-OK")
    nodes_BeckhamOK <- as.Node(race_BeckhamOK) 
  } #5
  else if(input$selectcounty== "Blaine-OK"){
    race_BlaineOK <- subset.data.frame(race, NAME=="Blaine-OK")
    nodes_BlaineOK <- as.Node(race_BlaineOK) 
  } #6
  else if(input$selectcounty== "Bryan-OK"){
    race_BryanOK <- subset.data.frame(race, NAME=="Bryan-OK")
    nodes_BryanOK <- as.Node(race_BryanOK) 
  } #7
  else if(input$selectcounty== "Caddo-OK"){
    race_CaddoOK <- subset.data.frame(race, NAME=="Caddo-OK")
    nodes_CaddoOK <- as.Node(race_CaddoOK) 
  } #8
  else if(input$selectcounty== "Canadian-OK"){
    race_CanadianOK <- subset.data.frame(race, NAME=="Canadian-OK")
    nodes_CanadianOK <- as.Node(race_CanadianOK) 
  } #9
  else if(input$selectcounty== "Carter-OK"){
    race_CarterOK <- subset.data.frame(race, NAME=="Carter-OK")
    nodes_CarterOK <- as.Node(race_CarterOK) 
  } #10
  else if(input$selectcounty== "Cherokee-OK"){
    race_CherokeeOK <- subset.data.frame(race, NAME=="Cherokee-OK")
    nodes_CherokeeOK <- as.Node(race_CherokeeOK) 
  } #11
  else if(input$selectcounty== "Choctaw-OK"){
    race_ChoctawOK <- subset.data.frame(race, NAME=="Choctaw-OK")
    nodes_ChoctawOK <- as.Node(race_ChoctawOK) 
  } #12
  else if(input$selectcounty== "Cimarron-OK"){
    race_CimarronOK <- subset.data.frame(race, NAME=="Cimarron-OK")
    nodes_CimarronOK <- as.Node(race_CimarronOK) 
  } #13
  else if(input$selectcounty== "Cleveland-OK"){
    race_ClevelandOK <- subset.data.frame(race, NAME=="Cleveland-OK")
    nodes_ClevelandOK <- as.Node(race_ClevelandOK) 
  } #14
  else if(input$selectcounty== "Coal-OK"){
    race_CoalOK <- subset.data.frame(race, NAME=="Coal-OK")
    nodes_CoalOK <- as.Node(race_CoalOK) 
  } #15
  else if(input$selectcounty== "Comanche-OK"){
    race_ComancheOK <- subset.data.frame(race, NAME=="Comanche-OK")
    nodes_ComancheOK <- as.Node(race_ComancheOK) 
  } #16
  else if(input$selectcounty== "Cotton-OK"){
    race_CottonOK <- subset.data.frame(race, NAME=="Cotton-OK")
    nodes_CottonOK <- as.Node(race_CottonOK) 
  } #17
  else if(input$selectcounty== "Craig-OK"){
    race_CraigOK <- subset.data.frame(race, NAME=="Craig-OK")
    nodes_CraigOK <- as.Node(race_CraigOK) 
  } #18
  else if(input$selectcounty== "Creek-OK"){
    race_CreekOK <- subset.data.frame(race, NAME=="Creek-OK")
    nodes_CreekOK <- as.Node(race_CreekOK) 
  } #19
  else if(input$selectcounty== "Custer-OK"){
    race_CusterOK <- subset.data.frame(race, NAME=="Custer-OK")
    nodes_CusterOK <- as.Node(race_CusterOK) 
  } #20
  else if(input$selectcounty== "Delaware-OK"){
    race_DelawareOK <- subset.data.frame(race, NAME=="Delaware-OK")
    nodes_DelawareOK <- as.Node(race_DelawareOK) 
  } #21
  else if(input$selectcounty== "Dewey-OK"){
    race_DeweyOK <- subset.data.frame(race, NAME=="Dewey-OK")
    nodes_DeweyOK <- as.Node(race_DeweyOK) 
  } #22
  else if(input$selectcounty== "Ellis-OK"){
    race_EllisOK <- subset.data.frame(race, NAME=="Ellis-OK")
    nodes_EllisOK <- as.Node(race_EllisOK) 
  } #23
  else if(input$selectcounty== "Garfield-OK"){
    race_GarfieldOK <- subset.data.frame(race, NAME=="Garfield-OK")
    nodes_GarfieldOK <- as.Node(race_GarfieldOK) 
  } #24
  else if(input$selectcounty== "Garvin-OK"){
    race_GarvinOK <- subset.data.frame(race, NAME=="Garvin-OK")
    nodes_GarvinOK <- as.Node(race_GarvinOK) 
  } #25
  else if(input$selectcounty== "Grady-OK"){
    race_GradyOK <- subset.data.frame(race, NAME=="Grady-OK")
    nodes_GradyOK <- as.Node(race_GradyOK) 
  } #26
  else if(input$selectcounty== "Grant-OK"){
    race_GrantOK <- subset.data.frame(race, NAME=="Grant-OK")
    nodes_GrantOK <- as.Node(race_GrantOK) 
  } #27
  else if(input$selectcounty== "Greer-OK"){
    race_GreerOK <- subset.data.frame(race, NAME=="Greer-OK")
    nodes_GreerOK <- as.Node(race_GreerOK) 
  } #28
  else if(input$selectcounty== "Harmon-OK"){
    race_HarmonOK <- subset.data.frame(race, NAME=="Harmon-OK")
    nodes_HarmonOK <- as.Node(race_HarmonOK) 
  } #29
  else if(input$selectcounty== "Harper-OK"){
    race_HarperOK <- subset.data.frame(race, NAME=="Harper-OK")
    nodes_HarperOK <- as.Node(race_HarperOK) 
  } #30
  else if(input$selectcounty== "Haskell-OK"){
    race_HaskellOK <- subset.data.frame(race, NAME=="Haskell-OK")
    nodes_HaskellOK <- as.Node(race_HaskellOK) 
  } #31
  else if(input$selectcounty== "Hughes-OK"){
    race_AdairOK <- subset.data.frame(race, NAME=="Hughes-OK")
    nodes_AdairOK <- as.Node(race_AdairOK) 
  } #32
  else if(input$selectcounty== "Jackson-OK"){
    race_JacksonOK <- subset.data.frame(race, NAME=="Jackson-OK")
    nodes_JacksonOK <- as.Node(race_JacksonOK) 
  } #33
  else if(input$selectcounty== "Jefferson-OK"){
    race_JeffersonOK <- subset.data.frame(race, NAME=="Jefferson-OK")
    nodes_JeffersonOK <- as.Node(race_JeffersonOK) 
  } #34
  else if(input$selectcounty== "Johnston-OK"){
    race_JohnstonOK <- subset.data.frame(race, NAME=="Johnston-OK")
    nodes_JohnstonOK <- as.Node(race_JohnstonOK) 
  } #35
  else if(input$selectcounty== "Kay-OK"){
    race_KayOK <- subset.data.frame(race, NAME=="Kay-OK")
    nodes_KayOK <- as.Node(race_KayOK) 
  } #36
  else if(input$selectcounty== "Kingfisher-OK"){
    race_KingfisherOK <- subset.data.frame(race, NAME=="Kingfisher-OK")
    nodes_KingfisherOK <- as.Node(race_KingfisherOK) 
  } #37
  else if(input$selectcounty== "Kiowa-OK"){
    race_KiowaOK <- subset.data.frame(race, NAME=="Kiowa-OK")
    nodes_KiowaOK <- as.Node(race_KiowaOK) 
  } #38
  else if(input$selectcounty== "Latimer-OK"){
    race_LatimerOK <- subset.data.frame(race, NAME=="Latimer-OK")
    nodes_LatimerOK <- as.Node(race_LatimerOK) 
  } #39
  else if(input$selectcounty== "Le Flore-OK"){
    race_LeFloreOK <- subset.data.frame(race, NAME=="Le Flore-OK")
    nodes_LeFloreOK <- as.Node(race_LeFloreOK) 
  } #40
  else if(input$selectcounty== "Lincoln-OK"){
    race_LincolnOK <- subset.data.frame(race, NAME=="Lincoln-OK")
    nodes_LincolnOK <- as.Node(race_LincolnOK) 
  } #41
  else if(input$selectcounty== "Logan-OK"){
    race_LoganOK <- subset.data.frame(race, NAME=="Logan-OK")
    nodes_LoganOK <- as.Node(race_LoganOK) 
  } #42
  else if(input$selectcounty== "Love-OK"){
    race_LoveOK <- subset.data.frame(race, NAME=="Love-OK")
    nodes_LoveOK <- as.Node(race_LoveOK) 
  } #43
  else if(input$selectcounty== "Major-OK"){
    race_MajorOK <- subset.data.frame(race, NAME=="Major-OK")
    nodes_MajorOK <- as.Node(race_MajorOK) 
  } #44
  else if(input$selectcounty== "Marshall-OK"){
    race_MarshallOK <- subset.data.frame(race, NAME=="Marshall-OK")
    nodes_MarshallOK <- as.Node(race_MarshallOK) 
  } #45
  else if(input$selectcounty== "Mayes-OK"){
    race_MayesOK <- subset.data.frame(race, NAME=="Mayes-OK")
    nodes_MayesOK <- as.Node(race_MayesOK) 
  } #46
  else if(input$selectcounty== "McClain-OK"){
    race_McClainOK <- subset.data.frame(race, NAME=="McClain-OK")
    nodes_McClainOK <- as.Node(race_McClainOK) 
  } #47
  else if(input$selectcounty== "McCurtain-OK"){
    race_McCurtainOK <- subset.data.frame(race, NAME=="McCurtain-OK")
    nodes_McCurtainOK <- as.Node(race_McCurtainOK) 
  } #48
  else if(input$selectcounty== "McIntosh-OK"){
    race_McIntoshOK <- subset.data.frame(race, NAME=="McIntosh-OK")
    nodes_McIntoshOK <- as.Node(race_McIntoshOK) 
  } #49
  else if(input$selectcounty== "Murray-OK"){
    race_MurrayOK <- subset.data.frame(race, NAME=="Murray-OK")
    nodes_MurrayOK <- as.Node(race_MurrayOK) 
  } #50
  else if(input$selectcounty== "Muskogee-OK"){
    race_MuskogeeOK <- subset.data.frame(race, NAME=="Muskogee-OK")
    nodes_MuskogeeOK <- as.Node(race_MuskogeeOK) 
  } #51
  else if(input$selectcounty== "Noble-OK"){
    race_NobleOK <- subset.data.frame(race, NAME=="Noble-OK")
    nodes_NobleOK <- as.Node(race_NobleOK) 
  } #52
  else if(input$selectcounty== "Nowata-OK"){
    race_NowataOK <- subset.data.frame(race, NAME=="Nowata-OK")
    nodes_NowataOK <- as.Node(race_NowataOK) 
  } #53
  else if(input$selectcounty== "Okfuskee-OK"){
    race_OkfuskeeOK <- subset.data.frame(race, NAME=="Okfuskee-OK")
    nodes_OkfuskeeOK <- as.Node(race_OkfuskeeOK) 
  } #54
  else if(input$selectcounty== "Oklahoma-OK"){
    race_OklahomaOK <- subset.data.frame(race, NAME=="Oklahoma-OK")
    nodes_OklahomaOK <- as.Node(race_OklahomaOK) 
  } #55
  else if(input$selectcounty== "Okmulgee-OK"){
    race_OkmulgeeOK <- subset.data.frame(race, NAME=="Okmulgee-OK")
    nodes_OkmulgeeOK <- as.Node(race_OkmulgeeOK) 
  } #56
  else if(input$selectcounty== "Osage-OK"){
    race_OsageOK <- subset.data.frame(race, NAME=="Osage-OK")
    nodes_OsageOK <- as.Node(race_OsageOK) 
  } #57
  else if(input$selectcounty== "Ottawa-OK"){
    race_OttawaOK <- subset.data.frame(race, NAME=="Ottawa-OK")
    nodes_OttawaOK <- as.Node(race_OttawaOK) 
  } #58
  else if(input$selectcounty== "Pawnee-OK"){
    race_PawneeOK <- subset.data.frame(race, NAME=="Pawnee-OK")
    nodes_PawneeOK <- as.Node(race_PawneeOK) 
  } #59
  else if(input$selectcounty== "Payne-OK"){
    race_PayneOK <- subset.data.frame(race, NAME=="Payne-OK")
    nodes_PayneOK <- as.Node(race_PayneOK) 
  } #60
  else if(input$selectcounty== "Pittsburg-OK"){
    race_PittsburgOK <- subset.data.frame(race, NAME=="Pittsburg-OK")
    nodes_PittsburgOK <- as.Node(race_PittsburgOK) 
  } #61
  else if(input$selectcounty== "Pontotoc-OK"){
    race_PontotocOK <- subset.data.frame(race, NAME=="Pontotoc-OK")
    nodes_PontotocOK <- as.Node(race_PontotocOK) 
  } #62
  else if(input$selectcounty== "Pottawatomie-OK"){
    race_PottawatomieOK <- subset.data.frame(race, NAME=="Pottawatomie-OK")
    nodes_PottawatomieOK <- as.Node(race_PottawatomieOK) 
  } #63
  else if(input$selectcounty== "Pushmataha-OK"){
    race_PushmatahaOK <- subset.data.frame(race, NAME=="Pushmataha-OK")
    nodes_PushmatahaOK <- as.Node(race_PushmatahaOK) 
  } #64
  else if(input$selectcounty== "Roger Mills-OK"){
    race_RogerMillsOK <- subset.data.frame(race, NAME=="Roger Mills-OK")
    nodes_RogerMillsOK <- as.Node(race_RogerMillsOK) 
  } #########77
  else if(input$selectcounty== "Rogers-OK"){
    race_RogersOK <- subset.data.frame(race, NAME=="Rogers-OK")
    nodes_RogersOK <- as.Node(race_RogersOK) 
  } #65
  else if(input$selectcounty== "Seminole-OK"){
    race_SeminoleOK <- subset.data.frame(race, NAME=="Seminole-OK")
    nodes_SeminoleOK <- as.Node(race_SeminoleOK) 
  } #66
  else if(input$selectcounty== "Sequoyah-OK"){
    race_SequoyahOK <- subset.data.frame(race, NAME=="Sequoyah-OK")
    nodes_SequoyahOK <- as.Node(race_SequoyahOK) 
  } #67
  else if(input$selectcounty== "Stephens-OK"){
    race_StephensOK <- subset.data.frame(race, NAME=="Stephens-OK")
    nodes_StephensOK <- as.Node(race_StephensOK) 
  } #68
  else if(input$selectcounty== "Texas-OK"){
    race_TexasOK <- subset.data.frame(race, NAME=="Texas-OK")
    nodes_TexasOK <- as.Node(race_TexasOK) 
  } #69
  else if(input$selectcounty== "Tillman-OK"){
    race_TillmanOK <- subset.data.frame(race, NAME=="Tillman-OK")
    nodes_TillmanOK <- as.Node(race_TillmanOK) 
  } #70
  else if(input$selectcounty== "Tulsa-OK"){
    race_TulsaOK <- subset.data.frame(race, NAME=="Tulsa-OK")
    nodes_TulsaOK <- as.Node(race_TulsaOK) 
  } #71
  else if(input$selectcounty== "Wagoner-OK"){
    race_WagonerOK <- subset.data.frame(race, NAME=="Wagoner-OK")
    nodes_WagonerOK <- as.Node(race_WagonerOK) 
  } #72
  else if(input$selectcounty== "Washington-OK"){
    race_WashingtonOK <- subset.data.frame(race, NAME=="Washington-OK")
    nodes_WashingtonOK <- as.Node(race_WashingtonOK) 
  } #73
  else if(input$selectcounty== "Washita-OK"){
    race_WashitaOK <- subset.data.frame(race, NAME=="Washita-OK")
    nodes_WashitaOK <- as.Node(race_WashitaOK) 
  } #74
  else if(input$selectcounty== "Woods-OK"){
    race_WoodsOK <- subset.data.frame(race, NAME=="Woods-OK")
    nodes_WoodsOK <- as.Node(race_WoodsOK) 
  } #75
  else if(input$selectcounty== "Woodward-OK"){
    race_WoodwardOK <- subset.data.frame(race, NAME=="Woodward-OK")
    nodes_WoodwardOK <- as.Node(race_WoodwardOK) 
  } #76

######### OREGON ######
  else if(input$selectcounty== "Baker-OR"){
    race_BakerOR <- subset.data.frame(race, NAME=="Baker-OR")
    nodes_BakerOR <- as.Node(race_BakerOR) 
  } #1
  else if(input$selectcounty== "Benton-OR"){
    race_BentonOR <- subset.data.frame(race, NAME=="Benton-OR")
    nodes_BentonOR <- as.Node(race_BentonOR) 
  } #2
  else if(input$selectcounty== "Clackamas-OR"){
    race_ClackamasOR <- subset.data.frame(race, NAME=="Clackamas-OR")
    nodes_ClackamasOR <- as.Node(race_ClackamasOR) 
  } #3
  else if(input$selectcounty== "Clatsop-OR"){
    race_ClatsopOR <- subset.data.frame(race, NAME=="Clatsop-OR")
    nodes_ClatsopOR <- as.Node(race_ClatsopOR) 
  } #4
  else if(input$selectcounty== "Columbia-OR"){
    race_ColumbiaOR <- subset.data.frame(race, NAME=="Columbia-OR")
    nodes_ColumbiaOR <- as.Node(race_ColumbiaOR) 
  } #5
  else if(input$selectcounty== "Coos-OR"){
    race_CoosOR <- subset.data.frame(race, NAME=="Coos-OR")
    nodes_CoosOR <- as.Node(race_CoosOR) 
  } #6
  else if(input$selectcounty== "Crook-OR"){
    race_CrookOR <- subset.data.frame(race, NAME=="Crook-OR")
    nodes_CrookOR <- as.Node(race_CrookOR) 
  } #7
  else if(input$selectcounty== "Curry-OR"){
    race_CurryOR <- subset.data.frame(race, NAME=="Curry-OR")
    nodes_CurryOR <- as.Node(race_CurryOR) 
  } #8
  else if(input$selectcounty== "Deschutes-OR"){
    race_DeschutesOR <- subset.data.frame(race, NAME=="Deschutes-OR")
    nodes_DeschutesOR <- as.Node(race_DeschutesOR) 
  } #9
  else if(input$selectcounty== "Douglas-OR"){
    race_DouglasOR <- subset.data.frame(race, NAME=="Douglas-OR")
    nodes_DouglasOR <- as.Node(race_DouglasOR) 
  } #10
  else if(input$selectcounty== "Gilliam-OR"){
    race_GilliamOR <- subset.data.frame(race, NAME=="Gilliam-OR")
    nodes_GilliamOR <- as.Node(race_GilliamOR) 
  } #11
  else if(input$selectcounty== "Grant-OR"){
    race_GrantOR <- subset.data.frame(race, NAME=="Grant-OR")
    nodes_GrantOR <- as.Node(race_GrantOR) 
  } #12
  else if(input$selectcounty== "Harney-OR"){
    race_HarneyOR <- subset.data.frame(race, NAME=="Harney-OR")
    nodes_HarneyOR <- as.Node(race_HarneyOR) 
  } #13
  else if(input$selectcounty== "Hood River-OR"){
    race_HoodRiverOR <- subset.data.frame(race, NAME=="Hood River-OR")
    nodes_HoodRiverOR <- as.Node(race_HoodRiverOR) 
  } ###########35
  else if(input$selectcounty== "Jackson-OR"){
    race_JacksonOR <- subset.data.frame(race, NAME=="Jackson-OR")
    nodes_JacksonOR <- as.Node(race_JacksonOR) 
  } #14
  else if(input$selectcounty== "Jefferson-OR"){
    race_JeffersonOR <- subset.data.frame(race, NAME=="Jefferson-OR")
    nodes_JeffersonOR <- as.Node(race_JeffersonOR) 
  } #15
  else if(input$selectcounty== "Josephine-OR"){
    race_JosephineOR <- subset.data.frame(race, NAME=="Josephine-OR")
    nodes_JosephineOR <- as.Node(race_JosephineOR) 
  } #16
  else if(input$selectcounty== "Klamath-OR"){
    race_KlamathOR <- subset.data.frame(race, NAME=="Klamath-OR")
    nodes_KlamathOR <- as.Node(race_KlamathOR) 
  } #17
  else if(input$selectcounty== "Lake-OR"){
    race_LakeOR <- subset.data.frame(race, NAME=="Lake-OR")
    nodes_LakeOR <- as.Node(race_LakeOR) 
  } #18
  else if(input$selectcounty== "Lane-OR"){
    race_LaneOR <- subset.data.frame(race, NAME=="Lane-OR")
    nodes_LaneOR <- as.Node(race_LaneOR) 
  } #19
  else if(input$selectcounty== "Lincoln-OR"){
    race_LincolnOR <- subset.data.frame(race, NAME=="Lincoln-OR")
    nodes_LincolnOR <- as.Node(race_LincolnOR) 
  } #########36
  else if(input$selectcounty== "Linn-OR"){
    race_LinnOR <- subset.data.frame(race, NAME=="Linn-OR")
    nodes_LinnOR <- as.Node(race_LinnOR) 
  } #20
  else if(input$selectcounty== "Malheur-OR"){
    race_MalheurOR <- subset.data.frame(race, NAME=="Malheur-OR")
    nodes_MalheurOR <- as.Node(race_MalheurOR) 
  } #21
  else if(input$selectcounty== "Marion-OR"){
    race_MarionOR <- subset.data.frame(race, NAME=="Marion-OR")
    nodes_MarionOR <- as.Node(race_MarionOR) 
  } #22
  else if(input$selectcounty== "Morrow-OR"){
    race_MorrowOR <- subset.data.frame(race, NAME=="Morrow-OR")
    nodes_MorrowOR <- as.Node(race_MorrowOR) 
  } #23
  else if(input$selectcounty== "Multnomah-OR"){
    race_MultnomahOR <- subset.data.frame(race, NAME=="Multnomah-OR")
    nodes_MultnomahOR <- as.Node(race_MultnomahOR) 
  } #24
  else if(input$selectcounty== "Polk-OR"){
    race_PolkOR <- subset.data.frame(race, NAME=="Polk-OR")
    nodes_PolkOR <- as.Node(race_PolkOR) 
  } #25
  else if(input$selectcounty== "Sherman-OR"){
    race_ShermanOR <- subset.data.frame(race, NAME=="Sherman-OR")
    nodes_ShermanOR <- as.Node(race_ShermanOR) 
  } #26
  else if(input$selectcounty== "Tillamook-OR"){
    race_TillamookOR <- subset.data.frame(race, NAME=="Tillamook-OR")
    nodes_TillamookOR <- as.Node(race_TillamookOR) 
  } #27
  else if(input$selectcounty== "Umatilla-OR"){
    race_UmatillaOR <- subset.data.frame(race, NAME=="Umatilla-OR")
    nodes_UmatillaOR <- as.Node(race_UmatillaOR) 
  } #28
  else if(input$selectcounty== "Union-OR"){
    race_UnionOR <- subset.data.frame(race, NAME=="Union-OR")
    nodes_UnionOR <- as.Node(race_UnionOR) 
  } #29
  else if(input$selectcounty== "Wallowa-OR"){
    race_WallowaOR <- subset.data.frame(race, NAME=="Wallowa-OR")
    nodes_WallowaOR <- as.Node(race_WallowaOR) 
  } #30
  else if(input$selectcounty== "Wasco-OR"){
    race_WascoOR <- subset.data.frame(race, NAME=="Wasco-OR")
    nodes_WascoOR <- as.Node(race_WascoOR) 
  } #31
  else if(input$selectcounty== "Washington-OR"){
    race_WashingtonOR <- subset.data.frame(race, NAME=="Washington-OR")
    nodes_WashingtonOR <- as.Node(race_WashingtonOR) 
  } #32
  else if(input$selectcounty== "Wheeler-OR"){
    race_WheelerOR <- subset.data.frame(race, NAME=="Wheeler-OR")
    nodes_WheelerOR <- as.Node(race_WheelerOR) 
  } #33
  else if(input$selectcounty== "Yamhill-OR"){
    race_YamhillOR <- subset.data.frame(race, NAME=="Yamhill-OR")
    nodes_YamhillOR <- as.Node(race_YamhillOR) 
  } #34
  
  #### ***** READY
######### PENNSYLVANIA #########
  else if(input$selectcounty== "Adams-PA"){
    race_AdamsPA <- subset.data.frame(race, NAME=="Adams-PA")
    nodes_AdamsPA <- as.Node(race_AdamsPA) 
  } #1
  else if(input$selectcounty== "Allegheny-PA"){
    race_AlleghenyPA <- subset.data.frame(race, NAME=="Allegheny-PA")
    nodes_AlleghenyPA <- as.Node(race_AlleghenyPA) 
  } #2
  else if(input$selectcounty== "Armstrong-PA"){
    race_AdamsPA <- subset.data.frame(race, NAME=="Armstrong-PA")
    nodes_AdamsPA <- as.Node(race_AdamsPA) 
  } #3
  else if(input$selectcounty== "Beaver-PA"){
    race_BeaverPA <- subset.data.frame(race, NAME=="Beaver-PA")
    nodes_BeaverPA <- as.Node(race_BeaverPA) 
  } #4
  else if(input$selectcounty== "Bedford-PA"){
    race_BedfordPA <- subset.data.frame(race, NAME=="Bedford-PA")
    nodes_BedfordPA <- as.Node(race_BedfordPA) 
  } #5
  else if(input$selectcounty== "Berks-PA"){
    race_BerksPA <- subset.data.frame(race, NAME=="Berks-PA")
    nodes_BerksPA <- as.Node(race_BerksPA) 
  } #6
  else if(input$selectcounty== "Blair-PA"){
    race_BlairPA <- subset.data.frame(race, NAME=="Blair-PA")
    nodes_BlairPA <- as.Node(race_BlairPA) 
  } #7
  else if(input$selectcounty== "Bradford-PA"){
    race_BradfordPA <- subset.data.frame(race, NAME=="Bradford-PA")
    nodes_BradfordPA <- as.Node(race_BradfordPA) 
  } #8
  else if(input$selectcounty== "Bucks-PA"){
    race_BucksPA <- subset.data.frame(race, NAME=="Bucks-PA")
    nodes_BucksPA <- as.Node(race_BucksPA) 
  } #9
  else if(input$selectcounty== "Butler-PA"){
    race_ButlerPA <- subset.data.frame(race, NAME=="Butler-PA")
    nodes_ButlerPA <- as.Node(race_ButlerPA) 
  } #10
  else if(input$selectcounty== "Cambria-PA"){
    race_CambriaPA <- subset.data.frame(race, NAME=="Cambria-PA")
    nodes_CambriaPA <- as.Node(race_CambriaPA) 
  } #11
  else if(input$selectcounty== "Cameron-PA"){
    race_CameronPA <- subset.data.frame(race, NAME=="Cameron-PA")
    nodes_CameronPA <- as.Node(race_CameronPA) 
  } #12
  else if(input$selectcounty== "Carbon-PA"){
    race_CarbonPA <- subset.data.frame(race, NAME=="Carbon-PA")
    nodes_CarbonPA <- as.Node(race_CarbonPA) 
  } #13
  else if(input$selectcounty== "Centre-PA"){
    race_CentrePA <- subset.data.frame(race, NAME=="Centre-PA")
    nodes_CentrePA <- as.Node(race_CentrePA) 
  } #14
  else if(input$selectcounty== "Chester-PA"){
    race_ChesterPA <- subset.data.frame(race, NAME=="Chester-PA")
    nodes_ChesterPA <- as.Node(race_ChesterPA) 
  } #15
  else if(input$selectcounty== "Clarion-PA"){
    race_ClarionPA <- subset.data.frame(race, NAME=="Clarion-PA")
    nodes_ClarionPA <- as.Node(race_ClarionPA) 
  } #16
  else if(input$selectcounty== "Clearfield-PA"){
    race_ClearfieldPA <- subset.data.frame(race, NAME=="Clearfield-PA")
    nodes_ClearfieldPA <- as.Node(race_ClearfieldPA) 
  } #17
  else if(input$selectcounty== "Clinton-PA"){
    race_ClintonPA <- subset.data.frame(race, NAME=="Clinton-PA")
    nodes_ClintonPA <- as.Node(race_ClintonPA) 
  } #18
  else if(input$selectcounty== "Columbia-PA"){
    race_ColumbiaPA <- subset.data.frame(race, NAME=="Columbia-PA")
    nodes_ColumbiaPA <- as.Node(race_ColumbiaPA) 
  } #19
  else if(input$selectcounty== "Crawford-PA"){
    race_CrawfordPA <- subset.data.frame(race, NAME=="Crawford-PA")
    nodes_CrawfordPA <- as.Node(race_CrawfordPA) 
  } #20
  else if(input$selectcounty== "Cumberland-PA"){
    race_CumberlandPA <- subset.data.frame(race, NAME=="Cumberland-PA")
    nodes_CumberlandPA <- as.Node(race_CumberlandPA) 
  } #21
  else if(input$selectcounty== "Dauphin-PA"){
    race_DauphinPA <- subset.data.frame(race, NAME=="Dauphin-PA")
    nodes_DauphinPA <- as.Node(race_DauphinPA) 
  } #22
  else if(input$selectcounty== "Delaware-PA"){
    race_DelawarePA <- subset.data.frame(race, NAME=="Delaware-PA")
    nodes_DelawarePA <- as.Node(race_DelawarePA) 
  } #23
  else if(input$selectcounty== "Elk-PA"){
    race_ElkPA <- subset.data.frame(race, NAME=="Elk-PA")
    nodes_ElkPA <- as.Node(race_ElkPA) 
  } #24
  else if(input$selectcounty== "Erie-PA"){
    race_EriePA <- subset.data.frame(race, NAME=="Erie-PA")
    nodes_EriePA <- as.Node(race_EriePA) 
  } #25
  else if(input$selectcounty== "Fayette-PA"){
    race_FayettePA <- subset.data.frame(race, NAME=="Fayette-PA")
    nodes_FayettePA <- as.Node(race_FayettePA) 
  } #26
  else if(input$selectcounty== "Forest-PA"){
    race_ForestPA <- subset.data.frame(race, NAME=="Forest-PA")
    nodes_ForestPA <- as.Node(race_ForestPA) 
  } #27
  else if(input$selectcounty== "Franklin-PA"){
    race_FranklinPA <- subset.data.frame(race, NAME=="Franklin-PA")
    nodes_FranklinPA <- as.Node(race_FranklinPA) 
  } #28
  else if(input$selectcounty== "Fulton-PA"){
    race_FultonPA <- subset.data.frame(race, NAME=="Fulton-PA")
    nodes_FultonPA <- as.Node(race_FultonPA) 
  } #29
  else if(input$selectcounty== "Greene-PA"){
    race_GreenePA <- subset.data.frame(race, NAME=="Greene-PA")
    nodes_GreenePA <- as.Node(race_GreenePA) 
  } #30
  else if(input$selectcounty== "Huntingdon-PA"){
    race_HuntingdonPA <- subset.data.frame(race, NAME=="Huntingdon-PA")
    nodes_HuntingdonPA <- as.Node(race_HuntingdonPA) 
  } #31
  else if(input$selectcounty== "Indiana-PA"){
    race_IndianaPA <- subset.data.frame(race, NAME=="Indiana-PA")
    nodes_IndianaPA <- as.Node(race_IndianaPA) 
  } #32
  else if(input$selectcounty== "Jefferson-PA"){
    race_JeffersonPA <- subset.data.frame(race, NAME=="Jefferson-PA")
    nodes_JeffersonPA <- as.Node(race_JeffersonPA) 
  } #33
  else if(input$selectcounty== "Juniata-PA"){
    race_JuniataPA <- subset.data.frame(race, NAME=="Juniata-PA")
    nodes_JuniataPA <- as.Node(race_JuniataPA) 
  } #34
  else if(input$selectcounty== "Lackawanna-PA"){
    race_LackawannaPA <- subset.data.frame(race, NAME=="Lackawanna-PA")
    nodes_LackawannaPA <- as.Node(race_LackawannaPA) 
  } #35
  else if(input$selectcounty== "Lancaster-PA"){
    race_LancasterPA <- subset.data.frame(race, NAME=="Lancaster-PA")
    nodes_LancasterPA <- as.Node(race_LancasterPA) 
  } #36
  else if(input$selectcounty== "Lawrence-PA"){
    race_LawrencePA <- subset.data.frame(race, NAME=="Lawrence-PA")
    nodesLawrencePA <- as.Node(race_LawrencePA) 
  } #37
  else if(input$selectcounty== "Lackawanna-PA"){
    race_LackawannaPA <- subset.data.frame(race, NAME=="Lackawanna-PA")
    nodes_LackawannaPA <- as.Node(race_LackawannaPA) 
  } #38
  else if(input$selectcounty== "Lebanon-PA"){
    race_LebanonPA <- subset.data.frame(race, NAME=="Lebanon-PA")
    nodes_LebanonPA <- as.Node(race_LebanonPA) 
  } #39
  else if(input$selectcounty== "Lehigh-PA"){
    race_LehighPA <- subset.data.frame(race, NAME=="Lehigh-PA")
    nodes_LehighPA <- as.Node(race_LehighPA) 
  } #40
  else if(input$selectcounty== "Luzerne-PA"){
    race_LuzernePA <- subset.data.frame(race, NAME=="Luzerne-PA")
    nodes_LuzernePA <- as.Node(race_LuzernePA) 
  } #41
  else if(input$selectcounty== "Lycoming-PA"){
    race_LycomingPA <- subset.data.frame(race, NAME=="Lycoming-PA")
    nodes_LycomingPA <- as.Node(race_LycomingPA) 
  } #42
  else if(input$selectcounty== "McKean-PA"){
    race_McKeanPA <- subset.data.frame(race, NAME=="McKean-PA")
    nodes_McKeanPA <- as.Node(race_McKeanPA) 
  } #43
  else if(input$selectcounty== "Mercer-PA"){
    race_MercerPA <- subset.data.frame(race, NAME=="Mercer-PA")
    nodes_MercerPA <- as.Node(race_MercerPA) 
  } #44
  else if(input$selectcounty== "Mifflin-PA"){
    race_MifflinPA <- subset.data.frame(race, NAME=="Mifflin-PA")
    nodes_MifflinPA <- as.Node(race_MifflinPA) 
  } #45
  else if(input$selectcounty== "Monroe-PA"){
    race_MonroePA <- subset.data.frame(race, NAME=="Monroe-PA")
    nodes_MonroePA <- as.Node(race_MonroePA) 
  } #46
  else if(input$selectcounty== "Montgomery-PA"){
    race_MontgomeryPA <- subset.data.frame(race, NAME=="Montgomery-PA")
    nodes_MontgomeryPA <- as.Node(race_MontgomeryPA) 
  } #47
  else if(input$selectcounty== "Montour-PA"){
    race_MontourPA <- subset.data.frame(race, NAME=="Montour-PA")
    nodes_MontourPA <- as.Node(race_MontourPA) 
  } #48
  else if(input$selectcounty== "Northampton-PA"){
    race_NorthamptonPA <- subset.data.frame(race, NAME=="Northampton-PA")
    nodes_NorthamptonPA <- as.Node(race_NorthamptonPA) 
  } #49
  else if(input$selectcounty== "Northumberland-PA"){
    race_NorthumberlandPA <- subset.data.frame(race, NAME=="Northumberland-PA")
    nodes_NorthumberlandPA <- as.Node(race_NorthumberlandPA) 
  } #50
  else if(input$selectcounty== "Perry-PA"){
    race_PerryPA <- subset.data.frame(race, NAME=="Perry-PA")
    nodes_PerryPA <- as.Node(race_PerryPA) 
  } #51
  else if(input$selectcounty== "Philadelphia-PA"){
    race_PhiladelphiaPA <- subset.data.frame(race, NAME=="Philadelphia-PA")
    nodes_PhiladelphiaPA <- as.Node(race_PhiladelphiaPA) 
  } #52
  else if(input$selectcounty== "Pike-PA"){
    race_PikePA <- subset.data.frame(race, NAME=="Pike-PA")
    nodes_PikePA <- as.Node(race_PikePA) 
  } #53
  else if(input$selectcounty== "Potter-PA"){
    race_PotterPA <- subset.data.frame(race, NAME=="Potter-PA")
    nodes_PotterPA <- as.Node(race_PotterPA) 
  } #54
  else if(input$selectcounty== "Schuylkill-PA"){
    race_SchuylkillPA <- subset.data.frame(race, NAME=="Schuylkill-PA")
    nodes_SchuylkillPA <- as.Node(race_SchuylkillPA) 
  } #55
  else if(input$selectcounty== "Snyder-PA"){
    race_SnyderPA <- subset.data.frame(race, NAME=="Snyder-PA")
    nodes_SnyderPA <- as.Node(race_SnyderPA) 
  } #56
  else if(input$selectcounty== "Somerset-PA"){
    race_SomersetPA <- subset.data.frame(race, NAME=="Somerset-PA")
    nodes_SomersetPA <- as.Node(race_SomersetPA) 
  } #57
  else if(input$selectcounty== "Sullivan-PA"){
    race_SullivanPA <- subset.data.frame(race, NAME=="Sullivan-PA")
    nodes_SullivanPA <- as.Node(race_SullivanPA) 
  } #58
  else if(input$selectcounty== "Susquehanna-PA"){
    race_SusquehannaPA <- subset.data.frame(race, NAME=="Susquehanna-PA")
    nodes_SusquehannaPA <- as.Node(race_SusquehannaPA) 
  } #59
  else if(input$selectcounty== "Tioga-PA"){
    race_TiogaPA <- subset.data.frame(race, NAME=="Tioga-PA")
    nodes_TiogaPA <- as.Node(race_TiogaPA) 
  } #60
  else if(input$selectcounty== "Union-PA"){
    race_UnionPA <- subset.data.frame(race, NAME=="Union-PA")
    nodes_UnionPA <- as.Node(race_UnionPA) 
  } #61
  else if(input$selectcounty== "Venango-PA"){
    race_VenangoPA <- subset.data.frame(race, NAME=="Venango-PA")
    nodes_VenangoPA <- as.Node(race_VenangoPA) 
  } #62
  else if(input$selectcounty== "Warren-PA"){
    race_WarrenPA <- subset.data.frame(race, NAME=="Warren-PA")
    nodes_WarrenPA <- as.Node(race_WarrenPA) 
  } #63
  else if(input$selectcounty== "Washington-PA"){
    race_WashingtonPA <- subset.data.frame(race, NAME=="Washington-PA")
    nodes_WashingtonPA <- as.Node(race_WashingtonPA) 
  } #64
  else if(input$selectcounty== "Wayne-PA"){
    race_WaynePA <- subset.data.frame(race, NAME=="Wayne-PA")
    nodes_WaynePA <- as.Node(race_WaynePA) 
  } #65
  else if(input$selectcounty== "Westmoreland-PA"){
    race_WestmorelandPA <- subset.data.frame(race, NAME=="Westmoreland-PA")
    nodes_WestmorelandPA <- as.Node(race_WestmorelandPA) 
  } #66
  else if(input$selectcounty== "Wyoming-PA"){
    race_WyomingPA <- subset.data.frame(race, NAME=="Wyoming-PA")
    nodes_WyomingPA <- as.Node(race_WyomingPA) 
  } #67
  else if(input$selectcounty== "York-PA"){
    race_YorkPA <- subset.data.frame(race, NAME=="York-PA")
    nodes_YorkPA <- as.Node(race_YorkPA) 
  } #68

######### RHODE ISLAND #########  
  else if(input$selectcounty== "Bristol-RI"){
    race_BristolRI <- subset.data.frame(race, NAME=="Bristol-RI")
    nodes_BristolRI <- as.Node(race_BristolRI) 
  }
  else if(input$selectcounty== "Kent-RI"){
    race_KentRI <- subset.data.frame(race, NAME=="Kent-RI")
    nodes_KentRI <- as.Node(race_KentRI) 
  }
  else if(input$selectcounty== "Newport-RI"){
    race_NewportRI <- subset.data.frame(race, NAME=="Newport-RI")
    nodes_NewportRI <- as.Node(race_NewportRI) 
  }
  else if(input$selectcounty== "Providence-RI"){
    race_ProvidenceRI <- subset.data.frame(race, NAME=="Providence-RI")
    nodes_ProvidenceRI <- as.Node(race_ProvidenceRI) 
  }
  else if(input$selectcounty== "Washington-RI"){
    race_WashingtonRI <- subset.data.frame(race, NAME=="Washington-RI")
    nodes_WashingtonRI <- as.Node(race_WashingtonRI) 
  }

######### SOUTH CAROLINA #########    
  else if(input$selectcounty== "Abbeville-SC"){
    race_AbbevilleSC <- subset.data.frame(race, NAME=="Abbeville-SC")
    nodes_AbbevilleSC <- as.Node(race_AbbevilleSC) 
  } #1
  else if(input$selectcounty== "Aiken-SC"){
    race_AikenSC <- subset.data.frame(race, NAME=="Aiken-SC")
    nodes_AikenSC <- as.Node(race_AikenSC) 
  } #2
  else if(input$selectcounty== "Allendale-SC"){
    race_AllendaleSC <- subset.data.frame(race, NAME=="Allendale-SC")
    nodes_AllendaleSC <- as.Node(race_AllendaleSC) 
  } #3
  else if(input$selectcounty== "Anderson-SC"){
    race_AndersonSC <- subset.data.frame(race, NAME=="Anderson-SC")
    nodes_AndersonSC <- as.Node(race_AndersonSC) 
  } #4
  else if(input$selectcounty== "Bamberg-SC"){
    race_BambergSC <- subset.data.frame(race, NAME=="Bamberg-SC")
    nodes_BambergSC <- as.Node(race_BambergSC) 
  } #5
  else if(input$selectcounty== "Barnwell-SC"){
    race_BarnwellSC <- subset.data.frame(race, NAME=="Barnwell-SC")
    nodes_BarnwellSC <- as.Node(race_BarnwellSC) 
  } #6
  else if(input$selectcounty== "Beaufort-SC"){
    race_BeaufortSC <- subset.data.frame(race, NAME=="Beaufort-SC")
    nodes_BeaufortSC <- as.Node(race_BeaufortSC) 
  } #7
  else if(input$selectcounty== "Berkeley-SC"){
    race_BerkeleySC <- subset.data.frame(race, NAME=="Berkeley-SC")
    nodes_BerkeleySC <- as.Node(race_BerkeleySC) 
  } #8
  else if(input$selectcounty== "Calhoun-SC"){
    race_CalhounSC <- subset.data.frame(race, NAME=="Calhoun-SC")
    nodes_CalhounSC <- as.Node(race_CalhounSC) 
  } #9
  else if(input$selectcounty== "Charleston-SC"){
    race_CharlestonSC <- subset.data.frame(race, NAME=="Charleston-SC")
    nodes_CharlestonSC <- as.Node(race_CharlestonSC) 
  } #10
  else if(input$selectcounty== "Cherokee-SC"){
    race_CherokeeSC <- subset.data.frame(race, NAME=="Cherokee-SC")
    nodes_CherokeeSC <- as.Node(race_CherokeeSC) 
  } #11
  else if(input$selectcounty== "Chester-SC"){
    race_ChesterSC <- subset.data.frame(race, NAME=="Chester-SC")
    nodes_ChesterSC <- as.Node(race_ChesterSC) 
  } #12
  else if(input$selectcounty== "Chesterfield-SC"){
    race_ChesterfieldSC <- subset.data.frame(race, NAME=="Chesterfield-SC")
    nodes_ChesterfieldSC <- as.Node(race_ChesterfieldSC) 
  } #13
  else if(input$selectcounty== "Clarendon-SC"){
    race_ClarendonSC <- subset.data.frame(race, NAME=="Clarendon-SC")
    nodes_ClarendonSC <- as.Node(race_ClarendonSC) 
  } #14
  else if(input$selectcounty== "Colleton-SC"){
    race_ColletonSC <- subset.data.frame(race, NAME=="Colleton-SC")
    nodes_ColletonSC <- as.Node(race_ColletonSC) 
  } #15
  else if(input$selectcounty== "Darlington-SC"){
    race_DarlingtonSC <- subset.data.frame(race, NAME=="Darlington-SC")
    nodes_DarlingtonSC <- as.Node(race_DarlingtonSC) 
  } #16
  else if(input$selectcounty== "Dillon-SC"){
    race_DillonSC <- subset.data.frame(race, NAME=="Dillon-SC")
    nodes_DillonSC <- as.Node(race_DillonSC) 
  } #17
  else if(input$selectcounty== "Dorchester-SC"){
    race_DorchesterSC <- subset.data.frame(race, NAME=="Dorchester-SC")
    nodes_DorchesterSC <- as.Node(race_DorchesterSC) 
  } #18
  else if(input$selectcounty== "Edgefield-SC"){
    race_EdgefieldSC <- subset.data.frame(race, NAME=="Edgefield-SC")
    nodes_EdgefieldSC <- as.Node(race_EdgefieldSC) 
  } #19
  else if(input$selectcounty== "Fairfield-SC"){
    race_FairfieldSC <- subset.data.frame(race, NAME=="Fairfield-SC")
    nodes_FairfieldSC <- as.Node(race_FairfieldSC) 
  } #20
  else if(input$selectcounty== "Florence-SC"){
    race_FlorenceSC <- subset.data.frame(race, NAME=="Florence-SC")
    nodes_FlorenceSC <- as.Node(race_FlorenceSC) 
  } #21
  else if(input$selectcounty== "Georgetown-SC"){
    race_GeorgetownSC <- subset.data.frame(race, NAME=="Georgetown-SC")
    nodes_GeorgetownSC <- as.Node(race_GeorgetownSC) 
  } #22
  else if(input$selectcounty== "Greenville-SC"){
    race_GreenvilleSC <- subset.data.frame(race, NAME=="Greenville-SC")
    nodes_GreenvilleSC <- as.Node(race_GreenvilleSC) 
  } #23
  else if(input$selectcounty== "Greenwood-SC"){
    race_GreenwoodSC <- subset.data.frame(race, NAME=="Greenwood-SC")
    nodes_GreenwoodSC <- as.Node(race_GreenwoodSC) 
  } #24
  else if(input$selectcounty== "Hampton-SC"){
    race_HamptonSC <- subset.data.frame(race, NAME=="Hampton-SC")
    nodes_HamptonSC <- as.Node(race_HamptonSC) 
  } #25
  else if(input$selectcounty== "Horry-SC"){
    race_HorrySC <- subset.data.frame(race, NAME=="Horry-SC")
    nodes_HorrySC <- as.Node(race_HorrySC) 
  } #26
  else if(input$selectcounty== "Jasper-SC"){
    race_JasperSC <- subset.data.frame(race, NAME=="Jasper-SC")
    nodes_JasperSC <- as.Node(race_JasperSC) 
  } #27
  else if(input$selectcounty== "Kershaw-SC"){
    race_KershawSC <- subset.data.frame(race, NAME=="Kershaw-SC")
    nodes_KershawSC <- as.Node(race_KershawSC) 
  } #28
  else if(input$selectcounty== "Lancaster-SC"){
    race_LancasterSC <- subset.data.frame(race, NAME=="Lancaster-SC")
    nodes_LancasterSC <- as.Node(race_LancasterSC) 
  } #29
  else if(input$selectcounty== "Laurens-SC"){
    race_LaurensSC <- subset.data.frame(race, NAME=="Laurens-SC")
    nodes_LaurensSC <- as.Node(race_LaurensSC) 
  } #30
  else if(input$selectcounty== "Lee-SC"){
    race_LeeSC <- subset.data.frame(race, NAME=="Lee-SC")
    nodes_LeeSC <- as.Node(race_LeeSC) 
  } #31
  else if(input$selectcounty== "Lexington-SC"){
    race_LexingtonSC <- subset.data.frame(race, NAME=="Lexington-SC")
    nodes_LexingtonSC <- as.Node(race_LexingtonSC) 
  } #32
  else if(input$selectcounty== "Marion-SC"){
    race_MarionSC <- subset.data.frame(race, NAME=="Marion-SC")
    nodes_MarionSC <- as.Node(race_MarionSC) 
  } #33
  else if(input$selectcounty== "Marlboro-SC"){
    race_MarlboroSC <- subset.data.frame(race, NAME=="Marlboro-SC")
    nodes_MarlboroSC <- as.Node(race_MarlboroSC) 
  } #34
  else if(input$selectcounty== "McCormick-SC"){
    race_McCormickSC <- subset.data.frame(race, NAME=="McCormick-SC")
    nodes_McCormickSC <- as.Node(race_McCormickSC) 
  } #35
  else if(input$selectcounty== "Newberry-SC"){
    race_NewberrySC <- subset.data.frame(race, NAME=="Newberry-SC")
    nodes_NewberrySC <- as.Node(race_NewberrySC) 
  } #36
  else if(input$selectcounty== "Oconee-SC"){
    race_OconeeSC <- subset.data.frame(race, NAME=="Oconee-SC")
    nodes_OconeeSC <- as.Node(race_OconeeSC) 
  } #37
  else if(input$selectcounty== "Orangeburg-SC"){
    race_OrangeburgSC <- subset.data.frame(race, NAME=="Orangeburg-SC")
    nodes_OrangeburgSC <- as.Node(race_OrangeburgSC) 
  } #38
  else if(input$selectcounty== "Pickens-SC"){
    race_PickensSC <- subset.data.frame(race, NAME=="Pickens-SC")
    nodes_PickensSC <- as.Node(race_PickensSC) 
  } #39
  else if(input$selectcounty== "Richland-SC"){
    race_RichlandSC <- subset.data.frame(race, NAME=="Richland-SC")
    nodes_RichlandSC <- as.Node(race_RichlandSC) 
  } #40
  else if(input$selectcounty== "Saluda-SC"){
    race_SaludaSC <- subset.data.frame(race, NAME=="Saluda-SC")
    nodes_SaludaSC <- as.Node(race_SaludaSC) 
  } #41
  else if(input$selectcounty== "Spartanburg-SC"){
    race_SpartanburgSC <- subset.data.frame(race, NAME=="Spartanburg-SC")
    nodes_SpartanburgSC <- as.Node(race_SpartanburgSC) 
  } #42
  else if(input$selectcounty== "Sumter-SC"){
    race_SumterSC <- subset.data.frame(race, NAME=="Sumter-SC")
    nodes_SumterSC <- as.Node(race_SumterSC) 
  } #43
  else if(input$selectcounty== "Union-SC"){
    race_UnionSC <- subset.data.frame(race, NAME=="Union-SC")
    nodes_UnionSC <- as.Node(race_UnionSC) 
  } #44
  else if(input$selectcounty== "Williamsburg-SC"){
    race_WilliamsburgSC <- subset.data.frame(race, NAME=="Williamsburg-SC")
    nodes_WilliamsburgSC <- as.Node(race_WilliamsburgSC) 
  } #45
  else if(input$selectcounty== "York-SC"){
    race_YorkSC <- subset.data.frame(race, NAME=="York-SC")
    nodes_YorkSC <- as.Node(race_YorkSC) 
  } #46

  #### ***** READY
######### SOUTH DAKOTA ###########
  else if(input$selectcounty== "Aurora-SD"){
    race_AuroraSD <- subset.data.frame(race, NAME=="Aurora-SD")
    nodes_AuroraSD <- as.Node(race_AuroraSD) 
  } #1
  else if(input$selectcounty== "Beadle-SD"){
    race_BeadleSD <- subset.data.frame(race, NAME=="Beadle-SD")
    nodes_BeadleSD <- as.Node(race_BeadleSD) 
  } #2
  else if(input$selectcounty== "Bennett-SD"){
    race_BennettSD <- subset.data.frame(race, NAME=="Bennett-SD")
    nodes_BennettSD <- as.Node(race_BennettSD) 
  } #3
  else if(input$selectcounty== "Bon Homme-SD"){
    race_BonHommeSD <- subset.data.frame(race, NAME=="Bon Homme-SD")
    nodes_BonHommeSD <- as.Node(race_BonHommeSD) 
  } #4
  else if(input$selectcounty== "Brookings-SD"){
    race_BrookingsSD <- subset.data.frame(race, NAME=="Brookings-SD")
    nodes_BrookingsSD <- as.Node(race_BrookingsSD) 
  } #5
  else if(input$selectcounty== "Brown-SD"){
    race_BrownSD <- subset.data.frame(race, NAME=="Brown-SD")
    nodes_BrownSD <- as.Node(race_BrownSD) 
  } #6
  else if(input$selectcounty== "Brule-SD"){
    race_BruleSD <- subset.data.frame(race, NAME=="Brule-SD")
    nodes_BruleSD <- as.Node(race_BruleSD) 
  } #7
  else if(input$selectcounty== "Buffalo-SD"){
    race_BuffaloSD <- subset.data.frame(race, NAME=="Buffalo-SD")
    nodes_BuffaloSD <- as.Node(race_BuffaloSD) 
  } #8
  else if(input$selectcounty== "Butte-SD"){
    race_ButteSD <- subset.data.frame(race, NAME=="Butte-SD")
    nodes_ButteSD <- as.Node(race_ButteSD) 
  } #9
  else if(input$selectcounty== "Campbell-SD"){
    race_CampbellSD <- subset.data.frame(race, NAME=="Campbell-SD")
    nodes_CampbellSD <- as.Node(race_CampbellSD) 
  } #10
  else if(input$selectcounty== "Charles Mix-SD"){
    race_CharlesMixSD <- subset.data.frame(race, NAME=="Charles Mix-SD")
    nodes_CharlesMixSD <- as.Node(race_CharlesMixSD) 
  } #11
  else if(input$selectcounty== "Clark-SD"){
    race_ClarkSD <- subset.data.frame(race, NAME=="Clark-SD")
    nodes_ClarkSD <- as.Node(race_ClarkSD) 
  } #12
  else if(input$selectcounty== "Clay-SD"){
    race_ClaySD <- subset.data.frame(race, NAME=="Clay-SD")
    nodes_ClaySD <- as.Node(race_ClaySD) 
  } #13
  else if(input$selectcounty== "Codington-SD"){
    race_CodingtonSD <- subset.data.frame(race, NAME=="Codington-SD")
    nodes_CodingtonSD <- as.Node(race_CodingtonSD) 
  } #14
  else if(input$selectcounty== "Corson-SD"){
    race_CorsonSD <- subset.data.frame(race, NAME=="Corson-SD")
    nodes_CorsonSD <- as.Node(race_CorsonSD) 
  } #15
  else if(input$selectcounty== "Custer-SD"){
    race_CusterSD <- subset.data.frame(race, NAME=="Custer-SD")
    nodes_CusterSD <- as.Node(race_CusterSD) 
  } #16
  else if(input$selectcounty== "Davison-SD"){
    race_DavisonSD <- subset.data.frame(race, NAME=="Davison-SD")
    nodes_DavisonSD <- as.Node(race_DavisonSD) 
  } #17
  else if(input$selectcounty== "Day-SD"){
    race_DaySD <- subset.data.frame(race, NAME=="Day-SD")
    nodes_DaySD <- as.Node(race_DaySD) 
  } #18
  else if(input$selectcounty== "Deuel-SD"){
    race_DeuelSD <- subset.data.frame(race, NAME=="Deuel-SD")
    nodes_DeuelSD <- as.Node(race_DeuelSD) 
  } #19
  else if(input$selectcounty== "Dewey-SD"){
    race_DeweySD <- subset.data.frame(race, NAME=="Dewey-SD")
    nodes_DeweySD <- as.Node(race_DeweySD) 
  } #20
  else if(input$selectcounty== "Douglas-SD"){
    race_DouglasSD <- subset.data.frame(race, NAME=="Douglas-SD")
    nodes_DouglasSD <- as.Node(race_DouglasSD) 
  } #21
  else if(input$selectcounty== "Edmunds-SD"){
    race_EdmundsSD <- subset.data.frame(race, NAME=="Edmunds-SD")
    nodes_EdmundsSD <- as.Node(race_EdmundsSD) 
  } #22
  else if(input$selectcounty== "Fall River-SD"){
    race_FallRiverSD <- subset.data.frame(race, NAME=="Fall River-SD")
    nodes_FallRiverSD <- as.Node(race_FallRiverSD) 
  } #23
  else if(input$selectcounty== "Faulk-SD"){
    race_FaulkSD <- subset.data.frame(race, NAME=="Faulk-SD")
    nodes_FaulkSD <- as.Node(race_FaulkSD) 
  } #24
  else if(input$selectcounty== "Grant-SD"){
    race_GrantSD <- subset.data.frame(race, NAME=="Grant-SD")
    nodes_GrantSD <- as.Node(race_GrantSD) 
  } #25
  else if(input$selectcounty== "Gregory-SD"){
    race_GregorySD <- subset.data.frame(race, NAME=="Gregory-SD")
    nodes_GregorySD <- as.Node(race_GregorySD) 
  } #26
  else if(input$selectcounty== "Haakon-SD"){
    race_HaakonSD <- subset.data.frame(race, NAME=="Haakon-SD")
    nodes_HaakonSD <- as.Node(race_HaakonSD) 
  } #27
  else if(input$selectcounty== "Hamlin-SD"){
    race_HamlinSD <- subset.data.frame(race, NAME=="Hamlin-SD")
    nodes_HamlinSD <- as.Node(race_HamlinSD) 
  } #28
  else if(input$selectcounty== "Hand-SD"){
    race_HandSD <- subset.data.frame(race, NAME=="Hand-SD")
    nodes_HandSD <- as.Node(race_HandSD) 
  } #29
  else if(input$selectcounty== "Hanson-SD"){
    race_HansonSD <- subset.data.frame(race, NAME=="Hanson-SD")
    nodes_HansonSD <- as.Node(race_HansonSD) 
  } #30
  else if(input$selectcounty== "Harding-SD"){
    race_HardingSD <- subset.data.frame(race, NAME=="Harding-SD")
    nodes_HardingSD <- as.Node(race_HardingSD) 
  } #31
  else if(input$selectcounty== "Hughes-SD"){
    race_HughesSD <- subset.data.frame(race, NAME=="Hughes-SD")
    nodes_HughesSD <- as.Node(race_HughesSD) 
  } #32
  else if(input$selectcounty== "Hutchinson-SD"){
    race_HutchinsonSD <- subset.data.frame(race, NAME=="Hutchinson-SD")
    nodes_HutchinsonSD <- as.Node(race_HutchinsonSD) 
  } #33
  else if(input$selectcounty== "Hyde-SD"){
    race_HydeSD <- subset.data.frame(race, NAME=="Hyde-SD")
    nodes_HydeSD <- as.Node(race_HydeSD) 
  } #34
  else if(input$selectcounty== "Jackson-SD"){
    race_JacksonSD <- subset.data.frame(race, NAME=="Jackson-SD")
    nodes_JacksonSD <- as.Node(race_JacksonSD) 
  } #35
  else if(input$selectcounty== "Jerauld-SD"){
    race_JerauldSD <- subset.data.frame(race, NAME=="Jerauld-SD")
    nodes_JerauldSD <- as.Node(race_JerauldSD) 
  } #36
  else if(input$selectcounty== "Jones-SD"){
    race_JonesSD <- subset.data.frame(race, NAME=="Jones-SD")
    nodes_JonesSD <- as.Node(race_JonesSD) 
  } #37
  else if(input$selectcounty== "Kingsbury-SD"){
    race_KingsburySD <- subset.data.frame(race, NAME=="Kingsbury-SD")
    nodes_KingsburySD <- as.Node(race_KingsburySD) 
  } #38
  else if(input$selectcounty== "Lake-SD"){
    race_LakeSD <- subset.data.frame(race, NAME=="Lake-SD")
    nodes_LakeSD <- as.Node(race_LakeSD) 
  } #39
  else if(input$selectcounty== "Lawrence-SD"){
    race_LawrenceSD <- subset.data.frame(race, NAME=="Lawrence-SD")
    nodes_LawrenceSD <- as.Node(race_LawrenceSD) 
  } #40
  else if(input$selectcounty== "Lincoln-SD"){
    race_LincolnSD <- subset.data.frame(race, NAME=="Lincoln-SD")
    nodes_LincolnSD <- as.Node(race_LincolnSD) 
  } #41
  else if(input$selectcounty== "Lyman-SD"){
    race_LymanSD <- subset.data.frame(race, NAME=="Lyman-SD")
    nodes_LymanSD <- as.Node(race_LymanSD) 
  } #42
  else if(input$selectcounty== "Marshall-SD"){
    race_MarshallSD <- subset.data.frame(race, NAME=="Marshall-SD")
    nodes_MarshallSD <- as.Node(race_MarshallSD) 
  } #43
  else if(input$selectcounty== "McCook-SD"){
    race_McCookSD <- subset.data.frame(race, NAME=="McCook-SD")
    nodes_McCookSD <- as.Node(race_McCookSD) 
  } #44
  else if(input$selectcounty== "McPherson-SD"){
    race_McPhersonSD <- subset.data.frame(race, NAME=="McPherson-SD")
    nodes_McPhersonSD <- as.Node(race_McPhersonSD) 
  } #45
  else if(input$selectcounty== "Meade-SD"){
    race_MeadeSD <- subset.data.frame(race, NAME=="Meade-SD")
    nodes_MeadeSD <- as.Node(race_MeadeSD) 
  } #46
  else if(input$selectcounty== "Mellette-SD"){
    race_MelletteSD <- subset.data.frame(race, NAME=="Mellette-SD")
    nodes_MelletteSD <- as.Node(race_MelletteSD) 
  } #47
  else if(input$selectcounty== "Miner-SD"){
    race_MinerSD <- subset.data.frame(race, NAME=="Miner-SD")
    nodes_MinerSD <- as.Node(race_MinerSD) 
  } #48
  else if(input$selectcounty== "Minnehaha-SD"){
    race_MinnehahaSD <- subset.data.frame(race, NAME=="Minnehaha-SD")
    nodes_MinnehahaSD <- as.Node(race_MinnehahaSD) 
  } #49
  else if(input$selectcounty== "Moody-SD"){
    race_MoodySD <- subset.data.frame(race, NAME=="Moody-SD")
    nodes_MoodySD <- as.Node(race_MoodySD) 
  } #50
  else if(input$selectcounty== "Oglala Lakota-SD"){
    race_OglalaLakotaSD <- subset.data.frame(race, NAME=="Oglala Lakota-SD")
    nodes_OglalaLakotaSD <- as.Node(race_OglalaLakotaSD) 
  } #51
  else if(input$selectcounty== "Pennington-SD"){
    race_PenningtonSD <- subset.data.frame(race, NAME=="Pennington-SD")
    nodes_PenningtonSD <- as.Node(race_PenningtonSD) 
  } #52
  else if(input$selectcounty== "Perkins-SD"){
    race_PerkinsSD <- subset.data.frame(race, NAME=="Perkins-SD")
    nodes_PerkinsSD <- as.Node(race_PerkinsSD) 
  } #53
  else if(input$selectcounty== "Potter-SD"){
    race_PotterSD <- subset.data.frame(race, NAME=="Potter-SD")
    nodes_PotterSD <- as.Node(race_PotterSD) 
  } #54
  else if(input$selectcounty== "Roberts-SD"){
    race_RobertsSD <- subset.data.frame(race, NAME=="Roberts-SD")
    nodes_RobertsSD <- as.Node(race_RobertsSD) 
  } #55
  else if(input$selectcounty== "Sanborn-SD"){
    race_SanbornSD <- subset.data.frame(race, NAME=="Sanborn-SD")
    nodes_SanbornSD <- as.Node(race_SanbornSD) 
  } #56
  else if(input$selectcounty== "Spink-SD"){
    race_SpinkSD <- subset.data.frame(race, NAME=="Spink-SD")
    nodes_SpinkSD <- as.Node(race_SpinkSD) 
  } #57
  else if(input$selectcounty== "Stanley-SD"){
    race_StanleySD <- subset.data.frame(race, NAME=="Stanley-SD")
    nodes_StanleySD <- as.Node(race_StanleySD) 
  } #58
  else if(input$selectcounty== "Sully-SD"){
    race_SullySD <- subset.data.frame(race, NAME=="Sully-SD")
    nodes_SullySD <- as.Node(race_SullySD) 
  } #59
  else if(input$selectcounty== "Todd-SD"){
    race_ToddSD <- subset.data.frame(race, NAME=="Todd-SD")
    nodes_ToddSD <- as.Node(race_ToddSD) 
  } #60
  else if(input$selectcounty== "Tripp-SD"){
    race_TrippSD <- subset.data.frame(race, NAME=="Tripp-SD")
    nodes_TrippSD <- as.Node(race_TrippSD) 
  } #61
  else if(input$selectcounty== "Turner-SD"){
    race_TurnerSD <- subset.data.frame(race, NAME=="Turner-SD")
    nodes_TurnerSD <- as.Node(race_TurnerSD) 
  } #62
  else if(input$selectcounty== "Union-SD"){
    race_UnionSD <- subset.data.frame(race, NAME=="Union-SD")
    nodes_UnionSD <- as.Node(race_UnionSD) 
  } #63
  else if(input$selectcounty== "Walworth-SD"){
    race_WalworthSD <- subset.data.frame(race, NAME=="Walworth-SD")
    nodes_WalworthSD <- as.Node(race_WalworthSD) 
  } #64
  else if(input$selectcounty== "Yankton-SD"){
    race_YanktonSD <- subset.data.frame(race, NAME=="Yankton-SD")
    nodes_YanktonSD <- as.Node(race_YanktonSD) 
  } #65
  else if(input$selectcounty== "Ziebach-SD"){
    race_ZiebachSD <- subset.data.frame(race, NAME=="Ziebach-SD")
    nodes_ZiebachSD <- as.Node(race_ZiebachSD) 
  } #66

######### TENNESSEE ########  
  else if(input$selectcounty== "Anderson-TN"){
    race_AndersonTN <- subset.data.frame(race, NAME=="Anderson-TN")
    nodes_AndersonTN <- as.Node(race_AndersonTN) 
  } #1
  else if(input$selectcounty== "Bedford-TN"){
    race_BedfordTN <- subset.data.frame(race, NAME=="Bedford-TN")
    nodes_BedfordTN <- as.Node(race_BedfordTN) 
  } #2
  else if(input$selectcounty== "Benton-TN"){
    race_BentonTN <- subset.data.frame(race, NAME=="Benton-TN")
    nodes_BentonTN <- as.Node(race_BentonTN) 
  } #3
  else if(input$selectcounty== "Bledsoe-TN"){
    race_BledsoeTN <- subset.data.frame(race, NAME=="Bledsoe-TN")
    nodes_BledsoeTN <- as.Node(race_BledsoeTN) 
  } #4
  else if(input$selectcounty== "Blount-TN"){
    race_BlountTN <- subset.data.frame(race, NAME=="Blount-TN")
    nodes_BlountTN <- as.Node(race_BlountTN) 
  } #5
  else if(input$selectcounty== "Bradley-TN"){
    race_BradleyTN <- subset.data.frame(race, NAME=="Bradley-TN")
    nodes_BradleyTN <- as.Node(race_BradleyTN) 
  } #6
  else if(input$selectcounty== "Campbell-TN"){
    race_CampbellTN <- subset.data.frame(race, NAME=="Campbell-TN")
    nodes_CampbellTN <- as.Node(race_CampbellTN) 
  } #7
  else if(input$selectcounty== "Cannon-TN"){
    race_CannonTN <- subset.data.frame(race, NAME=="Cannon-TN")
    nodes_CannonTN <- as.Node(race_CannonTN) 
  } #8
  else if(input$selectcounty== "Carroll-TN"){
    race_CarrollTN <- subset.data.frame(race, NAME=="Carroll-TN")
    nodes_CarrollTN <- as.Node(race_CarrollTN) 
  } #9
  else if(input$selectcounty== "Carter-TN"){
    race_CarterTN <- subset.data.frame(race, NAME=="Carter-TN")
    nodes_CarterTN <- as.Node(race_CarterTN) 
  } #10
  else if(input$selectcounty== "Cheatham-TN"){
    race_CheathamTN <- subset.data.frame(race, NAME=="Cheatham-TN")
    nodes_CheathamTN <- as.Node(race_CheathamTN) 
  } #11
  else if(input$selectcounty== "Chester-TN"){
    race_ChesterTN <- subset.data.frame(race, NAME=="Chester-TN")
    nodes_ChesterTN <- as.Node(race_ChesterTN) 
  } #12
  else if(input$selectcounty== "Claiborne-TN"){
    race_ClaiborneTN <- subset.data.frame(race, NAME=="Claiborne-TN")
    nodes_ClaiborneTN <- as.Node(race_ClaiborneTN) 
  } #13
  else if(input$selectcounty== "Clay-TN"){
    race_ClayTN <- subset.data.frame(race, NAME=="Clay-TN")
    nodes_ClayTN <- as.Node(race_ClayTN) 
  } #14
  else if(input$selectcounty== "Cocke-TN"){
    race_CockeTN <- subset.data.frame(race, NAME=="Cocke-TN")
    nodes_CockeTN <- as.Node(race_CockeTN) 
  } #15
  else if(input$selectcounty== "Coffee-TN"){
    race_CoffeeTN <- subset.data.frame(race, NAME=="Coffee-TN")
    nodes_CoffeeTN <- as.Node(race_CoffeeTN) 
  } #16
  else if(input$selectcounty== "Crockett-TN"){
    race_CrockettTN <- subset.data.frame(race, NAME=="Crockett-TN")
    nodes_CrockettTN <- as.Node(race_CrockettTN) 
  } #17
  else if(input$selectcounty== "Cumberland-TN"){
    race_CumberlandTN <- subset.data.frame(race, NAME=="Cumberland-TN")
    nodes_CumberlandTN <- as.Node(race_CumberlandTN) 
  } #18
  else if(input$selectcounty== "Davidson-TN"){
    race_DavidsonTN <- subset.data.frame(race, NAME=="Davidson-TN")
    nodes_DavidsonTN <- as.Node(race_DavidsonTN) 
  } #19
  else if(input$selectcounty== "Decatur-TN"){
    race_DecaturTN <- subset.data.frame(race, NAME=="Decatur-TN")
    nodes_DecaturTN <- as.Node(race_DecaturTN) 
  } #20
  else if(input$selectcounty== "DeKalb-TN"){
    race_DeKalbTN <- subset.data.frame(race, NAME=="DeKalb-TN")
    nodes_DeKalbTN <- as.Node(race_DeKalbTN) 
  } #21
  else if(input$selectcounty== "Dickson-TN"){
    race_DicksonTN <- subset.data.frame(race, NAME=="Dickson-TN")
    nodes_DicksonTN <- as.Node(race_DicksonTN) 
  } #22
  else if(input$selectcounty== "Dyer-TN"){
    race_DyerTN <- subset.data.frame(race, NAME=="Dyer-TN")
    nodes_DyerTN <- as.Node(race_DyerTN) 
  } #23
  else if(input$selectcounty== "Fayette-TN"){
    race_FayetteTN <- subset.data.frame(race, NAME=="Fayette-TN")
    nodes_FayetteTN <- as.Node(race_FayetteTN) 
  } #24
  else if(input$selectcounty== "Fentress-TN"){
    race_FentressTN <- subset.data.frame(race, NAME=="Fentress-TN")
    nodes_FentressTN <- as.Node(race_FentressTN) 
  } #25
  else if(input$selectcounty== "Franklin-TN"){
    race_FranklinTN <- subset.data.frame(race, NAME=="Franklin-TN")
    nodes_FranklinTN <- as.Node(race_FranklinTN) 
  } #26
  else if(input$selectcounty== "Gibson-TN"){
    race_GibsonTN <- subset.data.frame(race, NAME=="Gibson-TN")
    nodes_GibsonTN <- as.Node(race_GibsonTN) 
  } #27
  else if(input$selectcounty== "Giles-TN"){
    race_GilesTN <- subset.data.frame(race, NAME=="Giles-TN")
    nodes_GilesTN <- as.Node(race_GilesTN) 
  } #28
  else if(input$selectcounty== "Grainger-TN"){
    race_GraingerTN <- subset.data.frame(race, NAME=="Grainger-TN")
    nodes_GraingerTN <- as.Node(race_GraingerTN) 
  } #29
  else if(input$selectcounty== "Greene-TN"){
    race_GreeneTN <- subset.data.frame(race, NAME=="Greene-TN")
    nodes_GreeneTN <- as.Node(race_GreeneTN) 
  } #30
  else if(input$selectcounty== "Grundy-TN"){
    race_GrundyTN <- subset.data.frame(race, NAME=="Grundy-TN")
    nodes_GrundyTN <- as.Node(race_GrundyTN) 
  } #31
  else if(input$selectcounty== "Hamblen-TN"){
    race_HamblenTN <- subset.data.frame(race, NAME=="Hamblen-TN")
    nodes_HamblenTN <- as.Node(race_HamblenTN) 
  } #32
  else if(input$selectcounty== "Hamilton-TN"){
    race_HamiltonTN <- subset.data.frame(race, NAME=="Hamilton-TN")
    nodes_HamiltonTN <- as.Node(race_HamiltonTN) 
  } #33
  else if(input$selectcounty== "Hancock-TN"){
    race_HancockTN <- subset.data.frame(race, NAME=="Hancock-TN")
    nodes_HancockTN <- as.Node(race_HancockTN) 
  } #34
  else if(input$selectcounty== "Hardeman-TN"){
    race_HardemanTN <- subset.data.frame(race, NAME=="Hardeman-TN")
    nodes_HardemanTN <- as.Node(race_HardemanTN) 
  } #35
  else if(input$selectcounty== "Hardin-TN"){
    race_HardinTN <- subset.data.frame(race, NAME=="Hardin-TN")
    nodes_HardinTN <- as.Node(race_HardinTN) 
  } #36
  else if(input$selectcounty== "Hawkins-TN"){
    race_HawkinsTN <- subset.data.frame(race, NAME=="Hawkins-TN")
    nodes_HawkinsTN <- as.Node(race_HawkinsTN) 
  } #37
  else if(input$selectcounty== "Haywood-TN"){
    race_HaywoodTN <- subset.data.frame(race, NAME=="Haywood-TN")
    nodes_HaywoodTN <- as.Node(race_HaywoodTN) 
  } #38
  else if(input$selectcounty== "Henderson-TN"){
    race_HendersonTN <- subset.data.frame(race, NAME=="Henderson-TN")
    nodes_HendersonTN <- as.Node(race_HendersonTN) 
  } #39
  else if(input$selectcounty== "Henry-TN"){
    race_HenryTN <- subset.data.frame(race, NAME=="Henry-TN")
    nodes_HenryTN <- as.Node(race_HenryTN) 
  } #40
  else if(input$selectcounty== "Hickman-TN"){
    race_HickmanTN <- subset.data.frame(race, NAME=="Hickman-TN")
    nodes_HickmanTN <- as.Node(race_HickmanTN) 
  } #41
  else if(input$selectcounty== "Houston-TN"){
    race_HoustonTN <- subset.data.frame(race, NAME=="Houston-TN")
    nodes_HoustonTN <- as.Node(race_HoustonTN) 
  } #42
  else if(input$selectcounty== "Humphreys-TN"){
    race_HumphreysTN <- subset.data.frame(race, NAME=="Humphreys-TN")
    nodes_HumphreysTN <- as.Node(race_HumphreysTN) 
  } #43
  else if(input$selectcounty== "Jackson-TN"){
    race_JacksonTN <- subset.data.frame(race, NAME=="Jackson-TN")
    nodes_JacksonTN <- as.Node(race_JacksonTN) 
  } #44
  else if(input$selectcounty== "Jefferson-TN"){
    race_JeffersonTN <- subset.data.frame(race, NAME=="Jefferson-TN")
    nodes_JeffersonTN <- as.Node(race_JeffersonTN) 
  } #45
  else if(input$selectcounty== "Johnson-TN"){
    race_JohnsonTN <- subset.data.frame(race, NAME=="Johnson-TN")
    nodes_JohnsonTN <- as.Node(race_JohnsonTN) 
  } #46
  else if(input$selectcounty== "Knox-TN"){
    race_KnoxTN <- subset.data.frame(race, NAME=="Knox-TN")
    nodes_KnoxTN <- as.Node(race_KnoxTN) 
  } #47
  else if(input$selectcounty== "Lake-TN"){
    race_LakeTN <- subset.data.frame(race, NAME=="Lake-TN")
    nodes_LakeTN <- as.Node(race_LakeTN) 
  } #48
  else if(input$selectcounty== "Lauderdale-TN"){
    race_LauderdaleTN <- subset.data.frame(race, NAME=="Lauderdale-TN")
    nodes_LauderdaleTN <- as.Node(race_LauderdaleTN) 
  } #49
  else if(input$selectcounty== "Lawrence-TN"){
    race_LawrenceTN <- subset.data.frame(race, NAME=="Lawrence-TN")
    nodes_LawrenceTN <- as.Node(race_LawrenceTN) 
  } #50
  else if(input$selectcounty== "Lewis-TN"){
    race_LewisTN <- subset.data.frame(race, NAME=="Lewis-TN")
    nodes_LewisTN <- as.Node(race_LewisTN) 
  } #51
  else if(input$selectcounty== "Lincoln-TN"){
    race_LincolnTN <- subset.data.frame(race, NAME=="Lincoln-TN")
    nodes_LincolnTN <- as.Node(race_LincolnTN) 
  } #52
  else if(input$selectcounty== "Loudon-TN"){
    race_LoudonTN <- subset.data.frame(race, NAME=="Loudon-TN")
    nodes_LoudonTN <- as.Node(race_LoudonTN) 
  } #53
  else if(input$selectcounty== "Macon-TN"){
    race_MaconTN <- subset.data.frame(race, NAME=="Macon-TN")
    nodes_MaconTN <- as.Node(race_MaconTN) 
  } #54
  else if(input$selectcounty== "Madison-TN"){
    race_MadisonTN <- subset.data.frame(race, NAME=="Madison-TN")
    nodes_MadisonTN <- as.Node(race_MadisonTN) 
  } #55
  else if(input$selectcounty== "Marion-TN"){
    race_MarionTN <- subset.data.frame(race, NAME=="Marion-TN")
    nodes_MarionTN <- as.Node(race_MarionTN) 
  } #56
  else if(input$selectcounty== "Marshall-TN"){
    race_MarshallTN <- subset.data.frame(race, NAME=="Marshall-TN")
    nodes_MarshallTN <- as.Node(race_MarshallTN) 
  } #57
  else if(input$selectcounty== "Maury-TN"){
    race_MauryTN <- subset.data.frame(race, NAME=="Maury-TN")
    nodes_MauryTN <- as.Node(race_MauryTN) 
  } #58
  else if(input$selectcounty== "McMinn-TN"){
    race_McMinnTN <- subset.data.frame(race, NAME=="McMinn-TN")
    nodes_McMinnTN <- as.Node(race_McMinnTN) 
  } #59
  else if(input$selectcounty== "McNairy-TN"){
    race_McNairyTN <- subset.data.frame(race, NAME=="McNairy-TN")
    nodes_McNairyTN <- as.Node(race_McNairyTN) 
  } #60
  else if(input$selectcounty== "Meigs-TN"){
    race_MeigsTN <- subset.data.frame(race, NAME=="Meigs-TN")
    nodes_MeigsTN <- as.Node(race_MeigsTN) 
  } #61
  else if(input$selectcounty== "Monroe-TN"){
    race_MonroeTN <- subset.data.frame(race, NAME=="Monroe-TN")
    nodes_MonroeTN <- as.Node(race_MonroeTN) 
  } #62
  else if(input$selectcounty== "Montgomery-TN"){
    race_MontgomeryTN <- subset.data.frame(race, NAME=="Montgomery-TN")
    nodes_MontgomeryTN <- as.Node(race_MontgomeryTN) 
  } ########95
  else if(input$selectcounty== "Moore-TN"){
    race_MooreTN <- subset.data.frame(race, NAME=="Moore-TN")
    nodes_MooreTN <- as.Node(race_MooreTN) 
  } #63
  else if(input$selectcounty== "Morgan-TN"){
    race_MorganTN <- subset.data.frame(race, NAME=="Morgan-TN")
    nodes_MorganTN <- as.Node(race_MorganTN) 
  } #64
  else if(input$selectcounty== "Obion-TN"){
    race_ObionTN <- subset.data.frame(race, NAME=="Obion-TN")
    nodes_ObionTN <- as.Node(race_ObionTN) 
  } #65
  else if(input$selectcounty== "Overton-TN"){
    race_OvertonTN <- subset.data.frame(race, NAME=="Overton-TN")
    nodes_OvertonTN <- as.Node(race_OvertonTN) 
  } #66
  else if(input$selectcounty== "Perry-TN"){
    race_PerryTN <- subset.data.frame(race, NAME=="Perry-TN")
    nodes_PerryTN <- as.Node(race_PerryTN) 
  } #67
  else if(input$selectcounty== "Pickett-TN"){
    race_PickettTN <- subset.data.frame(race, NAME=="Pickett-TN")
    nodes_PickettTN <- as.Node(race_PickettTN) 
  } #68
  else if(input$selectcounty== "Montgomery-TN"){
    race_MontgomeryTN <- subset.data.frame(race, NAME=="Montgomery-TN")
    nodes_MontgomeryTN <- as.Node(race_MontgomeryTN) 
  } #69
  else if(input$selectcounty== "Polk-TN"){
    race_PolkTN <- subset.data.frame(race, NAME=="Polk-TN")
    nodes_PolkTN <- as.Node(race_PolkTN) 
  } #70
  else if(input$selectcounty== "Putnam-TN"){
    race_PutnamTN <- subset.data.frame(race, NAME=="Putnam-TN")
    nodes_PutnamTN <- as.Node(race_PutnamTN) 
  } #71
  else if(input$selectcounty== "Rhea-TN"){
    race_RheaTN <- subset.data.frame(race, NAME=="Rhea-TN")
    nodes_RheaTN <- as.Node(race_RheaTN) 
  } #72
  else if(input$selectcounty== "Roane-TN"){
    race_RoaneTN <- subset.data.frame(race, NAME=="Roane-TN")
    nodes_RoaneTN <- as.Node(race_RoaneTN) 
  } #73
  else if(input$selectcounty== "Robertson-TN"){
    race_RobertsonTN <- subset.data.frame(race, NAME=="Robertson-TN")
    nodes_RobertsonTN <- as.Node(race_RobertsonTN) 
  } #74
  else if(input$selectcounty== "Rutherford-TN"){
    race_RutherfordTN <- subset.data.frame(race, NAME=="Rutherford-TN")
    nodes_RutherfordTN <- as.Node(race_RutherfordTN) 
  } #75
  else if(input$selectcounty== "Scott-TN"){
    race_ScottTN <- subset.data.frame(race, NAME=="Scott-TN")
    nodes_ScottTN <- as.Node(race_ScottTN) 
  } #76
  else if(input$selectcounty== "Sequatchie-TN"){
    race_SequatchieTN <- subset.data.frame(race, NAME=="Sequatchie-TN")
    nodes_SequatchieTN <- as.Node(race_SequatchieTN) 
  } #77
  else if(input$selectcounty== "Sevier-TN"){
    race_SevierTN <- subset.data.frame(race, NAME=="Sevier-TN")
    nodes_SevierTN <- as.Node(race_SevierTN) 
  } #78
  else if(input$selectcounty== "Shelby-TN"){
    race_ShelbyTN <- subset.data.frame(race, NAME=="Shelby-TN")
    nodes_ShelbyTN <- as.Node(race_ShelbyTN) 
  } #79
  else if(input$selectcounty== "Smith-TN"){
    race_SmithTN <- subset.data.frame(race, NAME=="Smith-TN")
    nodes_SmithTN <- as.Node(race_SmithTN) 
  } #80
  else if(input$selectcounty== "Stewart-TN"){
    race_StewartTN <- subset.data.frame(race, NAME=="Stewart-TN")
    nodes_StewartTN <- as.Node(race_StewartTN) 
  } #81
  else if(input$selectcounty== "Sullivan-TN"){
    race_SullivanTN <- subset.data.frame(race, NAME=="Sullivan-TN")
    nodes_SullivanTN <- as.Node(race_SullivanTN) 
  } #82
  else if(input$selectcounty== "Sumner-TN"){
    race_SumnerTN <- subset.data.frame(race, NAME=="Sumner-TN")
    nodes_SumnerTN <- as.Node(race_SumnerTN) 
  } #83
  else if(input$selectcounty== "Tipton-TN"){
    race_TiptonTN <- subset.data.frame(race, NAME=="Tipton-TN")
    nodes_TiptonTN <- as.Node(race_TiptonTN) 
  } #84
  else if(input$selectcounty== "Trousdale-TN"){
    race_TrousdaleTN <- subset.data.frame(race, NAME=="Trousdale-TN")
    nodes_TrousdaleTN <- as.Node(race_TrousdaleTN) 
  } #85
  else if(input$selectcounty== "Unicoi-TN"){
    race_UnicoiTN <- subset.data.frame(race, NAME=="Unicoi-TN")
    nodes_UnicoiTN <- as.Node(race_UnicoiTN) 
  } #86
  else if(input$selectcounty== "Union-TN"){
    race_UnionTN <- subset.data.frame(race, NAME=="Union-TN")
    nodes_UnionTN <- as.Node(race_UnionTN) 
  } #87
  else if(input$selectcounty== "Van Buren-TN"){
    race_VanBurenTN <- subset.data.frame(race, NAME=="Van Buren-TN")
    nodes_VanBurenTN <- as.Node(race_VanBurenTN) 
  } #88
  else if(input$selectcounty== "Warren-TN"){
    race_WarrenTN <- subset.data.frame(race, NAME=="Warren-TN")
    nodes_WarrenTN <- as.Node(race_WarrenTN) 
  } #89
  else if(input$selectcounty== "Washington-TN"){
    race_WashingtonTN <- subset.data.frame(race, NAME=="Washington-TN")
    nodes_WashingtonTN <- as.Node(race_WashingtonTN) 
  } #90
  else if(input$selectcounty== "Wayne-TN"){
    race_WayneTN <- subset.data.frame(race, NAME=="Wayne-TN")
    nodes_WayneTN <- as.Node(race_WayneTN) 
  } #91
  else if(input$selectcounty== "Weakley-TN"){
    race_WhiteTN <- subset.data.frame(race, NAME=="Weakley-TN")
    nodes_WhiteTN <- as.Node(race_WhiteTN) 
  } #92
  else if(input$selectcounty== "Williamson-TN"){
    race_WilliamsonTN <- subset.data.frame(race, NAME=="Williamson-TN")
    nodes_WilliamsonTN <- as.Node(race_WilliamsonTN) 
  } #93
  else if(input$selectcounty== "Wilson-TN"){
    race_WilsonTN <- subset.data.frame(race, NAME=="Wilson-TN")
    nodes_WilsonTN <- as.Node(race_WilsonTN) 
  } #94
  
######### UTAH ######### 
  else if(input$selectcounty== "Beaver-UT"){
    race_BeaverUT <- subset.data.frame(race, NAME=="Beaver-UT")
    nodes_BeaverUT <- as.Node(race_BeaverUT) 
  } #1
  else if(input$selectcounty== "Box Elder-UT"){
    race_BoxElderUT <- subset.data.frame(race, NAME=="Box Elder-UT")
    nodes_BoxElderUT <- as.Node(race_BoxElderUT) 
  } #2
  else if(input$selectcounty== "Cache-UT"){
    race_CacheUT <- subset.data.frame(race, NAME=="Cache-UT")
    nodes_CacheUT <- as.Node(race_CacheUT) 
  } #3
  else if(input$selectcounty== "Carbon-UT"){
    race_CarbonUT <- subset.data.frame(race, NAME=="Carbon-UT")
    nodes_CarbonUT <- as.Node(race_CarbonUT) 
  } #4
  else if(input$selectcounty== "Daggett-UT"){
    race_DaggettUT <- subset.data.frame(race, NAME=="Daggett-UT")
    nodes_DaggettUT <- as.Node(race_DaggettUT) 
  } #5
  else if(input$selectcounty== "Davis-UT"){
    race_DavisUT <- subset.data.frame(race, NAME=="Davis-UT")
    nodes_DavisUT <- as.Node(race_DavisUT) 
  } #6
  else if(input$selectcounty== "Duchesne-UT"){
    race_DuchesneUT <- subset.data.frame(race, NAME=="Duchesne-UT")
    nodes_DuchesneUT <- as.Node(race_DuchesneUT) 
  } #7
  else if(input$selectcounty== "Emery-UT"){
    race_EmeryUT <- subset.data.frame(race, NAME=="Emery-UT")
    nodes_EmeryUT <- as.Node(race_EmeryUT) 
  } #8
  else if(input$selectcounty== "Garfield-UT"){
    race_GarfieldUT <- subset.data.frame(race, NAME=="Garfield-UT")
    nodes_GarfieldUT <- as.Node(race_GarfieldUT) 
  } #9
  else if(input$selectcounty== "Grand-UT"){
    race_GrandUT <- subset.data.frame(race, NAME=="Grand-UT")
    nodes_GrandUT <- as.Node(race_GrandUT) 
  } #10
  else if(input$selectcounty== "Iron-UT"){
    race_IronUT <- subset.data.frame(race, NAME=="Iron-UT")
    nodes_IronUT <- as.Node(race_IronUT) 
  } #11
  else if(input$selectcounty== "Juab-UT"){
    race_JuabUT <- subset.data.frame(race, NAME=="Juab-UT")
    nodes_JuabUT <- as.Node(race_JuabUT) 
  } #12
  else if(input$selectcounty== "Kane-UT"){
    race_KaneUT <- subset.data.frame(race, NAME=="Kane-UT")
    nodes_KaneUT <- as.Node(race_KaneUT) 
  } #13
  else if(input$selectcounty== "Millard-UT"){
    race_MillardUT <- subset.data.frame(race, NAME=="Millard-UT")
    nodes_MillardUT <- as.Node(race_MillardUT) 
  } #14
  else if(input$selectcounty== "Morgan-UT"){
    race_MorganUT <- subset.data.frame(race, NAME=="Morgan-UT")
    nodes_MorganUT <- as.Node(race_MorganUT) 
  } #15
  else if(input$selectcounty== "Piute-UT"){
    race_PiuteUT <- subset.data.frame(race, NAME=="Piute-UT")
    nodes_PiuteUT <- as.Node(race_PiuteUT) 
  } #16
  else if(input$selectcounty== "Rich-UT"){
    race_RichUT <- subset.data.frame(race, NAME=="Rich-UT")
    nodes_RichUT <- as.Node(race_RichUT) 
  } #17
  else if(input$selectcounty== "Salt Lake-UT"){
    race_SaltLakeUT <- subset.data.frame(race, NAME=="Salt Lake-UT")
    nodes_SaltLakeUT <- as.Node(race_SaltLakeUT) 
  } #18
  else if(input$selectcounty== "San Juan-UT"){
    race_SanJuanUT <- subset.data.frame(race, NAME=="San Juan-UT")
    nodes_SanJuanUT <- as.Node(race_SanJuanUT) 
  } #19
  else if(input$selectcounty== "Sanpete-UT"){
    race_SanpeteUT <- subset.data.frame(race, NAME=="Sanpete-UT")
    nodes_SanpeteUT <- as.Node(race_BSanpeteUT) 
  } #20
  else if(input$selectcounty== "Sevier-UT"){
    race_SevierUT <- subset.data.frame(race, NAME=="Sevier-UT")
    nodes_SevierUT <- as.Node(race_SevierUT) 
  } #21
  else if(input$selectcounty== "Summit-UT"){
    race_SummitUT <- subset.data.frame(race, NAME=="Summit-UT")
    nodes_SummitUT <- as.Node(race_SummitUT) 
  } #22
  else if(input$selectcounty== "Tooele-UT"){
    race_TooeleUT <- subset.data.frame(race, NAME=="Tooele-UT")
    nodes_TooeleUT <- as.Node(race_TooeleUT) 
  } #23
  else if(input$selectcounty== "Uintah-UT"){
    race_UintahUT <- subset.data.frame(race, NAME=="Uintah-UT")
    nodes_UintahUT <- as.Node(race_UintahUT) 
  } #24
  else if(input$selectcounty== "Utah-UT"){
    race_UtahUT <- subset.data.frame(race, NAME=="Utah-UT")
    nodes_UtahUT <- as.Node(race_UtahUT) 
  } #25
  else if(input$selectcounty== "Wasatch-UT"){
    race_WasatchUT <- subset.data.frame(race, NAME=="Wasatch-UT")
    nodes_WasatchUT <- as.Node(race_WasatchUT) 
  } #26
  else if(input$selectcounty== "Washington-UT"){
    race_WashingtonUT <- subset.data.frame(race, NAME=="Washington-UT")
    nodes_WashingtonUT <- as.Node(race_WashingtonUT) 
  } #27
  else if(input$selectcounty== "Wayne-UT"){
    race_WayneUT <- subset.data.frame(race, NAME=="Wayne-UT")
    nodes_WayneUT <- as.Node(race_WayneUT) 
  } #28
  else if(input$selectcounty== "Weber-UT"){
    race_WeberUT <- subset.data.frame(race, NAME=="Weber-UT")
    nodes_WeberUT <- as.Node(race_WeberUT) 
  } #29
  
  #### ***** READY
######### VIRGINIA #########
  else if(input$selectcounty== "Accomack-VA"){
    race_AccomackVA <- subset.data.frame(race, NAME=="Accomack-VA")
    nodes_AccomackVA <- as.Node(race_AccomackVA) 
  } #1
  else if(input$selectcounty== "Albemarle-VA"){
    race_AlbemarleVA <- subset.data.frame(race, NAME=="Albemarle-VA")
    nodes_AlbemarleVA <- as.Node(race_AlbemarleVA) 
  } #2
  else if(input$selectcounty== "Alleghany-VA"){
    race_AlleghanyVA <- subset.data.frame(race, NAME=="Alleghany-VA")
    nodes_AlleghanyVA <- as.Node(race_AlleghanyVA) 
  } #3
  else if(input$selectcounty== "Amelia-VA"){
    race_AmeliaVA <- subset.data.frame(race, NAME=="Amelia-VA")
    nodes_AmeliaVA <- as.Node(race_AmeliaVA) 
  } #4
  else if(input$selectcounty== "Amherst-VA"){
    race_AmherstVA <- subset.data.frame(race, NAME=="Amherst-VA")
    nodes_AmherstVA <- as.Node(race_AmherstVA) 
  } #5
  else if(input$selectcounty== "Appomattox-VA"){
    race_AppomattoxVA <- subset.data.frame(race, NAME=="Appomattox-VA")
    nodes_AppomattoxVA <- as.Node(race_AppomattoxVA) 
  } #6
  else if(input$selectcounty== "Arlington-VA"){
    race_ArlingtonVA <- subset.data.frame(race, NAME=="Arlington-VA")
    nodes_ArlingtonVA <- as.Node(race_ArlingtonVA) 
  } #7
  else if(input$selectcounty== "Augusta-VA"){
    race_AugustaVA <- subset.data.frame(race, NAME=="Augusta-VA")
    nodes_AugustaVA <- as.Node(race_AugustaVA) 
  } #8
  else if(input$selectcounty== "Bath-VA"){
    race_BathVA <- subset.data.frame(race, NAME=="Bath-VA")
    nodes_BathVA <- as.Node(race_BathVA) 
  } #9
  else if(input$selectcounty== "Bedford-VA"){
    race_BedfordVA <- subset.data.frame(race, NAME=="Bedford-VA")
    nodes_BedfordVA <- as.Node(race_BedfordVA) 
  } #10
  else if(input$selectcounty== "Bland-VA"){
    race_BlandVA <- subset.data.frame(race, NAME=="Bland-VA")
    nodes_BlandVA <- as.Node(race_BlandVA) 
  } #11
  else if(input$selectcounty== "Botetourt-VA"){
    race_BotetourtVA <- subset.data.frame(race, NAME=="Botetourt-VA")
    nodes_BotetourtVA <- as.Node(race_BotetourtVA) 
  } #12
  else if(input$selectcounty== "Bristol-VA"){
    race_BristolVA <- subset.data.frame(race, NAME=="Bristol-VA")
    nodes_BristolVA <- as.Node(race_BristolVA) 
  } #13
  else if(input$selectcounty== "Brunswick-VA"){
    race_BrunswickVA <- subset.data.frame(race, NAME=="Brunswick-VA")
    nodes_BrunswickVA <- as.Node(race_BrunswickVA) 
  } #14
  else if(input$selectcounty== "Buchanan-VA"){
    race_BuchananVA <- subset.data.frame(race, NAME=="Buchanan-VA")
    nodes_BuchananVA <- as.Node(race_BuchananVA) 
  } #15
  else if(input$selectcounty== "Buckingham-VA"){
    race_BuckinghamVA <- subset.data.frame(race, NAME=="Buckingham-VA")
    nodes_BuckinghamVA <- as.Node(race_BuckinghamVA) 
  } #16
  else if(input$selectcounty== "Campbell-VA"){
    race_CampbellVA <- subset.data.frame(race, NAME=="Campbell-VA")
    nodes_CampbellVA <- as.Node(race_CampbellVA) 
  } #17
  else if(input$selectcounty== "Caroline-VA"){
    race_CarolineVA <- subset.data.frame(race, NAME=="Caroline-VA")
    nodes_CarolineVA <- as.Node(race_CarolineVA) 
  } #18
  else if(input$selectcounty== "Carroll-VA"){
    race_CarrollVA <- subset.data.frame(race, NAME=="Carroll-VA")
    nodes_CarrollVA <- as.Node(race_CarrollVA) 
  } #19
  else if(input$selectcounty== "Charlotte-VA"){
    race_CharlotteVA <- subset.data.frame(race, NAME=="Charlotte-VA")
    nodes_CharlotteVA <- as.Node(race_CharlotteVA) 
  } #20
  else if(input$selectcounty== "Chesapeake-VA"){
    race_ChesapeakeVA <- subset.data.frame(race, NAME=="Chesapeake-VA")
    nodes_ChesapeakeVA <- as.Node(race_ChesapeakeVA) 
  } #21
  else if(input$selectcounty== "Chesterfield-VA"){
    race_ChesterfieldVA <- subset.data.frame(race, NAME=="Chesterfield-VA")
    nodes_ChesterfieldVA <- as.Node(race_ChesterfieldVA) 
  } #22
  else if(input$selectcounty== "Clarke-VA"){
    race_ClarkeVA <- subset.data.frame(race, NAME=="Clarke-VA")
    nodes_ClarkeVA <- as.Node(race_ClarkeVA) 
  } #23
  else if(input$selectcounty== "Craig-VA"){
    race_CraigVA <- subset.data.frame(race, NAME=="Craig-VA")
    nodes_CraigVA <- as.Node(race_CraigVA) 
  } #24
  else if(input$selectcounty== "Culpeper-VA"){
    race_CulpeperVA <- subset.data.frame(race, NAME=="Culpeper-VA")
    nodes_CulpeperVA <- as.Node(race_CulpeperVA) 
  } #25
  else if(input$selectcounty== "Cumberland-VA"){
    race_CumberlandVA <- subset.data.frame(race, NAME=="Cumberland-VA")
    nodes_CumberlandVA <- as.Node(race_CumberlandVA) 
  } #26
  else if(input$selectcounty== "Dickenson-VA"){
    race_DickensonVA <- subset.data.frame(race, NAME=="Dickenson-VA")
    nodes_DickensonVA <- as.Node(race_DickensonVA) 
  } #27
  else if(input$selectcounty== "Dinwiddie-VA"){
    race_DinwiddieVA <- subset.data.frame(race, NAME=="Dinwiddie-VA")
    nodes_DinwiddieVA <- as.Node(race_DinwiddieVA) 
  } #28
  else if(input$selectcounty== "Essex-VA"){
    race_EssexVA <- subset.data.frame(race, NAME=="Essex-VA")
    nodes_EssexVA <- as.Node(race_EssexVA) 
  } #29
  else if(input$selectcounty== "Fairfax-VA"){
    race_FairfaxVA <- subset.data.frame(race, NAME=="Fairfax-VA")
    nodes_FairfaxVA <- as.Node(race_FairfaxVA) 
  } #30
  else if(input$selectcounty== "Fauquier-VA"){
    race_FauquierVA <- subset.data.frame(race, NAME=="Fauquier-VA")
    nodes_FauquierVA <- as.Node(race_FauquierVA) 
  } #31
  else if(input$selectcounty== "Floyd-VA"){
    race_FloydVA <- subset.data.frame(race, NAME=="Floyd-VA")
    nodes_FloydVA <- as.Node(race_FloydVA) 
  } #32
  else if(input$selectcounty== "Fluvanna-VA"){
    race_FluvannaVA <- subset.data.frame(race, NAME=="Fluvanna-VA")
    nodes_FluvannaVA <- as.Node(race_FluvannaVA) 
  } #33
  else if(input$selectcounty== "Franklin-VA"){
    race_FranklinVA <- subset.data.frame(race, NAME=="Franklin-VA")
    nodes_FranklinVA <- as.Node(race_FranklinVA) 
  } #34
  else if(input$selectcounty== "Frederick-VA"){
    race_FrederickVA <- subset.data.frame(race, NAME=="Frederick-VA")
    nodes_FrederickVA <- as.Node(race_FrederickVA) 
  } #35
  else if(input$selectcounty== "Giles-VA"){
    race_GilesVA <- subset.data.frame(race, NAME=="Giles-VA")
    nodes_GilesVA <- as.Node(race_GilesVA) 
  } #36
  else if(input$selectcounty== "Gloucester-VA"){
    race_GloucesterVA <- subset.data.frame(race, NAME=="Gloucester-VA")
    nodes_GloucesterVA <- as.Node(race_GloucesterVA) 
  } #37
  else if(input$selectcounty== "Goochland-VA"){
    race_GoochlandVA <- subset.data.frame(race, NAME=="Goochland-VA")
    nodes_GoochlandVA <- as.Node(race_GoochlandVA) 
  } #38
  else if(input$selectcounty== "Grayson-VA"){
    race_GraysonVA <- subset.data.frame(race, NAME=="Grayson-VA")
    nodes_GraysonVA <- as.Node(race_GraysonVA) 
  } #39
  else if(input$selectcounty== "Greene-VA"){
    race_GreeneVA <- subset.data.frame(race, NAME=="Greene-VA")
    nodes_GreeneVA <- as.Node(race_GreeneVA) 
  } #40
  else if(input$selectcounty== "Greensville-VA"){
    race_GreensvilleVA <- subset.data.frame(race, NAME=="Greensville-VA")
    nodes_GreensvilleVA <- as.Node(race_GreensvilleVA) 
  } #41
  else if(input$selectcounty== "Halifax-VA"){
    race_HalifaxVA <- subset.data.frame(race, NAME=="Halifax-VA")
    nodes_HalifaxVA <- as.Node(race_HalifaxVA) 
  } #42
  else if(input$selectcounty== "Hampton-VA"){
    race_HamptonVA <- subset.data.frame(race, NAME=="Hampton-VA")
    nodes_HamptonVA <- as.Node(race_HamptonVA) 
  } #43
  else if(input$selectcounty== "Hanover-VA"){
    race_HanoverVA <- subset.data.frame(race, NAME=="Hanover-VA")
    nodes_HanoverVA <- as.Node(race_HanoverVA) 
  } #44
  else if(input$selectcounty== "Henrico-VA"){
    race_HenricoVA <- subset.data.frame(race, NAME=="Henrico-VA")
    nodes_HenricoVA <- as.Node(race_HenricoVA) 
  } #45
  else if(input$selectcounty== "Henry-VA"){
    race_HenryVA <- subset.data.frame(race, NAME=="Henry-VA")
    nodes_HenryVA <- as.Node(race_HenryVA) 
  } #46
  else if(input$selectcounty== "Highland-VA"){
    race_HighlandVA <- subset.data.frame(race, NAME=="Highland-VA")
    nodes_HighlandVA <- as.Node(race_HighlandVA) 
  } #47
  else if(input$selectcounty== "Isle of Wight-VA"){
    race_IsleofWightVA <- subset.data.frame(race, NAME=="Isle of Wight-VA")
    nodes_IsleofWightVA <- as.Node(race_IsleofWightVA) 
  } #48
  else if(input$selectcounty== "James City-VA"){
    race_JamesCityVA <- subset.data.frame(race, NAME=="James City-VA")
    nodes_JamesCityVA <- as.Node(race_JamesCityVA) 
  } #49
  else if(input$selectcounty== "King and Queen-VA"){
    race_KingandQueenVA <- subset.data.frame(race, NAME=="King and Queen-VA")
    nodes_KingandQueenVA <- as.Node(race_KingandQueenVA) 
  } #50
  else if(input$selectcounty== "King George-VA"){
    race_KingGeorgeVA <- subset.data.frame(race, NAME=="King George-VA")
    nodes_KingGeorgeVA <- as.Node(race_KingGeorgeVA) 
  } #51
  else if(input$selectcounty== "King William-VA"){
    race_KingWilliamVA <- subset.data.frame(race, NAME=="King William-VA")
    nodes_KingWilliamVA <- as.Node(race_KingWilliamVA) 
  } #52
  else if(input$selectcounty== "Lancaster-VA"){
    race_LancasterVA <- subset.data.frame(race, NAME=="Lancaster-VA")
    nodes_LancasterVA <- as.Node(race_LancasterVA) 
  } #53
  else if(input$selectcounty== "Lee-VA"){
    race_LeeVA <- subset.data.frame(race, NAME=="Lee-VA")
    nodes_LeeVA <- as.Node(race_LeeVA) 
  } #54
  else if(input$selectcounty== "Loudoun-VA"){
    race_LoudounVA <- subset.data.frame(race, NAME=="Loudoun-VA")
    nodes_LoudounVA <- as.Node(race_LoudounVA) 
  } #55
  else if(input$selectcounty== "Louisa-VA"){
    race_LouisaVA <- subset.data.frame(race, NAME=="Louisa-VA")
    nodes_LouisaVA <- as.Node(race_LouisaVA) 
  } #56
  else if(input$selectcounty== "Lunenburg-VA"){
    race_LunenburgVA <- subset.data.frame(race, NAME=="Lunenburg-VA")
    nodes_LunenburgVA <- as.Node(race_LunenburgVA) 
  } #57
  else if(input$selectcounty== "Lynchburg-VA"){
    race_LynchburgVA <- subset.data.frame(race, NAME=="Lynchburg-VA")
    nodes_LynchburgVA <- as.Node(race_LynchburgVA) 
  } #58
  else if(input$selectcounty== "Madison-VA"){
    race_MadisonVA <- subset.data.frame(race, NAME=="Madison-VA")
    nodes_MadisonVA <- as.Node(race_MadisonVA) 
  } #59
  else if(input$selectcounty== "Mathews-VA"){
    race_MathewsVA <- subset.data.frame(race, NAME=="Mathews-VA")
    nodes_MathewsVA <- as.Node(race_MathewsVA) 
  } #60
  else if(input$selectcounty== "Mecklenburg-VA"){
    race_MecklenburgVA <- subset.data.frame(race, NAME=="Mecklenburg-VA")
    nodes_MecklenburgVA <- as.Node(race_MecklenburgVA) 
  } #61
  else if(input$selectcounty== "Middlesex-VA"){
    race_MiddlesexVA <- subset.data.frame(race, NAME=="Middlesex-VA")
    nodes_MiddlesexVA <- as.Node(race_MiddlesexVA) 
  } #62
  else if(input$selectcounty== "Montgomery-VA"){
    race_MontgomeryVA <- subset.data.frame(race, NAME=="Montgomery-VA")
    nodes_MontgomeryVA <- as.Node(race_MontgomeryVA) 
  } #63
  else if(input$selectcounty== "Nelson-VA"){
    race_NelsonVA <- subset.data.frame(race, NAME=="Nelson-VA")
    nodes_NelsonVA <- as.Node(race_NelsonVA) 
  } #64
  else if(input$selectcounty== "New Kent-VA"){
    race_NewKentVA <- subset.data.frame(race, NAME=="New Kent-VA")
    nodes_NewKentVA <- as.Node(race_NewKentVA) 
  } #65
  else if(input$selectcounty== "Newport News-VA"){
    race_NewportNewsVA <- subset.data.frame(race, NAME=="Newport News-VA")
    nodes_NewportNewsVA <- as.Node(race_NewportNewsVA) 
  } #66
  else if(input$selectcounty== "Norfolk-VA"){
    race_NorfolkVA <- subset.data.frame(race, NAME=="Norfolk-VA")
    nodes_NorfolkVA <- as.Node(race_NorfolkVA) 
  } #67
  else if(input$selectcounty== "Northampton-VA"){
    race_NorthamptonVA <- subset.data.frame(race, NAME=="Northampton-VA")
    nodes_NorthamptonVA <- as.Node(race_NorthamptonVA) 
  } #68
  else if(input$selectcounty== "Northumberland-VA"){
    race_NorthumberlandVA <- subset.data.frame(race, NAME=="Northumberland-VA")
    nodes_NorthumberlandVA <- as.Node(race_NorthumberlandVA) 
  } #69
  else if(input$selectcounty== "Nottoway-VA"){
    race_NottowayVA <- subset.data.frame(race, NAME=="Nottoway-VA")
    nodes_NottowayVA <- as.Node(race_NottowayVA) 
  } #70
  else if(input$selectcounty== "Orange-VA"){
    race_OrangeVA <- subset.data.frame(race, NAME=="Orange-VA")
    nodes_OrangeVA <- as.Node(race_OrangeVA) 
  } #71
  else if(input$selectcounty== "Page-VA"){
    race_PageVA <- subset.data.frame(race, NAME=="Page-VA")
    nodes_PageVA <- as.Node(race_PageVA) 
  } #72
  else if(input$selectcounty== "Patrick-VA"){
    race_PatrickVA <- subset.data.frame(race, NAME=="Patrick-VA")
    nodes_PatrickVA <- as.Node(race_PatrickVA) 
  } #73
  else if(input$selectcounty== "Petersburg-VA"){
    race_PetersburgVA <- subset.data.frame(race, NAME=="Petersburg-VA")
    nodes_PetersburgVA <- as.Node(race_PetersburgVA) 
  } #74
  else if(input$selectcounty== "Pittsylvania-VA"){
    race_PittsylvaniaVA <- subset.data.frame(race, NAME=="Pittsylvania-VA")
    nodes_PittsylvaniaVA <- as.Node(race_PittsylvaniaVA) 
  } #75
  else if(input$selectcounty== "Poquoson-VA"){
    race_PoquosonVA <- subset.data.frame(race, NAME=="Poquoson-VA")
    nodes_PoquosonVA <- as.Node(race_PoquosonVA) 
  } #76
  else if(input$selectcounty== "Portsmouth-VA"){
    race_PortsmouthVA <- subset.data.frame(race, NAME=="Portsmouth-VA")
    nodes_PortsmouthVA <- as.Node(race_PortsmouthVA) 
  } #77
  else if(input$selectcounty== "Prince Edward-VA"){
    race_PrinceEdwardVA <- subset.data.frame(race, NAME=="Prince Edward-VA")
    nodes_PrinceEdwardVA <- as.Node(race_PrinceEdwardVA) 
  } #78
  else if(input$selectcounty== "Prince George-VA"){
    race_PrinceGeorgeVA <- subset.data.frame(race, NAME=="Prince George-VA")
    nodes_PrinceGeorgeVA <- as.Node(race_PrinceGeorgeVA) 
  } #79
  else if(input$selectcounty== "Prince William-VA"){
    race_PrinceWilliamVA <- subset.data.frame(race, NAME=="Prince William-VA")
    nodes_PrinceWilliamVA <- as.Node(race_PrinceWilliamVA) 
  } #80
  else if(input$selectcounty== "Pulaski-VA"){
    race_PulaskiVA <- subset.data.frame(race, NAME=="Pulaski-VA")
    nodes_PulaskiVA <- as.Node(race_PulaskiVA) 
  } #81
  else if(input$selectcounty== "Rappahannock-VA"){
    race_RappahannockVA <- subset.data.frame(race, NAME=="Rappahannock-VA")
    nodes_RappahannockVA <- as.Node(race_RappahannockVA) 
  } #82
  else if(input$selectcounty== "Richmond-VA"){
    race_RichmondVA <- subset.data.frame(race, NAME=="Richmond-VA")
    nodes_RichmondVA <- as.Node(race_RichmondVA) 
  } #83
  else if(input$selectcounty== "Roanoke-VA"){
    race_RoanokeVA <- subset.data.frame(race, NAME=="Roanoke-VA")
    nodes_RoanokeVA <- as.Node(race_RoanokeVA) 
  } #84
  else if(input$selectcounty== "Rockbridge-VA"){
    race_RockbridgeVA <- subset.data.frame(race, NAME=="Rockbridge-VA")
    nodes_RockbridgeVA <- as.Node(race_RockbridgeVA) 
  } #85
  else if(input$selectcounty== "Rockingham-VA"){
    race_RockinghamVA <- subset.data.frame(race, NAME=="Rockingham-VA")
    nodes_RockinghamVA <- as.Node(race_RockinghamVA) 
  } #86
  else if(input$selectcounty== "Russell-VA"){
    race_RussellVA <- subset.data.frame(race, NAME=="Russell-VA")
    nodes_RussellVA <- as.Node(race_RussellVA) 
  } #87
  else if(input$selectcounty== "Scott-VA"){
    race_ScottVA <- subset.data.frame(race, NAME=="Scott-VA")
    nodes_ScottVA <- as.Node(race_ScottVA) 
  } #88
  else if(input$selectcounty== "Shenandoah-VA"){
    race_ShenandoahVA <- subset.data.frame(race, NAME=="Shenandoah-VA")
    nodes_ShenandoahVA <- as.Node(race_ShenandoahVA) 
  } #89
  else if(input$selectcounty== "Smyth-VA"){
    race_SmythVA <- subset.data.frame(race, NAME=="Smyth-VA")
    nodes_SmythVA <- as.Node(race_SmythVA) 
  } #90
  else if(input$selectcounty== "Southampton-VA"){
    race_SouthamptonVA <- subset.data.frame(race, NAME=="Southampton-VA")
    nodes_SouthamptonVA <- as.Node(race_SouthamptonVA) 
  } #91
  else if(input$selectcounty== "Spotsylvania-VA"){
    race_SpotsylvaniaVA <- subset.data.frame(race, NAME=="Spotsylvania-VA")
    nodes_SpotsylvaniaVA <- as.Node(race_SpotsylvaniaVA) 
  } #92
  else if(input$selectcounty== "Stafford-VA"){
    race_StaffordVA <- subset.data.frame(race, NAME=="Stafford-VA")
    nodes_StaffordVA <- as.Node(race_StaffordVA) 
  } #93
  else if(input$selectcounty== "Suffolk-VA"){
    race_SuffolkVA <- subset.data.frame(race, NAME=="Suffolk-VA")
    nodes_SuffolkVA <- as.Node(race_SuffolkVA) 
  } #94
  else if(input$selectcounty== "Surry-VA"){
    race_SurryVA <- subset.data.frame(race, NAME=="Surry-VA")
    nodes_SurryVA <- as.Node(race_SurryVA) 
  } #95
  else if(input$selectcounty== "Sussex-VA"){
    race_SussexVA <- subset.data.frame(race, NAME=="Sussex-VA")
    nodes_SussexVA <- as.Node(race_SussexVA) 
  } #96
  else if(input$selectcounty== "Tazewell-VA"){
    race_TazewellVA <- subset.data.frame(race, NAME=="Tazewell-VA")
    nodes_TazewellVA <- as.Node(race_TazewellVA) 
  } #97
  else if(input$selectcounty== "Virginia Beach-VA"){
    race_VirginiaBeachVA <- subset.data.frame(race, NAME=="Virginia Beach-VA")
    nodes_VirginiaBeachVA <- as.Node(race_VirginiaBeachVA) 
  } #98
  else if(input$selectcounty== "Warren-VA"){
    race_WarrenVA <- subset.data.frame(race, NAME=="Warren-VA")
    nodes_WarrenVA <- as.Node(race_WarrenVA) 
  } #99
  else if(input$selectcounty== "Washington-VA"){
    race_WashingtonVA <- subset.data.frame(race, NAME=="Washington-VA")
    nodes_WashingtonVA <- as.Node(race_WashingtonVA) 
  } #100
  else if(input$selectcounty== "Westmoreland-VA"){
    race_WestmorelandVA <- subset.data.frame(race, NAME=="Westmoreland-VA")
    nodes_WestmorelandVA <- as.Node(race_WestmorelandVA) 
  } #101
  else if(input$selectcounty== "Wise-VA"){
    race_WiseVA <- subset.data.frame(race, NAME=="Wise-VA")
    nodes_WiseVA <- as.Node(race_WiseVA) 
  } #103
  else if(input$selectcounty== "Wythe-VA"){
    race_WytheVA <- subset.data.frame(race, NAME=="Wythe-VA")
    nodes_WytheVA <- as.Node(race_WytheVA) 
  } #104
  else if(input$selectcounty== "York-VA"){
    race_YorkVA <- subset.data.frame(race, NAME=="York-VA")
    nodes_YorkVA <- as.Node(race_YorkVA) 
  } #105

  #### ***** VIRGINIA IS WACKY, JUST NO.
######### VERMONT ########
  else if(input$selectcounty== "Addison-VT"){
    race_AddisonVT <- subset.data.frame(race, NAME=="Addison-VT")
    nodes_AddisonVT<- as.Node(race_AddisonVT) 
  } #1
  else if(input$selectcounty== "Bennington-VT"){
    race_BenningtonVT <- subset.data.frame(race, NAME=="Bennington-VT")
    nodes_BenningtonVT<- as.Node(race_BenningtonVT) 
  } #2
  else if(input$selectcounty== "Caledonia-VT"){
    race_CaledoniaVT <- subset.data.frame(race, NAME=="Caledonia-VT")
    nodes_CaledoniaVT<- as.Node(race_CaledoniaVT) 
  } #3
  else if(input$selectcounty== "Chittenden-VT"){
    race_ChittendenVT <- subset.data.frame(race, NAME=="Chittenden-VT")
    nodes_ChittendenVT<- as.Node(race_ChittendenVT) 
  } #4
  else if(input$selectcounty== "Essex-VT"){
    race_EssexVT <- subset.data.frame(race, NAME=="Essex-VT")
    nodes_EssexVT<- as.Node(race_EssexVT) 
  } #5
  else if(input$selectcounty== "Franklin-VT"){
    race_FranklinVT <- subset.data.frame(race, NAME=="Franklin-VT")
    nodes_FranklinVT<- as.Node(race_FranklinVT) 
  } #6
  else if(input$selectcounty== "Lamoille-VT"){
    race_LamoilleVT <- subset.data.frame(race, NAME=="Lamoille-VT")
    nodes_LamoilleVT<- as.Node(race_LamoilleVT) 
  } #7
  else if(input$selectcounty== "Orange-VT"){
    race_OrangeVT <- subset.data.frame(race, NAME=="Orange-VT")
    nodes_OrangeVT<- as.Node(race_OrangeVT) 
  } #8
  else if(input$selectcounty== "Orleans-VT"){
    race_OrleansVT <- subset.data.frame(race, NAME=="Orleans-VT")
    nodes_OrleansVT<- as.Node(race_OrleansVT) 
  } #9
  else if(input$selectcounty== "Rutland-VT"){
    race_RutlandVT <- subset.data.frame(race, NAME=="Rutland-VT")
    nodes_RutlandVT<- as.Node(race_RutlandVT) 
  } #10
  else if(input$selectcounty== "Washington-VT"){
    race_WashingtonVT <- subset.data.frame(race, NAME=="Washington-VT")
    nodes_WashingtonVT<- as.Node(race_WashingtonVT) 
  } #11
  else if(input$selectcounty== "Windham-VT"){
    race_WindhamVT <- subset.data.frame(race, NAME=="Windham-VT")
    nodes_WindhamVT<- as.Node(race_WindhamVT) 
  } #12
  else if(input$selectcounty== "Windsor-VT"){
    race_WindsorVT <- subset.data.frame(race, NAME=="Windsor-VT")
    nodes_WindsorVT<- as.Node(race_WindsorVT) 
  } #13

  #### ***** READY
######### WASHINGTON ########
  else if(input$selectcounty== "Adams-WA"){
    race_AdamsWA <- subset.data.frame(race, NAME=="Adams-WA")
    nodes_AdamsWA<- as.Node(race_AdamsWA) 
  } #1
  else if(input$selectcounty== "Asotin-WA"){
    race_AsotinWA <- subset.data.frame(race, NAME=="Asotin-WA")
    nodes_AsotinWA<- as.Node(race_AsotinWA) 
  } #2
  else if(input$selectcounty== "Benton-WA"){
    race_BentonWA <- subset.data.frame(race, NAME=="Benton-WA")
    nodes_BentonWA<- as.Node(race_BentonWA) 
  } #3
  else if(input$selectcounty== "Chelan-WA"){
    race_ChelanWA <- subset.data.frame(race, NAME=="Chelan-WA")
    nodes_ChelanWA<- as.Node(race_ChelanWA) 
  } #4
  else if(input$selectcounty== "Clallam-WA"){
    race_ClallamWA <- subset.data.frame(race, NAME=="Clallam-WA")
    nodes_ClallamWA<- as.Node(race_ClallamWA) 
  } #5
  else if(input$selectcounty== "Clark-WA"){
    race_ClarkWA <- subset.data.frame(race, NAME=="Clark-WA")
    nodes_ClarkWA<- as.Node(race_ClarkWA) 
  } #6
  else if(input$selectcounty== "Columbia-WA"){
    race_ColumbiaWA <- subset.data.frame(race, NAME=="Columbia-WA")
    nodes_ColumbiaWA<- as.Node(race_ColumbiaWA) 
  } #7
  else if(input$selectcounty== "Cowlitz-WA"){
    race_CowlitzWA <- subset.data.frame(race, NAME=="Cowlitz-WA")
    nodes_CowlitzWA<- as.Node(race_CowlitzWA) 
  } #8
  else if(input$selectcounty== "Douglas-WA"){
    race_DouglasWA <- subset.data.frame(race, NAME=="Douglas-WA")
    nodes_DouglasWA<- as.Node(race_DouglasWA) 
  } #9
  else if(input$selectcounty== "Ferry-WA"){
    race_FerryWA <- subset.data.frame(race, NAME=="Ferry-WA")
    nodes_FerryWA<- as.Node(race_FerryWA) 
  } #10
  else if(input$selectcounty== "Franklin-WA"){
    race_FranklinWA <- subset.data.frame(race, NAME=="Franklin-WA")
    nodes_FranklinWA<- as.Node(race_FranklinWA) 
  } #11
  else if(input$selectcounty== "Garfield-WA"){
    race_GarfieldWA <- subset.data.frame(race, NAME=="Garfield-WA")
    nodes_GarfieldWA<- as.Node(race_GarfieldWA) 
  } #12
  else if(input$selectcounty== "Grant-WA"){
    race_GrantWA <- subset.data.frame(race, NAME=="Grant-WA")
    nodes_GrantWA<- as.Node(race_GrantWA) 
  } #13
  else if(input$selectcounty== "Grays Harbor-WA"){
    race_GraysHarborWA <- subset.data.frame(race, NAME=="Grays Harbor-WA")
    nodes_GraysHarborWA<- as.Node(race_GraysHarborWA) 
  } #14
  else if(input$selectcounty== "Island-WA"){
    race_IslandWA <- subset.data.frame(race, NAME=="Island-WA")
    nodes_IslandWA<- as.Node(race_IslandWA) 
  } #15
  else if(input$selectcounty== "Jefferson-WA"){
    race_JeffersonWA <- subset.data.frame(race, NAME=="Jefferson-WA")
    nodes_JeffersonWA<- as.Node(race_JeffersonWA) 
  } #16
  else if(input$selectcounty== "King-WA"){
    race_KingWA <- subset.data.frame(race, NAME=="King-WA")
    nodes_KingWA<- as.Node(race_KingWA) 
  } #17
  else if(input$selectcounty== "Kitsap-WA"){
    race_KitsapWA <- subset.data.frame(race, NAME=="Kitsap-WA")
    nodes_KitsapWA<- as.Node(race_KitsapWA) 
  } #18
  else if(input$selectcounty== "Kittitas-WA"){
    race_KittitasWA <- subset.data.frame(race, NAME=="Kittitas-WA")
    nodes_KittitasWA<- as.Node(race_KittitasWA) 
  } #19
  else if(input$selectcounty== "Klickitat-WA"){
    race_KlickitatWA <- subset.data.frame(race, NAME=="Klickitat-WA")
    nodes_KlickitatWA<- as.Node(race_KlickitatWA) 
  } #20
  else if(input$selectcounty== "Lewis-WA"){
    race_LewisWA <- subset.data.frame(race, NAME=="Lewis-WA")
    nodes_LewisWA<- as.Node(race_LewisWA) 
  } #21
  else if(input$selectcounty== "Lincoln-WA"){
    race_LincolnWA <- subset.data.frame(race, NAME=="Lincoln-WA")
    nodes_LincolnWA<- as.Node(race_LincolnWA) 
  } #22
  else if(input$selectcounty== "Mason-WA"){
    race_MasonWA <- subset.data.frame(race, NAME=="Mason-WA")
    nodes_MasonWA<- as.Node(race_MasonWA) 
  } #23
  else if(input$selectcounty== "Okanogan-WA"){
    race_OkanoganWA <- subset.data.frame(race, NAME=="Okanogan-WA")
    nodes_OkanoganWA<- as.Node(race_OkanoganWA) 
  } #24
  else if(input$selectcounty== "Pacific-WA"){
    race_PacificWA <- subset.data.frame(race, NAME=="Pacific-WA")
    nodes_PacificWA<- as.Node(race_PacificWA) 
  } #25
  else if(input$selectcounty== "Pend Oreille-WA"){
    race_PendOreilleWA <- subset.data.frame(race, NAME=="Pend Oreille-WA")
    nodes_PendOreilleWA<- as.Node(race_PendOreilleWA) 
  } #26
  else if(input$selectcounty== "Pierce-WA"){
    race_PierceWA <- subset.data.frame(race, NAME=="Pierce-WA")
    nodes_PierceWA<- as.Node(race_PierceWA) 
  } #27
  else if(input$selectcounty== "San Juan-WA"){
    race_SanJuanWA <- subset.data.frame(race, NAME=="San Juan-WA")
    nodes_SanJuanWA<- as.Node(race_SanJuanWA) 
  } #28
  else if(input$selectcounty== "Skagit-WA"){
    race_SkagitWA <- subset.data.frame(race, NAME=="Skagit-WA")
    nodes_SkagitWA<- as.Node(race_SkagitWA) 
  } #29
  else if(input$selectcounty== "Skamania-WA"){
    race_SkamaniaWA <- subset.data.frame(race, NAME=="Skamania-WA")
    nodes_SkamaniaWA<- as.Node(race_SkamaniaWA) 
  } #30
  else if(input$selectcounty== "Snohomish-WA"){
    race_SnohomishWA <- subset.data.frame(race, NAME=="Snohomish-WA")
    nodes_SnohomishWA<- as.Node(race_SnohomishWA) 
  } #31
  else if(input$selectcounty== "Spokane-WA"){
    race_SpokaneWA <- subset.data.frame(race, NAME=="Spokane-WA")
    nodes_SpokaneWA<- as.Node(race_SpokaneWA) 
  } #32
  else if(input$selectcounty== "Stevens-WA"){
    race_StevensWA <- subset.data.frame(race, NAME=="Stevens-WA")
    nodes_StevensWA<- as.Node(race_StevensWA) 
  } #33
  else if(input$selectcounty== "Thurston-WA"){
    race_ThurstonWA <- subset.data.frame(race, NAME=="Thurston-WA")
    nodes_ThurstonWA<- as.Node(race_ThurstonWA) 
  } #34
  else if(input$selectcounty== "Wahkiakum-WA"){
    race_WahkiakumWA <- subset.data.frame(race, NAME=="Wahkiakum-WA")
    nodes_WahkiakumWA<- as.Node(race_WahkiakumWA) 
  } #35
  else if(input$selectcounty== "Walla Walla-WA"){
    race_WallaWallaWA <- subset.data.frame(race, NAME=="Walla Walla-WA")
    nodes_WallaWallaWA<- as.Node(race_WallaWallaWA) 
  } #36
  else if(input$selectcounty== "Whatcom-WA"){
    race_WhatcomWA <- subset.data.frame(race, NAME=="Whatcom-WA")
    nodes_WhatcomWA<- as.Node(race_WhatcomWA) 
  } #37
  else if(input$selectcounty== "Whitman-WA"){
    race_WhitmanWA <- subset.data.frame(race, NAME=="Whitman-WA")
    nodes_WhitmanWA<- as.Node(race_WhitmanWA) 
  } #38
  else if(input$selectcounty== "Yakima-WA"){
    race_YakimaWA <- subset.data.frame(race, NAME=="Yakima-WA")
    nodes_YakimaWA<- as.Node(race_YakimaWA) 
  } #39
  
  #### ***** READY
######### WISCONSIN ########  
  else if(input$selectcounty== "Adams-WI"){
    race_AdamsWI <- subset.data.frame(race, NAME=="Adams-WI")
    nodes_AdamsWI<- as.Node(race_AdamsWI) 
  } #1
  else if(input$selectcounty== "Ashland-WI"){
    race_AshlandWI <- subset.data.frame(race, NAME=="Ashland-WI")
    nodes_AshlandWI<- as.Node(race_AshlandWI) 
  } #2
  else if(input$selectcounty== "Barron-WI"){
    race_BarronWI <- subset.data.frame(race, NAME=="Barron-WI")
    nodes_BarronWI<- as.Node(race_BarronWI) 
  } #3
  else if(input$selectcounty== "Bayfield-WI"){
    race_BayfieldWI <- subset.data.frame(race, NAME=="Bayfield-WI")
    nodes_BayfieldWI<- as.Node(race_BayfieldWI) 
  } #4
  else if(input$selectcounty== "Brown-WI"){
    race_BrownWI <- subset.data.frame(race, NAME=="Brown-WI")
    nodes_BrownWI<- as.Node(race_BrownWI) 
  } #5
  else if(input$selectcounty== "Buffalo-WI"){
    race_BuffaloWI <- subset.data.frame(race, NAME=="Buffalo-WI")
    nodes_BuffaloWI<- as.Node(race_BuffaloWI) 
  } #6
  else if(input$selectcounty== "Burnett-WI"){
    race_BurnettWI <- subset.data.frame(race, NAME=="Burnett-WI")
    nodes_BurnettWI<- as.Node(race_BurnettWI) 
  } #7
  else if(input$selectcounty== "Calumet-WI"){
    race_CalumetWI <- subset.data.frame(race, NAME=="Calumet-WI")
    nodes_CalumetWI<- as.Node(race_CalumetWI) 
  } #8
  else if(input$selectcounty== "Chippewa-WI"){
    race_ChippewaWI <- subset.data.frame(race, NAME=="Chippewa-WI")
    nodes_ChippewaWI<- as.Node(race_ChippewaWI) 
  } #9
  else if(input$selectcounty== "Clark-WI"){
    race_ClarkWI <- subset.data.frame(race, NAME=="Clark-WI")
    nodes_ClarkWI<- as.Node(race_ClarkWI) 
  } #10
  else if(input$selectcounty== "Columbia-WI"){
    race_ColumbiaWI <- subset.data.frame(race, NAME=="Columbia-WI")
    nodes_ColumbiaWI<- as.Node(race_ColumbiaWI) 
  } #11
  else if(input$selectcounty== "Crawford-WI"){
    race_CrawfordWI <- subset.data.frame(race, NAME=="Crawford-WI")
    nodes_CrawfordWI<- as.Node(race_CrawfordWI) 
  } #12
  else if(input$selectcounty== "Dane-WI"){
    race_DaneWI <- subset.data.frame(race, NAME=="Dane-WI")
    nodes_DaneWI<- as.Node(race_DaneWI) 
  } #13
  else if(input$selectcounty== "Dodge-WI"){
    race_DodgeWI <- subset.data.frame(race, NAME=="Dodge-WI")
    nodes_DodgeWI<- as.Node(race_DodgeWI) 
  } #14
  else if(input$selectcounty== "Door-WI"){
    race_DoorWI <- subset.data.frame(race, NAME=="Door-WI")
    nodes_DoorWI<- as.Node(race_DoorWI) 
  } #15
  else if(input$selectcounty== "Douglas-WI"){
    race_DouglasWI <- subset.data.frame(race, NAME=="Douglas-WI")
    nodes_DouglasWI<- as.Node(race_DouglasWI) 
  } #16
  else if(input$selectcounty== "Dunn-WI"){
    race_DunnWI <- subset.data.frame(race, NAME=="Dunn-WI")
    nodes_DunnWI<- as.Node(race_DunnWI) 
  } #17
  else if(input$selectcounty== "Eau Claire-WI"){
    race_EauClaireWI <- subset.data.frame(race, NAME=="Eau Claire-WI")
    nodes_EauClaireWI<- as.Node(race_EauClaireWI) 
  } #18 
  else if(input$selectcounty== "Florence-WI"){
    race_FlorenceWI <- subset.data.frame(race, NAME=="Florence-WI")
    nodes_FlorenceWI<- as.Node(race_FlorenceWI) 
  } #19
  else if(input$selectcounty== "Fond du Lac-WI"){
    race_FondduLacWI <- subset.data.frame(race, NAME=="Fond du Lac-WI")
    nodes_FondduLacWI<- as.Node(race_FondduLacWI) 
  } #20
  else if(input$selectcounty== "Forest-WI"){
    race_ForestWI <- subset.data.frame(race, NAME=="Forest-WI")
    nodes_ForestWI<- as.Node(race_ForestWI) 
  } #21
  else if(input$selectcounty== "Grant-WI"){
    race_GrantWI <- subset.data.frame(race, NAME=="Grant-WI")
    nodes_GrantWI<- as.Node(race_GrantWI) 
  } #22
  else if(input$selectcounty== "Green-WI"){
    race_GreenWI <- subset.data.frame(race, NAME=="Green-WI")
    nodes_GreenWI<- as.Node(race_GreenWI) 
  } #23
  else if(input$selectcounty== "Green Lake-WI"){
    race_GreenLakeWI <- subset.data.frame(race, NAME=="Green Lake-WI")
    nodes_GreenLakeWI<- as.Node(race_GreenLakeWI) 
  } #24 
  else if(input$selectcounty== "Iowa-WI"){
    race_IowaWI <- subset.data.frame(race, NAME=="Iowa-WI")
    nodes_IowaWI<- as.Node(race_IowaWI) 
  } #25
  else if(input$selectcounty== "Iron-WI"){
    race_IronWI <- subset.data.frame(race, NAME=="Iron-WI")
    nodes_IronWI<- as.Node(race_IronWI) 
  } #26
  else if(input$selectcounty== "Jackson-WI"){
    race_JacksonWI <- subset.data.frame(race, NAME=="Jackson-WI")
    nodes_JacksonWI<- as.Node(race_JacksonWI) 
  } #27
  else if(input$selectcounty== "Jefferson-WI"){
    race_JeffersonWI <- subset.data.frame(race, NAME=="Jefferson-WI")
    nodes_JeffersonWI<- as.Node(race_JeffersonWI) 
  } #28
  else if(input$selectcounty== "Juneau-WI"){
    race_JuneauWI <- subset.data.frame(race, NAME=="Juneau-WI")
    nodes_JuneauWI<- as.Node(race_JuneauWI) 
  } #29
  else if(input$selectcounty== "Kenosha-WI"){
    race_KenoshaWI <- subset.data.frame(race, NAME=="Kenosha-WI")
    nodes_KenoshaWI<- as.Node(race_KenoshaWI) 
  } #30
  else if(input$selectcounty== "Kewaunee-WI"){
    race_KewauneeWI <- subset.data.frame(race, NAME=="Kewaunee-WI")
    nodes_KewauneeWI<- as.Node(race_KewauneeWI) 
  } #31
  else if(input$selectcounty== "La Crosse-WI"){
    race_LaCrosseWI <- subset.data.frame(race, NAME=="La Crosse-WI")
    nodes_LaCrosseWI<- as.Node(race_LaCrosseWI) 
  } #32
  else if(input$selectcounty== "Lafayette-WI"){
    race_LafayetteWI <- subset.data.frame(race, NAME=="Lafayette-WI")
    nodes_LafayetteWI<- as.Node(race_LafayetteWI) 
  } #33
  else if(input$selectcounty== "Langlade-WI"){
    race_LangladeWI <- subset.data.frame(race, NAME=="Langlade-WI")
    nodes_LangladeWI<- as.Node(race_LangladeWI) 
  } #34
  else if(input$selectcounty== "Lincoln-WI"){
    race_LincolnWI <- subset.data.frame(race, NAME=="Lincoln-WI")
    nodes_LincolnWI<- as.Node(race_LincolnWI) 
  } #35
  else if(input$selectcounty== "Manitowoc-WI"){
    race_ManitowocWI <- subset.data.frame(race, NAME=="Manitowoc-WI")
    nodes_ManitowocWI<- as.Node(race_ManitowocWI) 
  } #36
  else if(input$selectcounty== "Marathon-WI"){
    race_MarathonWI <- subset.data.frame(race, NAME=="Marathon-WI")
    nodes_MarathonWI<- as.Node(race_MarathonWI) 
  } #37
  else if(input$selectcounty== "Marinette-WI"){
    race_MarinetteWI <- subset.data.frame(race, NAME=="Marinette-WI")
    nodes_MarinetteWI<- as.Node(race_MarinetteWI) 
  } #38
  else if(input$selectcounty== "Marquette-WI"){
    race_MarquetteWI <- subset.data.frame(race, NAME=="Marquette-WI")
    nodes_MarquetteWI<- as.Node(race_MarquetteWI) 
  } #39
  else if(input$selectcounty== "Menominee-WI"){
    race_MenomineeWI <- subset.data.frame(race, NAME=="Menominee-WI")
    nodes_MenomineeWI<- as.Node(race_MenomineeWI) 
  } #40
  else if(input$selectcounty== "Milwaukee-WI"){
    race_MilwaukeeWI <- subset.data.frame(race, NAME=="Milwaukee-WI")
    nodes_MilwaukeeWI<- as.Node(race_MilwaukeeWI) 
  } #41
  else if(input$selectcounty== "Monroe-WI"){
    race_MonroeWI <- subset.data.frame(race, NAME=="Monroe-WI")
    nodes_MonroeWI<- as.Node(race_MonroeWI) 
  } #42
  else if(input$selectcounty== "Oconto-WI"){
    race_OcontoWI <- subset.data.frame(race, NAME=="Oconto-WI")
    nodes_OcontoWI<- as.Node(race_OcontoWI) 
  } #43
  else if(input$selectcounty== "Oneida-WI"){
    race_OneidaWI <- subset.data.frame(race, NAME=="Oneida-WI")
    nodes_OneidaWI<- as.Node(race_OneidaWI) 
  } #44
  else if(input$selectcounty== "Outagamie-WI"){
    race_OutagamieWI <- subset.data.frame(race, NAME=="Outagamie-WI")
    nodes_OutagamieWI<- as.Node(race_OutagamieWI) 
  } #45
  else if(input$selectcounty== "Ozaukee-WI"){
    race_OzaukeeWI <- subset.data.frame(race, NAME=="Ozaukee-WI")
    nodes_OzaukeeWI<- as.Node(race_OzaukeeWI) 
  } #46
  else if(input$selectcounty== "Pepin-WI"){
    race_PepinWI <- subset.data.frame(race, NAME=="Pepin-WI")
    nodes_PepinWI<- as.Node(race_PepinWI) 
  } #47
  else if(input$selectcounty== "Pierce-WI"){
    race_PierceWI <- subset.data.frame(race, NAME=="Pierce-WI")
    nodes_PierceWI<- as.Node(race_PierceWI) 
  } #48
  else if(input$selectcounty== "Polk-WI"){
    race_PolkWI <- subset.data.frame(race, NAME=="Polk-WI")
    nodes_PolkWI<- as.Node(race_PolkWI) 
  } #49
  else if(input$selectcounty== "Portage-WI"){
    race_PortageWI <- subset.data.frame(race, NAME=="Portage-WI")
    nodes_PortageWI<- as.Node(race_PortageWI) 
  } #50
  else if(input$selectcounty== "Price-WI"){
    race_PriceWI <- subset.data.frame(race, NAME=="Price-WI")
    nodes_PriceWI<- as.Node(race_PriceWI) 
  } #51
  else if(input$selectcounty== "Racine-WI"){
    race_RacineWI <- subset.data.frame(race, NAME=="Racine-WI")
    nodes_RacineWI<- as.Node(race_RacineWI) 
  } #52
  else if(input$selectcounty== "Richland-WI"){
    race_RichlandWI <- subset.data.frame(race, NAME=="Richland-WI")
    nodes_RichlandWI<- as.Node(race_RichlandWI) 
  } #53
  else if(input$selectcounty== "Rock-WI"){
    race_RockWI <- subset.data.frame(race, NAME=="Rock-WI")
    nodes_RockWI<- as.Node(race_RockWI) 
  } #54
  else if(input$selectcounty== "Rusk-WI"){
    race_RuskWI <- subset.data.frame(race, NAME=="Rusk-WI")
    nodes_RuskWI<- as.Node(race_RuskWI) 
  } #55
  else if(input$selectcounty== "Sauk-WI"){
    race_SaukWI <- subset.data.frame(race, NAME=="Sauk-WI")
    nodes_SaukWI<- as.Node(race_SaukWI) 
  } #56
  else if(input$selectcounty== "Sawyer-WI"){
    race_SawyerWI <- subset.data.frame(race, NAME=="Sawyer-WI")
    nodes_SawyerWI<- as.Node(race_SawyerWI) 
  } #57
  else if(input$selectcounty== "Shawano-WI"){
    race_ShawanoWI <- subset.data.frame(race, NAME=="Shawano-WI")
    nodes_ShawanoWI<- as.Node(race_ShawanoWI) 
  } #58
  else if(input$selectcounty== "Sheboygan-WI"){
    race_SheboyganWI <- subset.data.frame(race, NAME=="Sheboygan-WI")
    nodes_SheboyganWI<- as.Node(race_SheboyganWI) 
  } #59
  else if(input$selectcounty== "St. Croix-WI"){
    race_StCroixWI <- subset.data.frame(race, NAME=="St. Croix-WI")
    nodes_StCroixWI<- as.Node(race_StCroixWI) 
  } #60
  else if(input$selectcounty== "Taylor-WI"){
    race_TaylorWI <- subset.data.frame(race, NAME=="Taylor-WI")
    nodes_TaylorWI<- as.Node(race_TaylorWI) 
  } #61
  else if(input$selectcounty== "Trempealeau-WI"){
    race_TrempealeauWI <- subset.data.frame(race, NAME=="Trempealeau-WI")
    nodes_TrempealeauWI<- as.Node(race_TrempealeauWI) 
  } #62 
  else if(input$selectcounty== "Vernon-WI"){
    race_VernonWI <- subset.data.frame(race, NAME=="Vernon-WI")
    nodes_VernonWI<- as.Node(race_VernonWI) 
  } #63
  else if(input$selectcounty== "Vilas-WI"){
    race_VilasWI <- subset.data.frame(race, NAME=="Vilas-WI")
    nodes_VilasWI<- as.Node(race_VilasWI) 
  } #64
  else if(input$selectcounty== "Walworth-WI"){
    race_WalworthWI <- subset.data.frame(race, NAME=="Walworth-WI")
    nodes_WalworthWI<- as.Node(race_WalworthWI) 
  } #65
  else if(input$selectcounty== "Washburn-WI"){
    race_WashburnWI <- subset.data.frame(race, NAME=="Washburn-WI")
    nodes_WashburnWI<- as.Node(race_WashburnWI) 
  } #66
  else if(input$selectcounty== "Washington-WI"){
    race_WashingtonWI <- subset.data.frame(race, NAME=="Washington-WI")
    nodes_WashingtonWI<- as.Node(race_WashingtonWI) 
  } #67
  else if(input$selectcounty== "Waukesha-WI"){
    race_WaukeshaWI <- subset.data.frame(race, NAME=="Waukesha-WI")
    nodes_WaukeshaWI<- as.Node(race_WaukeshaWI) 
  } #68
  else if(input$selectcounty== "Waupaca-WI"){
    race_WaupacaWI <- subset.data.frame(race, NAME=="Waupaca-WI")
    nodes_WaupacaWI<- as.Node(race_WaupacaWI) 
  } #69
  else if(input$selectcounty== "Waushara-WI"){
    race_WausharaWI <- subset.data.frame(race, NAME=="Waushara-WI")
    nodes_WausharaWI<- as.Node(race_WausharaWI) 
  } #70
  else if(input$selectcounty== "Winnebago-WI"){
    race_WinnebagoWI <- subset.data.frame(race, NAME=="Winnebago-WI")
    nodes_WinnebagoWI<- as.Node(race_WinnebagoWI) 
  } #71
  else if(input$selectcounty== "Wood-WI"){
    race_WoodWI <- subset.data.frame(race, NAME=="Wood-WI")
    nodes_WoodWI<- as.Node(race_WoodWI) 
  } #72
  
######### WEST VIRGINIA ######## 
  else if(input$selectcounty== "Barbour-WV"){
    race_BarbourWV <- subset.data.frame(race, NAME=="Barbour-WV")
    nodes_BarbourWV<- as.Node(race_BarbourWV) 
  } #1
  else if(input$selectcounty== "Berkeley-WV"){
    race_BerkeleyWV <- subset.data.frame(race, NAME=="Berkeley-WV")
    nodes_BerkeleyWV<- as.Node(race_BerkeleyWV) 
  } #2
  else if(input$selectcounty== "Boone-WV"){
    race_BooneWV <- subset.data.frame(race, NAME=="Boone-WV")
    nodes_BooneWV<- as.Node(race_BooneWV) 
  } #3
  else if(input$selectcounty== "Braxton-WV"){
    race_BraxtonWV <- subset.data.frame(race, NAME=="Braxton-WV")
    nodes_BraxtonWV<- as.Node(race_BraxtonWV) 
  } #4
  else if(input$selectcounty== "Brooke-WV"){
    race_BrookeWV <- subset.data.frame(race, NAME=="Brooke-WV")
    nodes_BrookeWV<- as.Node(race_BrookeWV) 
  } #5
  else if(input$selectcounty== "Cabell-WV"){
    race_CabellWV <- subset.data.frame(race, NAME=="Cabell-WV")
    nodes_CabellWV<- as.Node(race_CabellWV) 
  } #6
  else if(input$selectcounty== "Calhoun-WV"){
    race_CalhounWV <- subset.data.frame(race, NAME=="Calhoun-WV")
    nodes_CalhounWV<- as.Node(race_CalhounWV) 
  } #7
  else if(input$selectcounty== "Clay-WV"){
    race_ClayWV <- subset.data.frame(race, NAME=="Clay-WV")
    nodes_ClayWV<- as.Node(race_ClayWV) 
  } #8
  else if(input$selectcounty== "Doddridge-WV"){
    race_DoddridgeWV <- subset.data.frame(race, NAME=="Doddridge-WV")
    nodes_DoddridgeWV<- as.Node(race_DoddridgeWV) 
  } #9
  else if(input$selectcounty== "Fayette-WV"){
    race_FayetteWV <- subset.data.frame(race, NAME=="Fayette-WV")
    nodes_FayetteWV<- as.Node(race_FayetteWV) 
  } #10
  else if(input$selectcounty== "Gilmer-WV"){
    race_GilmerWV <- subset.data.frame(race, NAME=="Gilmer-WV")
    nodes_GilmerWV<- as.Node(race_GilmerWV) 
  } #11
  else if(input$selectcounty== "Grant-WV"){
    race_GrantWV <- subset.data.frame(race, NAME=="Grant-WV")
    nodes_GrantWV<- as.Node(race_GrantWV) 
  } #12
  else if(input$selectcounty== "Greenbrier-WV"){
    race_GreenbrierWV <- subset.data.frame(race, NAME=="Greenbrier-WV")
    nodes_GreenbrierWV<- as.Node(race_GreenbrierWV) 
  } #13
  else if(input$selectcounty== "Hampshire-WV"){
    race_HampshireWV <- subset.data.frame(race, NAME=="Hampshire-WV")
    nodes_HampshireWV<- as.Node(race_HampshireWV) 
  } #14
  else if(input$selectcounty== "Hancock-WV"){
    race_HancockWV <- subset.data.frame(race, NAME=="Hancock-WV")
    nodes_HancockWV<- as.Node(race_HancockWV) 
  } #15
  else if(input$selectcounty== "Hardy-WV"){
    race_HardyWV <- subset.data.frame(race, NAME=="Hardy-WV")
    nodes_HardyWV<- as.Node(race_HardyWV) 
  } #16
  else if(input$selectcounty== "Harrison-WV"){
    race_HarrisonWV <- subset.data.frame(race, NAME=="Harrison-WV")
    nodes_HarrisonWV<- as.Node(race_HarrisonWV) 
  } #17
  else if(input$selectcounty== "Jackson-WV"){
    race_JacksonWV <- subset.data.frame(race, NAME=="Jackson-WV")
    nodes_JacksonWV<- as.Node(race_JacksonWV) 
  } #18
  else if(input$selectcounty== "Jefferson-WV"){
    race_JeffersonWV <- subset.data.frame(race, NAME=="Jefferson-WV")
    nodes_JeffersonWV<- as.Node(race_JeffersonWV) 
  } #19
  else if(input$selectcounty== "Kanawha-WV"){
    race_KanawhaWV <- subset.data.frame(race, NAME=="Kanawha-WV")
    nodes_KanawhaWV<- as.Node(race_KanawhaWV) 
  } ###########55
  else if(input$selectcounty== "Lincoln-WV"){
    race_LincolnWV <- subset.data.frame(race, NAME=="Lincoln-WV")
    nodes_LincolnWV<- as.Node(race_LincolnWV) 
  } #20
  else if(input$selectcounty== "Lewis-WV"){
    race_LewisWV <- subset.data.frame(race, NAME=="Lewis-WV")
    nodes_LewisWV<- as.Node(race_LewisWV) 
  } #21
  else if(input$selectcounty== "Logan-WV"){
    race_LoganWV <- subset.data.frame(race, NAME=="Logan-WV")
    nodes_LoganWV<- as.Node(race_LoganWV) 
  } #22
  else if(input$selectcounty== "Marion-WV"){
    race_MarionWV <- subset.data.frame(race, NAME=="Marion-WV")
    nodes_MarionWV<- as.Node(race_MarionWV) 
  } #23
  else if(input$selectcounty== "Marshall-WV"){
    race_MarshallWV <- subset.data.frame(race, NAME=="Marshall-WV")
    nodes_MarshallWV<- as.Node(race_MarshallWV) 
  } #24
  else if(input$selectcounty== "Mason-WV"){
    race_MasonWV <- subset.data.frame(race, NAME=="Mason-WV")
    nodes_MasonWV<- as.Node(race_MasonWV) 
  } #25
  else if(input$selectcounty== "McDowell-WV"){
    race_McDowellWV <- subset.data.frame(race, NAME=="McDowell-WV")
    nodes_McDowellWV<- as.Node(race_McDowellWV) 
  } #26
  else if(input$selectcounty== "Mercer-WV"){
    race_MercerWV <- subset.data.frame(race, NAME=="Mercer-WV")
    nodes_MercerWV<- as.Node(race_MercerWV) 
  } #27
  else if(input$selectcounty== "Mineral-WV"){
    race_MineralWV <- subset.data.frame(race, NAME=="Mineral-WV")
    nodes_MineralWV<- as.Node(race_MineralWV) 
  } #28
  else if(input$selectcounty== "Mingo-WV"){
    race_MingoWV <- subset.data.frame(race, NAME=="Mingo-WV")
    nodes_MingoWV<- as.Node(race_MingoWV) 
  } #29
  else if(input$selectcounty== "Monongalia-WV"){
    race_MonongaliaWV <- subset.data.frame(race, NAME=="Monongalia-WV")
    nodes_MonongaliaWV<- as.Node(race_MonongaliaWV) 
  } #30
  else if(input$selectcounty== "Monroe-WV"){
    race_MonroeWV <- subset.data.frame(race, NAME=="Monroe-WV")
    nodes_MonroeWV<- as.Node(race_MonroeWV) 
  } #31
  else if(input$selectcounty== "Morgan-WV"){
    race_MorganWV <- subset.data.frame(race, NAME=="Morgan-WV")
    nodes_MorganWV<- as.Node(race_MorganWV) 
  } #32
  else if(input$selectcounty== "Nicholas-WV"){
    race_NicholasWV <- subset.data.frame(race, NAME=="Nicholas-WV")
    nodes_NicholasWV<- as.Node(race_NicholasWV) 
  } #33
  else if(input$selectcounty== "Ohio-WV"){
    race_OhioWV <- subset.data.frame(race, NAME=="Ohio-WV")
    nodes_OhioWV<- as.Node(race_OhioWV) 
  } #34
  else if(input$selectcounty== "Pendleton-WV"){
    race_PendletonWV <- subset.data.frame(race, NAME=="Pendleton-WV")
    nodes_PendletonWV<- as.Node(race_PendletonWV) 
  } #35
  else if(input$selectcounty== "Pleasants-WV"){
    race_PleasantsWV <- subset.data.frame(race, NAME=="Pleasants-WV")
    nodes_PleasantsWV<- as.Node(race_PleasantsWV) 
  } #36
  else if(input$selectcounty== "Pocahontas-WV"){
    race_PocahontasWV <- subset.data.frame(race, NAME=="Pocahontas-WV")
    nodes_PocahontasWV<- as.Node(race_PocahontasWV) 
  } #37
  else if(input$selectcounty== "Preston-WV"){
    race_PrestonWV <- subset.data.frame(race, NAME=="Preston-WV")
    nodes_PrestonWV<- as.Node(race_PrestonWV) 
  } #38
  else if(input$selectcounty== "Putnam-WV"){
    race_PutnamWV <- subset.data.frame(race, NAME=="Putnam-WV")
    nodes_PutnamWV<- as.Node(race_PutnamWV) 
  } #39
  else if(input$selectcounty== "Raleigh-WV"){
    race_RaleighWV <- subset.data.frame(race, NAME=="Raleigh-WV")
    nodes_RaleighWV<- as.Node(race_RaleighWV) 
  } #40
  else if(input$selectcounty== "Randolph-WV"){
    race_RandolphWV <- subset.data.frame(race, NAME=="Randolph-WV")
    nodes_RandolphWV<- as.Node(race_RandolphWV) 
  } #41
  else if(input$selectcounty== "Ritchie-WV"){
    race_RitchieWV <- subset.data.frame(race, NAME=="Ritchie-WV")
    nodes_RitchieWV<- as.Node(race_RitchieWV) 
  } #42
  else if(input$selectcounty== "Roane-WV"){
    race_RoaneWV <- subset.data.frame(race, NAME=="Roane-WV")
    nodes_RoaneWV<- as.Node(race_RoaneWV) 
  } #43
  else if(input$selectcounty== "Summers-WV"){
    race_SummersWV <- subset.data.frame(race, NAME=="Summers-WV")
    nodes_SummersWV<- as.Node(race_SummersWV) 
  } #44
  else if(input$selectcounty== "Taylor-WV"){
    race_TaylorWV <- subset.data.frame(race, NAME=="Taylor-WV")
    nodes_TaylorWV<- as.Node(race_TaylorWV) 
  } #45
  else if(input$selectcounty== "Tucker-WV"){
    race_TuckerWV <- subset.data.frame(race, NAME=="Tucker-WV")
    nodes_TuckerWV<- as.Node(race_TuckerWV) 
  } #46
  else if(input$selectcounty== "Tyler-WV"){
    race_TylerWV <- subset.data.frame(race, NAME=="Tyler-WV")
    nodes_TylerWV<- as.Node(race_TylerWV) 
  } #47
  else if(input$selectcounty== "Upshur-WV"){
    race_UpshurWV <- subset.data.frame(race, NAME=="Upshur-WV")
    nodes_UpshurWV<- as.Node(race_UpshurWV) 
  } #48
  else if(input$selectcounty== "Wayne-WV"){
    race_WayneWV <- subset.data.frame(race, NAME=="Wayne-WV")
    nodes_WayneWV<- as.Node(race_WayneWV) 
  } #49
  else if(input$selectcounty== "Webster-WV"){
    race_WebsterWV <- subset.data.frame(race, NAME=="Webster-WV")
    nodes_WebsterWV<- as.Node(race_WebsterWV) 
  } #50
  else if(input$selectcounty== "Wetzel-WV"){
    race_WetzelWV <- subset.data.frame(race, NAME=="Wetzel-WV")
    nodes_WetzelWV<- as.Node(race_WetzelWV) 
  } #51
  else if(input$selectcounty== "Wirt-WV"){
    race_WirtWV <- subset.data.frame(race, NAME=="Wirt-WV")
    nodes_WirtWV<- as.Node(race_WirtWV) 
  } #52
  else if(input$selectcounty== "Wood-WV"){
    race_WoodWV <- subset.data.frame(race, NAME=="Wood-WV")
    nodes_WoodWV<- as.Node(race_WoodWV) 
  } #53
  else if(input$selectcounty== "Wyoming-WV"){
    race_WyomingWV <- subset.data.frame(race, NAME=="Wyoming-WV")
    nodes_WyomingWV<- as.Node(race_WyomingWV) 
  } #54
  
######### WYOMING. FINALLY DONE! #########  
  else if(input$selectcounty== "Albany-WY"){
    race_AlbanyWY <- subset.data.frame(race, NAME=="Albany-WY")
    nodes_AlbanyWY<- as.Node(race_AlbanyWY) 
  } #1
  else if(input$selectcounty== "Big Horn-WY"){
    race_BigHornWY <- subset.data.frame(race, NAME=="Big Horn-WY")
    nodes_BigHornWY<- as.Node(race_BigHornWY) 
  } #2
  else if(input$selectcounty== "Campbell-WY"){
    race_CampbellWY <- subset.data.frame(race, NAME=="Campbell-WY")
    nodes_CampbellWY<- as.Node(race_CampbellWY) 
  } #3
  else if(input$selectcounty== "Carbon-WY"){
    race_CarbonWY <- subset.data.frame(race, NAME=="Carbon-WY")
    nodes_CarbonWY<- as.Node(race_CarbonWY) 
  } #4
  else if(input$selectcounty== "Converse-WY"){
    race_ConverseWY <- subset.data.frame(race, NAME=="Converse-WY")
    nodes_ConverseWY<- as.Node(race_ConverseWY) 
  } #5
  else if(input$selectcounty== "Crook-WY"){
    race_CrookWY <- subset.data.frame(race, NAME=="Crook-WY")
    nodes_CrookWY<- as.Node(race_CrookWY) 
  } #6
  else if(input$selectcounty== "Fremont-WY"){
    race_FremontWY <- subset.data.frame(race, NAME=="Fremont-WY")
    nodes_FremontWY<- as.Node(race_FremontWY) 
  } #7
  else if(input$selectcounty== "Goshen-WY"){
    race_GoshenWY <- subset.data.frame(race, NAME=="Goshen-WY")
    nodes_GoshenWY<- as.Node(race_GoshenWY) 
  } #8
  else if(input$selectcounty== "Hot Springs-WY"){
    race_HotSpringsWY <- subset.data.frame(race, NAME=="Hot Springs-WY")
    nodes_HotSpringsWY<- as.Node(race_HotSpringsWY) 
  } #9
  else if(input$selectcounty== "Johnson-WY"){
    race_JohnsonWY <- subset.data.frame(race, NAME=="Johnson-WY")
    nodes_JohnsonWY<- as.Node(race_JohnsonWY) 
  } #10
  else if(input$selectcounty== "Laramie-WY"){
    race_LaramieWY <- subset.data.frame(race, NAME=="Laramie-WY")
    nodes_LaramieWY<- as.Node(race_LaramieWY) 
  } #11
  else if(input$selectcounty== "Lincoln-WY"){
    race_LincolnWY <- subset.data.frame(race, NAME=="Lincoln-WY")
    nodes_LincolnWY<- as.Node(race_LincolnWY) 
  } #12
  else if(input$selectcounty== "Natrona-WY"){
    race_NatronaWY <- subset.data.frame(race, NAME=="Natrona-WY")
    nodes_NatronaWY<- as.Node(race_NatronaWY) 
  } #13
  else if(input$selectcounty== "Niobrara-WY"){
    race_NiobraraWY <- subset.data.frame(race, NAME=="Niobrara-WY")
    nodes_NiobraraWY<- as.Node(race_NiobraraWY) 
  } #14
  else if(input$selectcounty== "Park-WY"){
    race_ParkWY <- subset.data.frame(race, NAME=="Park-WY")
    nodes_ParkWY<- as.Node(race_ParkWY) 
  } #15
  else if(input$selectcounty== "Platte-WY"){
    race_PlatteWY <- subset.data.frame(race, NAME=="Platte-WY")
    nodes_PlatteWY<- as.Node(race_PlatteWY) 
  } #16
  else if(input$selectcounty== "Sheridan-WY"){
    race_SheridanWY <- subset.data.frame(race, NAME=="Sheridan-WY")
    nodes_SheridanWY<- as.Node(race_SheridanWY) 
  } #17
  else if(input$selectcounty== "Sublette-WY"){
    race_SubletteWY <- subset.data.frame(race, NAME=="Sublette-WY")
    nodes_SubletteWY<- as.Node(race_SubletteWY) 
  } #18
  else if(input$selectcounty== "Sweetwater-WY"){
    race_SweetwaterWY <- subset.data.frame(race, NAME=="Sweetwater-WY")
    nodes_SweetwaterWY<- as.Node(race_SweetwaterWY) 
  } #19
  else if(input$selectcounty== "Teton-WY"){
    race_TetonWY <- subset.data.frame(race, NAME=="Teton-WY")
    nodes_TetonWY<- as.Node(race_TetonWY) 
  } #20
  else if(input$selectcounty== "Uinta-WY"){
    race_UintaWY <- subset.data.frame(race, NAME=="Uinta-WY")
    nodes_UintaWY<- as.Node(race_UintaWY) 
  } #21
  else if(input$selectcounty== "Washakie-WY"){
    race_WashakieWY <- subset.data.frame(race, NAME=="Washakie-WY")
    nodes_WashakieWY<- as.Node(race_WashakieWY) 
  } #22
  else if(input$selectcounty== "Weston-WY"){
    race_WestonWY <- subset.data.frame(race, NAME=="Weston-WY")
    nodes_WestonWY<- as.Node(race_WestonWY) 
  } #23


#########
  else if(input$selectcounty== "Arkansas-AR") {
    race_ArkansasAR <-subset.data.frame(race, NAME=="Arkansas-AR")
    nodes_ArkansasAR<- as.Node(race_ArkansasAR)
  }  #1
  else if(input$selectcounty== "Ashley-AR") {
    race_AshleyAR <-subset.data.frame(race, NAME=="Ashley-AR")
    nodes_AshleyAR<- as.Node(race_AshleyAR)
  } #2
  else if(input$selectcounty== "Baxter-AR") {
    race_BaxterAR <-subset.data.frame(race, NAME=="Baxter-AR")
    nodes_BaxterAR<- as.Node(race_BaxterAR)
  } #3
  else if(input$selectcounty== "Benton-AR") {
    race_BentonAR <-subset.data.frame(race, NAME=="Benton-AR")
    nodes_BentonAR<- as.Node(race_BentonAR)
  } #4
  else if(input$selectcounty== "Boone-AR") {
    race_BooneAR <-subset.data.frame(race, NAME=="Boone-AR")
    nodes_BooneAR<- as.Node(race_BooneAR)
  } #5
  else if(input$selectcounty== "Bradley-AR") {
    race_BradleyAR <-subset.data.frame(race, NAME=="Bradley-AR")
    nodes_BradleyAR<- as.Node(race_BradleyAR)
  } #6
  else if(input$selectcounty== "Calhoun-AR") {
    race_CalhounAR <-subset.data.frame(race, NAME=="Calhoun-AR")
    nodes_CalhounAR<- as.Node(race_CalhounAR)
  } #7
  else if(input$selectcounty== "Carroll-AR") {
    race_CarrollAR <-subset.data.frame(race, NAME=="Carroll-AR")
    nodes_CarrollAR<- as.Node(race_CarrollAR)
  } #8
  else if(input$selectcounty== "Chicot-AR") {
    race_ChicotAR <-subset.data.frame(race, NAME=="Chicot-AR")
    nodes_ChicotAR<- as.Node(race_ChicotAR)
  } #9
  else if(input$selectcounty== "Clark-AR") {
    race_ClarkAR <-subset.data.frame(race, NAME=="Clark-AR")
    nodes_ClarkAR<- as.Node(race_ClarkAR)
  } #10
  else if(input$selectcounty== "Clay-AR") {
    race_ClayAR <-subset.data.frame(race, NAME=="Clay-AR")
    nodes_ClayAR<- as.Node(race_ClayAR)
  } #11
  else if(input$selectcounty== "Cleburne-AR") {
    race_CleburneAR <-subset.data.frame(race, NAME=="Cleburne-AR")
    nodes_CleburneAR<- as.Node(race_CleburneAR)
  } #12 
  else if(input$selectcounty== "Cleveland-AR") {
    race_ClevelandAR <-subset.data.frame(race, NAME=="Cleveland-AR")
    nodes_ClevelandAR<- as.Node(race_ClevelandAR)
  } #13
  else if(input$selectcounty== "Columbia-AR") {
    race_ColumbiaAR <-subset.data.frame(race, NAME=="Columbia-AR")
    nodes_ColumbiaAR<- as.Node(race_ColumbiaAR)
  } #14
  else if(input$selectcounty== "Conway-AR") {
    race_ConwayAR <-subset.data.frame(race, NAME=="Conway-AR")
    nodes_ConwayAR<- as.Node(race_ConwayAR)
  } #15
  else if(input$selectcounty== "Craighead-AR") {
    race_CraigheadAR <-subset.data.frame(race, NAME=="Craighead-AR")
    nodes_CraigheadAR<- as.Node(race_CraigheadAR)
  } #16
  else if(input$selectcounty== "Crawford-AR") {
    race_CrawfordAR <-subset.data.frame(race, NAME=="Crawford-AR")
    nodes_CrawfordAR<- as.Node(race_CrawfordAR)
  } #17
  else if(input$selectcounty== "Crittenden-AR") {
    race_CrittendenAR <-subset.data.frame(race, NAME=="Crittenden-AR")
    nodes_CrittendenAR<- as.Node(race_CrittendenAR)
  } #18
  else if(input$selectcounty== "Cross-AR") {
    race_CrossAR <-subset.data.frame(race, NAME=="Cross-AR")
    nodes_CrossAR<- as.Node(race_CrossAR)
  } #19
  else if(input$selectcounty== "Dallas-AR") {
    race_DallasAR <-subset.data.frame(race, NAME=="Dallas-AR")
    nodes_DallasAR<- as.Node(race_DallasAR)
  } #20
  else if(input$selectcounty== "Desha-AR") {
    race_DeshaAR <-subset.data.frame(race, NAME=="Desha-AR")
    nodes_DeshaAR<- as.Node(race_DeshaAR)
  } #21
  else if(input$selectcounty== "Drew-AR") {
    race_DrewAR <-subset.data.frame(race, NAME=="Drew-AR")
    nodes_DrewAR<- as.Node(race_DrewAR)
  } #22
  else if(input$selectcounty== "Faulkner-AR") {
    race_FaulknerAR <-subset.data.frame(race, NAME=="Faulkner-AR")
    nodes_FaulknerAR<- as.Node(race_FaulknerAR)
  } #23 
  else if(input$selectcounty== "Franklin-AR") {
    race_FranklinAR <-subset.data.frame(race, NAME=="Franklin-AR")
    nodes_FranklinAR<- as.Node(race_FranklinAR)
  } #24
  else if(input$selectcounty== "Fulton-AR") {
    race_FultonAR <-subset.data.frame(race, NAME=="Fulton-AR")
    nodes_FultonAR<- as.Node(race_FultonAR)
  } #25
  else if(input$selectcounty== "Garland-AR") {
    race_GarlandAR <-subset.data.frame(race, NAME=="Garland-AR")
    nodes_GarlandAR<- as.Node(race_GarlandAR)
  } #26
  else if(input$selectcounty== "Grant-AR") {
    race_GrantAR <-subset.data.frame(race, NAME=="Grant-AR")
    nodes_GrantAR<- as.Node(race_GrantAR)
  } #27
  else if(input$selectcounty== "Greene-AR") {
    race_GreeneAR <-subset.data.frame(race, NAME=="Greene-AR")
    nodes_GreeneAR<- as.Node(race_GreeneAR)
  } #28
  else if(input$selectcounty== "Hempstead-AR") {
    race_HempsteadAR <-subset.data.frame(race, NAME=="Hempstead-AR")
    nodes_HempsteadAR<- as.Node(race_HempsteadAR)
  } #29
  else if(input$selectcounty== "Hot Spring-AR") {
    race_HotSpringAR <-subset.data.frame(race, NAME=="Hot Spring-AR")
    nodes_HotSpringAR<- as.Node(race_HotSpringAR)
  } #30
  else if(input$selectcounty== "Howard-AR") {
    race_HowardAR <-subset.data.frame(race, NAME=="Howard-AR")
    nodes_HowardAR<- as.Node(race_HowardAR)
  } #31
  else if(input$selectcounty== "Independence-AR") {
    race_IndependenceAR <-subset.data.frame(race, NAME=="Independence-AR")
    nodes_IndependenceAR<- as.Node(race_IndependenceAR)
  } #32 
  else if(input$selectcounty== "Izard-AR") {
    race_IzardAR <-subset.data.frame(race, NAME=="Izard-AR")
    nodes_IzardAR<- as.Node(race_IzardAR)
  } #33
  else if(input$selectcounty== "Jackson-AR") {
    race_JacksonAR <-subset.data.frame(race, NAME=="Jackson-AR")
    nodes_JacksonAR<- as.Node(race_JacksonAR)
  } #34
  else if(input$selectcounty== "Jefferson-AR") {
    race_JeffersonAR <-subset.data.frame(race, NAME=="Jefferson-AR")
    nodes_JeffersonAR<- as.Node(race_JeffersonAR)
  } #35
  else if(input$selectcounty== "Johnson-AR") {
    race_JohnsonAR <-subset.data.frame(race, NAME=="Johnson-AR")
    nodes_JohnsonAR<- as.Node(race_JohnsonAR)
  } #36
  else if(input$selectcounty== "Lafayette-AR") {
    race_LafayetteAR <-subset.data.frame(race, NAME=="Lafayette-AR")
    nodes_LafayetteAR<- as.Node(race_LafayetteAR)
  } #37
  else if(input$selectcounty== "Lawrence-AR") {
    race_LawrenceAR <-subset.data.frame(race, NAME=="Lawrence-AR")
    nodes_LawrenceAR<- as.Node(race_LawrenceAR)
  } #38
  else if(input$selectcounty== "Lee-AR") {
    race_LeeAR <-subset.data.frame(race, NAME=="Lee-AR")
    nodes_LeeAR<- as.Node(race_LeeAR)
  } #39
  else if(input$selectcounty== "Lincoln-AR") {
    race_LincolnAR <-subset.data.frame(race, NAME=="Lincoln-AR")
    nodes_LincolnAR<- as.Node(race_LincolnAR)
  } #40 
  else if(input$selectcounty== "Little River-AR") {
    race_LittleRiverAR <-subset.data.frame(race, NAME=="Little River-AR")
    nodes_LittleRiverAR<- as.Node(race_LittleRiverAR)
  } #41 
  else if(input$selectcounty== "Logan-AR") {
    race_LoganAR <-subset.data.frame(race, NAME=="Logan-AR")
    nodes_LoganAR<- as.Node(race_LoganAR)
  } #42
  else if(input$selectcounty== "Lonoke-AR") {
    race_LonokeAR <-subset.data.frame(race, NAME=="Lonoke-AR")
    nodes_LonokeAR<- as.Node(race_LonokeAR)
  } #43
  else if(input$selectcounty== "Madison-AR") {
    race_MadisonAR <-subset.data.frame(race, NAME=="Madison-AR")
    nodes_MadisonAR<- as.Node(race_MadisonAR)
  } #44
  else if(input$selectcounty== "Marion-AR") {
    race_MarionAR <-subset.data.frame(race, NAME=="Marion-AR")
    nodes_MarionAR<- as.Node(race_MarionAR)
  } #45
  else if(input$selectcounty== "Miller-AR") {
    race_MillerAR <-subset.data.frame(race, NAME=="Miller-AR")
    nodes_MillerAR<- as.Node(race_MillerAR)
  } #46
  else if(input$selectcounty== "Mississippi-AR") {
    race_MississippiAR <-subset.data.frame(race, NAME=="Mississippi-AR")
    nodes_MississippiAR<- as.Node(race_MississippiAR)
  } #47 
  else if(input$selectcounty== "Monroe-AR") {
    race_MonroeAR <-subset.data.frame(race, NAME=="Monroe-AR")
    nodes_MonroeAR<- as.Node(race_MonroeAR)
  } #48
  else if(input$selectcounty== "Montgomery-AR") {
    race_MontgomeryAR <-subset.data.frame(race, NAME=="Montgomery-AR")
    nodes_MontgomeryAR<- as.Node(race_MontgomeryAR)
  } #49 
  else if(input$selectcounty== "Nevada-AR") {
    race_NevadaAR <-subset.data.frame(race, NAME=="Nevada-AR")
    nodes_NevadaAR<- as.Node(race_NevadaAR)
  } #50
  else if(input$selectcounty== "Newton-AR") {
    race_NewtonAR <-subset.data.frame(race, NAME=="Newton-AR")
    nodes_NewtonAR<- as.Node(race_NewtonAR)
  } #51
  else if(input$selectcounty== "Ouachita-AR") {
    race_OuachitaAR <-subset.data.frame(race, NAME=="Ouachita-AR")
    nodes_OuachitaAR<- as.Node(race_OuachitaAR)
  } #52
  else if(input$selectcounty== "Perry-AR") {
    race_PerryAR <-subset.data.frame(race, NAME=="Perry-AR")
    nodes_PerryAR<- as.Node(race_PerryAR)
  } #53
  else if(input$selectcounty== "Phillips-AR") {
    race_PhillipsAR <-subset.data.frame(race, NAME=="Phillips-AR")
    nodes_PhillipsAR<- as.Node(race_PhillipsAR)
  } #54
  else if(input$selectcounty== "Pike-AR") {
    race_PikeAR <-subset.data.frame(race, NAME=="Pike-AR")
    nodes_PikeAR<- as.Node(race_PikeAR)
  } #55
  else if(input$selectcounty== "Poinsett-AR") {
    race_PoinsettAR <-subset.data.frame(race, NAME=="Poinsett-AR")
    nodes_PoinsettAR<- as.Node(race_PoinsettAR)
  } #56 
  else if(input$selectcounty== "Polk-AR") {
    race_PolkAR <-subset.data.frame(race, NAME=="Polk-AR")
    nodes_PolkAR<- as.Node(race_PolkAR)
  } #57
  else if(input$selectcounty== "Pope-AR") {
    race_PopeAR <-subset.data.frame(race, NAME=="Pope-AR")
    nodes_PopeAR<- as.Node(race_PopeAR)
  } #58
  else if(input$selectcounty== "Prairie-AR") {
    race_PrairieAR <-subset.data.frame(race, NAME=="Prairie-AR")
    nodes_PrairieAR<- as.Node(race_PrairieAR)
  } #59
  else if(input$selectcounty== "Pulaski-AR") {
    race_PulaskiAR <-subset.data.frame(race, NAME=="Pulaski-AR")
    nodes_PulaskiAR<- as.Node(race_PulaskiAR)
  } #60
  else if(input$selectcounty== "Randolph-AR") {
    race_RandolphAR <-subset.data.frame(race, NAME=="Randolph-AR")
    nodes_RandolphAR<- as.Node(race_RandolphAR)
  } #61
  else if(input$selectcounty== "Saline-AR") {
    race_SalineAR <-subset.data.frame(race, NAME=="Saline-AR")
    nodes_SalineAR<- as.Node(race_SalineAR)
  } #62
  else if(input$selectcounty== "Scott-AR") {
    race_ScottAR <-subset.data.frame(race, NAME=="Scott-AR")
    nodes_ScottAR<- as.Node(race_ScottAR)
  } #63
  else if(input$selectcounty== "Searcy-AR") {
    race_SearcyAR <-subset.data.frame(race, NAME=="Searcy-AR")
    nodes_SearcyAR<- as.Node(race_SearcyAR)
  } #64
  else if(input$selectcounty== "Sebastian-AR") {
    race_SebastianAR <-subset.data.frame(race, NAME=="Sebastian-AR")
    nodes_SebastianAR<- as.Node(race_SebastianAR)
  } #65
  else if(input$selectcounty== "Sevier-AR") {
    race_SevierAR <-subset.data.frame(race, NAME=="Sevier-AR")
    nodes_SevierAR<- as.Node(race_SevierAR)
  } #66
  else if(input$selectcounty== "Sharp-AR") {
    race_SharpAR <-subset.data.frame(race, NAME=="Sharp-AR")
    nodes_SharpAR<- as.Node(race_SharpAR)
  } #67
  else if(input$selectcounty== "St. Francis-AR") {
    race_StFrancisAR <-subset.data.frame(race, NAME=="St. Francis-AR")
    nodes_StFrancisAR<- as.Node(race_StFrancisAR)
  } #68 
  else if(input$selectcounty== "Stone-AR") {
    race_StoneAR <-subset.data.frame(race, NAME=="Stone-AR")
    nodes_StoneAR<- as.Node(race_StoneAR)
  } #69
  else if(input$selectcounty== "Union-AR") {
    race_UnionAR <-subset.data.frame(race, NAME=="Union-AR")
    nodes_UnionAR<- as.Node(race_UnionAR)
  } #70
  else if(input$selectcounty== "Van Buren-AR") {
    race_VanBurenAR <-subset.data.frame(race, NAME=="Van Buren-AR")
    nodes_VanBurenAR<- as.Node(race_VanBurenAR)
  } #71 
  else if(input$selectcounty== "Washington-AR") {
    race_WashingtonAR <-subset.data.frame(race, NAME=="Washington-AR")
    nodes_WashingtonAR<- as.Node(race_WashingtonAR)
  } #72
  else if(input$selectcounty== "White-AR") {
    race_WhiteAR <-subset.data.frame(race, NAME=="White-AR")
    nodes_WhiteAR<- as.Node(race_WhiteAR)
  } #73
  else if(input$selectcounty== "Woodruff-AR") {
    race_WoodruffAR <-subset.data.frame(race, NAME=="Woodruff-AR")
    nodes_WoodruffAR<- as.Node(race_WoodruffAR)
  } #74
  else if(input$selectcounty== "Yell-AR") {
    race_YellAR <-subset.data.frame(race, NAME=="Yell-AR")
    nodes_YellAR<- as.Node(race_YellAR)
  } #75
 

######### TEXAS. ITS A BIG ONE. ########
  else if(input$selectcounty== "Anderson-TX"){
    race_AndersonTX <- subset.data.frame(race, NAME=="Anderson-TX")
    nodes_AndersonTX <- as.Node(race_AndersonTX) 
  } #1
  else if(input$selectcounty== "Andrews-TX"){
    race_AndrewsTX <- subset.data.frame(race, NAME=="Andrews-TX")
    nodes_AndrewsTX <- as.Node(race_AndrewsTX) 
  } #2
  else if(input$selectcounty== "Angelina-TX"){
    race_AngelinaTX <- subset.data.frame(race, NAME=="Angelina-TX")
    nodes_AngelinaTX <- as.Node(race_AngelinaTX) 
  } #3
  else if(input$selectcounty== "Aransas-TX"){
    race_AransasTX <- subset.data.frame(race, NAME=="Aransas-TX")
    nodes_AransasTX <- as.Node(race_AransasTX) 
  } #4
  else if(input$selectcounty== "Archer-TX"){
    race_ArcherTX <- subset.data.frame(race, NAME=="Archer-TX")
    nodes_ArcherTX <- as.Node(race_ArcherTX) 
  } #5
  else if(input$selectcounty== "Armstrong-TX"){
    race_ArmstrongTX <- subset.data.frame(race, NAME=="Armstrong-TX")
    nodes_ArmstrongTX <- as.Node(race_ArmstrongTX) 
  } #6 
  else if(input$selectcounty== "Atascosa-TX"){
    race_AtascosaTX <- subset.data.frame(race, NAME=="Atascosa-TX")
    nodes_AtascosaTX <- as.Node(race_AtascosaTX) 
  } #7
  else if(input$selectcounty== "Austin-TX"){
    race_AustinTX <- subset.data.frame(race, NAME=="Austin-TX")
    nodes_AustinTX <- as.Node(race_AustinTX) 
  } #8
  else if(input$selectcounty== "Bailey-TX"){
    race_BaileyTX <- subset.data.frame(race, NAME=="Bailey-TX")
    nodes_BaileyTX <- as.Node(race_BaileyTX) 
  } #9
  else if(input$selectcounty== "Bandera-TX"){
    race_BanderaTX <- subset.data.frame(race, NAME=="Bandera-TX")
    nodes_BanderaTX <- as.Node(race_BanderaTX) 
  } #10
  else if(input$selectcounty== "Bastrop-TX"){
    race_BastropTX <- subset.data.frame(race, NAME=="Bastrop-TX")
    nodes_BastropTX <- as.Node(race_BastropTX) 
  } #11
  else if(input$selectcounty== "Baylor-TX"){
    race_BaylorTX <- subset.data.frame(race, NAME=="Baylor-TX")
    nodes_BaylorTX <- as.Node(race_BaylorTX) 
  } #12
  else if(input$selectcounty== "Bee-TX"){
    race_BeeTX <- subset.data.frame(race, NAME=="Bee-TX")
    nodes_BeeTX <- as.Node(race_BeeTX) 
  } #13
  else if(input$selectcounty== "Bell-TX"){
    race_BellTX <- subset.data.frame(race, NAME=="Bell-TX")
    nodes_BellTX <- as.Node(race_BellTX) 
  } #14
  else if(input$selectcounty== "Bexar-TX"){
    race_BexarTX <- subset.data.frame(race, NAME=="Bexar-TX")
    nodes_BexarTX <- as.Node(race_BexarTX) 
  } #15
  else if(input$selectcounty== "Blanco-TX"){
    race_BlancoTX <- subset.data.frame(race, NAME=="Blanco-TX")
    nodes_BlancoTX <- as.Node(race_BlancoTX) 
  } #16
  else if(input$selectcounty== "Borden-TX"){
    race_BordenTX <- subset.data.frame(race, NAME=="Borden-TX")
    nodes_BordenTX <- as.Node(race_BordenTX) 
  } #17
  else if(input$selectcounty== "Bosque-TX"){
    race_BosqueTX <- subset.data.frame(race, NAME=="Bosque-TX")
    nodes_BosqueTX <- as.Node(race_BosqueTX) 
  } #18
  else if(input$selectcounty== "Bowie-TX"){
    race_BowieTX <- subset.data.frame(race, NAME=="Bowie-TX")
    nodes_BowieTX <- as.Node(race_BowieTX) 
  } #19
  else if(input$selectcounty== "Brazoria-TX"){
    race_BrazoriaTX <- subset.data.frame(race, NAME=="Brazoria-TX")
    nodes_BrazoriaTX <- as.Node(race_BrazoriaTX) 
  } #20
  else if(input$selectcounty== "Brazos-TX"){
    race_BrazosTX <- subset.data.frame(race, NAME=="Brazos-TX")
    nodes_BrazosTX <- as.Node(race_BrazosTX) 
  } #21
  else if(input$selectcounty== "Brewster-TX"){
    race_BrewsterTX <- subset.data.frame(race, NAME=="Brewster-TX")
    nodes_BrewsterTX <- as.Node(race_BrewsterTX) 
  } #22
  else if(input$selectcounty== "Briscoe-TX"){
    race_BriscoeTX <- subset.data.frame(race, NAME=="Briscoe-TX")
    nodes_BriscoeTX <- as.Node(race_BriscoeTX) 
  } #23
  else if(input$selectcounty== "Brooks-TX"){
    race_BrooksTX <- subset.data.frame(race, NAME=="Brooks-TX")
    nodes_BrooksTX <- as.Node(race_BrooksTX) 
  } #24
  else if(input$selectcounty== "Brown-TX"){
    race_BrownTX <- subset.data.frame(race, NAME=="Brown-TX")
    nodes_BrownTX <- as.Node(race_BrownTX) 
  } #25
  else if(input$selectcounty== "Burleson-TX"){
    race_BurlesonTX <- subset.data.frame(race, NAME=="Burleson-TX")
    nodes_BurlesonTX <- as.Node(race_BurlesonTX) 
  } #26
  else if(input$selectcounty== "Burnet-TX"){
    race_BurnetTX <- subset.data.frame(race, NAME=="Burnet-TX")
    nodes_BurnetTX <- as.Node(race_BurnetTX) 
  } #27
  else if(input$selectcounty== "Caldwell-TX"){
    race_CaldwellTX <- subset.data.frame(race, NAME=="Caldwell-TX")
    nodes_CaldwellTX <- as.Node(race_CaldwellTX) 
  } #28
  else if(input$selectcounty== "Calhoun-TX"){
    race_CalhounTX <- subset.data.frame(race, NAME=="Calhoun-TX")
    nodes_CalhounTX <- as.Node(race_CalhounTX) 
  } #29
  else if(input$selectcounty== "Callahan-TX"){
    race_CallahanTX <- subset.data.frame(race, NAME=="Callahan-TX")
    nodes_CallahanTX <- as.Node(race_CallahanTX) 
  } #30
  else if(input$selectcounty== "Cameron-TX"){
    race_CameronTX <- subset.data.frame(race, NAME=="Cameron-TX")
    nodes_CameronTX <- as.Node(race_CameronTX) 
  } #31
  else if(input$selectcounty== "Camp-TX"){
    race_CampTX <- subset.data.frame(race, NAME=="Camp-TX")
    nodes_CampTX <- as.Node(race_CampTX) 
  } #32
  else if(input$selectcounty== "Carson-TX"){
    race_CarsonTX <- subset.data.frame(race, NAME=="Carson-TX")
    nodes_CarsonTX <- as.Node(race_CarsonTX) 
  } #33
  else if(input$selectcounty== "Cass-TX"){
    race_CassTX <- subset.data.frame(race, NAME=="Cass-TX")
    nodes_CassTX <- as.Node(race_CassTX) 
  } #34
  else if(input$selectcounty== "Castro-TX"){
    race_CastroTX <- subset.data.frame(race, NAME=="Castro-TX")
    nodes_CastroTX <- as.Node(race_CastroTX) 
  } #35
  else if(input$selectcounty== "Chambers-TX"){
    race_ChambersTX <- subset.data.frame(race, NAME=="Chambers-TX")
    nodes_ChambersTX <- as.Node(race_ChambersTX) 
  } #36
  else if(input$selectcounty== "Cherokee-TX"){
    race_CherokeeTX <- subset.data.frame(race, NAME=="Cherokee-TX")
    nodes_CherokeeTX <- as.Node(race_CherokeeTX) 
  } #37
  else if(input$selectcounty== "Childress-TX"){
    race_ChildressTX <- subset.data.frame(race, NAME=="Childress-TX")
    nodes_ChildressTX <- as.Node(race_ChildressTX) 
  } #38
  else if(input$selectcounty== "Clay-TX"){
    race_ClayTX <- subset.data.frame(race, NAME=="Clay-TX")
    nodes_ClayTX <- as.Node(race_ClayTX) 
  } #39
  else if(input$selectcounty== "Cochran-TX"){
    race_CochranTX <- subset.data.frame(race, NAME=="Cochran-TX")
    nodes_CochranTX <- as.Node(race_CochranTX) 
  } #40
  else if(input$selectcounty== "Coke-TX"){
    race_CokeTX <- subset.data.frame(race, NAME=="Coke-TX")
    nodes_CokeTX <- as.Node(race_CokeTX) 
  } #41
  else if(input$selectcounty== "Coleman-TX"){
    race_ColemanTX <- subset.data.frame(race, NAME=="Coleman-TX")
    nodes_ColemanTX <- as.Node(race_ColemanTX) 
  } #42
  else if(input$selectcounty== "Collin-TX"){
    race_CollinTX <- subset.data.frame(race, NAME=="Collin-TX")
    nodes_CollinTX <- as.Node(race_CollinTX) 
  } #43
  else if(input$selectcounty== "Collingsworth-TX"){
    race_CollingsworthTX <- subset.data.frame(race, NAME=="Collingsworth-TX")
    nodes_CollingsworthTX <- as.Node(race_CollingsworthTX) 
  } #44 
  else if(input$selectcounty== "Colorado-TX"){
    race_ColoradoTX <- subset.data.frame(race, NAME=="Colorado-TX")
    nodes_ColoradoTX <- as.Node(race_ColoradoTX) 
  } #45
  else if(input$selectcounty== "Comal-TX"){
    race_ComalTX <- subset.data.frame(race, NAME=="Comal-TX")
    nodes_ComalTX <- as.Node(race_ComalTX) 
  } #46
  else if(input$selectcounty== "Comanche-TX"){
    race_ComancheTX <- subset.data.frame(race, NAME=="Comanche-TX")
    nodes_ComancheTX <- as.Node(race_ComancheTX) 
  } #47
  else if(input$selectcounty== "Concho-TX"){
    race_ConchoTX <- subset.data.frame(race, NAME=="Concho-TX")
    nodes_ConchoTX <- as.Node(race_ConchoTX) 
  } #48
  else if(input$selectcounty== "Cooke-TX"){
    race_CookeTX <- subset.data.frame(race, NAME=="Cooke-TX")
    nodes_CookeTX <- as.Node(race_CookeTX) 
  } #49
  else if(input$selectcounty== "Coryell-TX"){
    race_CoryellTX <- subset.data.frame(race, NAME=="Coryell-TX")
    nodes_CoryellTX <- as.Node(race_CoryellTX) 
  } #50
  else if(input$selectcounty== "Cottle-TX"){
    race_CottleTX <- subset.data.frame(race, NAME=="Cottle-TX")
    nodes_CottleTX <- as.Node(race_CottleTX) 
  } #51
  else if(input$selectcounty== "Crane-TX"){
    race_CraneTX <- subset.data.frame(race, NAME=="Crane-TX")
    nodes_CraneTX <- as.Node(race_CraneTX) 
  } #52
  else if(input$selectcounty== "Crockett-TX"){
    race_CrockettTX <- subset.data.frame(race, NAME=="Crockett-TX")
    nodes_CrockettTX <- as.Node(race_CrockettTX) 
  } #53
  else if(input$selectcounty== "Crosby-TX"){
    race_CrosbyTX <- subset.data.frame(race, NAME=="Crosby-TX")
    nodes_CrosbyTX <- as.Node(race_CrosbyTX) 
  } #54
  else if(input$selectcounty== "Culberson-TX"){
    race_CulbersonTX <- subset.data.frame(race, NAME=="Culberson-TX")
    nodes_CulbersonTX <- as.Node(race_CulbersonTX) 
  } #55
  else if(input$selectcounty== "Dallam-TX"){
    race_DallamTX <- subset.data.frame(race, NAME=="Dallam-TX")
    nodes_DallamTX <- as.Node(race_DallamTX) 
  } #56
  else if(input$selectcounty== "Dallas-TX"){
    race_DallasTX <- subset.data.frame(race, NAME=="Dallas-TX")
    nodes_DallasTX <- as.Node(race_DallasTX) 
  } #57
  else if(input$selectcounty== "Dawson-TX"){
    race_DawsonTX <- subset.data.frame(race, NAME=="Dawson-TX")
    nodes_DawsonTX <- as.Node(race_DawsonTX) 
  } #58
  else if(input$selectcounty== "Deaf Smith-TX"){
    race_DeafSmithTX <- subset.data.frame(race, NAME=="Deaf Smith-TX")
    nodes_DeafSmithTX <- as.Node(race_DeafSmithTX) 
  } #59 
  else if(input$selectcounty== "Delta-TX"){
    race_DeltaTX <- subset.data.frame(race, NAME=="Delta-TX")
    nodes_DeltaTX <- as.Node(race_DeltaTX) 
  } #60
  else if(input$selectcounty== "Denton-TX"){
    race_DentonTX <- subset.data.frame(race, NAME=="Denton-TX")
    nodes_DentonTX <- as.Node(race_DentonTX) 
  } #61
  else if(input$selectcounty== "DeWitt-TX"){
    race_DeWittTX <- subset.data.frame(race, NAME=="DeWitt-TX")
    nodes_DeWittTX <- as.Node(race_DeWittTX) 
  } #62
  else if(input$selectcounty== "Dickens-TX"){
    race_DickensTX <- subset.data.frame(race, NAME=="Dickens-TX")
    nodes_DickensTX <- as.Node(race_DickensTX) 
  } #63
  else if(input$selectcounty== "Dimmit-TX"){
    race_DimmitTX <- subset.data.frame(race, NAME=="Dimmit-TX")
    nodes_DimmitTX <- as.Node(race_DimmitTX) 
  } #64
  else if(input$selectcounty== "Donley-TX"){
    race_DonleyTX <- subset.data.frame(race, NAME=="Donley-TX")
    nodes_DonleyTX <- as.Node(race_DonleyTX) 
  } #65
  else if(input$selectcounty== "Duval-TX"){
    race_DuvalTX <- subset.data.frame(race, NAME=="Duval-TX")
    nodes_DuvalTX <- as.Node(race_DuvalTX) 
  } #66
  else if(input$selectcounty== "Eastland-TX"){
    race_EastlandTX <- subset.data.frame(race, NAME=="Eastland-TX")
    nodes_EastlandTX <- as.Node(race_EastlandTX) 
  } #67
  else if(input$selectcounty== "Ector-TX"){
    race_EctorTX <- subset.data.frame(race, NAME=="Ector-TX")
    nodes_EctorTX <- as.Node(race_EctorTX) 
  } #68
  else if(input$selectcounty== "Edwards-TX"){
    race_EdwardsTX <- subset.data.frame(race, NAME=="Edwards-TX")
    nodes_EdwardsTX <- as.Node(race_EdwardsTX) 
  } #69
  else if(input$selectcounty== "El Paso-TX"){
    race_ElPasoTX <- subset.data.frame(race, NAME=="El Paso-TX")
    nodes_ElPasoTX <- as.Node(race_ElPasoTX) 
  } #70
  else if(input$selectcounty== "Ellis-TX"){
    race_EllisTX <- subset.data.frame(race, NAME=="Ellis-TX")
    nodes_EllisTX <- as.Node(race_EllisTX) 
  } #71
  else if(input$selectcounty== "Erath-TX"){
    race_ErathTX <- subset.data.frame(race, NAME=="Erath-TX")
    nodes_ErathTX <- as.Node(race_ErathTX) 
  } #72
  else if(input$selectcounty== "Falls-TX"){
    race_FallsTX <- subset.data.frame(race, NAME=="Falls-TX")
    nodes_FallsTX <- as.Node(race_FallsTX) 
  } #73
  else if(input$selectcounty== "Fannin-TX"){
    race_FanninTX <- subset.data.frame(race, NAME=="Fannin-TX")
    nodes_FanninTX <- as.Node(race_FanninTX) 
  } #74
  else if(input$selectcounty== "Fayette-TX"){
    race_FayetteTX <- subset.data.frame(race, NAME=="Fayette-TX")
    nodes_FayetteTX <- as.Node(race_FayetteTX) 
  } #75
  else if(input$selectcounty== "Fisher-TX"){
    race_FisherTX <- subset.data.frame(race, NAME=="Fisher-TX")
    nodes_FisherTX <- as.Node(race_FisherTX) 
  } #76
  else if(input$selectcounty== "Floyd-TX"){
    race_FloydTX <- subset.data.frame(race, NAME=="Floyd-TX")
    nodes_FloydTX <- as.Node(race_FloydTX) 
  } #77
  else if(input$selectcounty== "Foard-TX"){
    race_FoardTX <- subset.data.frame(race, NAME=="Foard-TX")
    nodes_FoardTX <- as.Node(race_FoardTX) 
  } #78
  else if(input$selectcounty== "Fort Bend-TX"){
    race_FortBendTX <- subset.data.frame(race, NAME=="Fort Bend-TX")
    nodes_FortBendTX <- as.Node(race_FortBendTX) 
  } #79 
  else if(input$selectcounty== "Franklin-TX"){
    race_FranklinTX <- subset.data.frame(race, NAME=="Franklin-TX")
    nodes_FranklinTX <- as.Node(race_FranklinTX) 
  } #80
  else if(input$selectcounty== "Freestone-TX"){
    race_FreestoneTX <- subset.data.frame(race, NAME=="Freestone-TX")
    nodes_FreestoneTX <- as.Node(race_FreestoneTX) 
  } #81
  else if(input$selectcounty== "Frio-TX"){
    race_FrioTX <- subset.data.frame(race, NAME=="Frio-TX")
    nodes_FrioTX <- as.Node(race_FrioTX) 
  } #82
  else if(input$selectcounty== "Gaines-TX"){
    race_GainesTX <- subset.data.frame(race, NAME=="Gaines-TX")
    nodes_GainesTX <- as.Node(race_GainesTX) 
  } #83
  else if(input$selectcounty== "Galveston-TX"){
    race_GalvestonTX <- subset.data.frame(race, NAME=="Galveston-TX")
    nodes_GalvestonTX <- as.Node(race_GalvestonTX) 
  } #84
  else if(input$selectcounty== "Garza-TX"){
    race_GarzaTX <- subset.data.frame(race, NAME=="Garza-TX")
    nodes_GarzaTX <- as.Node(race_GarzaTX) 
  } #85
  else if(input$selectcounty== "Gillespie-TX"){
    race_GillespieTX <- subset.data.frame(race, NAME=="Gillespie-TX")
    nodes_GillespieTX <- as.Node(race_GillespieTX) 
  } #86 
  else if(input$selectcounty== "Glasscock-TX"){
    race_GlasscockTX <- subset.data.frame(race, NAME=="Glasscock-TX")
    nodes_GlasscockTX <- as.Node(race_GlasscockTX) 
  } #87
  else if(input$selectcounty== "Goliad-TX"){
    race_GoliadTX <- subset.data.frame(race, NAME=="Goliad-TX")
    nodes_GoliadTX <- as.Node(race_GoliadTX) 
  } #88
  else if(input$selectcounty== "Gonzales-TX"){
    race_GonzalesTX <- subset.data.frame(race, NAME=="Gonzales-TX")
    nodes_GonzalesTX <- as.Node(race_GonzalesTX) 
  } #89
  else if(input$selectcounty== "Gray-TX"){
    race_GrayTX <- subset.data.frame(race, NAME=="Gray-TX")
    nodes_GrayTX <- as.Node(race_GrayTX) 
  } #90
  else if(input$selectcounty== "Grayson-TX"){
    race_GraysonTX <- subset.data.frame(race, NAME=="Grayson-TX")
    nodes_GraysonTX <- as.Node(race_GraysonTX) 
  } #91
  else if(input$selectcounty== "Gregg-TX"){
    race_GreggTX <- subset.data.frame(race, NAME=="Gregg-TX")
    nodes_GreggTX <- as.Node(race_GreggTX) 
  } #92
  else if(input$selectcounty== "Grimes-TX"){
    race_GrimesTX <- subset.data.frame(race, NAME=="Grimes-TX")
    nodes_GrimesTX <- as.Node(race_GrimesTX) 
  } #93
  else if(input$selectcounty== "Guadalupe-TX"){
    race_GuadalupeTX <- subset.data.frame(race, NAME=="Guadalupe-TX")
    nodes_GuadalupeTX <- as.Node(race_GuadalupeTX) 
  } #94
  else if(input$selectcounty== "Hale-TX"){
    race_HaleTX <- subset.data.frame(race, NAME=="Hale-TX")
    nodes_HaleTX <- as.Node(race_HaleTX) 
  } #95
  else if(input$selectcounty== "Hall-TX"){
    race_HallTX <- subset.data.frame(race, NAME=="Hall-TX")
    nodes_HallTX <- as.Node(race_HallTX) 
  } #96
  else if(input$selectcounty== "Hamilton-TX"){
    race_HamiltonTX <- subset.data.frame(race, NAME=="Hamilton-TX")
    nodes_HamiltonTX <- as.Node(race_HamiltonTX) 
  }
  else if(input$selectcounty== "Hardeman-TX"){
    race_HardemanTX <- subset.data.frame(race, NAME=="Hardeman-TX")
    nodes_HardemanTX <- as.Node(race_HardemanTX) 
  }
  else if(input$selectcounty== "Hansford-TX"){
    race_HansfordTX <- subset.data.frame(race, NAME=="Hansford-TX")
    nodes_HansfordTX <- as.Node(race_HansfordTX) 
  } #98
  else if(input$selectcounty== "Hardin-TX"){
    race_HardinTX <- subset.data.frame(race, NAME=="Hardin-TX")
    nodes_HardinTX <- as.Node(race_HardinTX) 
  } #100
  else if(input$selectcounty== "Harris-TX"){
    race_HarrisTX <- subset.data.frame(race, NAME=="Harris-TX")
    nodes_HarrisTX <- as.Node(race_HarrisTX) 
  } #101
  else if(input$selectcounty== "Harrison-TX"){
    race_HarrisonTX <- subset.data.frame(race, NAME=="Harrison-TX")
    nodes_HarrisonTX <- as.Node(race_HarrisonTX) 
  } #102
  else if(input$selectcounty== "Hartley-TX"){
    race_HartleyTX <- subset.data.frame(race, NAME=="Hartley-TX")
    nodes_HartleyTX <- as.Node(race_HartleyTX) 
  } #103
  else if(input$selectcounty== "Haskell-TX"){
    race_HaskellTX <- subset.data.frame(race, NAME=="Haskell-TX")
    nodes_HaskellTX <- as.Node(race_HaskellTX) 
  } #104
  else if(input$selectcounty== "Hays-TX"){
    race_HaysTX <- subset.data.frame(race, NAME=="Hays-TX")
    nodes_HaysTX <- as.Node(race_HaysTX) 
  } #105
  else if(input$selectcounty== "Hemphill-TX"){
    race_HemphillTX <- subset.data.frame(race, NAME=="Hemphill-TX")
    nodes_HemphillTX <- as.Node(race_HemphillTX) 
  } #106
  else if(input$selectcounty== "Henderson-TX"){
    race_HendersonTX <- subset.data.frame(race, NAME=="Henderson-TX")
    nodes_HendersonTX <- as.Node(race_HendersonTX) 
  } #107
  else if(input$selectcounty== "Hidalgo-TX"){
    race_HidalgoTX <- subset.data.frame(race, NAME=="Hidalgo-TX")
    nodes_HidalgoTX <- as.Node(race_HidalgoTX) 
  } #108
  else if(input$selectcounty== "Hill-TX"){
    race_HillTX <- subset.data.frame(race, NAME=="Hill-TX")
    nodes_HillTX <- as.Node(race_HillTX) 
  } #109
  else if(input$selectcounty== "Hockley-TX"){
    race_HockleyTX <- subset.data.frame(race, NAME=="Hockley-TX")
    nodes_HockleyTX <- as.Node(race_HockleyTX) 
  } #110
  else if(input$selectcounty== "Hood-TX"){
    race_HoodTX <- subset.data.frame(race, NAME=="Hood-TX")
    nodes_HoodTX <- as.Node(race_HoodTX) 
  } #111
  else if(input$selectcounty== "Hopkins-TX"){
    race_HopkinsTX <- subset.data.frame(race, NAME=="Hopkins-TX")
    nodes_HopkinsTX <- as.Node(race_HopkinsTX) 
  } #112
  else if(input$selectcounty== "Houston-TX"){
    race_HoustonTX <- subset.data.frame(race, NAME=="Houston-TX")
    nodes_HoustonTX <- as.Node(race_HoustonTX) 
  } #113
  else if(input$selectcounty== "Howard-TX"){
    race_HowardTX <- subset.data.frame(race, NAME=="Howard-TX")
    nodes_HowardTX <- as.Node(race_HowardTX) 
  } #114
  else if(input$selectcounty== "Hudspeth-TX"){
    race_HudspethTX <- subset.data.frame(race, NAME=="Hudspeth-TX")
    nodes_HudspethTX <- as.Node(race_HudspethTX) 
  } #115
  else if(input$selectcounty== "Hunt-TX"){
    race_HuntTX <- subset.data.frame(race, NAME=="Hunt-TX")
    nodes_HuntTX <- as.Node(race_HuntTX) 
  } #116
  else if(input$selectcounty== "Hutchinson-TX"){
    race_HutchinsonTX <- subset.data.frame(race, NAME=="Hutchinson-TX")
    nodes_HutchinsonTX <- as.Node(race_HutchinsonTX) 
  } #117 
  else if(input$selectcounty== "Irion-TX"){
    race_IrionTX <- subset.data.frame(race, NAME=="Irion-TX")
    nodes_IrionTX <- as.Node(race_IrionTX) 
  } #118
  else if(input$selectcounty== "Jack-TX"){
    race_JackTX <- subset.data.frame(race, NAME=="Jack-TX")
    nodes_JackTX <- as.Node(race_JackTX) 
  } #119
  else if(input$selectcounty== "Jackson-TX"){
    race_JacksonTX <- subset.data.frame(race, NAME=="Jackson-TX")
    nodes_JacksonTX <- as.Node(race_JacksonTX) 
  } #120
  else if(input$selectcounty== "Jasper-TX"){
    race_JasperTX <- subset.data.frame(race, NAME=="Jasper-TX")
    nodes_JasperTX <- as.Node(race_JasperTX) 
  } #121
  else if(input$selectcounty== "Jeff Davis-TX"){
    race_JeffDavisTX <- subset.data.frame(race, NAME=="Jeff Davis-TX")
    nodes_JeffDavisTX <- as.Node(race_JeffDavisTX) 
  } #122
  else if(input$selectcounty== "Jefferson-TX"){
    race_JeffersonTX <- subset.data.frame(race, NAME=="Jefferson-TX")
    nodes_JeffersonTX <- as.Node(race_JeffersonTX) 
  } #123
  else if(input$selectcounty== "Jim Hogg-TX"){
    race_JimHoggTX <- subset.data.frame(race, NAME=="Jim Hogg-TX")
    nodes_JimHoggTX <- as.Node(race_JimHoggTX) 
  } #124
  else if(input$selectcounty== "Jim Wells-TX"){
    race_JimWellsTX <- subset.data.frame(race, NAME=="Jim Wells-TX")
    nodes_JimWellsTX <- as.Node(race_JimWellsTX) 
  } #125
  else if(input$selectcounty== "Johnson-TX"){
    race_JohnsonTX <- subset.data.frame(race, NAME=="Johnson-TX")
    nodes_JohnsonTX <- as.Node(race_JohnsonTX) 
  } #126
  else if(input$selectcounty== "Jones-TX"){
    race_JonesTX <- subset.data.frame(race, NAME=="Jones-TX")
    nodes_JonesTX <- as.Node(race_JonesTX) 
  } #127
  else if(input$selectcounty== "Karnes-TX"){
    race_KarnesTX <- subset.data.frame(race, NAME=="Karnes-TX")
    nodes_KarnesTX <- as.Node(race_KarnesTX) 
  } #128
  else if(input$selectcounty== "Kaufman-TX"){
    race_KaufmanTX <- subset.data.frame(race, NAME=="Kaufman-TX")
    nodes_KaufmanTX <- as.Node(race_KaufmanTX) 
  } #129
  else if(input$selectcounty== "Kendall-TX"){
    race_KendallTX <- subset.data.frame(race, NAME=="Kendall-TX")
    nodes_KendallTX <- as.Node(race_KendallTX) 
  } #130
  else if(input$selectcounty== "Kenedy-TX"){
    race_KenedyTX <- subset.data.frame(race, NAME=="Kenedy-TX")
    nodes_KenedyTX <- as.Node(race_KenedyTX) 
  } #131
  else if(input$selectcounty== "Kent-TX"){
    race_KentTX <- subset.data.frame(race, NAME=="Kent-TX")
    nodes_KentTX <- as.Node(race_KentTX) 
  } #132
  else if(input$selectcounty== "Kerr-TX"){
    race_KerrTX <- subset.data.frame(race, NAME=="Kerr-TX")
    nodes_KerrTX <- as.Node(race_KerrTX) 
  } #133
  else if(input$selectcounty== "Kimble-TX"){
    race_KimbleTX <- subset.data.frame(race, NAME=="Kimble-TX")
    nodes_KimbleTX <- as.Node(race_KimbleTX) 
  } #134
  else if(input$selectcounty== "King-TX"){
    race_KingTX <- subset.data.frame(race, NAME=="King-TX")
    nodes_KingTX <- as.Node(race_KingTX) 
  } #135
  else if(input$selectcounty== "Kinney-TX"){
    race_KinneyTX <- subset.data.frame(race, NAME=="Kinney-TX")
    nodes_KinneyTX <- as.Node(race_KinneyTX) 
  } #136
  else if(input$selectcounty== "Kleberg-TX"){
    race_KlebergTX <- subset.data.frame(race, NAME=="Kleberg-TX")
    nodes_KlebergTX <- as.Node(race_KlebergTX) 
  } #137
  else if(input$selectcounty== "Knox-TX"){
    race_KnoxTX <- subset.data.frame(race, NAME=="Knox-TX")
    nodes_KnoxTX <- as.Node(race_KnoxTX) 
  } #138
  else if(input$selectcounty== "La Salle-TX"){
    race_LaSalleTX <- subset.data.frame(race, NAME=="La Salle-TX")
    nodes_LaSalleTX <- as.Node(race_LaSalleTX) 
  } #139
  else if(input$selectcounty== "Lamar-TX"){
    race_LamarTX <- subset.data.frame(race, NAME=="Lamar-TX")
    nodes_LamarTX <- as.Node(race_LamarTX) 
  } #140
  else if(input$selectcounty== "Lamb-TX"){
    race_LambTX <- subset.data.frame(race, NAME=="Lamb-TX")
    nodes_LambTX <- as.Node(race_LambTX) 
  } #141
  else if(input$selectcounty== "Lampasas-TX"){
    race_LampasasTX <- subset.data.frame(race, NAME=="Lampasas-TX")
    nodes_LampasasTX <- as.Node(race_LampasasTX) 
  } #142
  else if(input$selectcounty== "Lavaca-TX"){
    race_LavacaTX <- subset.data.frame(race, NAME=="Lavaca-TX")
    nodes_LavacaTX <- as.Node(race_LavacaTX) 
  } #143
  else if(input$selectcounty== "Lee-TX"){
    race_LeeTX <- subset.data.frame(race, NAME=="Lee-TX")
    nodes_LeeTX <- as.Node(race_LeeTX) 
  } #144
  else if(input$selectcounty== "Leon-TX"){
    race_LeonTX <- subset.data.frame(race, NAME=="Leon-TX")
    nodes_LeonTX <- as.Node(race_LeonTX) 
  } #145
  else if(input$selectcounty== "Liberty-TX"){
    race_LibertyTX <- subset.data.frame(race, NAME=="Liberty-TX")
    nodes_LibertyTX <- as.Node(race_LibertyTX) 
  } #146
  else if(input$selectcounty== "Limestone-TX"){
    race_LimestoneTX <- subset.data.frame(race, NAME=="Limestone-TX")
    nodes_LimestoneTX <- as.Node(race_LimestoneTX) 
  } #147
  else if(input$selectcounty== "Lipscomb-TX"){
    race_LipscombTX <- subset.data.frame(race, NAME=="Lipscomb-TX")
    nodes_LipscombTX <- as.Node(race_LipscombTX) 
  } #148
  else if(input$selectcounty== "Live Oak-TX"){
    race_LiveOakTX <- subset.data.frame(race, NAME=="Live Oak-TX")
    nodes_LiveOakTX <- as.Node(race_LiveOakTX) 
  } #149
  else if(input$selectcounty== "Llano-TX"){
    race_LlanoTX <- subset.data.frame(race, NAME=="Llano-TX")
    nodes_LlanoTX <- as.Node(race_LlanoTX) 
  } #150
  else if(input$selectcounty== "Loving-TX"){
    race_LovingTX <- subset.data.frame(race, NAME=="Loving-TX")
    nodes_LovingTX <- as.Node(race_LovingTX) 
  } #151
  else if(input$selectcounty== "Lubbock-TX"){
    race_LubbockTX <- subset.data.frame(race, NAME=="Lubbock-TX")
    nodes_LubbockTX <- as.Node(race_LubbockTX) 
  } ########## 253
  else if(input$selectcounty== "Lynn-TX"){
    race_LynnTX <- subset.data.frame(race, NAME=="Lynn-TX")
    nodes_LynnTX <- as.Node(race_LynnTX) 
  } #152
  else if(input$selectcounty== "Madison-TX"){
    race_MadisonTX <- subset.data.frame(race, NAME=="Madison-TX")
    nodes_MadisonTX <- as.Node(race_MadisonTX) 
  } #153
  else if(input$selectcounty== "Marion-TX"){
    race_MarionTX <- subset.data.frame(race, NAME=="Marion-TX")
    nodes_MarionTX <- as.Node(race_MarionTX) 
  } #154
  else if(input$selectcounty== "Martin-TX"){
    race_MartinTX <- subset.data.frame(race, NAME=="Martin-TX")
    nodes_MartinTX <- as.Node(race_MartinTX) 
  } #155
  else if(input$selectcounty== "Mason-TX"){
    race_MasonTX <- subset.data.frame(race, NAME=="Mason-TX")
    nodes_MasonTX <- as.Node(race_MasonTX) 
  } #156
  else if(input$selectcounty== "Matagorda-TX"){
    race_MatagordaTX <- subset.data.frame(race, NAME=="Matagorda-TX")
    nodes_MatagordaTX <- as.Node(race_MatagordaTX) 
  } #157
  else if(input$selectcounty== "Maverick-TX"){
    race_MaverickTX <- subset.data.frame(race, NAME=="Maverick-TX")
    nodes_MaverickTX <- as.Node(race_MaverickTX) 
  } #158
  else if(input$selectcounty== "McCulloch-TX"){
    race_McCullochTX <- subset.data.frame(race, NAME=="McCulloch-TX")
    nodes_McCullochTX <- as.Node(race_McCullochTX) 
  } #159
  else if(input$selectcounty== "McLennan-TX"){
    race_McLennanTX <- subset.data.frame(race, NAME=="McLennan-TX")
    nodes_McLennanTX <- as.Node(race_McLennanTX) 
  } #160
  else if(input$selectcounty== "McMullen-TX"){
    race_McMullenTX <- subset.data.frame(race, NAME=="McMullen-TX")
    nodes_McMullenTX <- as.Node(race_McMullenTX) 
  } #161
  else if(input$selectcounty== "Medina-TX"){
    race_MedinaTX <- subset.data.frame(race, NAME=="Medina-TX")
    nodes_MedinaTX <- as.Node(race_MedinaTX) 
  } #162
  else if(input$selectcounty== "Menard-TX"){
    race_MenardTX <- subset.data.frame(race, NAME=="Menard-TX")
    nodes_MenardTX <- as.Node(race_MenardTX) 
  } #163
  else if(input$selectcounty== "Midland-TX"){
    race_MidlandTX <- subset.data.frame(race, NAME=="Midland-TX")
    nodes_MidlandTX <- as.Node(race_MidlandTX) 
  } #164
  else if(input$selectcounty== "Milam-TX"){
    race_MilamTX <- subset.data.frame(race, NAME=="Milam-TX")
    nodes_MilamTX <- as.Node(race_MilamTX) 
  } #165
  else if(input$selectcounty== "Mills-TX"){
    race_MillsTX <- subset.data.frame(race, NAME=="Mills-TX")
    nodes_MillsTX <- as.Node(race_MillsTX) 
  } #166
  else if(input$selectcounty== "Mitchell-TX"){
    race_MitchellTX <- subset.data.frame(race, NAME=="Mitchell-TX")
    nodes_MitchellTX <- as.Node(race_MitchellTX) 
  } #167
  else if(input$selectcounty== "Montague-TX"){
    race_MontagueTX <- subset.data.frame(race, NAME=="Montague-TX")
    nodes_MontagueTX <- as.Node(race_MontagueTX) 
  } #168
  else if(input$selectcounty== "Montgomery-TX"){
    race_MontgomeryTX <- subset.data.frame(race, NAME=="Montgomery-TX")
    nodes_MontgomeryTX <- as.Node(race_MontgomeryTX) 
  } #169
  else if(input$selectcounty== "Moore-TX"){
    race_MooreTX <- subset.data.frame(race, NAME=="Moore-TX")
    nodes_MooreTX <- as.Node(race_MooreTX) 
  } #170
  else if(input$selectcounty== "Morris-TX"){
    race_MorrisTX <- subset.data.frame(race, NAME=="Morris-TX")
    nodes_MorrisTX <- as.Node(race_MorrisTX) 
  } #171
  else if(input$selectcounty== "Motley-TX"){
    race_MotleyTX <- subset.data.frame(race, NAME=="Motley-TX")
    nodes_MotleyTX <- as.Node(race_MotleyTX) 
  } #172
  else if(input$selectcounty== "Nacogdoches-TX"){
    race_NacogdochesTX <- subset.data.frame(race, NAME=="Nacogdoches-TX")
    nodes_NacogdochesTX <- as.Node(race_NacogdochesTX) 
  } #173 
  else if(input$selectcounty== "Navarro-TX"){
    race_NavarroTX <- subset.data.frame(race, NAME=="Navarro-TX")
    nodes_NavarroTX <- as.Node(race_NavarroTX) 
  } #174
  else if(input$selectcounty== "Newton-TX"){
    race_NewtonTX <- subset.data.frame(race, NAME=="Newton-TX")
    nodes_NewtonTX <- as.Node(race_NewtonTX) 
  } #175
  else if(input$selectcounty== "Nolan-TX"){
    race_NolanTX <- subset.data.frame(race, NAME=="Nolan-TX")
    nodes_NolanTX <- as.Node(race_NolanTX) 
  } #176
  else if(input$selectcounty== "Nueces-TX"){
    race_NuecesTX <- subset.data.frame(race, NAME=="Nueces-TX")
    nodes_NuecesTX <- as.Node(race_NuecesTX) 
  } #177
  else if(input$selectcounty== "Ochiltree-TX"){
    race_OchiltreeTX <- subset.data.frame(race, NAME=="Ochiltree-TX")
    nodes_OchiltreeTX <- as.Node(race_OchiltreeTX) 
  } #178
  else if(input$selectcounty== "Oldham-TX"){
    race_OldhamTX <- subset.data.frame(race, NAME=="Oldham-TX")
    nodes_OldhamTX <- as.Node(race_OldhamTX) 
  } #179
  else if(input$selectcounty== "Orange-TX"){
    race_OrangeTX <- subset.data.frame(race, NAME=="Orange-TX")
    nodes_OrangeTX <- as.Node(race_OrangeTX) 
  } #180
  else if(input$selectcounty== "Palo Pinto-TX"){
    race_PaloPintoTX <- subset.data.frame(race, NAME=="Palo Pinto-TX")
    nodes_PaloPintoTX <- as.Node(race_PaloPintoTX) 
  } #181
  else if(input$selectcounty== "Panola-TX"){
    race_PanolaTX <- subset.data.frame(race, NAME=="Panola-TX")
    nodes_PanolaTX <- as.Node(race_PanolaTX) 
  } #182
  else if(input$selectcounty== "Parker-TX"){
    race_ParkerTX <- subset.data.frame(race, NAME=="Parker-TX")
    nodes_ParkerTX <- as.Node(race_ParkerTX) 
  } #183
  else if(input$selectcounty== "Parmer-TX"){
    race_ParmerTX <- subset.data.frame(race, NAME=="Parmer-TX")
    nodes_ParmerTX <- as.Node(race_ParmerTX) 
  } #184
  else if(input$selectcounty== "Pecos-TX"){
    race_PecosTX <- subset.data.frame(race, NAME=="Pecos-TX")
    nodes_PecosTX <- as.Node(race_PecosTX) 
  } #185
  else if(input$selectcounty== "Polk-TX"){
    race_PolkTX <- subset.data.frame(race, NAME=="Polk-TX")
    nodes_PolkTX <- as.Node(race_PolkTX) 
  } #186
  else if(input$selectcounty== "Potter-TX"){
    race_PotterTX <- subset.data.frame(race, NAME=="Potter-TX")
    nodes_PotterTX <- as.Node(race_PotterTX) 
  } #187
  else if(input$selectcounty== "Presidio-TX"){
    race_PresidioTX <- subset.data.frame(race, NAME=="Presidio-TX")
    nodes_PresidioTX <- as.Node(race_PresidioTX) 
  } #188
  else if(input$selectcounty== "Rains-TX"){
    race_RainsTX <- subset.data.frame(race, NAME=="Rains-TX")
    nodes_RainsTX <- as.Node(race_RainsTX) 
  } #189
  else if(input$selectcounty== "Randall-TX"){
    race_RandallTX <- subset.data.frame(race, NAME=="Randall-TX")
    nodes_RandallTX <- as.Node(race_RandallTX) 
  } #190
  else if(input$selectcounty== "Reagan-TX"){
    race_ReaganTX <- subset.data.frame(race, NAME=="Reagan-TX")
    nodes_ReaganTX <- as.Node(race_ReaganTX) 
  } #191
  else if(input$selectcounty== "Real-TX"){
    race_RealTX <- subset.data.frame(race, NAME=="Real-TX")
    nodes_RealTX <- as.Node(race_RealTX) 
  } #192
  else if(input$selectcounty== "Red River-TX"){
    race_RedRiverTX <- subset.data.frame(race, NAME=="Red River-TX")
    nodes_RedRiverTX <- as.Node(race_RedRiverTX) 
  } #193 
  else if(input$selectcounty== "Reeves-TX"){
    race_ReevesTX <- subset.data.frame(race, NAME=="Reeves-TX")
    nodes_ReevesTX <- as.Node(race_ReevesTX) 
  } #194
  else if(input$selectcounty== "Refugio-TX"){
    race_RefugioTX <- subset.data.frame(race, NAME=="Refugio-TX")
    nodes_RefugioTX <- as.Node(race_RefugioTX) 
  } #195
  else if(input$selectcounty== "Roberts-TX"){
    race_RobertsTX <- subset.data.frame(race, NAME=="Roberts-TX")
    nodes_RobertsTX <- as.Node(race_RobertsTX) 
  } #196
  else if(input$selectcounty== "Robertson-TX"){
    race_RobertsonTX <- subset.data.frame(race, NAME=="Robertson-TX")
    nodes_RobertsonTX <- as.Node(race_RobertsonTX) 
  } #197
  else if(input$selectcounty== "Rockwall-TX"){
    race_RockwallTX <- subset.data.frame(race, NAME=="Rockwall-TX")
    nodes_RockwallTX <- as.Node(race_RockwallTX) 
  } #198
  else if(input$selectcounty== "Runnels-TX"){
    race_RunnelsTX <- subset.data.frame(race, NAME=="Runnels-TX")
    nodes_RunnelsTX <- as.Node(race_RunnelsTX) 
  } #199
  else if(input$selectcounty== "Rusk-TX"){
    race_RuskTX <- subset.data.frame(race, NAME=="Rusk-TX")
    nodes_RuskTX <- as.Node(race_RuskTX) 
  } #200
  else if(input$selectcounty== "Sabine-TX"){
    race_SabineTX <- subset.data.frame(race, NAME=="Sabine-TX")
    nodes_SabineTX <- as.Node(race_SabineTX) 
  } #201
  else if(input$selectcounty== "San Augustine-TX"){
    race_SanAugustineTX <- subset.data.frame(race, NAME=="San Augustine-TX")
    nodes_SanAugustineTX <- as.Node(race_SanAugustineTX) 
  } #202 
  else if(input$selectcounty== "San Jacinto-TX"){
    race_SanJacintoTX <- subset.data.frame(race, NAME=="San Jacinto-TX")
    nodes_SanJacintoTX <- as.Node(race_SanJacintoTX) 
  } #203
  else if(input$selectcounty== "San Patricio-TX"){
    race_SanPatricioTX <- subset.data.frame(race, NAME=="San Patricio-TX")
    nodes_SanPatricioTX <- as.Node(race_SanPatricioTX) 
  } #204
  else if(input$selectcounty== "San Saba-TX"){
    race_SanSabaTX <- subset.data.frame(race, NAME=="San Saba-TX")
    nodes_SanSabaTX <- as.Node(race_SanSabaTX) 
  } #205
  else if(input$selectcounty== "Schleicher-TX"){
    race_SchleicherTX <- subset.data.frame(race, NAME=="Schleicher-TX")
    nodes_SchleicherTX <- as.Node(race_SchleicherTX) 
  } #206
  else if(input$selectcounty== "Scurry-TX"){
    race_ScurryTX <- subset.data.frame(race, NAME=="Scurry-TX")
    nodes_ScurryTX <- as.Node(race_ScurryTX) 
  } #207
  else if(input$selectcounty== "Shackelford-TX"){
    race_ShackelfordTX <- subset.data.frame(race, NAME=="Shackelford-TX")
    nodes_ShackelfordTX <- as.Node(race_ShackelfordTX) 
  } #208 
  else if(input$selectcounty== "Shelby-TX"){
    race_ShelbyTX <- subset.data.frame(race, NAME=="Shelby-TX")
    nodes_ShelbyTX <- as.Node(race_ShelbyTX) 
  } #209
  else if(input$selectcounty== "Sherman-TX"){
    race_ShermanTX <- subset.data.frame(race, NAME=="Sherman-TX")
    nodes_ShermanTX <- as.Node(race_ShermanTX) 
  } #210
  else if(input$selectcounty== "Smith-TX"){
    race_SmithTX <- subset.data.frame(race, NAME=="Smith-TX")
    nodes_SmithTX <- as.Node(race_SmithTX) 
  } #211
  else if(input$selectcounty== "Somervell-TX"){
    race_SomervellTX <- subset.data.frame(race, NAME=="Somervell-TX")
    nodes_SomervellTX <- as.Node(race_SomervellTX) 
  } #212
  else if(input$selectcounty== "Starr-TX"){
    race_StarrTX <- subset.data.frame(race, NAME=="Starr-TX")
    nodes_StarrTX <- as.Node(race_StarrTX) 
  } #213
  else if(input$selectcounty== "Stephens-TX"){
    race_StephensTX <- subset.data.frame(race, NAME=="Stephens-TX")
    nodes_StephensTX <- as.Node(race_StephensTX) 
  } #214
  else if(input$selectcounty== "Sterling-TX"){
    race_SterlingTX <- subset.data.frame(race, NAME=="Sterling-TX")
    nodes_SterlingTX <- as.Node(race_SterlingTX) 
  } #215
  else if(input$selectcounty== "Stonewall-TX"){
    race_StonewallTX <- subset.data.frame(race, NAME=="Stonewall-TX")
    nodes_StonewallTX <- as.Node(race_StonewallTX) 
  } #216
  else if(input$selectcounty== "Sutton-TX"){
    race_SuttonTX <- subset.data.frame(race, NAME=="Sutton-TX")
    nodes_SuttonTX <- as.Node(race_SuttonTX) 
  } #217
  else if(input$selectcounty== "Swisher-TX"){
    race_SwisherTX <- subset.data.frame(race, NAME=="Swisher-TX")
    nodes_SwisherTX <- as.Node(race_SwisherTX) 
  } #218
  else if(input$selectcounty== "Tarrant-TX"){
    race_TarrantTX <- subset.data.frame(race, NAME=="Tarrant-TX")
    nodes_TarrantTX <- as.Node(race_TarrantTX) 
  } #219
  else if(input$selectcounty== "Taylor-TX"){
    race_TaylorTX <- subset.data.frame(race, NAME=="Taylor-TX")
    nodes_TaylorTX <- as.Node(race_TaylorTX) 
  } #220
  else if(input$selectcounty== "Terrell-TX"){
    race_TerrellTX <- subset.data.frame(race, NAME=="Terrell-TX")
    nodes_TerrellTX <- as.Node(race_TerrellTX) 
  } #221
  else if(input$selectcounty== "Terry-TX"){
    race_TerryTX <- subset.data.frame(race, NAME=="Terry-TX")
    nodes_TerryTX <- as.Node(race_TerryTX) 
  } #222
  else if(input$selectcounty== "Throckmorton-TX"){
    race_ThrockmortonTX <- subset.data.frame(race, NAME=="Throckmorton-TX")
    nodes_ThrockmortonTX <- as.Node(race_ThrockmortonTX) 
  } #223 
  else if(input$selectcounty== "Titus-TX"){
    race_TitusTX <- subset.data.frame(race, NAME=="Titus-TX")
    nodes_TitusTX <- as.Node(race_TitusTX) 
  } #224
  else if(input$selectcounty== "Tom Green-TX"){
    race_TomGreenTX <- subset.data.frame(race, NAME=="Tom Green-TX")
    nodes_TomGreenTX <- as.Node(race_TomGreenTX) 
  } #225
  else if(input$selectcounty== "Travis-TX"){
    race_TravisTX <- subset.data.frame(race, NAME=="Travis-TX")
    nodes_TravisTX <- as.Node(race_TravisTX) 
  } #226
  else if(input$selectcounty== "Trinity-TX"){
    race_TrinityTX <- subset.data.frame(race, NAME=="Trinity-TX")
    nodes_TrinityTX <- as.Node(race_TrinityTX) 
  } #227
  else if(input$selectcounty== "Tyler-TX"){
    race_TylerTX <- subset.data.frame(race, NAME=="Tyler-TX")
    nodes_TylerTX <- as.Node(race_TylerTX) 
  } #228
  else if(input$selectcounty== "Upshur-TX"){
    race_UpshurTX <- subset.data.frame(race, NAME=="Upshur-TX")
    nodes_UpshurTX <- as.Node(race_UpshurTX) 
  } #229
  else if(input$selectcounty== "Upton-TX"){
    race_UptonTX <- subset.data.frame(race, NAME=="Upton-TX")
    nodes_UptonTX <- as.Node(race_UptonTX) 
  } #230
  else if(input$selectcounty== "Uvalde-TX"){
    race_UvaldeTX <- subset.data.frame(race, NAME=="Uvalde-TX")
    nodes_UvaldeTX <- as.Node(race_UvaldeTX) 
  } #231
  else if(input$selectcounty== "Val Verde-TX"){
    race_ValVerdeTX <- subset.data.frame(race, NAME=="Val Verde-TX")
    nodes_ValVerdeTX <- as.Node(race_ValVerdeTX) 
  } #232
  else if(input$selectcounty== "Van Zandt-TX"){
    race_VanZandtTX <- subset.data.frame(race, NAME=="Van Zandt-TX")
    nodes_VanZandtTX <- as.Node(race_VanZandtTX) 
  } #233
  else if(input$selectcounty== "Victoria-TX"){
    race_VictoriaTX <- subset.data.frame(race, NAME=="Victoria-TX")
    nodes_VictoriaTX <- as.Node(race_VictoriaTX) 
  } #234
  else if(input$selectcounty== "Walker-TX"){
    race_WalkerTX <- subset.data.frame(race, NAME=="Walker-TX")
    nodes_WalkerTX <- as.Node(race_WalkerTX) 
  } #235
  else if(input$selectcounty== "Waller-TX"){
    race_WallerTX <- subset.data.frame(race, NAME=="Waller-TX")
    nodes_WallerTX <- as.Node(race_WallerTX) 
  } #236
  else if(input$selectcounty== "Ward-TX"){
    race_WardTX <- subset.data.frame(race, NAME=="Ward-TX")
    nodes_WardTX <- as.Node(race_WardTX) 
  } #237
  else if(input$selectcounty== "Washington-TX"){
    race_WashingtonTX <- subset.data.frame(race, NAME=="Washington-TX")
    nodes_WashingtonTX <- as.Node(race_WashingtonTX) 
  } #238 
  else if(input$selectcounty== "Webb-TX"){
    race_WebbTX <- subset.data.frame(race, NAME=="Webb-TX")
    nodes_WebbTX <- as.Node(race_WebbTX) 
  } #239
  else if(input$selectcounty== "Wharton-TX"){
    race_WhartonTX <- subset.data.frame(race, NAME=="Wharton-TX")
    nodes_WhartonTX <- as.Node(race_WhartonTX) 
  } #240
  else if(input$selectcounty== "Wheeler-TX"){
    race_WheelerTX <- subset.data.frame(race, NAME=="Wheeler-TX")
    nodes_WheelerTX <- as.Node(race_WheelerTX) 
  } #241
  else if(input$selectcounty== "Wichita-TX"){
    race_WichitaTX <- subset.data.frame(race, NAME=="Wichita-TX")
    nodes_WichitaTX <- as.Node(race_WichitaTX) 
  } #242
  else if(input$selectcounty== "Wilbarger-TX"){
    race_WilbargerTX <- subset.data.frame(race, NAME=="Wilbarger-TX")
    nodes_WilbargerTX <- as.Node(race_WilbargerTX) 
  } #243
  else if(input$selectcounty== "Willacy-TX"){
    race_WillacyTX <- subset.data.frame(race, NAME=="Willacy-TX")
    nodes_WillacyTX <- as.Node(race_WillacyTX) 
  } #244
  else if(input$selectcounty== "Williamson-TX"){
    race_WilliamsonTX <- subset.data.frame(race, NAME=="Williamson-TX")
    nodes_WilliamsonTX <- as.Node(race_WilliamsonTX) 
  } #245
  else if(input$selectcounty== "Wilson-TX"){
    race_WilsonTX <- subset.data.frame(race, NAME=="Wilson-TX")
    nodes_WilsonTX <- as.Node(race_WilsonTX) 
  } #246
  else if(input$selectcounty== "Winkler-TX"){
    race_WinklerTX <- subset.data.frame(race, NAME=="Winkler-TX")
    nodes_WinklerTX <- as.Node(race_WinklerTX) 
  } #247
  else if(input$selectcounty== "Wise-TX"){
    race_WiseTX <- subset.data.frame(race, NAME=="Wise-TX")
    nodes_WiseTX <- as.Node(race_WiseTX) 
  } #248
  else if(input$selectcounty== "Wood-TX"){
    race_WoodTX <- subset.data.frame(race, NAME=="Wood-TX")
    nodes_WoodTX <- as.Node(race_WoodTX) 
  } #249
  else if(input$selectcounty== "Yoakum-TX"){
    race_YoakumTX <- subset.data.frame(race, NAME=="Yoakum-TX")
    nodes_YoakumTX <- as.Node(race_YoakumTX) 
  } #250
  else if(input$selectcounty== "Young-TX"){
    race_YoungTX <- subset.data.frame(race, NAME=="Young-TX")
    nodes_YoungTX <- as.Node(race_YoungTX) 
  } #251
  else if(input$selectcounty== "Zapata-TX"){
    race_ZapataTX <- subset.data.frame(race, NAME=="Zapata-TX")
    nodes_ZapataTX <- as.Node(race_ZapataTX) 
  } ###########254
  else if(input$selectcounty== "Zavala-TX"){
    race_ZavalaTX <- subset.data.frame(race, NAME=="Zavala-TX")
    nodes_ZavalaTX <- as.Node(race_ZavalaTX) 
  } #252
################# END OF FUNCTION ##################  
  else {
    return("u r a dummy")
  }
})

