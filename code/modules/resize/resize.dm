/mob/living
    var/size_multiplier //read only, keeps track of size of mob.
    var/previous_y_offset = 0 //read only, keeps trap of our y offset

/mob/living/proc/set_size(input)
    if(!input)
        return
    if(!size_multiplier)
        size_multiplier = transform.a
    resize = (input/size_multiplier)
    update_transform()
    maptext_height = 32 * size_multiplier // Adjust runechat height

/mob/living/proc/add_size(input) //Not used but avliable as a proc for later.
    if(!input)
        return
    size_multiplier = transform.a
    var/value = size_multiplier + input
    set_size(value)
