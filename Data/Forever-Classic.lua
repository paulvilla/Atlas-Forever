--[[
	Atlas Forever Dungeons
	WoW Forever (Classic Era) exclusive instances
--]]

local FOLDER_NAME, private = ...

private.addon_name = "Atlas_Forever"
private.module_name = "Forever"

local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")
local addon = Atlas:NewModule(private.module_name)

local db = {}
addon.db = db

local WHIT = "|cffffffff"

--------------------------------------------------------------
-- Eastern Kingdoms Instances (Forever)
--------------------------------------------------------------
db.AtlasMaps = {
	HallOfThanes = {
		ZoneName = { ALC["ATLAS_FOREVER_HALL_OF_THANES"] or "Hall of Thanes (Forever)" },
		Location = { ALC["ATLAS_FOREVER_HALL_OF_THANES_LOC"] or "Deep Below Ironforge" },
		LevelRange = "13-18",
		MinLevel = 13,
		MaxLevel = 18,
		PlayerLimit = "5",
		Acronym = "HoT",
		Module = "Atlas_Forever",
		{ WHIT.." 1) Faldrim Anvilmar" },
		{ WHIT.." 2) Infurnus" },
		{ WHIT.." 3) Plunder" },
		{ WHIT.." 4) Durgen Dirgehammer" },
	},

	RuinsOfLordaeron = {
		ZoneName = { ALC["ATLAS_FOREVER_RUINS_OF_LORDAERON"] or "Ruins of Lordaeron (Forever)" },
		Location = { ALC["ATLAS_FOREVER_RUINS_OF_LORDAERON_LOC"] or "Tirisfal Glades" },
		LevelRange = "15-20",
		MinLevel = 15,
		MaxLevel = 20,
		PlayerLimit = "5",
		Acronym = "RoL",
		Module = "Atlas_Forever",
		{ WHIT.." 1) Witherfang" },
		{ WHIT.." 2) The Abandoned" },
		{ WHIT.." 3) The Butcher" },
		{ WHIT.." 4) Rath'mael" },
		{ WHIT.." 5) Lordaeron Captain" },
		{ WHIT.." 6) Viktor the Vile" },
		{ WHIT.." 7) Bjork" },
	},

	ExcavationSite = {
		ZoneName = { ALC["ATLAS_FOREVER_EXCAVATION_SITE"] or "Excavation Site (Forever)" },
		Location = { ALC["ATLAS_FOREVER_EXCAVATION_SITE_LOC"] or "Eastern Kingdoms" },
		LevelRange = "15-25",
		MinLevel = 15,
		MaxLevel = 25,
		PlayerLimit = "5",
		Acronym = "ES",
		Module = "Atlas_Forever",
		{ WHIT.." 1) Saltspine" },
		{ WHIT.." 2) Shadetooth" },
		{ WHIT.." 3) Highland Horror" },
		{ WHIT.." 4) Relic Guardian" },
	},

	DalaranCity = {
		ZoneName = { ALC["ATLAS_FOREVER_DALARAN_CITY"] or "Dalaran City (Forever)" },
		Location = { ALC["ATLAS_FOREVER_DALARAN_CITY_LOC"] or "Alterac Mountains" },
		LevelRange = "28-33",
		MinLevel = 28,
		MaxLevel = 33,
		PlayerLimit = "5",
		Acronym = "DC",
		Module = "Atlas_Forever",
		{ WHIT.." 1) "..ALC["ATLAS_FOREVER_DALARAN_CITY_DESC"] },
	},
}

db.DropDownLayouts_Order = {
	[ATLAS_DDL_CONTINENT] = {
		ATLAS_DDL_CONTINENT_EASTERN,
	},
	[ATLAS_DDL_EXPANSION] = {
		ATLAS_DDL_EXPANSION_OLD,
	},
	[ATLAS_DDL_TYPE] = {
		ATLAS_DDL_TYPE_INSTANCE,
	},
	[ATLAS_DDL_PARTYSIZE] = {
		ATLAS_DDL_PARTYSIZE_5,
	},
}

db.DropDownLayouts = {
	[ATLAS_DDL_CONTINENT] = {
		[ATLAS_DDL_CONTINENT_EASTERN] = {
			"HallOfThanes",
			"RuinsOfLordaeron",
			"ExcavationSite",
			"DalaranCity",
		},
	},
	[ATLAS_DDL_EXPANSION] = {
		[ATLAS_DDL_EXPANSION_OLD] = {
			"HallOfThanes",
			"RuinsOfLordaeron",
			"ExcavationSite",
			"DalaranCity",
		},
	},
	[ATLAS_DDL_TYPE] = {
		[ATLAS_DDL_TYPE_INSTANCE] = {
			"HallOfThanes",
			"RuinsOfLordaeron",
			"ExcavationSite",
			"DalaranCity",
		},
	},
	[ATLAS_DDL_PARTYSIZE] = {
		[ATLAS_DDL_PARTYSIZE_5] = {
			"HallOfThanes",
			"RuinsOfLordaeron",
			"ExcavationSite",
			"DalaranCity",
		},
	},
}
