// Base //
/datum/outfit/highcomm
	name = "Syndicate Outfit Base"
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/highcomm/post_equip(mob/living/carbon/human/syndicate, visualsOnly = FALSE)
	syndicate.faction |= ROLE_SYNDICATE
	var/obj/item/card/id/id_card = syndicate.wear_id
	if(istype(id_card))
		id_card.registered_name = syndicate.real_name
		id_card.update_label()
		id_card.update_icon()

	return ..()

/// Admiral
/datum/outfit/highcomm/admiral
	name = "Syndicate Admiral"
	uniform = /obj/item/clothing/under/rank/captain/skyrat/utility/syndicate
	ears = /obj/item/radio/headset/syndicate_universal
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/storage/backpack/satchel/fireproof
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	head = /obj/item/clothing/head/hos/beret/syndicate
	belt = /obj/item/storage/belt/military/assault
	id = /obj/item/card/id/advanced/chameleon/black/highcomm
	id_trim = /datum/id_trim/admin/syndicate/admiral
	implants = list(/obj/item/implant/weapons_auth)
