/// This is an antag datum for the same reason ERTs and brainwashing and all that jazz is.
/// Mostly a shell - see implant_compliance.dm for the rest.

/datum/antagonist/compliance
	name = "\improper Compliance Implanted"
	job_rank = ROLE_COMPLIANT
	roundend_category = "compliance implanted"
	show_in_antagpanel = FALSE
	antagpanel_category = "Other"
	show_name_in_check_antagonists = TRUE
	suicide_cry = "FOR... SOMEONE!!"

/datum/antagonist/compliance/proc/forge_objectives(var/implant_text)
	var/datum/objective/brainwashing/brainwash_objective = new /datum/objective/brainwashing
	brainwash_objective.owner = owner
	brainwash_objective.explanation_text = implant_text
	objectives += brainwash_objective

