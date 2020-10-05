--[[ FUNCTIONS ]]--

function round(number,decimals)
    local power = 100^decimals
    return math.floor((number/1000) * power) / power 
end

--[[ EXPORTED VARIABLES ]]--

local tableName = "Warp Cell Factory T1 Ingot Status" --export:
local tableNameFontsize = "15em" --export:
local tableFontSize = "3vw" --export:
local tableWidth = "100%" --export:
local tableHeight = "100%" --export:
local BGColor = "#252525" --export: This sets the screen background color
local use_L_or_Kg = 1 --export: Use 1 for kL or 0 for Kg

--[[ Iron ]]--
local maxIron = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightIron = 7.85 --export:

if use_L_or_Kg == 1 then
    massIron = round(math.ceil(iron.getItemsMass()/weightIron),0)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massIron = round(math.ceil(iron.getItemsMass()),0)
    measurement = "Kg"
end

local percentIron = math.ceil(((math.ceil((iron.getItemsMass()/weightIron) - 0.5)/maxIron)*100))

--[[ Carbon ]]--
local maxCarbon = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightCarbon = 2.27 --export:

if use_L_or_Kg == 1 then
    massCarbon = round(math.ceil(carbon.getItemsMass()/weightCarbon),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massCarbon = round(math.ceil(carbon.getItemsMass()),2)
    measurement = "Kg"
end

local percentCarbon = math.ceil(((math.ceil((carbon.getItemsMass()/weightCarbon) - 0.5)/maxCarbon)*100))

--[[ Aluminium ]]--
local maxAluminium = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightAluminium = 2.70 --export:

if use_L_or_Kg == 1 then
    massAluminium = round(math.ceil(aluminium.getItemsMass()/weightAluminium),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massAluminium = round(math.ceil(aluminium.getItemsMass()),2)
    measurement = "Kg"
end

local percentAluminium = math.ceil(((math.ceil((aluminium.getItemsMass()/weightAluminium) - 0.5)/maxAluminium)*100))

--[[ Silicon ]]--
local maxSilicon = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightSilicon = 2.33 --export:

if use_L_or_Kg == 1 then
    massSilicon = round(math.ceil(silicon.getItemsMass()/weightSilicon),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massSilicon = round(math.ceil(silicon.getItemsMass()),2)
    measurement = "Kg"
end

local percentSilicon = math.ceil(((math.ceil((silicon.getItemsMass()/weightSilicon) - 0.5)/maxSilicon)*100))

--[[ Hydrogen ]]--
local maxHydrogen = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightHydrogen = 2.33 --export:

if use_L_or_Kg == 1 then
    massHydrogen = round(math.ceil(hydrogen.getItemsMass()/weightSilicon),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massHydrogen = round(math.ceil(hydrogen.getItemsMass()),2)
    measurement = "Kg"
end

local percentHydrogen = math.ceil(((math.ceil((hydrogen.getItemsMass()/weightHydrogen) - 0.5)/maxHydrogen)*100))

--[[ HTML CODE STARTS HERE ]]--

html = [[
<body>

<div class="bootstrap">
<table
	<tr style="
		width: 100%;
		color: white;
	">
	<th>Warp Cell Factory T1 Pure Status</th>

	<tr style="
		width: 100%;
		margin-bottom: 5px;
		background-color: white;
		color: black;
	">
		<th>Pure Type</th>
		<th>Storage Level</th>
		<th>Amount</th>
	<tr>
		<th>Iron</th>
		<th>]]..percentIron..[[%</th>
		<th>]]..massIron..measurement..[[</th>
	</tr>
	<tr>
		<th>Carbon</th>
		<th>]]..percentCarbon..[[%</th>
		<th>]]..massCarbon..measurement..[[</th>
		</td>
	</tr>
	<tr>
		<th>Aluminium</th>
		<th>]]..percentAluminium..[[%</th>
		<th>]]..massAluminium..measurement..[[</th>
	</tr>
	<tr>
		<th>Silicon</th>
		<th>]]..percentSilicon..[[%</th>
		<th>]]..massSilicon..measurement..[[</th>
	</tr>
	<tr>
		<th>Hydrogen</th>
		<th>]]..percentHydrogen..[[%</th>
		<th>]]..massHydrogen..measurement..[[</th>
	</tr>

</table>

<style>
body {
	background-color: ]]..BGColor..[[;
}
h1 {
  	font-size: ]]..tableNameFontsize..[[;
}
table {
  	width: ]]..tableWidth..[[;
	height: ]]..tableHeight..[[;
}
table, th, td {
  	border: 0.5px solid white;
  	border-collapse: collapse;
}
th, td {
  	padding: 10px;
  	text-align: center;
	font-size: ]]..tableFontSize..[[;
}

</style>

</div>

</body>

]]

--[[ HTML CODE ENDS HERE ]]--

screen.setHTML(html)