// Base //
/datum/outfit/highcomm
	name = "Syndicate Outfit Base"
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/highcomm/post_equip(mob/living/carbon/human/syndie_scum)
	syndie_scum.faction |= ROLE_SYNDICATE

/// Admiral
/datum/outfit/highcomm/admiral
	name = "Syndicate Admiral"
	uniform = /obj/item/clothing/under/rank/captain/skyrat/utility/syndicate
	ears = /obj/item/radio/headset/syndicate/alt/universal
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/storage/backpack/satchel/fireproof
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate/winter
	belt = /obj/item/storage/belt/military/assault
	id = /obj/item/card/id/advanced/black/syndicate_command/crew_id
	implants = list(/obj/item/implant/weapons_auth)
