
/// Called whenever the mob is to be resized or when lying/standing up for carbons.
/mob/living/update_transform()
	perform_update_transform() // carbon mobs do it differently than silicons and simple animals.
	size_multiplier = lying_angle ? transform.b : transform.a
	if(lying_angle > 180)
		size_multiplier *= -1
	previous_y_offset = lying_angle ? transform.c : transform.f
	if(lying_angle > 180)
		previous_y_offset *= -1
	SEND_SIGNAL(src, COMSIG_LIVING_POST_UPDATE_TRANSFORM) // ...and we want the signal to be sent last.

/mob/living/carbon/update_transform()
    ..()
    huge_size_handle()

/mob/living/proc/perform_update_transform()
	var/matrix/ntransform = matrix(transform) //aka transform.Copy()
	var/changed = FALSE

	if(resize != RESIZE_DEFAULT_SIZE)
		changed = TRUE
		ntransform.Scale(resize)
		resize = RESIZE_DEFAULT_SIZE

	if(changed)
		animate(src, transform = ntransform, time = 2, easing = EASE_IN|EASE_OUT)
