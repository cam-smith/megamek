<html>
<head>
  <title>${fullName}</title>
</head>
<body>
  <div style="font:12pt monospaced">
  <font size="+1"><b>${fullName}</b></font>
<#if includeFluff>
<#include "fluff.ftlh">
</#if>

	<p>
	<b>Type:</b> ${chassis}<br/>
	<b>Technology Base:</b> ${techBase}<br/>
	<b>Tonnage:</b> ${tonnage}<br/>
	<b>Battle Value:</b> ${battleValue}<br/>
	</p>

	<table>
	<tr><th>Equipment</th><th/><th>Mass</th></tr>
	<#if !isFighterSquadron>
	<tr><td>Engine</td><td align="center">${engineName!'(None)'}</td><td align="center">${engineMass!''}</td></tr>
	</#if>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Safe Thrust:</td><td align="center">${safeThrust}</td><td></td></tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Thrust:</td><td align="center">${maxThrust}</td><td></td></tr>
	<tr><td>Structural Integrity:</td><td align="center">${si}</td><td></td></tr>
	<#if isVSTOL && isConventional && !isSupportVehicle>
	<tr><td>VSTOL Equipment:</td><td align="center"></td><td align="center">${vstolMass}</td></tr>
	</#if>
	<#if !isFighterSquadron>
	<tr><td>Heat Sinks:</td><td align="center">${hsCount}</td><td align="center">${hsMass}</td></tr>
	</#if>
	<tr><td>Fuel:</td><td align="center">${fuelPoints}</td><td align="center">${fuelMass}</td></tr>
	<tr><td>${cockpitType}:</td><td></td><td align="center">${cockpitMass}</td></tr>
	<tr><td>Armor Factor${armorType}:</td><td align="center">${armorFactor}</td><td align="center">${armorMass}</td></tr>
	</table>

	<table width="80%">
		<tr><th></th><th>Armor<br/>Value</th></tr>
		<tr>
			<td>Nose</td>
			<td align="center">${armorValues.NOS}</td>
			<#if patchworkByLoc??><td>${patchworkByLoc.NOS}</td></#if>
		</tr>
		<tr>
			<td>Wings</td>
			<td align="center">${armorValues.RWG}</td>
			<#if patchworkByLoc??><td>${patchworkByLoc.RWG}</td></#if>
		</tr>
		<tr>
			<td>Aft</td>
			<td align="center">${armorValues.AFT}</td>
			<#if patchworkByLoc??><td>${patchworkByLoc.AFT}</td></#if>
		</tr>
	</table>

	<#if isOmni>
	<b>Fixed Equipment</b><br/>
		<#if fixedTonnage gt 0>
			<table>
			<tr><td><i>Location</i></td><td align="center"><i>Fixed</i></td><td align="center"><i>Tonnage</i></td><td><i>Heat</i></i></td><th>SRV</i></td><td><i>MRV</i></td><td><i>LRV</th><td><i>ERV</i></td></td></tr>
			<#list fixedEquipment as row>
				<#if row.equipment != "None">
	        		<tr><td>${row.location}</td><td align="center">${row.equipment}</td><td align="center">${row.tonnage}</td><td>${row.heat}</td><td>${row.srv}</td><td>${row.mrv}</td><td>${row.lrv}</td><td>${row.erv}</td></tr>
				</#if>
			</#list>
			</table>
		<#else>
			None
		</#if>
	</#if>

	<table>
		<tr><th align="left">Weapons<br/>and Ammo</th><th>Location</th><th>Tonnage</th><th>Heat</th><th>SRV</th><th>MRV</th><th>LRV</th><th>ERV</th></tr>
		<#list equipment as eq>
			<tr><td>${eq.name}</td><td align="center">${eq.location}</td><td align="center">${eq.tonnage}</td><td>${eq.heat}</td><td>${eq.srv}</td><td>${eq.mrv}</td><td>${eq.lrv}</td><td>${eq.erv}</td></tr>
		</#list>
	</table>

	<#if quirks??>
		<p>
		Features the following design quirks: ${quirks}
		</p>
	</#if>
	</div>
</body>
</html>
