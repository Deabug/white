SUBSYSTEM_DEF(adjacent_air)
	name = "Atmos Adjacency"
	flags = SS_BACKGROUND
	runlevels = RUNLEVEL_GAME | RUNLEVEL_POSTGAME
	wait = 10
	priority = FIRE_PRIORITY_ATMOS_ADJACENCY
	var/list/queue = list()
	var/list/disable_queue = list()

/datum/controller/subsystem/adjacent_air/stat_entry(msg)
#ifdef TESTING
	msg = "P:[length(queue)], S:[GLOB.atmos_adjacent_savings[1]], T:[GLOB.atmos_adjacent_savings[2]]"
#else
	msg = "P:[length(queue)]"
#endif
	return ..()

/datum/controller/subsystem/adjacent_air/Initialize()
	while(length(queue))
		fire(mc_check = FALSE)
	return ..()

/datum/controller/subsystem/adjacent_air/fire(resumed = FALSE, mc_check = TRUE)

	var/list/disable_queue = src.disable_queue

	while (length(disable_queue))
		var/turf/terf = disable_queue[1]
		var/arg = disable_queue[terf]
		disable_queue.Cut(1,2)

		terf.ImmediateDisableAdjacency(arg)

		if(mc_check)
			if(MC_TICK_CHECK)
				return
		else
			CHECK_TICK

	var/list/queue = src.queue

	while (length(queue))
		var/turf/currT = queue[1]
		var/goal = queue[currT]
		queue.Cut(1,2)

		currT.ImmediateCalculateAdjacentTurfs()
		if(goal == MAKE_ACTIVE)
			SSair.add_to_active(currT)
		else if(goal == KILL_EXCITED)
			SSair.add_to_active(currT, TRUE)

		if(mc_check)
			if(MC_TICK_CHECK)
				break
		else
			CHECK_TICK
