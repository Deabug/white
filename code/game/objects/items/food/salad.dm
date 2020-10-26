//this category is very little but I think that it has great potential to grow
////////////////////////////////////////////SALAD////////////////////////////////////////////
/obj/item/food/salad
	icon = 'icons/obj/food/soupsalad.dmi'
	trash_type = /obj/item/reagent_containers/glass/bowl
	bite_consumption = 3
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(/datum/reagent/consumable/nutriment = 7, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("листья" = 1)
	foodtypes = VEGETABLES
	eatverbs = list("devour","nibble","gnaw","gobble","chomp") //who the fuck gnaws and devours on a salad

/obj/item/food/salad/aesirsalad
	name = "\improper Aesir salad"
	desc = "Probably too incredible for mortal men to fully enjoy."
	icon_state = "aesirsalad"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8, /datum/reagent/medicine/omnizine = 10, /datum/reagent/consumable/nutriment/vitamin = 12)
	tastes = list("листья" = 1)
	foodtypes = VEGETABLES | FRUIT

/obj/item/food/salad/herbsalad
	name = "herb salad"
	desc = "A tasty salad with apples on top."
	icon_state = "herbsalad"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("листья" = 1, "яблоки" = 1)
	foodtypes = VEGETABLES | FRUIT

/obj/item/food/salad/validsalad
	name = "valid salad"
	desc = "It's just an herb salad with meatballs and fried potato slices. Nothing suspicious about it."
	icon_state = "validsalad"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/doctor_delight = 8, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("листья" = 1, "картоха" = 1, "мясо" = 1, "валиды" = 1)
	foodtypes = VEGETABLES | MEAT | FRIED | JUNKFOOD | FRUIT

/obj/item/food/salad/oatmeal
	name = "oatmeal"
	desc = "A nice bowl of oatmeal."
	icon_state = "oatmeal"
	food_reagents = list(/datum/reagent/consumable/nutriment = 11, /datum/reagent/consumable/milk = 10, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("овёс" = 1, "молоко" = 1)
	foodtypes = DAIRY | GRAIN | BREAKFAST

/obj/item/food/salad/fruit
	name = "fruit salad"
	desc = "Your standard fruit salad."
	icon_state = "fruitsalad"
	food_reagents = list(/datum/reagent/consumable/nutriment = 9, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("фрукты" = 1)
	foodtypes = FRUIT

/obj/item/food/salad/jungle
	name = "jungle salad"
	desc = "Exotic fruits in a bowl."
	icon_state = "junglesalad"
	food_reagents = list(/datum/reagent/consumable/nutriment = 11, /datum/reagent/consumable/banana = 5, /datum/reagent/consumable/nutriment/vitamin = 7)
	tastes = list("фрукты" = 1, "джунгли" = 1)
	foodtypes = FRUIT

/obj/item/food/salad/citrusdelight
	name = "citrus delight"
	desc = "Citrus overload!"
	icon_state = "citrusdelight"
	food_reagents = list(/datum/reagent/consumable/nutriment = 11, /datum/reagent/consumable/nutriment/vitamin = 7)
	tastes = list("кислинка" = 1, "листья" = 1)
	foodtypes = FRUIT

/obj/item/food/salad/ricebowl
	name = "ricebowl"
	desc = "A bowl of raw rice."
	icon_state = "ricebowl"
	microwaved_type = /obj/item/food/salad/boiledrice
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("рис" = 1)
	foodtypes = GRAIN | RAW

/obj/item/food/salad/boiledrice
	name = "boiled rice"
	desc = "A warm bowl of rice."
	icon_state = "boiledrice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("рис" = 1)
	foodtypes = GRAIN

/obj/item/food/salad/ricepudding
	name = "rice pudding"
	desc = "Everybody loves rice pudding!"
	icon_state = "ricepudding"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8, /datum/reagent/consumable/sugar = 3, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("рис" = 1, "сладость" = 1)
	foodtypes = GRAIN | DAIRY

/obj/item/food/salad/ricepork
	name = "rice and pork"
	desc = "Well, it looks like pork..."
	icon_state = "riceporkbowl"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("рис" = 1, "мясо" = 1)
	foodtypes = GRAIN | MEAT

/obj/item/food/salad/eggbowl
	name = "egg bowl"
	desc = "A bowl of rice with a fried egg."
	icon_state = "eggbowl"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8, /datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("рис" = 1, "яйцо" = 1)
	foodtypes = GRAIN | MEAT //EGG = MEAT -NinjaNomNom 2017

/obj/item/food/salad/edensalad
	name = "\improper Salad of Eden"
	desc = "A salad brimming with untapped potential."
	icon_state = "edensalad"
	food_reagents = list(/datum/reagent/consumable/nutriment = 7, /datum/reagent/consumable/nutriment/vitamin = 5, /datum/reagent/medicine/earthsblood = 3, /datum/reagent/medicine/omnizine = 5, /datum/reagent/drug/happiness = 2)
	tastes = list("extreme bitterness" = 3, "hope" = 1)
	foodtypes = VEGETABLES

/obj/item/food/salad/gumbo
	name = "black eyed gumbo"
	desc = "A spicy and savory meat and rice dish."
	icon_state = "gumbo"
	food_reagents = list(/datum/reagent/consumable/capsaicin = 2, /datum/reagent/consumable/nutriment/vitamin = 3, /datum/reagent/consumable/nutriment = 5)
	tastes = list("building heat" = 2, "savory meat and vegtables" = 1)
	foodtypes = GRAIN | MEAT | VEGETABLES


/obj/item/reagent_containers/glass/bowl
	name = "bowl"
	desc = "A simple bowl, used for soups and salads."
	icon = 'icons/obj/food/soupsalad.dmi'
	icon_state = "bowl"
	reagent_flags = OPENCONTAINER
	custom_materials = list(/datum/material/glass = 500)
	w_class = WEIGHT_CLASS_NORMAL
