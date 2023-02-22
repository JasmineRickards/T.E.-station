/obj/item/implant/compliance
	name = "compliance implant"
	actions_types = null
	/// What company is this implant calibrated for?
	var/company = "Nanotrasen"
	/// What department is this implant calibrated for?
	var/department = "Security"
	/// (Emagged Only) - What person is this implant calibrated for?
	var/calibrated_person = "John Doe"
	/// The finished brainwash message.
	var/brainwash_message = "You feel inclined to contact a technical support representative..."

/obj/item/implant/compliance/get_data()
	var/dat = {"<b>Implant Specifications:</b><BR>
				<b>Name:</b> Compliance Implant<BR>
				<b>Life:</b> Immediately self-destructs upon payload delivery.<BR>
				"}
	return dat

/obj/item/implant/compliance/implant(mob/living/target, mob/user, silent = FALSE, force = FALSE)
	if(obj_flags & EMAGGED)
		brainwash_message = "Whispers in the back of your skull make you feel uneasy, make you feel wrong. Yet, the whispers cease as [calibrated_person] \
							is near, a light in the darkness. There's an incessant, nagging thankfulness in you as you think of them - you must help them in kind, at all costs."
	else
		brainwash_message = "You feel at peace - a kinship in the fires of your heart feels a sympathy for [company] and their motives. \
								With this newfound peace, you feel, deeply, that you should co-operate with members of their [department] department."
	brainwash(target, brainwash_message)
	message_admins("[ADMIN_LOOKUPFLW(user)] implanted [ADMIN_LOOKUPFLW(target)] with a compliance implant. Brainwashing Message: '[brainwash_message]'.")
	qdel(src)

/// Implant Case, along with the modification code.
/obj/item/implantcase/compliance
	name = "implant case - 'Compliance'"
	desc = "A glass case containing a compliace implant. Use in-hand to customize to YOUR situation! \
			Ethicality not guaranteed, please consult a licensed Psychiatrist before use."
	imp_type = /obj/item/implant/compliance

/obj/item/implantcase/compliance/attack_self(mob/user, list/modifiers)
	if(istype(imp, /obj/item/implant/compliance))
		var/obj/item/implant/compliance/our_implant = imp
		if(obj_flags & EMAGGED)
			var/input = tgui_input_text(user, "What person do you wish to set this implant to be loyal to?", "Set Loyalty", "John Doe", MAX_NAME_LEN)
			if(isnull(input))
				return
			our_implant.calibrated_person = input

		else
			var/input = tgui_input_text(user, "What corporation do you wish to set this implant to be loyal to? I.E. Nanotrasen, Interdyne Pharmaceuticals, Cybersun Industries...", "Set Corporation", "Nanotrasen", MAX_NAME_LEN)
			if(isnull(input))
				return
			our_implant.company = input
			input = tgui_input_text(user, "What department do you wish to set this implant to be compliant with? I.E. Security, Science, Medical", "Set Department", "Security", MAX_NAME_LEN)
			if(isnull(input))
				return
			our_implant.department = input

/obj/item/implantcase/compliance/emag_act()
	if(obj_flags & EMAGGED)
		return
	obj_flags |= EMAGGED

