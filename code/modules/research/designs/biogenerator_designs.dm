///////////////////////////////////
///////Biogenerator Designs ///////
///////////////////////////////////

/datum/design/milk
	name = "Milk"
	id = "milk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.4)
	make_reagents = list(/datum/reagent/consumable/milk = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/soymilk
	name = "Soy Milk"
	id = "soymilk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.4)
	make_reagents = list(/datum/reagent/consumable/soymilk = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/soysauce
	name = "Soy Sauce"
	id = "soysauce"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.4)
	make_reagents = list(/datum/reagent/consumable/soysauce = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/ethanol
	name = "Ethanol"
	id = "ethanol"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/ethanol = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/cream
	name = "Cream"
	id = "cream"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/cream = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/black_pepper
	name = "Black Pepper"
	id = "black_pepper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/blackpepper = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/Salt
	name = "Salt"
	id = "salt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 1)
	make_reagents = list(/datum/reagent/consumable/salt = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/bbq_sauce
	name = "Barbecue sauce"
	id = "bbq_sauce"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5)
	make_reagents = list(/datum/reagent/consumable/bbqsauce = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/enzyme
	name = "Universal Enzyme"
	id = "enzyme"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/enzyme = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/flour
	name = "Flour"
	id = "flour_sack"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/flour = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/sugar
	name = "Sugar"
	id = "sugar"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/sugar = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/nakatispice
	name = "Nakati Spice"
	id = "nakatispice"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 2)
	make_reagents = list(/datum/reagent/consumable/nakati_spice = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/rootdough
	name = "Root dough"
	id = "rootdough"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 35)
	build_path = /obj/item/food/rootdough
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/rice
	name = "Rice"
	id = "rice"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 35)
	build_path = /obj/item/food/uncooked_rice
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/kortanut
	name = "Korta nut"
	id = "korta_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 35)
	build_path = /obj/item/food/grown/korta_nut
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/kortasyrup
	name = "Korta syrup/nectar"
	id = "korta_syrup"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5)
	make_reagents = list(/datum/reagent/consumable/korta_nectar = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/kortaflour
	name = "Korta flour"
	id = "korta_flour"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5)
	make_reagents = list(/datum/reagent/consumable/korta_flour = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/kortamilk
	name = "Korta milk"
	id = "korta_milk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5)
	make_reagents = list(/datum/reagent/consumable/korta_milk = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/monkey_cube
	name = "Monkey Cube"
	id = "mcube"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 50)
	build_path = /obj/item/food/monkeycube
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/tortilla
	name = "Tortilla"
	id = "tortilla"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5)
	build_path = /obj/item/food/tortilla
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/seaweed_sheet
	name = "Seaweed Sheet"
	id = "seaweedsheet"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 3)
	build_path = /obj/item/food/seaweedsheet
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/egg
	name = "Egg"
	id = "egg"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 15)
	build_path = /obj/item/food/egg
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/imitation_carp
	name = "Imitation carp"
	id = "imi_carp"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 50)
	build_path = /obj/item/food/fishmeat/carp/imitation
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_FOOD)

/datum/design/ez_nut   //easy nut :)
	name = "E-Z Nutrient"
	id = "ez_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.1)
	make_reagents = list(/datum/reagent/plantnutriment/eznutriment = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/l4z_nut
	name = "Left 4 Zed"
	id = "l4z_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.1)
	make_reagents = list(/datum/reagent/plantnutriment/left4zednutriment = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/rh_nut
	name = "Robust Harvest"
	id = "rh_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.2)
	make_reagents = list(/datum/reagent/plantnutriment/robustharvestnutriment = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/end_gro
	name = "Enduro Grow"
	id = "end_gro"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.3)
	make_reagents = list(/datum/reagent/plantnutriment/endurogrow = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/liq_earth
	name = "Liquid Earthquake"
	id = "liq_earth"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.3)
	make_reagents = list(/datum/reagent/plantnutriment/liquidearthquake = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/weed_killer
	name = "Weed Killer"
	id = "weed_killer"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.2)
	make_reagents = list(/datum/reagent/toxin/plantbgone/weedkiller = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/pest_spray
	name = "Pest Killer"
	id = "pest_spray"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.4)
	make_reagents = list(/datum/reagent/toxin/pestkiller = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/org_pest_spray
	name = "Organic Pest Killer"
	id = "org_pest_spray"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/toxin/pestkiller/organic = 1)
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_CHEMICALS)

/datum/design/leather
	name = "Sheet of Leather"
	id = "leather"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 30)
	build_path = /obj/item/stack/sheet/leather
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_MATERIALS)

/datum/design/cloth
	name = "Sheet of Cloth"
	id = "cloth"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/stack/sheet/cloth
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_MATERIALS)

/datum/design/cardboard
	name = "Sheet of Cardboard"
	id = "cardboard"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5)
	build_path = /obj/item/stack/sheet/cardboard
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_MATERIALS)

/datum/design/paper_sack
	name = "Paper lunch sack"
	id = "papersack"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 15)
	build_path = /obj/item/storage/box/papersack
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_MATERIALS)

/datum/design/paper
	name = "Sheet of Paper"
	id = "paper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 2)
	build_path = /obj/item/paper
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_MATERIALS)

/datum/design/rolling_paper
	name = "Sheet of Rolling Paper"
	id = "rollingpaper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 1)
	build_path = /obj/item/rollingpaper
	category = list(RND_CATEGORY_INITIAL, RND_CATEGORY_BIO_MATERIALS)
