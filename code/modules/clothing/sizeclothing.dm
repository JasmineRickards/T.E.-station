//Clothing vars and procs
/obj/item/clothing	
	var/normalize_size = 1 //This number is used as the "normal" height people will be given when wearing one of these accessories
	var/natural_size = null //The value of the wearer's body_size var in prefs. Unused for now.
	var/recorded_size = null //the user's height prior to equipping
	///Used to keep track if we have the gigantism or dwarfism for use in the size clothing.
	var/macro_or_micro = 0 // 1 = dwarf 2 = giant

//For applying a normalization
/obj/item/clothing/proc/normalize_mob_size(mob/living/carbon/human/H)
	if(H.normalized) //First we make a check to see if they're already normalized, from wearing another article of SynTech jewelry
		to_chat(H, "<span class='warning'>This accessory buzzes, being overwritten by another.</span>")
		playsound(H, 'sound/machines/buzz-sigh.ogg', 50, 1)
		return
	if(H.size_multiplier == normalize_size) //Are they already at 100% scale?
		to_chat(H, "<span class='warning'>This accessory buzzes, you're already an proper size.</span>")
		playsound(H, 'sound/machines/buzz-sigh.ogg', 50, 1)
		return
	recorded_size = H.size_multiplier //If not, grab their current size
	playsound(H, 'sound/effects/magic.ogg', 50, 1)
	flash_lighting_fx(3, 3, LIGHT_COLOR_PURPLE)
	H.visible_message("<span class='warning'>A flash of purple light engulfs [H], before they change to normal!</span>","<span class='notice'>You feel warm for a moment, before everything scales to your size...</span>")
	H.set_size(normalize_size) //Then apply the size
	H.normalized = TRUE //And set normalization
	if(HAS_TRAIT(H, TRAIT_GIANT))
		macro_or_micro = 2
	if(HAS_TRAIT(H, TRAIT_DWARF))
		macro_or_micro = 1
//For removing a normalization, and reverting back to normal
/obj/item/clothing/proc/denormalize_mob_size(mob/living/carbon/human/H)
	if(!recorded_size)
		return

	if(!macro_or_micro)
		if(HAS_TRAIT(H, TRAIT_GIANT))
			recorded_size *= 1.25
		else if(HAS_TRAIT(H, TRAIT_DWARF))
			recorded_size *= 0.8
	else if(macro_or_micro == 1)
		if(!HAS_TRAIT(H, TRAIT_DWARF))
			recorded_size *= 1.25
			macro_or_micro = 0
		if(HAS_TRAIT(H, TRAIT_GIANT))
			recorded_size *= 1.25
			macro_or_micro = 2
	else
		if(!HAS_TRAIT(H, TRAIT_GIANT))
			recorded_size *= 0.8
		if(HAS_TRAIT(H, TRAIT_DWARF))
			recorded_size *= 0.8

	if(H.normalized) //sanity check
		playsound(H,'sound/weapons/emitter2.ogg', 50, 1)
		flash_lighting_fx(3, 3, LIGHT_COLOR_YELLOW)
		H.visible_message("<span class='warning'>Golden light engulfs [H], and they shoot back to their default height!</span>","<span class='notice'>Energy rushes through your body, and you return to normal.</span>")
		H.set_size(recorded_size)
		H.normalized = FALSE
	recorded_size = null


//For storing normalization on mobs
/mob/living
	var/normalized = FALSE
	//normalized is a check for instances where more than one accessory of jewelry is worn. For all intensive purposes, only the first worn accessory stores the user's size.
	//Anything else is just extra.

//Clothing below. Code could be compressed more, but until I make jewelry slots, this will do. -Dahl

//GLOVE SLOT ITEMS...
//SynTech ring
/obj/item/clothing/gloves/ring/syntech
	name = "normalizer ring"
	desc = "An inexpensive device intended to normalize the sizes of workers of non standard sizes. Has small NT markings, indicating NanoTrasen origin, given it's intent to assist the various species that seek work. The purple gem twinkles and gives off a low glow."
	icon = 'icons/obj/clothing/sizeaccessories.dmi'
	icon_state = "size_ring"
	worn_icon_state = "sring"
//	item_state = "sring" //No use in a unique sprite since it's just one pixel
	w_class = WEIGHT_CLASS_TINY
	body_parts_covered = 0
	clothing_traits = list(TRAIT_FINGERPRINT_PASSTHROUGH)
	strip_delay = 40
	//These are already defined under the parent ring, but I wanna leave em here for reference purposes

//For glove slots
/obj/item/clothing/gloves/ring/syntech/equipped(mob/living/user, slot)
	..()
	if(ishuman(user))
		var/mob/living/carbon/human/human_target = user
		if(slot == ITEM_SLOT_GLOVES)
			normalize_mob_size(human_target)

/obj/item/clothing/gloves/ring/syntech/dropped(mob/living/user, slot)
	..()
	if(ishuman(user))
		var/mob/living/carbon/human/human_target = user
		if(human_target.normalized)
			denormalize_mob_size(human_target)



//SynTech Wristband
/obj/item/clothing/gloves/ring/syntech/band
	name = "normalizer wristband"
	desc = "An inepensive wristband intended to normalize the sizes of working of non standard sizes. The sleek white sheel with a small purple screen baring NT markings, indicating it's origin, given it's intent to assist the various species that seek work. The small screen attached to it is abuzz with information."
	icon_state = "wristband"
//	item_state = "syntechband"


//NECK SLOT ITEMS...
//Syntech Pendant
/obj/item/clothing/neck/syntech
	name = "normalizer pendant"
	desc = "A purple jewl cast in a silver pendant, sporting the markings of NT on it's rear face. It will normalize the size of non standard sized workers. NanoTrasen designed and provided for assisting various species that seek work."
	icon = 'icons/obj/clothing/sizeaccessories.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/neck.dmi'
	icon_state = "pendant"
//	item_state = "pendant"

//For neck items
/obj/item/clothing/neck/syntech/equipped(mob/living/user, slot)
	..()
	if(ishuman(user))
		var/mob/living/carbon/human/human_target = user
		if(slot == ITEM_SLOT_NECK)
			normalize_mob_size(human_target)

/obj/item/clothing/neck/syntech/dropped(mob/living/user, slot)
	..()
	if(ishuman(user))
		var/mob/living/carbon/human/human_target = user
		if(human_target.normalized)
			denormalize_mob_size(human_target)

//Syntech Choker
/obj/item/clothing/neck/syntech/choker
	name = "normalizer choker"
	desc = "A sleek, tight fitting choker with a thin purple gem running along the front. The chocker has NT markings, indicating it's origin as a product of the company, designed and given out to assist and help workers, by making them larger, or smaller, to help with those species that seek work."
	icon_state = "choker"


//Syntech Collar
/obj/item/clothing/neck/syntech/collar
	name = "normalizer collar"
	desc = "A cute pet collar, that seems to be fitted from other NT branded size products. There is a small gem encased in a gold shell at the front with 'NanoTrasen' engraved within the metal. It will normalize the size of the wearer, much like the products it's made from, which are intended to help species of various sizes seek work. The purple gem up front gives off a low glow."
	icon_state = "collar"

