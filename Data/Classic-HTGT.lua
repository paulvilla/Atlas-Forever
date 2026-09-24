--[[
	Atlas Classic - How to Get There (HTGT)
	Maps added directly to ClassicWoW module
--]]

local FOLDER_NAME, private = ...

local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")
local addon = Atlas:GetModule("ClassicWoW")

if not addon then return end

local db = addon.db

local BLUE = "|cff6666ff"
local GREN = "|cff66cc33"

-- How to Get There maps are stored in Images/Atlas_HTGT/
db.AtlasMaps.CE_Gnomeregan = {
	ZoneName = { ALC["ATLAS_HTGT_GNOMEREGAN"] or "15-23 Gnomeregan" },
	Location = { ALC["ATLAS_FOREVER_HALL_OF_THANES_LOC"] or "Dun Morogh" },
	LevelRange = "15-23",
	MinLevel = 15,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
	{ BLUE.." B) "..ALC["Meeting Stone"], 10002 },
}

db.AtlasMaps.CE_BlackfathomDeeps = {
	ZoneName = { ALC["ATLAS_HTGT_BLACKFATHOM"] or "15-18 Blackfathom Deeps" },
	Location = { ALC["ATLAS_HTGT_BLACKFATHOM_LOC"] or "Ashenvale" },
	LevelRange = "15-18",
	MinLevel = 15,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
	{ BLUE.." B) "..ALC["Meeting Stone"], 10002 },
}

db.AtlasMaps.CE_RagefireChasm = {
	ZoneName = { ALC["ATLAS_HTGT_RAGEFIRE"] or "10-13 Ragefire Chasm" },
	Location = { ALC["ATLAS_HTGT_RAGEFIRE_LOC"] or "Orgrimmar" },
	LevelRange = "10-13",
	MinLevel = 10,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
}

db.AtlasMaps.CE_RazorfenKraul = {
	ZoneName = { ALC["ATLAS_HTGT_RAZORFEN"] or "19-25 Razorfen Kraul" },
	Location = { ALC["ATLAS_HTGT_RAZORFEN_LOC"] or "Southern Barrens" },
	LevelRange = "19-25",
	MinLevel = 19,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
	{ BLUE.." B) "..ALC["Meeting Stone"], 10002 },
}

db.AtlasMaps.CE_ShadowfangKeep = {
	ZoneName = { ALC["ATLAS_HTGT_SHADOWFANG"] or "14-18 Shadowfang Keep" },
	Location = { ALC["ATLAS_HTGT_SHADOWFANG_LOC"] or "Silverpine Forest" },
	LevelRange = "14-18",
	MinLevel = 14,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
	{ BLUE.." B) "..ALC["Meeting Stone"], 10002 },
}

db.AtlasMaps.CE_StormwindStockade = {
	ZoneName = { ALC["ATLAS_HTGT_STOCKADE"] or "22-25 Stormwind Stockade" },
	Location = { ALC["ATLAS_HTGT_STOCKADE_LOC"] or "Stormwind City" },
	LevelRange = "22-25",
	MinLevel = 22,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
}

db.AtlasMaps.CE_WailingCaverns = {
	ZoneName = { ALC["ATLAS_HTGT_WAILING"] or "10-17 Wailing Caverns" },
	Location = { ALC["ATLAS_HTGT_WAILING_LOC"] or "Northern Barrens" },
	LevelRange = "10-17",
	MinLevel = 10,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
	{ BLUE.." B) "..ALC["Meeting Stone"], 10002 },
}

db.AtlasMaps.CE_TheHallOfThanes = {
	ZoneName = { ALC["ATLAS_HTGT_HALL_OF_THANES"] or "13-18 Hall of Thanes" },
	Location = { ALC["ATLAS_FOREVER_HALL_OF_THANES_LOC"] or "Dun Morogh" },
	LevelRange = "13-18",
	MinLevel = 13,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
}

db.AtlasMaps.CE_RuinsOfLordaeron = {
	ZoneName = { ALC["ATLAS_HTGT_RUINS_OF_LORDAERON"] or "15-20 Ruins of Lordaeron" },
	Location = { ALC["ATLAS_FOREVER_RUINS_OF_LORDAERON_LOC"] or "Tirisfal Glades" },
	LevelRange = "15-20",
	MinLevel = 15,
	Module = "Atlas_HTGT",
	ImageSize = { 1024, 512 },
	VisibleWidth = 768,
	{ BLUE.." A) "..ALC["Entrance"], 10001 },
}

db.AtlasMaps_NPC_DB.CE_Gnomeregan = {
	{ "A", 10001, 250, 250 },
	{ "B", 10002, 350, 350 },
}
db.AtlasMaps_NPC_DB.CE_BlackfathomDeeps = {
	{ "A", 10001, 250, 250 },
	{ "B", 10002, 350, 350 },
}
db.AtlasMaps_NPC_DB.CE_RagefireChasm = {
	{ "A", 10001, 250, 250 },
}
db.AtlasMaps_NPC_DB.CE_RazorfenKraul = {
	{ "A", 10001, 250, 250 },
	{ "B", 10002, 350, 350 },
}
db.AtlasMaps_NPC_DB.CE_ShadowfangKeep = {
	{ "A", 10001, 250, 250 },
	{ "B", 10002, 350, 350 },
}
db.AtlasMaps_NPC_DB.CE_StormwindStockade = {
	{ "A", 10001, 250, 250 },
}
db.AtlasMaps_NPC_DB.CE_WailingCaverns = {
	{ "A", 10001, 250, 250 },
	{ "B", 10002, 350, 350 },
}
db.AtlasMaps_NPC_DB.CE_TheHallOfThanes = {
	{ "A", 10001, 250, 250 },
}
db.AtlasMaps_NPC_DB.CE_RuinsOfLordaeron = {
	{ "A", 10001, 250, 250 },
}

-- Add HTGT as subcategory inside Continent
if not tContains(db.DropDownLayouts_Order[ATLAS_DDL_CONTINENT], ATLAS_DDL_HTGT) then
	tinsert(db.DropDownLayouts_Order[ATLAS_DDL_CONTINENT], ATLAS_DDL_HTGT)
end

db.DropDownLayouts[ATLAS_DDL_CONTINENT][ATLAS_DDL_HTGT] = {
	"CE_Gnomeregan",
	"CE_BlackfathomDeeps",
	"CE_RagefireChasm",
	"CE_RazorfenKraul",
	"CE_ShadowfangKeep",
	"CE_StormwindStockade",
	"CE_WailingCaverns",
	"CE_TheHallOfThanes",
	"CE_RuinsOfLordaeron",
}

-- No cross-category navigation for HTGT maps
