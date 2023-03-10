/obj/item/clothing/shoes/combat //basic syndicate combat boots for nuke ops and mob corpses
	name = "combat boots"
	desc = "High speed, low drag combat boots."
	icon_state = "jackboots"
	inhand_icon_state = "jackboots"
	armor = list(MELEE = 25, BULLET = 25, LASER = 25, ENERGY = 25, BOMB = 50, BIO = 90, FIRE = 70, ACID = 50)
	strip_delay = 40
	resistance_flags = NONE
	clothing_flags = NOSLIP
	lace_time = 12 SECONDS

/obj/item/clothing/shoes/combat/Initialize(mapload)
	. = ..()

	create_storage(type = /datum/storage/pockets/shoes)

/obj/item/clothing/shoes/combat/swat //overpowered boots for death squads
	name = "\improper SWAT boots"
	desc = "High speed, no drag combat boots."
	armor = list(MELEE = 40, BULLET = 30, LASER = 25, ENERGY = 25, BOMB = 50, BIO = 100, FIRE = 90, ACID = 50)

/obj/item/clothing/shoes/jackboots
	name = "jackboots"
	desc = "Nanotrasen-issue Security combat boots for combat scenarios or combat situations. All combat, all the time."
	icon_state = "jackboots"
	inhand_icon_state = "jackboots"
	strip_delay = 30
	equip_delay_other = 50
	resistance_flags = NONE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 90, FIRE = 0, ACID = 0)
	can_be_tied = FALSE

/obj/item/clothing/shoes/jackboots/Initialize(mapload)
	. = ..()

	create_storage(type = /datum/storage/pockets/shoes)

/obj/item/clothing/shoes/jackboots/fast
	slowdown = -1

/obj/item/clothing/shoes/jackboots/sec
	clothing_flags = NOSLIP // THE BLUE HELMETS ARE EVOLVING
	icon_state = "jackboots_sec"

/obj/item/clothing/shoes/winterboots
	name = "winter boots"
	desc = "Boots lined with 'synthetic' animal fur."
	icon_state = "winterboots"
	inhand_icon_state = null
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 80, FIRE = 0, ACID = 0)
	cold_protection = FEET|LEGS
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET|LEGS
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT
	lace_time = 8 SECONDS

/obj/item/clothing/shoes/winterboots/Initialize(mapload)
	. = ..()

	create_storage(type = /datum/storage/pockets/shoes)

/obj/item/clothing/shoes/winterboots/ice_boots
	name = "ice hiking boots"
	desc = "A pair of winter boots with special grips on the bottom, designed to prevent slipping on frozen surfaces."
	icon_state = "iceboots"
	inhand_icon_state = null
	clothing_flags = NOSLIP_ICE

// A pair of ice boots intended for general crew EVA use - see EVA winter coat for comparison.
/obj/item/clothing/shoes/winterboots/ice_boots/eva
	name = "\proper Endotherm hiking boots"
	desc = "A heavy pair of boots with grips applied to the bottom to keep the wearer vertical while walking in freezing conditions."
	icon_state = "iceboots_eva"
	w_class = WEIGHT_CLASS_BULKY
	slowdown = 0.25
	armor = list(MELEE = 10, BULLET = 0, LASER = 10, ENERGY = 10, BOMB = 0, BIO = 50, FIRE = 50, ACID = 10)
	strip_delay = 4 SECONDS
	equip_delay_other = 4 SECONDS
	clothing_flags = NOSLIP_ICE|THICKMATERIAL
	resistance_flags = NONE

/obj/item/clothing/shoes/workboots
	name = "work boots"
	desc = "Nanotrasen-issue Engineering lace-up work boots for the especially blue-collar."
	icon_state = "workboots"
	inhand_icon_state = "jackboots"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 80, FIRE = 0, ACID = 0)
	strip_delay = 20
	equip_delay_other = 40
	lace_time = 8 SECONDS
	species_exception = list(/datum/species/golem/uranium)

/obj/item/clothing/shoes/workboots/Initialize(mapload)
	. = ..()

	create_storage(type = /datum/storage/pockets/shoes)

/obj/item/clothing/shoes/workboots/mining
	name = "mining boots"
	desc = "Steel-toed mining boots for mining in hazardous environments. Very good at keeping toes uncrushed."
	icon_state = "explorer"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/shoes/russian
	name = "russian boots"
	desc = "Comfy shoes."
	icon_state = "rus_shoes"
	inhand_icon_state = null
	lace_time = 8 SECONDS

/obj/item/clothing/shoes/russian/Initialize(mapload)
	. = ..()

	create_storage(type = /datum/storage/pockets/shoes)

/obj/item/clothing/shoes/discoshoes
	name = "green lizardskin shoes"
	desc = "They may have lost some of their lustre over the years, but these green lizardskin shoes fit you perfectly."
	icon_state = "lizardskin_shoes"
	inhand_icon_state = null

/obj/item/clothing/shoes/kim
	name = "aerostatic boots"
	desc = "A crisp, clean set of boots for working long hours on the beat."
	icon_state = "aerostatic_boots"
	inhand_icon_state = null

/obj/item/clothing/shoes/wb32/seal//The AI watches, it supplies.
	name = "WB-32 Brand Combat Boots"
	desc = "A set of reinforced, low-drag boots, high traction boots. Intended for the messiest of environments."
	icon = 'icons/mob/clothing/feet.dmi'
	icon_state = "wb32_combatboots"
	inhand_icon_state = "jackboots"
	armor = list(MELEE = 45, BULLET = 45, LASER = 45, ENERGY = 45, BOMB = 50, BIO = 100, FIRE = 100, ACID = 100)
	strip_delay = 40
	resistance_flags = FIRE_PROOF | ACID_PROOF
	clothing_flags = NOSLIP|NOSLIP_ICE|THICKMATERIAL
	lace_time = 160 SECONDS // Imagine being able to lay down next to this dude for 160 seconds just to unlace it. If they don't notice you doing it, you deserve it man.
	supports_variations_flags = NONE
