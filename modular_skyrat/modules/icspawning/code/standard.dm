//SKYRAT MODULE IC-SPAWNING https://github.com/Skyrat-SS13/Skyrat-tg/pull/104
/obj/item/gun/energy/taser/debug
	ammo_type = list(/obj/item/ammo_casing/energy/electrode/debug)
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_casing/energy/electrode/debug
	e_cost = 1

/obj/item/clothing/suit/armor/vest/debug
	name = "Bluespace Tech vest"
	desc = "A sleek piece of armour designed for Bluespace agents."
	armor = list("melee" = 95, "bullet" = 95, "laser" = 95, "energy" = 95, "bomb" = 95, "bio" = 95, "fire" = 98, "acid" = 98)
	w_class = WEIGHT_CLASS_TINY

/obj/item/clothing/shoes/combat/debug
	clothing_flags = NOSLIP
	w_class = WEIGHT_CLASS_TINY

/obj/item/storage/belt/utility/chief/full/debug
	name = "\improper Bluespace Tech's belt"
	w_class = WEIGHT_CLASS_TINY

/obj/item/storage/belt/utility/chief/full/debug/PopulateContents()
	SSwardrobe.provide_type(/obj/item/screwdriver/power/wb32, src)
	SSwardrobe.provide_type(/obj/item/crowbar/power/wb32, src)
	SSwardrobe.provide_type(/obj/item/weldingtool/abductor/wb32, src)
	SSwardrobe.provide_type(/obj/item/multitool/abductor/wb32, src)
	SSwardrobe.provide_type(/obj/item/stack/cable_coil, src)
	SSwardrobe.provide_type(/obj/item/extinguisher/mini, src)
	SSwardrobe.provide_type(/obj/item/analyzer/ranged, src)

/datum/outfit/debug/bst //Debug objs
	name = "Bluespace Tech"
	uniform = /obj/item/clothing/under/syndicate/combat
	belt = /obj/item/storage/belt/utility/chief/full/debug
	shoes = /obj/item/clothing/shoes/combat/debug
	id = /obj/item/card/id/advanced/debug/bst
	box = /obj/item/storage/box/debugtools

/datum/outfit/admin/bst //Debug objs plus modsuit
	name = "Bluespace Tech (MODsuit)"
	uniform = /obj/item/clothing/under/syndicate/combat
	belt = /obj/item/storage/belt/utility/chief/full/debug
	shoes = /obj/item/clothing/shoes/combat/debug
	id = /obj/item/card/id/advanced/debug/bst
	box = /obj/item/storage/box/debugtools
