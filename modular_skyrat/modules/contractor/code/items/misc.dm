/obj/item/paper/contractor_guide
	name = "Contractor Guide"

/obj/item/paper/contractor_guide/Initialize(mapload)
	default_raw_text = {"<p>Welcome agent, congratulations on your new position as contractor. On top of your already assigned objectives,
			this kit will provide you contracts to take on for TC payments.</p>

			<p>You likely already have your Contractor MODSuit equipped. It has a built in chameleon module, which only works when the MODSuit is undeployed,
			but is highly useful for on-station infiltrations. We also provide your chameleon jumpsuit and mask, both of which can be changed
			to any form you need for the moment. The cigarettes are a special blend - it'll heal your injuries slowly overtime.</p>

			<p>Your standard issue contractor baton hits harder than the ones you might be used to, and likely be your go to weapon for kidnapping your
			targets. The three additional items have been randomly selected from what we had available. We hope they're useful to you for your mission.</p>

			<p>The contractor hub, available at the top right of the uplink, will provide you unique items and abilities. These are bought using Contractor Rep,
			with two Rep being provided each time you complete a contract.</p>

			<h3>Using the tablet</h3>
			<ol>
				<li>Open the Syndicate Contract Uplink program.</li>
				<li>Here, you can accept a contract, and redeem your TC payments from completed contracts.</li>
				<li>The payment number shown in brackets is the bonus you'll receive when bringing your target <b>alive</b>. You receive the
				other number regardless of if they were alive or dead.</li>
				<li>Contracts are completed by bringing the target to designated dropoff, calling for extraction, and putting them
				inside the pod.</li>
			</ol>

			<p>Be careful when accepting a contract. While you'll be able to see the location of the dropoff point, cancelling will make it
			unavailable to take on again.</p>
			<p>The tablet can also be recharged at any cell charger.</p>
			<h3>Extracting</h3>
			<ol>
				<li>Make sure both yourself and your target are at the dropoff.</li>
				<li>Call the extraction, and stand back from the drop point.</li>
				<li>If it fails, make sure your target is inside, and there's a free space for the pod to land.</li>
				<li>Grab your target, and drag them into the pod.</li>
			</ol>
			<h3>Ransoms</h3>
			<p>We need your target for our own reasons, but we ransom them back to your mission area once their use is served. They will return back
			from where you sent them off from in several minutes time. Don't worry, we give you a cut of what we get paid. We pay this into whatever
			ID card you have equipped, on top of the TC payment we give.</p>

			<p>Good luck agent. You can burn this document with the supplied lighter.</p>"}

	return ..()

/obj/item/pinpointer/crew/contractor
	name = "contractor pinpointer"
	desc = "A handheld tracking device that locks onto certain signals. Ignores suit sensors, but is much less accurate."
	icon_state = "pinpointer_syndicate"
	worn_icon_state = "pinpointer_black"
	minimum_range = 15
	has_owner = TRUE
	ignore_suit_sensor_level = TRUE

/obj/item/extraction_pack/contractor
	name = "black fulton extraction pack"
	icon = 'modular_skyrat/modules/contractor/icons/fulton.dmi'
	can_use_indoors = TRUE
	special_desc_requirement = EXAMINE_CHECK_CONTRACTOR
	special_desc = "A modified fulton pack that can be used indoors thanks to Bluespace technology. Favored by Syndicate Contractors."


/obj/item/paper/contractor_guide/midround
	name = "Contractor Guide"

/obj/item/paper/contractor_guide/midround/Initialize(mapload)
	default_raw_text = {"<p>Welcome agent, congratulations on successfully getting in range of the station.</p>

			<p>You likely already have your Contractor MODSuit equipped. It has a built in chameleon module, which only works when the MODSuit is undeployed,
			but is highly useful for on-station infiltrations. We also provide your chameleon jumpsuit and mask, both of which can be changed
			to any form you need for the moment. The cigarettes are a special blend - it'll heal your injuries slowly overtime.</p>

			<p>Your standard issue contractor baton can be found in the baton holster MODSuit module, it hits harder than the ones you might be used to,
			and will likely be your go to weapon for kidnapping your targets. We took the liberty of fully upgrading it beforehand, so don't worry about that.
			The three additional items have been randomly selected from what we had available. We hope they're useful to you for your mission.</p>

			<p>The contractor hub, available at the top right of the uplink, will provide you unique items and abilities. These are bought using Contractor Rep,
			with two Rep being provided each time you complete a contract.</p>

			<h3>Using the tablet</h3>
			<ol>
				<li>Open the Syndicate Contract Uplink program.</li>
				<li>Here, you can accept a contract, and redeem your TC payments from completed contracts.</li>
				<li>The payment number shown in brackets is the bonus you'll receive when bringing your target <b>alive</b>. You receive the
				other number regardless of if they were alive or dead.</li>
				<li>Contracts are completed by bringing the target to designated dropoff, calling for extraction, and putting them
				inside the pod.</li>
			</ol>

			<p>Be careful when accepting a contract. While you'll be able to see the location of the dropoff point, cancelling will make it
			unavailable to take on again.</p>
			<p>The tablet can also be recharged at any cell charger.</p>
			<h3>Extracting</h3>
			<ol>
				<li>Make sure both yourself and your target are at the dropoff.</li>
				<li>Call the extraction, and stand back from the drop point.</li>
				<li>If it fails, make sure your target is inside, and there's a free space for the pod to land.</li>
				<li>Grab your target, and drag them into the pod.</li>
			</ol>
			<h3>Ransoms</h3>
			<p>We need your target for our own reasons, but we ransom them back to your mission area once their use is served. They will return back
			from where you sent them off from in several minutes time. Don't worry, we give you a cut of what we get paid. We pay this into whatever
			ID card you have equipped, on top of the TC payment we give.</p>

			<p>Good luck agent. You can burn this document with the supplied lighter.</p>"}

	return ..()

/obj/item/paper/yggsrule
	name = "Yggsie's wargame rules"
	default_raw_text = {"## Wargame Rules.

			# Moving

			Each unit has its own moveset, Strike craft can move twice, Light ships
			 can move three times, Medium ships twice, and large ships just once.
			If a unit moves, and has not exhausted all available moves, can attack
			 another unit within range with just 1 attack. Using an attack
			will deplete any remaining moves the unit has.

			# Attacking

			Units must account for obstacles, especially at range. If a target is behind an obstacle,
			 your projectile will travel in a straight line,
			and hit the obstacle before the target. Missiles can be used to maneuver around targets,
			 but they only move two tiles per turn, and must
			move onto the tile of the target to hit. Missiles have 1 health, and die when fired upon.
			 Firing a missile counts as an attack move,
			and hitting a target will deal 2 damage. If a missile hits nothing for three full
			 turns, it will lose all fuel, and drift in its prior
			direction at 1 tile per turn.

			# Strike craft

			Strike craft when attacking, deals 1 damage per set of two vessels in a wing,
			 or individually, they deal just 1 damage.
			A wing of 6 strike craft, will deal 3 damage. These are also the only units that
			 can overlap another unit when ending their move.

			# Light vessels

			Light vessels can move three spaces, but can only attack within 1 range with direct fire weapons.

			# Medium vessels

			Medium vessels have a health pool of 2, a 2 range attack with direct fire weapons and a
			2 tile move option.

			# Large vessels - Cruisers

			Large vessels have 1 movement point, a health pool of 6, a 3 range direct attack, and
			 the option to fire 1 standard missile per turn. The missile can travel 2 tiles
			per turn.

			# Large vessels - Carriers

			Carriers have a health pool of 3, no direct attack option, a missile weapon, 1 movement point,
			 and 2 charges of point defence per turn. Point defence means
			it can kill a missile within 2 range, does not consume an attack or movement point. Every two
			turns, the carrier will create 1 strike craft unit.

			# Platforms

			Platforms cannot move, but have a two range direct attack, 2 health pool, and a missile weapon.

			# Stations

			Stations cannot move, have a 3 range direct attack, 6 health pool, and a missile weapon.

			#Obstacles

			While obstacles protect ships from direct fire provided it is between the two ships firing upon each
			other, each obstacle has a set amount of health. Dense fields have 3 health, and can be moved over.
			Standard asteroid fields has 2 health, and can be moved over. Small meteors have 3 health, and can
			be moved over. Large meteors have 5 health, and cannot be moved over."}
