/obj/item/sizebrick
	name = "NT Resizer"
	desc = "Affectionally called 'the brick', This NT product is a off cast from their normal size tools used for keeping people in jobs. This tool can be used to change ones size via the dial on the side, and the big purple gem embeded in the front."
	icon = 'modular_skyrat/modules/size_gear/icons/brick.dmi'
	icon_state = "size_brick"
	//inhand_icon_state = "inhand"
	// lefthand_file = 'modular_skyrat/modules/size_gear/icons/inhand_left.dmi'
	// righthand_file = 'modular_skyrat/modules/size_gear/icons/inhand_right.dmi'
	w_class = WEIGHT_CLASS_SMALL

/obj/item/sizebrick/attack_self(mob/user, list/modifiers)
    . = ..()
    sizechange(user)

/obj/item/sizebrick/proc/sizechange(mob/living/carbon/human/H)
    var/size_select = tgui_input_number(usr, "Put the desired size (60-300%)", "Set Size", 100, 300, 60)
    size_select /= 100
    if (H.size_multiplier == size_select)
        to_chat(H, "<span class='warning'>The devices buzzes, your selected size is the same as your current.</span>")
        playsound(H, 'sound/machines/buzz-sigh.ogg', 50, 1)
        return
    to_chat(H, "<span class='warning'>The devices hums as it charges up, please wait for it to finish.</span>")
    if(!do_after(H, 5 SECONDS))
        to_chat(H, "<span class='warning'>You need to stay still while it charges up!</span>")
        return
    if (H.size_multiplier > size_select)
        playsound(H, 'sound/effects/magic.ogg', 50, 1)
        flash_lighting_fx(3, 3, LIGHT_COLOR_PURPLE)
        H.visible_message("<span class='warning'>A flash of purple light engulfs [H] as they shrink in size!</span>","<span class='notice'>You feel warm for a moment, before everything around you starts growing...</span>")
    else
        playsound(H,'sound/weapons/emitter2.ogg', 50, 1)
        flash_lighting_fx(3, 3, LIGHT_COLOR_YELLOW)
        H.visible_message("<span class='warning'>Golden light engulfs [H], and they grow in height!</span>","<span class='notice'>Energy rushes through your body, and you grow in size!</span>")
    H.set_size(size_select)
