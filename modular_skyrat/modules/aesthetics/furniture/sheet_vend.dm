/obj/machinery/vending/sheets
    name = "Sheet Vender"
    desc = "A machine for vending all your bedsheet needs!"
    icon = 'icons/obj/structures.dmi'
    icon_state = "linenbin-full"
    products = list(
		/obj/item/bedsheet/random = 10,
		/obj/item/bedsheet/random/double = 10,
		/obj/item/bedsheet/random/singe_huge = 10,
        /obj/item/bedsheet/random/double_huge = 10,
	)
    default_price = 150
