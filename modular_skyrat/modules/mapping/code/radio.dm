/obj/item/encryptionkey/headset_syndicate/cybersun
	name = "cybersun radio encryption key"
	channels = list(RADIO_CHANNEL_CYBERSUN = 1)
	independent = TRUE

/obj/item/encryptionkey/headset_syndicate/interdyne
	name = "interdyne radio encryption key"
	channels = list(RADIO_CHANNEL_INTERDYNE = 1)
	independent = TRUE

/obj/item/encryptionkey/headset_syndicate/universal
	name = "universal syndicate radio encryption key"
	independent = TRUE
	syndie = TRUE
	channels = list(RADIO_CHANNEL_CYBERSUN = 1, RADIO_CHANNEL_INTERDYNE = 1, RADIO_CHANNEL_GUILD = 1, RADIO_CHANNEL_SYNDICATE = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_syndicate
	greyscale_colors = "#171717#990000"

/obj/item/encryptionkey/headset_syndicate/guild
	name = "private radio encryption key"
	channels = list(RADIO_CHANNEL_GUILD = 1)
	independent = TRUE

/obj/item/encryptionkey/headset_cargo/tarkon
	name = "tarkon industry radio encryption key"
	channels = list(RADIO_CHANNEL_TARKON = 1)
	independent = TRUE
