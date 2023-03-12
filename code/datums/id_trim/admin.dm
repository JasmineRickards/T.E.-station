/// Trim for admins and debug cards. Has every single access in the game.
/datum/id_trim/admin
	assignment = "Jannie"
	trim_state = "trim_janitor"
	department_color = COLOR_CENTCOM_BLUE
	subdepartment_color = COLOR_SERVICE_LIME

/datum/id_trim/admin/New()
	. = ..()
	// Every single access in the game, all on one handy trim.
	access = SSid_access.get_region_access_list(list(REGION_ALL_GLOBAL))

// Syndicate Debug Access Subtypes
/datum/id_trim/admin/syndicate
	assignment = "High Command Official"
	trim_state = "trim_syndicate"
	department_color = COLOR_ASSEMBLY_BLACK
	subdepartment_color = COLOR_SYNDIE_RED
	sechud_icon_state = SECHUD_SYNDICATE

/datum/id_trim/admin/syndicate/admiral
	assignment = "Admiral"
	trim_state = "trim_syndadmiral"

/// Trim for highlander cards, used during the highlander adminbus event.
/datum/id_trim/highlander
	assignment = "Highlander"
	trim_state = "trim_ert_deathcommando"
	department_color = COLOR_CENTCOM_BLUE
	subdepartment_color = COLOR_SERVICE_LIME

/datum/id_trim/highlander/New()
	. = ..()
	access = SSid_access.get_region_access_list(list(REGION_CENTCOM, REGION_ALL_STATION))
