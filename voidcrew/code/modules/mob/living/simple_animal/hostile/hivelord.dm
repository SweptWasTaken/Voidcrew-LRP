/mob/living/simple_animal/hostile/asteroid/hivelord/legion/crystal
	name = "disfigured legion"
	desc = "Disfigured, contorted, and corrupted. This thing was once part of the legion, now it has a different vile and twisted allegiance."
	icon = 'voidcrew/icons/mob/lavaland/lavaland_monsters.dmi'
	icon_state = "disfigured_legion"
	icon_living = "disfigured_legion"
	icon_aggro = "disfigured_legion"
	icon_dead = "disfigured_legion"
	// VC MOB TODO: Wtf is difficulty
	//difficulty = 2
	brood_type = /mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/crystal
	loot = list(/obj/item/organ/regenerative_core/legion/crystal)

/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/crystal
	name = "disfigured legion"
	desc = "One of none."
	icon = 'voidcrew/icons/mob/lavaland/lavaland_monsters.dmi'
	icon_state = "disfigured_legion_head"
	icon_living = "disfigured_legion_head"
	icon_aggro = "disfigured_legion_head"
	icon_dead = "disfigured_legion_head"
	speed = 2

/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/crystal/death(gibbed)
	for(var/i in 0 to 5)
		var/obj/projectile/P = new /obj/projectile/goliath(get_turf(src))
		P.preparePixelProjectile(get_step(src, pick(GLOB.alldirs)), get_turf(src))
		/// VC MOB TODO: Undefined var
		//P.firer = source
		P.fire(i*(360/5))
	return ..()