/obj/structure/bed/double
	name = "double bed"
	icon_state = "doublebed"
	icon = 'modular_skyrat/modules/aesthetics/furniture/furniture.dmi'

/obj/item/bedsheet/double
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	icon_state = "doublesheet"
	slot_flags = null

/obj/item/bedsheet/blue/double
	icon_state = "doublesheetblue"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/green/double
	icon_state = "doublesheetgreen"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null


/obj/item/bedsheet/orange/double
	icon_state = "doublesheetorange"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/purple/double
	icon_state = "doublesheetpurple"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/rainbow/double //all the way across the sky.
	icon_state = "doublesheetrainbow"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/red/double
	icon_state = "doublesheetred"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/yellow/double
	icon_state = "doublesheetyellow"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/mime/double
	icon_state = "doublesheetmime"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/clown/double
	icon_state = "doublesheetclown"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/captain/double
	icon_state = "doublesheetcaptain"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/rd/double
	icon_state = "doublesheetrd"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/hos/double
	icon_state = "doublesheethos"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/hop/double
	icon_state = "doublesheethop"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/ce/double
	icon_state = "doublesheetce"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/brown/double
	icon_state = "doublesheetbrown"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/ian/double
	icon_state = "doublesheetian"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/centcom/double
	icon_state = "doublesheetcc"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/nanotrasen/double
	icon_state = "doublesheetNT"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/qm/double
	icon_state = "doublesheetqm"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null

/obj/item/bedsheet/cmo/double
	icon_state = "doublesheetCMO"
	icon = 'modular_skyrat/modules/aesthetics/furniture/bedsheets.dmi'
	slot_flags = null


/obj/structure/bed/huge
	name = "huge bed"
	desc = "A custom huge bed made from quite a bit of metal. Should be able to hold up your fat ass."
	buildstackamount = 30

/obj/structure/bed/huge/Initialize(mapload)
	. = ..()
	src.transform = src.transform.Scale(3)
	// src.transform = src.transform.Translate(0,32)

/obj/structure/bed/huge/post_buckle_mob(mob/living/target)
	target.pixel_y = target.base_pixel_y - (8 * target.size_multiplier)

/obj/structure/bed/double/huge
	name = "huge double bed"
	desc = "A luxurious double bed, for those too important for small dreams. Though this one is quite clearly tripple in size."
	buildstackamount = 50

/obj/structure/bed/double/huge/Initialize(mapload)
	. = ..()
	src.transform = src.transform.Scale(3)

/obj/structure/bed/double/huge/post_buckle_mob(mob/living/target)
	if(buckled_mobs.len > 1 && !goldilocks) //Push the second buckled mob a bit higher from the normal lying position
		target.pixel_y = target.base_pixel_y + (40 - (8 * target.size_multiplier))
		goldilocks = target
	else
		target.pixel_y = target.base_pixel_y - (8 * target.size_multiplier)


/obj/item/bedsheet/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/blue/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/green/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/orange/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/purple/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/rainbow/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/red/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/yellow/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/mime/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/clown/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/captain/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/rd/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/hos/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/hop/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/ce/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/brown/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/ian/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/centcom/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/nanotrasen/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/qm/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
/obj/item/bedsheet/cmo/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE


/obj/item/bedsheet/blue/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/green/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/grey/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/orange/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/purplev
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/patriot/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/rainbow/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/red/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/yellow/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/mime/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/clown/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/captain/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/rd/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/medical/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/cmo/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/hos/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/hop/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/ce/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/qm/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/chaplain/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/brown/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/black/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/centcom/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/syndie/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/cult/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/wiz/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/nanotrasen/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/ian/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/cosmos/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null



/obj/item/bedsheet/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/blue/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/green/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/grey/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/orange/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/purple/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/patriot/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/rainbow/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/red/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/yellow/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/mime/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/clown/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/captain/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/rd/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/medical/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/cmo/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/hos/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/hop/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/ce/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/qm/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/chaplain/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/brown/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/black/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/centcom/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/syndie/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/cult/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/wiz/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/nanotrasen/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/ian/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null
/obj/item/bedsheet/cosmos/double/huge
	bedsheet_type = BEDSHEET_DOUBLE_HUGE
	slot_flags = null

/obj/item/bedsheet/purple/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
/obj/item/bedsheet/huge
	bedsheet_type = BEDSHEET_SINGLE_HUGE
	slot_flags = null
