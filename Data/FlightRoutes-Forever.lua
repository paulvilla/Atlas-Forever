--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2011 ~ 2024 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

local FOLDER_NAME, private = ...

local addon_name = "Atlas_FlightRoutes"
local module_name = "FlightRoutes"

local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")
local FlightRoutes = Atlas:NewModule(module_name)

local db = {}
FlightRoutes.db = db

local BLUE = "|cff6666ff"
local GREN = "|cff66cc33"
local WHIT = "|cffffffff"

db.AtlasMaps = {
	--------------------------------------------------
	-- Flight Routes - Alliance
	--------------------------------------------------
	FPAllianceEast = {
		ZoneName = { ALC["ATLAS_FLIGHTROUTES_ALLIANCE_EAST"] or "Alliance Flights - Eastern Kingdoms" },
		Location = { "Eastern Kingdoms" },
		LevelRange = "1-60",
		MinLevel = "1",
		MaxLevel = "60",
		PlayerLimit = "Solo",
		Acronym = "FP Alliance E",
		Module = "Atlas_FlightRoutes",
		{ WHIT.." 1) "..ALC["ATLAS_FLIGHTROUTES_FLIGHT_MASTER"] },
	},
	
	FPAllianceWest = {
		ZoneName = { ALC["ATLAS_FLIGHTROUTES_ALLIANCE_WEST"] or "Alliance Flights - Kalimdor" },
		Location = { "Kalimdor" },
		LevelRange = "1-60",
		MinLevel = "1",
		MaxLevel = "60",
		PlayerLimit = "Solo",
		Acronym = "FP Alliance W",
		Module = "Atlas_FlightRoutes",
		{ WHIT.." 1) "..ALC["ATLAS_FLIGHTROUTES_FLIGHT_MASTER"] },
	},

	--------------------------------------------------
	-- Flight Routes - Horde
	--------------------------------------------------
	FPHordeEast = {
		ZoneName = { ALC["ATLAS_FLIGHTROUTES_HORDE_EAST"] or "Horde Flights - Eastern Kingdoms" },
		Location = { "Eastern Kingdoms" },
		LevelRange = "1-60",
		MinLevel = "1",
		MaxLevel = "60",
		PlayerLimit = "Solo",
		Acronym = "FP Horde E",
		Module = "Atlas_FlightRoutes",
		{ WHIT.." 1) "..ALC["ATLAS_FLIGHTROUTES_FLIGHT_MASTER"] },
	},

	FPHordeWest = {
		ZoneName = { ALC["ATLAS_FLIGHTROUTES_HORDE_WEST"] or "Horde Flights - Kalimdor" },
		Location = { "Kalimdor" },
		LevelRange = "1-60",
		MinLevel = "1",
		MaxLevel = "60",
		PlayerLimit = "Solo",
		Acronym = "FP Horde W",
		Module = "Atlas_FlightRoutes",
		{ WHIT.." 1) "..ALC["ATLAS_FLIGHTROUTES_FLIGHT_MASTER"] },
	},

	--------------------------------------------------
	-- Ship Routes - Alliance
	--------------------------------------------------
	ShipRoutesAlliance = {
		ZoneName = { ALC["ATLAS_FLIGHTROUTES_SHIP_ALLIANCE"] or "Ships - Alliance" },
		Location = { "Eastern Kingdoms, Kalimdor" },
		LevelRange = "1-60",
		MinLevel = "1",
		MaxLevel = "60",
		PlayerLimit = "Solo",
		Acronym = "Ships A",
		Module = "Atlas_FlightRoutes",
		ImageSize = { 1024, 698 },
		{ WHIT.." 1) "..ALC["ATLAS_FLIGHTROUTES_SHIP_MASTER"] },
	},

	--------------------------------------------------
	-- Ship Routes - Horde
	--------------------------------------------------
	ShipRoutesHorde = {
		ZoneName = { ALC["ATLAS_FLIGHTROUTES_SHIP_HORDE"] or "Ships - Horde" },
		Location = { "Eastern Kingdoms, Kalimdor" },
		LevelRange = "1-60",
		MinLevel = "1",
		MaxLevel = "60",
		PlayerLimit = "Solo",
		Acronym = "Ships H",
		Module = "Atlas_FlightRoutes",
		ImageSize = { 1024, 698 },
		{ WHIT.." 1) "..ALC["ATLAS_FLIGHTROUTES_SHIP_MASTER"] },
	},
}

local flightMaps = {
	"FPAllianceEast",
	"FPAllianceWest",
	"FPHordeEast",
	"FPHordeWest",
	"ShipRoutesAlliance",
	"ShipRoutesHorde",
}

db.DropDownLayouts_Order = {
	[ATLAS_DDL_CONTINENT] = {
		ATLAS_DDL_FLIGHTROUTES,
	},
	[ATLAS_DDL_EXPANSION] = {
		ATLAS_DDL_FLIGHTROUTES,
	},
	[ATLAS_DDL_LEVEL] = {
		ATLAS_DDL_FLIGHTROUTES,
	},
	[ATLAS_DDL_PARTYSIZE] = {
		ATLAS_DDL_FLIGHTROUTES,
	},
	[ATLAS_DDL_TYPE] = {
		ATLAS_DDL_FLIGHTROUTES,
	},
}

db.DropDownLayouts = {
	[ATLAS_DDL_CONTINENT] = {
		[ATLAS_DDL_FLIGHTROUTES] = flightMaps,
	},
	[ATLAS_DDL_EXPANSION] = {
		[ATLAS_DDL_FLIGHTROUTES] = flightMaps,
	},
	[ATLAS_DDL_LEVEL] = {
		[ATLAS_DDL_FLIGHTROUTES] = flightMaps,
	},
	[ATLAS_DDL_PARTYSIZE] = {
		[ATLAS_DDL_FLIGHTROUTES] = flightMaps,
	},
	[ATLAS_DDL_TYPE] = {
		[ATLAS_DDL_FLIGHTROUTES] = flightMaps,
	},
	[ATLAS_DDL_FLIGHTROUTES] = {
		[ATLAS_DDL_FLIGHTROUTES_ALLIANCE] = {
			"FPAllianceEast",
			"FPAllianceWest",
		},
		[ATLAS_DDL_FLIGHTROUTES_HORDE] = {
			"FPHordeEast",
			"FPHordeWest",
		},
		[ATLAS_DDL_FLIGHTROUTES_SHIPS] = {
			"ShipRoutesAlliance",
			"ShipRoutesHorde",
		},
	},
}
