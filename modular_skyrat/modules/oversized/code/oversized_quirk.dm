#define OVERSIZED_SPEED_SLOWDOWN 0.5
#define OVERSIZED_HUNGER_MOD 1.5
#define HUGE_SIZE_MACRO 1.5

// Before making any changes to oversized, please see the module's readme.md file

/datum/quirk/oversized
	name = "Oversized"
//	desc = "You, for whatever reason, are FAR too tall, and will encounter some rough situations because of it."
	desc = "You, for whatever reason, are much larger then normal, even shrinking down won't save you from your heft."
	gain_text = span_notice("I feel... heavy.")
	lose_text = span_notice("I feel a bit lighter on my feet!")
	medical_record_text = "Patient is abnormally large."
	value = 0
	mob_trait = TRAIT_OVERSIZED
	icon = "expand-arrows-alt"
	veteran_only = TRUE

/datum/quirk/oversized/add()
	var/mob/living/carbon/human/human_holder = quirk_holder
	human_holder.dna.update_body_size()
	if(HAS_TRAIT(human_holder, TRAIT_HUGE_SIZE))
		var/obj/item/bodypart/arm/left/left_arm = human_holder.get_bodypart(BODY_ZONE_L_ARM)
		if(left_arm)
			left_arm.unarmed_damage_low += OVERSIZED_HARM_DAMAGE_BONUS
			left_arm.unarmed_damage_high += OVERSIZED_HARM_DAMAGE_BONUS

		var/obj/item/bodypart/arm/right/right_arm = human_holder.get_bodypart(BODY_ZONE_R_ARM)
		if(right_arm)
			right_arm.unarmed_damage_low += OVERSIZED_HARM_DAMAGE_BONUS
			right_arm.unarmed_damage_high += OVERSIZED_HARM_DAMAGE_BONUS

	human_holder.blood_volume_normal = BLOOD_VOLUME_OVERSIZED
	human_holder.physiology.hunger_mod *= OVERSIZED_HUNGER_MOD //50% hungrier
	var/speed_mod = human_holder.dna.species.speedmod + OVERSIZED_SPEED_SLOWDOWN
	human_holder.add_or_update_variable_movespeed_modifier(/datum/movespeed_modifier/species, multiplicative_slowdown = speed_mod)
	var/obj/item/organ/internal/stomach/old_stomach = human_holder.getorganslot(ORGAN_SLOT_STOMACH)
	if(!(old_stomach.type == /obj/item/organ/internal/stomach))
		return
	old_stomach.Remove(human_holder, special = TRUE)
	qdel(old_stomach)
	var/obj/item/organ/internal/stomach/oversized/new_stomach = new //YOU LOOK HUGE, THAT MUST MEAN YOU HAVE HUGE GUTS! RIP AND TEAR YOUR HUGE GUTS!
	new_stomach.Insert(human_holder, special = TRUE)
	to_chat(human_holder, span_warning("You feel your massive stomach rumble!"))

/datum/quirk/oversized/remove()
	var/mob/living/carbon/human/human_holder = quirk_holder
	human_holder.dna.update_body_size()
	human_holder.blood_volume_normal = BLOOD_VOLUME_NORMAL
	human_holder.physiology.hunger_mod /= OVERSIZED_HUNGER_MOD
	var/speedmod = human_holder.dna.species.speedmod
	human_holder.add_or_update_variable_movespeed_modifier(/datum/movespeed_modifier/species, multiplicative_slowdown=speedmod)

/mob/living/carbon/proc/huge_size_handle() //This handles adding the trait and removing it for flags. And handling the changing of speed mods and such.
	if(!ishuman(src) || isdummy(src))
		return
	if(size_multiplier > HUGE_SIZE_MACRO)
		if(!HAS_TRAIT(src, TRAIT_HUGE_SIZE))
			ADD_TRAIT(src, TRAIT_HUGE_SIZE, TRAIT_GENERIC)
			mob_size = MOB_SIZE_LARGE
			if(HAS_TRAIT(src, TRAIT_OVERSIZED))
				var/obj/item/bodypart/arm/left/left_arm = get_bodypart(BODY_ZONE_L_ARM)
				if(left_arm)
					left_arm.unarmed_damage_low += OVERSIZED_HARM_DAMAGE_BONUS
					left_arm.unarmed_damage_high += OVERSIZED_HARM_DAMAGE_BONUS

				var/obj/item/bodypart/arm/right/right_arm = get_bodypart(BODY_ZONE_R_ARM)
				if(right_arm)
					right_arm.unarmed_damage_low += OVERSIZED_HARM_DAMAGE_BONUS
					right_arm.unarmed_damage_high += OVERSIZED_HARM_DAMAGE_BONUS

	else
		if(HAS_TRAIT(src, TRAIT_HUGE_SIZE))
			REMOVE_TRAIT(src, TRAIT_HUGE_SIZE, TRAIT_GENERIC)
			mob_size = MOB_SIZE_HUMAN
			if(HAS_TRAIT(src, TRAIT_OVERSIZED))
				var/obj/item/bodypart/arm/left/left_arm = get_bodypart(BODY_ZONE_L_ARM)
				if(left_arm)
					left_arm.unarmed_damage_low -= OVERSIZED_HARM_DAMAGE_BONUS
					left_arm.unarmed_damage_high -= OVERSIZED_HARM_DAMAGE_BONUS

				var/obj/item/bodypart/arm/right/right_arm = get_bodypart(BODY_ZONE_R_ARM)
				if(right_arm)
					right_arm.unarmed_damage_low -= OVERSIZED_HARM_DAMAGE_BONUS
					right_arm.unarmed_damage_high -= OVERSIZED_HARM_DAMAGE_BONUS


#undef HUGE_SIZE_MACRO
#undef OVERSIZED_HUNGER_MOD
#undef OVERSIZED_SPEED_SLOWDOWN
