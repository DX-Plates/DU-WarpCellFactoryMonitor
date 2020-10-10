--[[ FUNCTIONS ]]--

function round(number,decimals)
    local power = 100^decimals
    return math.floor((number/1000) * power) / power 
end

--[[ EXPORTED VARIABLES ]]--

local tableName = "Warp Cell Factory Adv Ingots" --export:
local tableNameFontsize = "15em" --export:
local tableFontSize = "3vw" --export:
local tableWidth = "100%" --export:
local tableHeight = "100%" --export:
local BGColor = "#252525" --export: This sets the screen background color
local use_L_or_Kg = 1 --export: Use 1 for kL or 0 for Kg

--[[ Calcium ]]--
local maxCalcium = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightCalcium = 1.55 --export:
local usedPerHourCalcium = 219.375 --export: Estimated usage per hour, used for timers

if use_L_or_Kg == 1 then
    massCalcium = round(math.ceil(calcium.getItemsMass()/weightCalcium),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massCalcium = round(math.ceil(calcium.getItemsMass()),2)
    measurement = "Kg"
end

local percentCalcium = math.ceil(((math.ceil((calcium.getItemsMass()/weightCalcium) - 0.5)/maxCalcium)*100))
local hoursCalcium = math.ceil(math.ceil(massCalcium * 1000)/usedPerHourCalcium)

--[[ Sodium ]]--
local maxSodium = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightSodium = 0.97 --export:
local usedPerHourSodium = 91.875 --export: Estimated usage per hour, used for timers

if use_L_or_Kg == 1 then
    massSodium = round(math.ceil(sodium.getItemsMass()/weightSodium),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massSodium = round(math.ceil(sodium.getItemsMass()),2)
    measurement = "Kg"
end

local percentSodium = math.ceil(((math.ceil((sodium.getItemsMass()/weightSodium) - 0.5)/maxSodium)*100))
local hoursSodium = math.ceil(math.ceil(massSodium * 1000)/usedPerHourSodium)

--[[ Copper ]]--
local maxCopper = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightCopper = 8.96 --export:
local usedPerHourCopper = 106.875 --export: Estimated usage per hour, used for timers

if use_L_or_Kg == 1 then
    massCopper = round(math.ceil(copper.getItemsMass()/weightCopper),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massCopper = round(math.ceil(copper.getItemsMass()),2)
    measurement = "Kg"
end

local percentCopper = math.ceil(((math.ceil((copper.getItemsMass()/weightCopper) - 0.5)/maxCopper)*100))
local hoursCopper = math.ceil(math.ceil(massCopper * 1000)/usedPerHourCopper)

--[[ Sulfur ]]--
local maxSulfur = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightSulfur = 1.82 --export:
local usedPerHourSulfur = 91.25 --export: Estimated usage per hour, used for timers

if use_L_or_Kg == 1 then
    massSulfur = round(math.ceil(sulfur.getItemsMass()/weightSulfur),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massSulfur = round(math.ceil(sulfur.getItemsMass()),2)
    measurement = "Kg"
end

local percentSulfur = math.ceil(((math.ceil((sulfur.getItemsMass()/weightSulfur) - 0.5)/maxSulfur)*100))
local hoursSulfur = math.ceil(math.ceil(massSulfur * 1000)/usedPerHourSulfur)

--[[ Silver ]]--
local maxSilver = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightSilver = 10.49 --export:
local usedPerHourSilver = 88.125 --export: Estimated usage per hour, used for timers

if use_L_or_Kg == 1 then
    massSilver = round(math.ceil(silver.getItemsMass()/weightSilver),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massSilver = round(math.ceil(silver.getItemsMass()),2)
    measurement = "Kg"
end

local percentSilver = math.ceil(((math.ceil((silver.getItemsMass()/weightSilver) - 0.5)/maxSilver)*100))
local hoursSilver = math.ceil(math.ceil(massSilver * 1000)/usedPerHourSilver)

--[[ Lithium ]]--
local maxLithium = 82300 --export: This is the maximum mass allowed in container. Update as needed
local weightLithium = 0.53 --export:
local usedPerHourLithium = 13.125 --export: Estimated usage per hour, used for timers

if use_L_or_Kg == 1 then
    massLithium = round(math.ceil(lithium.getItemsMass()/weightLithium),2)
    measurement = "kL"
elseif use_L_or_Kg == 0 then  
    massLithium = round(math.ceil(lithium.getItemsMass()),2)
    measurement = "Kg"
end

local percentLithium = math.ceil(((math.ceil((lithium.getItemsMass()/weightLithium) - 0.5)/maxLithium)*100))
local hoursLithium = math.ceil(math.ceil(massLithium * 1000)/usedPerHourLithium)

--[[ HTML CODE STARTS HERE ]]--

html = [[
<body>

<div class="bootstrap">
<table
	<tr style="
		width: 100%;
		color: white;
	">
	<th>T2+ Pure Status</th>

	<tr style="
		width: 100%;
		margin-bottom: 5px;
		background-color: white;
		color: black;
	">
		<th>Pure Type</th>
		<th>Levels</th>
		<th>Hours Left</th>
		<th>Amount</th>
	<tr>
		<th>Calcium</th>
		<th>]]..percentCalcium..[[%</th>
		<th>]]..hoursCalcium..[[</th>
		<th>]]..massCalcium..measurement..[[</th>
	</tr>
	<tr>
		<th>Sodium</th>
		<th>]]..percentSodium..[[%</th>
		<th>]]..hoursSodium..[[</th>
		<th>]]..massSodium..measurement..[[</th>
	</tr>
	<tr>
		<th>Copper</th>
		<th>]]..percentCopper..[[%</th>
		<th>]]..hoursCopper..[[</th>
		<th>]]..massCopper..measurement..[[</th>
	</tr>
	<tr>
		<th>Sulfur</th>
		<th>]]..percentSulfur..[[%</th>
		<th>]]..hoursSulfur..[[</th>
		<th>]]..massSulfur..measurement..[[</th>
	</tr>
	<tr>
		<th>Silver</th>
		<th>]]..percentSilver..[[%</th>
		<th>]]..hoursSilver..[[</th>
		<th>]]..massSilver..measurement..[[</th>
	</tr>
	<tr>
		<th>Lithium</th>
		<th>]]..percentLithium..[[%</th>
		<th>]]..hoursLithium..[[</th>
		<th>]]..massLithium..measurement..[[</th>
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