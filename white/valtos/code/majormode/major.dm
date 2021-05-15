GLOBAL_VAR_INIT(major_mode_active, FALSE)

/datum/major_mode
	var/name = "основной режим"
	var/required_players = 0
	var/announce_after 	 = 5 MINUTES
	var/fail_after 		 = 1 HOURS
	var/announce_type 	 = "announce"
	var/announce_text 	 = "Работать."
	var/is_done 		 = FALSE

/datum/major_mode/New()
	spawn(announce_after)
		announce_mode()
	spawn(fail_after + announce_after)
		if(!is_done)
			fail_completion()

/datum/major_mode/proc/announce_mode()
	switch(announce_type)
		if("announce")
			print_command_report(announce_text, "Срочное задание", announce=FALSE)
			priority_announce("Станция, вам поручено задание особой важности. Постарайтесь выполнить его точно в срок. Требования распечатаны на всех коммуникационных консолях.", "Срочное задание", 'sound/ai/announcer/alert.ogg')
		if("message")
			print_command_report(announce_text, "Срочное задание", announce=FALSE)

/datum/major_mode/proc/generate_quest()
	announce_text = "Работать."
	return

/datum/major_mode/proc/check_completion()
	return TRUE

/datum/major_mode/proc/fail_completion()
	return

/client/proc/toggle_major_mode()
	set name = " ? Переключить ММ (тест)"
	set category = "Дбг"

	GLOB.major_mode_active = !GLOB.major_mode_active

	message_admins("[ADMIN_LOOKUPFLW(usr)] переключает MAJOR MODE в положение [GLOB.major_mode_active ? "ВКЛ" : "ВЫКЛ"].")
	log_admin("[key_name(usr)] переключает MAJOR MODE в положение [GLOB.major_mode_active ? "ВКЛ" : "ВЫКЛ"].")
