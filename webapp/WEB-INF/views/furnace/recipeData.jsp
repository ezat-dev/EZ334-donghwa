<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%@ include file="../include/mainHeader.jsp" %>
  <title>Recipe</title>
<jsp:include page="../include/pluginpage.jsp"/>

<!-- furnace/recipeData -->
<link rel="stylesheet" href="/donghwa/css/furnace/recipeData/style.css">
</head>
<style>
body {
  background: #ffffff; /* 흰색 배경 */
  width: 100%; /* 100%로 변경하여 반응형으로 설정 */
  height: calc(100vh - 122.95px); /* 전체 높이에서 헤더와 푸터의 높이 합산 */
  
  left: 0;
  top: 47.79px; /* 헤더 바로 아래 위치 */
  z-index: 0;
}

</style>


<body>
  <div class="group-1">
    <div class="recipe-main"></div>
    <div class="recipe-footer"></div>
    <div class="number"><input type="text" id="recipeNumber" class="input-number"/></div>
    <div class="numberData" style="display:none;"><input type="text" id="recipeNumberData" class="input-number"/></div>
    <div class="name"><input type="text" id="recipeName" class="input-name" /></div>
    <div class="comment"><input type="text" id="recipeComment" class="input-comment"/></div>
    <div class="segment">Segment</div>
    <div class="number2">Number</div>
    <div class="name2">Name</div>
    <div class="comment2">Comment</div>
    <div class="recipe-details">Recipe details</div>
    <div class="process-step">Process step</div>
    <div class="time">Time</div>
    <div class="min">[min]</div>
    <div class="c">[°C]</div>
    <div class="c2">[°C]</div>
    <div class="c3">[°C]</div>
    <div class="min2">[min]</div>
    <div class="mbar">[mbar]</div>
    <div class="k-n">[kN]</div>
    <div class="k-n2">[kN]</div>
    <div class="k-n3">[kN]</div>
    <div class="k-n-s">[kN/s]</div>
    <div class="mm">[mm]</div>
    <div class="mm2">[mm]</div>
    <div class="mm3">[mm]</div>
    <div class="min3">[min]</div>
    <div class="min4">[min]</div>
    <div class="div">[-]</div>
    <div class="mm-s">[mm/s]</div>
    <div class="temperature">Temperature</div>
    <div class="temperature-tolerance-controller">
      Temperature tolerance
      <br />
      controller
    </div>
    <div class="temperature-tolerance-holdback">
      Temperature tolerance
      <br />
      holdback
    </div>
    <div class="hold-back-timeout-heating">
      Hold Back Timeout
      <br />
      Heating
    </div>
    <div class="pressure-set-value">Pressure set value</div>
    <div class="pressing-capacity-f-1">Pressing capacity F1</div>
    <div class="pressing-capacity-f-2">Pressing capacity F2</div>
    <div class="force-tolerance">Force Tolerance</div>
    <div class="position-absolut-z">Position absolut “z”</div>
    <div class="position-relatly-z-z">Position relatly “+z/-z”</div>
    <div class="distance-tolerance">Distance Tolerance</div>
    <div class="holding-time-1">Holding time 1</div>
    <div class="holding-time-2">Holding time 2</div>
    <div class="number-of-loops">Number of Loops</div>
    <div class="speed-of-plunger">Speed of Plunger</div>
    <div class="gradient-of-force">Gradient of Force</div>

    <!---------------------------------input text----------------------------------------->

<div id="seg-0">
    <div class="segment-0"><input type="text" class="input-segment" id="segment_0" value="0" disabled/></div>
    <div class="process-step-0"><input type="text" class="input-text" id="id0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PROCESS_STEP_0" oninput="validateNumberInput(event)"/></div>	
    <div class="time-0"><input type="text" class="input-text" id="id1" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TIME_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-0"><input type="text" class="input-text" id="id2" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-0"><input type="text" class="input-text" id="id3" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_TC_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-0"><input type="text" class="input-text" id="id4" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_TH_0" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-0"><input type="text" class="input-text" id="id5" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HBTH_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-0"><input type="text" class="input-text" id="id6" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESSURE_SV_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-0"><input type="text" class="input-text" id="id7" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESSING_ONE_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-0"><input type="text" class="input-text" id="id8" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESSING_TWO_0" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-0"><input type="text" class="input-text" id="id9" name="DONGHWA.PLC.RECIPE.SEGMENT_0.FORCE_TOL_0" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-0"><input type="text" class="input-text" id="id10" name="DONGHWA.PLC.RECIPE.SEGMENT_0.POSITION_AB_0" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-0"><input type="text" class="input-text" id="id11" name="DONGHWA.PLC.RECIPE.SEGMENT_0.POSITION_REL_0" oninput="validateNumberInput(event)"/></div>
    <div class="distance-0"><input type="text" class="input-text" id="id12" name="DONGHWA.PLC.RECIPE.SEGMENT_0.DISTANCE_0" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-0"><input type="text" class="input-text" id="id13" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HOLDING_ONE_0" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-0"><input type="text" class="input-text" id="id14" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HOLDING_TWO_0" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-0"><input type="text" class="input-text" id="id15" name="DONGHWA.PLC.RECIPE.SEGMENT_0.NUMBER_LOOPS_0" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-0"><input type="text" class="input-text" id="id16" name="DONGHWA.PLC.RECIPE.SEGMENT_0.SPEED_PLUNGER_0" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-0"><input type="text" class="input-text" id="id17" name="DONGHWA.PLC.RECIPE.SEGMENT_0.GRADIENT_FORCE_0" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-0"><input type="checkbox" id="id18" name="DONGHWA.PLC.RECIPE.SEGMENT_0.FASTCOOLING_0" class="input-checkbox" disabled></div>
    <div class="gas-n-0"><input type="checkbox" id="id19" name="DONGHWA.PLC.RECIPE.SEGMENT_0.GAS_N_0" class="input-checkbox" disabled></div>
    <div class="gas-a-0"><input type="checkbox" id="id20" name="DONGHWA.PLC.RECIPE.SEGMENT_0.GAS_A_0" class="input-checkbox" disabled></div>
    <div class="spare-0"><input type="checkbox" id="id21" name="DONGHWA.PLC.RECIPE.SEGMENT_0.SPARE_0" class="input-checkbox"></div>
    <div class="hydrulic-off-0"><input type="checkbox" id="id22" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HYDRULIC_OFF_0" class="input-checkbox"></div>
    <div class="press-capacity-0"><input type="checkbox" id="id23" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESS_CAPACITY_0" class="input-checkbox"></div>
    <div class="press-position-0"><input type="checkbox" id="id24" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESS_POSITION_0" class="input-checkbox"></div>
    <div class="press-distance-0"><input type="checkbox" id="id25" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESS_DISTANCE_0" class="input-checkbox"></div>
</div>
<div id="seg-1">
    <div class="segment-1"><input type="text" class="input-segment" id="segment_1" value="1" disabled/></div>
    <div class="process-step-1"><input type="text" class="input-text" id="id26" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PROCESS_STEP_1" oninput="validateNumberInput(event)"/></div>
    <div class="time-1"><input type="text" class="input-text" id="id27" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TIME_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-1"><input type="text" class="input-text" id="id28" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TEMPERATURE_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-1"><input type="text" class="input-text" id="id29" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TEMPERATURE_TC_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-1"><input type="text" class="input-text" id="id30" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TEMPERATURE_TH_1" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-1"><input type="text" class="input-text" id="id31" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HBTH_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-1"><input type="text" class="input-text" id="id32" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESSURE_SV_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-1"><input type="text" class="input-text" id="id29" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESSING_ONE_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-1"><input type="text" class="input-text" id="id34" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESSING_TWO_1" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-1"><input type="text" class="input-text" id="id35" name="DONGHWA.PLC.RECIPE.SEGMENT_1.FORCE_TOL_1" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-1"><input type="text" class="input-text" id="id36" name="DONGHWA.PLC.RECIPE.SEGMENT_1.POSITION_AB_1" oninput="validateNumberInput(event)"/></div> <!-- Updated from id32 -->
    <div class="position-rel-1"><input type="text" class="input-text" id="id37" name="DONGHWA.PLC.RECIPE.SEGMENT_1.POSITION_REL_1" oninput="validateNumberInput(event)"/></div>
    <div class="distance-1"><input type="text" class="input-text" id="id38" name="DONGHWA.PLC.RECIPE.SEGMENT_1.DISTANCE_1" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-1"><input type="text" class="input-text" id="id39" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HOLDING_ONE_1" oninput="validateNumberInput(event)"/></div> <!-- Updated from id35 -->
    <div class="holding-two-1"><input type="text" class="input-text" id="id40" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HOLDING_TWO_1" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-1"><input type="text" class="input-text" id="id41" name="DONGHWA.PLC.RECIPE.SEGMENT_1.NUMBER_LOOPS_1" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-1"><input type="text" class="input-text" id="id42" name="DONGHWA.PLC.RECIPE.SEGMENT_1.SPEED_PLUNGER_1" oninput="validateNumberInput(event)"/></div> <!-- Updated from id38 -->
    <div class="gradient-force-1"><input type="text" class="input-text" id="id43" name="DONGHWA.PLC.RECIPE.SEGMENT_1.GRADIENT_FORCE_1" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-1"><input type="checkbox" id="id44" name="DONGHWA.PLC.RECIPE.SEGMENT_1.FASTCOOLING_1" class="input-checkbox" disabled></div>
    <div class="gas-n-1"><input type="checkbox" id="id45" name="DONGHWA.PLC.RECIPE.SEGMENT_1.GAS_N_1" class="input-checkbox" disabled></div> <!-- Updated from id41 -->
    <div class="gas-a-1"><input type="checkbox" id="id46" name="DONGHWA.PLC.RECIPE.SEGMENT_1.GAS_A_1" class="input-checkbox" disabled></div>
    <div class="spare-1"><input type="checkbox" id="id47" name="DONGHWA.PLC.RECIPE.SEGMENT_1.SPARE_1" class="input-checkbox"></div>
    <div class="hydrulic-off-1"><input type="checkbox" id="id48" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HYDRULIC_OFF_1" class="input-checkbox"></div> <!-- Updated from id44 -->
    <div class="press-capacity-1"><input type="checkbox" id="id49" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESS_CAPACITY_1" class="input-checkbox"></div>
    <div class="press-position-1"><input type="checkbox" id="id50" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESS_POSITION_1" class="input-checkbox"></div>
    <div class="press-distance-1"><input type="checkbox" id="id51" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESS_DISTANCE_1" class="input-checkbox"></div>

<div id="seg-2">
    <div class="segment-2"><input type="text" class="input-segment" id="segment_2" value="2" disabled/></div>
    <div class="process-step-2"><input type="text" class="input-text" id="id52" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PROCESS_STEP_2" oninput="validateNumberInput(event)"/></div>
    <div class="time-2"><input type="text" class="input-text" id="id53" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TIME_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-2"><input type="text" class="input-text" id="id54" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TEMPERATURE_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-2"><input type="text" class="input-text" id="id55" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TEMPERATURE_TC_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-2"><input type="text" class="input-text" id="id56" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TEMPERATURE_TH_2" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-2"><input type="text" class="input-text" id="id57" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HBTH_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-2"><input type="text" class="input-text" id="id58" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESSURE_SV_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-2"><input type="text" class="input-text" id="id51" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESSING_ONE_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-2"><input type="text" class="input-text" id="id60" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESSING_TWO_2" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-2"><input type="text" class="input-text" id="id61" name="DONGHWA.PLC.RECIPE.SEGMENT_2.FORCE_TOL_2" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-2"><input type="text" class="input-text" id="id62" name="DONGHWA.PLC.RECIPE.SEGMENT_2.POSITION_AB_2" oninput="validateNumberInput(event)"/></div> <!-- Updated from id54 -->
    <div class="position-rel-2"><input type="text" class="input-text" id="id63" name="DONGHWA.PLC.RECIPE.SEGMENT_2.POSITION_REL_2" oninput="validateNumberInput(event)"/></div>
    <div class="distance-2"><input type="text" class="input-text" id="id64" name="DONGHWA.PLC.RECIPE.SEGMENT_2.DISTANCE_2" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-2"><input type="text" class="input-text" id="id65" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HOLDING_ONE_2" oninput="validateNumberInput(event)"/></div> <!-- Updated from id57 -->
    <div class="holding-two-2"><input type="text" class="input-text" id="id66" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HOLDING_TWO_2" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-2"><input type="text" class="input-text" id="id67" name="DONGHWA.PLC.RECIPE.SEGMENT_2.NUMBER_LOOPS_2" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-2"><input type="text" class="input-text" id="id68" name="DONGHWA.PLC.RECIPE.SEGMENT_2.SPEED_PLUNGER_2" oninput="validateNumberInput(event)"/></div> <!-- Updated from id60 -->
    <div class="gradient-force-2"><input type="text" class="input-text" id="id69" name="DONGHWA.PLC.RECIPE.SEGMENT_2.GRADIENT_FORCE_2" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-2"><input type="checkbox" id="id70" name="DONGHWA.PLC.RECIPE.SEGMENT_2.FASTCOOLING_2" class="input-checkbox" disabled></div>
    <div class="gas-n-2"><input type="checkbox" id="id71" name="DONGHWA.PLC.RECIPE.SEGMENT_2.GAS_N_2" class="input-checkbox" disabled></div> <!-- Updated from id63 -->
    <div class="gas-a-2"><input type="checkbox" id="id46" name="DONGHWA.PLC.RECIPE.SEGMENT_1.GAS_A_1" class="input-checkbox" disabled></div>
    <div class="spare-2"><input type="checkbox" id="id73" name="DONGHWA.PLC.RECIPE.SEGMENT_2.SPARE_2" class="input-checkbox"></div>
    <div class="hydrulic-off-2"><input type="checkbox" id="id74" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HYDRULIC_OFF_2" class="input-checkbox"></div> <!-- Updated from id66 -->
    <div class="press-capacity-2"><input type="checkbox" id="id75" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESS_CAPACITY_2" class="input-checkbox"></div>
    <div class="press-position-2"><input type="checkbox" id="id76" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESS_POSITION_2" class="input-checkbox"></div>
    <div class="press-distance-2"><input type="checkbox" id="id77" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESS_DISTANCE_2" class="input-checkbox"></div>
</div>
<div id="seg-3">
    <div class="segment-3"><input type="text" class="input-segment" id="segment_3" value="3" disabled/></div>
    <div class="process-step-3"><input type="text" class="input-text" id="id78" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PROCESS_STEP_3" oninput="validateNumberInput(event)"/></div>
    <div class="time-3"><input type="text" class="input-text" id="id79" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TIME_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-3"><input type="text" class="input-text" id="id80" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TEMPERATURE_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-3"><input type="text" class="input-text" id="id81" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TEMPERATURE_TC_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-3"><input type="text" class="input-text" id="id82" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TEMPERATURE_TH_3" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-3"><input type="text" class="input-text" id="id83" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HBTH_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-3"><input type="text" class="input-text" id="id84" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESSURE_SV_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-3"><input type="text" class="input-text" id="id73" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESSING_ONE_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-3"><input type="text" class="input-text" id="id86" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESSING_TWO_3" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-3"><input type="text" class="input-text" id="id87" name="DONGHWA.PLC.RECIPE.SEGMENT_3.FORCE_TOL_3" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-3"><input type="text" class="input-text" id="id88" name="DONGHWA.PLC.RECIPE.SEGMENT_3.POSITION_AB_3" oninput="validateNumberInput(event)"/></div> <!-- Updated from id76 -->
    <div class="position-rel-3"><input type="text" class="input-text" id="id89" name="DONGHWA.PLC.RECIPE.SEGMENT_3.POSITION_REL_3" oninput="validateNumberInput(event)"/></div>
    <div class="distance-3"><input type="text" class="input-text" id="id90" name="DONGHWA.PLC.RECIPE.SEGMENT_3.DISTANCE_3" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-3"><input type="text" class="input-text" id="id91" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HOLDING_ONE_3" oninput="validateNumberInput(event)"/></div> <!-- Updated from id79 -->
    <div class="holding-one-3"><input type="text" class="input-text" id="id91" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HOLDING_ONE_3" oninput="validateNumberInput(event)"/></div> <!-- Updated from id79 -->
    <div class="holding-two-3"><input type="text" class="input-text" id="id92" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HOLDING_TWO_3" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-3"><input type="text" class="input-text" id="id93" name="DONGHWA.PLC.RECIPE.SEGMENT_3.NUMBER_LOOPS_3" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-3"><input type="text" class="input-text" id="id94" name="DONGHWA.PLC.RECIPE.SEGMENT_3.SPEED_PLUNGER_3" oninput="validateNumberInput(event)"/></div> <!-- Updated from id82 -->
    <div class="gradient-force-3"><input type="text" class="input-text" id="id95" name="DONGHWA.PLC.RECIPE.SEGMENT_3.GRADIENT_FORCE_3" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-3"><input type="checkbox" id="id96" name="DONGHWA.PLC.RECIPE.SEGMENT_3.FASTCOOLING_3" class="input-checkbox" disabled></div>
    <div class="gas-n-3"><input type="checkbox" id="id97" name="DONGHWA.PLC.RECIPE.SEGMENT_3.GAS_N_3" class="input-checkbox" disabled></div> <!-- Updated from id85 -->
    <div class="gas-a-3"><input type="checkbox" id="id98" name="DONGHWA.PLC.RECIPE.SEGMENT_3.GAS_A_3" class="input-checkbox" disabled></div>
    <div class="spare-3"><input type="checkbox" id="id99" name="DONGHWA.PLC.RECIPE.SEGMENT_3.SPARE_3" class="input-checkbox"></div>
    <div class="hydrulic-off-3"><input type="checkbox" id="id100" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HYDRULIC_OFF_3" class="input-checkbox"></div> <!-- Updated from id84 -->
    <div class="press-capacity-3"><input type="checkbox" id="id101" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESS_CAPACITY_3" class="input-checkbox"></div>
    <div class="press-position-3"><input type="checkbox" id="id102" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESS_POSITION_3" class="input-checkbox"></div>
    <div class="press-distance-3"><input type="checkbox" id="id103" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESS_DISTANCE_3" class="input-checkbox"></div>
</div>

<div id="seg-4">
    <div class="segment-4"><input type="text" class="input-segment" id="segment_4" value="4" disabled/></div>
    <div class="process-step-4"><input type="text" class="input-text" id="id104" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PROCESS_STEP_4" oninput="validateNumberInput(event)"/></div>
    <div class="time-4"><input type="text" class="input-text" id="id105" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TIME_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-4"><input type="text" class="input-text" id="id106" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TEMPERATURE_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-4"><input type="text" class="input-text" id="id107" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TEMPERATURE_TC_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-4"><input type="text" class="input-text" id="id108" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TEMPERATURE_TH_4" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-4"><input type="text" class="input-text" id="id109" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HBTH_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-4"><input type="text" class="input-text" id="id110" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESSURE_SV_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-4"><input type="text" class="input-text" id="id95" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESSING_ONE_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-4"><input type="text" class="input-text" id="id112" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESSING_TWO_4" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-4"><input type="text" class="input-text" id="id113" name="DONGHWA.PLC.RECIPE.SEGMENT_4.FORCE_TOL_4" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-4"><input type="text" class="input-text" id="id114" name="DONGHWA.PLC.RECIPE.SEGMENT_4.POSITION_AB_4" oninput="validateNumberInput(event)"/></div> <!-- Updated from id98 -->
    <div class="position-rel-4"><input type="text" class="input-text" id="id115" name="DONGHWA.PLC.RECIPE.SEGMENT_4.POSITION_REL_4" oninput="validateNumberInput(event)"/></div>
    <div class="distance-4"><input type="text" class="input-text" id="id116" name="DONGHWA.PLC.RECIPE.SEGMENT_4.DISTANCE_4" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-4"><input type="text" class="input-text" id="id117" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HOLDING_ONE_4" oninput="validateNumberInput(event)"/></div> <!-- Updated from id101 -->
    <div class="holding-two-4"><input type="text" class="input-text" id="id118" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HOLDING_TWO_4" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-4"><input type="text" class="input-text" id="id119" name="DONGHWA.PLC.RECIPE.SEGMENT_4.NUMBER_LOOPS_4" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-4"><input type="text" class="input-text" id="id120" name="DONGHWA.PLC.RECIPE.SEGMENT_4.SPEED_PLUNGER_4" oninput="validateNumberInput(event)"/></div> <!-- Updated from id104 -->
    <div class="gradient-force-4"><input type="text" class="input-text" id="id121" name="DONGHWA.PLC.RECIPE.SEGMENT_4.GRADIENT_FORCE_4" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-4"><input type="checkbox" id="id122" name="DONGHWA.PLC.RECIPE.SEGMENT_4.FASTCOOLING_4" class="input-checkbox" disabled></div>
    <div class="gas-n-4"><input type="checkbox" id="id123" name="DONGHWA.PLC.RECIPE.SEGMENT_4.GAS_N_4" class="input-checkbox" disabled></div> <!-- Updated from id107 -->
    <div class="gas-a-4"><input type="checkbox" id="id124" name="DONGHWA.PLC.RECIPE.SEGMENT_4.GAS_A_4" class="input-checkbox" disabled></div>
    <div class="spare-4"><input type="checkbox" id="id125" name="DONGHWA.PLC.RECIPE.SEGMENT_4.SPARE_4" class="input-checkbox"></div>
    <div class="hydrulic-off-4"><input type="checkbox" id="id126" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HYDRULIC_OFF_4" class="input-checkbox"></div> <!-- Updated from id110 -->
    <div class="press-capacity-4"><input type="checkbox" id="id127" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESS_CAPACITY_4" class="input-checkbox"></div>
    <div class="press-position-4"><input type="checkbox" id="id128" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESS_POSITION_4" class="input-checkbox"></div>
    <div class="press-distance-4"><input type="checkbox" id="id129" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESS_DISTANCE_4" class="input-checkbox"></div>
</div>
<div id="seg-5">
    <div class="segment-5"><input type="text" class="input-segment" id="segment_5" value="5" disabled/></div>
    <div class="process-step-5"><input type="text" class="input-text" id="id130" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PROCESS_STEP_5" oninput="validateNumberInput(event)"/></div>
    <div class="time-5"><input type="text" class="input-text" id="id131" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TIME_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-5"><input type="text" class="input-text" id="id132" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TEMPERATURE_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-5"><input type="text" class="input-text" id="id133" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TEMPERATURE_TC_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-5"><input type="text" class="input-text" id="id134" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TEMPERATURE_TH_5" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-5"><input type="text" class="input-text" id="id135" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HBTH_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-5"><input type="text" class="input-text" id="id136" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESSURE_SV_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-5"><input type="text" class="input-text" id="id117" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESSING_ONE_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-5"><input type="text" class="input-text" id="id138" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESSING_TWO_5" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-5"><input type="text" class="input-text" id="id139" name="DONGHWA.PLC.RECIPE.SEGMENT_5.FORCE_TOL_5" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-5"><input type="text" class="input-text" id="id140" name="DONGHWA.PLC.RECIPE.SEGMENT_5.POSITION_AB_5" oninput="validateNumberInput(event)"/></div> <!-- Updated from id120 -->
    <div class="position-rel-5"><input type="text" class="input-text" id="id141" name="DONGHWA.PLC.RECIPE.SEGMENT_5.POSITION_REL_5" oninput="validateNumberInput(event)"/></div>
    <div class="distance-5"><input type="text" class="input-text" id="id142" name="DONGHWA.PLC.RECIPE.SEGMENT_5.DISTANCE_5" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-5"><input type="text" class="input-text" id="id143" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HOLDING_ONE_5" oninput="validateNumberInput(event)"/></div> <!-- Updated from id123 -->
    <div class="holding-two-5"><input type="text" class="input-text" id="id144" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HOLDING_TWO_5" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-5"><input type="text" class="input-text" id="id145" name="DONGHWA.PLC.RECIPE.SEGMENT_5.NUMBER_LOOPS_5" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-5"><input type="text" class="input-text" id="id146" name="DONGHWA.PLC.RECIPE.SEGMENT_5.SPEED_PLUNGER_5" oninput="validateNumberInput(event)"/></div> <!-- Updated from id126 -->
    <div class="gradient-force-5"><input type="text" class="input-text" id="id147" name="DONGHWA.PLC.RECIPE.SEGMENT_5.GRADIENT_FORCE_5" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-5"><input type="checkbox" id="id148" name="DONGHWA.PLC.RECIPE.SEGMENT_5.FASTCOOLING_5" class="input-checkbox" disabled></div>
    <div class="gas-n-5"><input type="checkbox" id="id149" name="DONGHWA.PLC.RECIPE.SEGMENT_5.GAS_N_5" class="input-checkbox" disabled></div> <!-- Updated from id129 -->
    <div class="gas-a-5"><input type="checkbox" id="id150" name="DONGHWA.PLC.RECIPE.SEGMENT_5.GAS_A_5" class="input-checkbox" disabled></div>
    <div class="spare-5"><input type="checkbox" id="id151" name="DONGHWA.PLC.RECIPE.SEGMENT_5.SPARE_5" class="input-checkbox"></div>
    <div class="hydrulic-off-5"><input type="checkbox" id="id152" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HYDRULIC_OFF_5" class="input-checkbox"></div> <!-- Updated from id132 -->
    <div class="press-capacity-5"><input type="checkbox" id="id153" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESS_CAPACITY_5" class="input-checkbox"></div>
    <div class="press-position-5"><input type="checkbox" id="id154" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESS_POSITION_5" class="input-checkbox"></div>
    <div class="press-distance-5"><input type="checkbox" id="id155" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESS_DISTANCE_5" class="input-checkbox"></div>
</div>
<div id="seg-6">
    <div class="segment-6"><input type="text" class="input-segment" id="segment_6" value="6" disabled/></div>
    <div class="process-step-6"><input type="text" class="input-text" id="id156" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PROCESS_STEP_6" oninput="validateNumberInput(event)"/></div>
    <div class="time-6"><input type="text" class="input-text" id="id157" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TIME_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-6"><input type="text" class="input-text" id="id158" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TEMPERATURE_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-6"><input type="text" class="input-text" id="id159" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TEMPERATURE_TC_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-6"><input type="text" class="input-text" id="id160" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TEMPERATURE_TH_6" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-6"><input type="text" class="input-text" id="id161" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HBTH_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-6"><input type="text" class="input-text" id="id162" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESSURE_SV_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-6"><input type="text" class="input-text" id="id139" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESSING_ONE_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-6"><input type="text" class="input-text" id="id164" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESSING_TWO_6" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-6"><input type="text" class="input-text" id="id165" name="DONGHWA.PLC.RECIPE.SEGMENT_6.FORCE_TOL_6" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-6"><input type="text" class="input-text" id="id166" name="DONGHWA.PLC.RECIPE.SEGMENT_6.POSITION_AB_6" oninput="validateNumberInput(event)"/></div> <!-- Updated from id142 -->
    <div class="position-rel-6"><input type="text" class="input-text" id="id167" name="DONGHWA.PLC.RECIPE.SEGMENT_6.POSITION_REL_6" oninput="validateNumberInput(event)"/></div>
    <div class="distance-6"><input type="text" class="input-text" id="id168" name="DONGHWA.PLC.RECIPE.SEGMENT_6.DISTANCE_6" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-6"><input type="text" class="input-text" id="id169" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HOLDING_ONE_6" oninput="validateNumberInput(event)"/></div> <!-- Updated from id145 -->
    <div class="holding-two-6"><input type="text" class="input-text" id="id170" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HOLDING_TWO_6" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-6"><input type="text" class="input-text" id="id171" name="DONGHWA.PLC.RECIPE.SEGMENT_6.NUMBER_LOOPS_6" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-6"><input type="text" class="input-text" id="id172" name="DONGHWA.PLC.RECIPE.SEGMENT_6.SPEED_PLUNGER_6" oninput="validateNumberInput(event)"/></div> <!-- Updated from id148 -->
    <div class="gradient-force-6"><input type="text" class="input-text" id="id173" name="DONGHWA.PLC.RECIPE.SEGMENT_6.GRADIENT_FORCE_6" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-6"><input type="checkbox" id="id174" name="DONGHWA.PLC.RECIPE.SEGMENT_6.FASTCOOLING_6" class="input-checkbox" disabled></div>
    <div class="gas-n-6"><input type="checkbox" id="id175" name="DONGHWA.PLC.RECIPE.SEGMENT_6.GAS_N_6" class="input-checkbox" disabled></div> <!-- Updated from id151 -->
    <div class="gas-a-6"><input type="checkbox" id="id176" name="DONGHWA.PLC.RECIPE.SEGMENT_6.GAS_A_6" class="input-checkbox" disabled></div>
    <div class="spare-6"><input type="checkbox" id="id177" name="DONGHWA.PLC.RECIPE.SEGMENT_6.SPARE_6" class="input-checkbox"></div>
    <div class="hydrulic-off-6"><input type="checkbox" id="id178" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HYDRULIC_OFF_6" class="input-checkbox"></div> <!-- Updated from id154 -->
    <div class="press-capacity-6"><input type="checkbox" id="id179" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESS_CAPACITY_6" class="input-checkbox"></div>
    <div class="press-position-6"><input type="checkbox" id="id180" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESS_POSITION_6" class="input-checkbox"></div>
    <div class="press-distance-6"><input type="checkbox" id="id181" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESS_DISTANCE_6" class="input-checkbox"></div>
</div>
<div id="seg-7">
    <div class="segment-7"><input type="text" class="input-segment" id="segment_7" value="7" disabled/></div>
    <div class="process-step-7"><input type="text" class="input-text" id="id182" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PROCESS_STEP_7" oninput="validateNumberInput(event)"/></div>
    <div class="time-7"><input type="text" class="input-text" id="id183" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TIME_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-7"><input type="text" class="input-text" id="id184" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TEMPERATURE_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-7"><input type="text" class="input-text" id="id185" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TEMPERATURE_TC_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-7"><input type="text" class="input-text" id="id186" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TEMPERATURE_TH_7" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-7"><input type="text" class="input-text" id="id187" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HBTH_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-7"><input type="text" class="input-text" id="id188" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESSURE_SV_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-7"><input type="text" class="input-text" id="id161" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESSING_ONE_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-7"><input type="text" class="input-text" id="id190" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESSING_TWO_7" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-7"><input type="text" class="input-text" id="id191" name="DONGHWA.PLC.RECIPE.SEGMENT_7.FORCE_TOL_7" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-7"><input type="text" class="input-text" id="id192" name="DONGHWA.PLC.RECIPE.SEGMENT_7.POSITION_AB_7" oninput="validateNumberInput(event)"/></div> <!-- Updated from id164 -->
    <div class="position-rel-7"><input type="text" class="input-text" id="id193" name="DONGHWA.PLC.RECIPE.SEGMENT_7.POSITION_REL_7" oninput="validateNumberInput(event)"/></div>
    <div class="distance-7"><input type="text" class="input-text" id="id194" name="DONGHWA.PLC.RECIPE.SEGMENT_7.DISTANCE_7" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-7"><input type="text" class="input-text" id="id195" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HOLDING_ONE_7" oninput="validateNumberInput(event)"/></div> <!-- Updated from id167 -->
    <div class="holding-two-7"><input type="text" class="input-text" id="id196" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HOLDING_TWO_7" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-7"><input type="text" class="input-text" id="id197" name="DONGHWA.PLC.RECIPE.SEGMENT_7.NUMBER_LOOPS_7" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-7"><input type="text" class="input-text" id="id198" name="DONGHWA.PLC.RECIPE.SEGMENT_7.SPEED_PLUNGER_7" oninput="validateNumberInput(event)"/></div> <!-- Updated from id170 -->
    <div class="gradient-force-7"><input type="text" class="input-text" id="id199" name="DONGHWA.PLC.RECIPE.SEGMENT_7.GRADIENT_FORCE_7" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-7"><input type="checkbox" id="id200" name="DONGHWA.PLC.RECIPE.SEGMENT_7.FASTCOOLING_7" class="input-checkbox" disabled></div>
    <div class="gas-n-7"><input type="checkbox" id="id201" name="DONGHWA.PLC.RECIPE.SEGMENT_7.GAS_N_7" class="input-checkbox" disabled></div> <!-- Updated from id173 -->
    <div class="gas-a-7"><input type="checkbox" id="id202" name="DONGHWA.PLC.RECIPE.SEGMENT_7.GAS_A_7" class="input-checkbox" disabled></div>
    <div class="spare-7"><input type="checkbox" id="id203" name="DONGHWA.PLC.RECIPE.SEGMENT_7.SPARE_7" class="input-checkbox"></div>
    <div class="hydrulic-off-7"><input type="checkbox" id="id204" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HYDRULIC_OFF_7" class="input-checkbox"></div> <!-- Updated from id176 -->
    <div class="press-capacity-7"><input type="checkbox" id="id205" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESS_CAPACITY_7" class="input-checkbox"></div>
    <div class="press-position-7"><input type="checkbox" id="id206" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESS_POSITION_7" class="input-checkbox"></div>
    <div class="press-distance-7"><input type="checkbox" id="id207" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESS_DISTANCE_7" class="input-checkbox"></div>
</div>
<div id="seg-8">
    <div class="segment-8"><input type="text" class="input-segment" id="segment_8" value="8" disabled/></div>
    <div class="process-step-8"><input type="text" class="input-text" id="id208" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PROCESS_STEP_8" oninput="validateNumberInput(event)"/></div>
    <div class="time-8"><input type="text" class="input-text" id="id209" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TIME_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-8"><input type="text" class="input-text" id="id210" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TEMPERATURE_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-8"><input type="text" class="input-text" id="id211" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TEMPERATURE_TC_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-8"><input type="text" class="input-text" id="id212" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TEMPERATURE_TH_8" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-8"><input type="text" class="input-text" id="id213" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HBTH_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-8"><input type="text" class="input-text" id="id214" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESSURE_SV_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-8"><input type="text" class="input-text" id="id183" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESSING_ONE_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-8"><input type="text" class="input-text" id="id216" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESSING_TWO_8" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-8"><input type="text" class="input-text" id="id217" name="DONGHWA.PLC.RECIPE.SEGMENT_8.FORCE_TOL_8" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-8"><input type="text" class="input-text" id="id218" name="DONGHWA.PLC.RECIPE.SEGMENT_8.POSITION_AB_8" oninput="validateNumberInput(event)"/></div> <!-- Updated from id186 -->
    <div class="position-rel-8"><input type="text" class="input-text" id="id219" name="DONGHWA.PLC.RECIPE.SEGMENT_8.POSITION_REL_8" oninput="validateNumberInput(event)"/></div>
    <div class="distance-8"><input type="text" class="input-text" id="id220" name="DONGHWA.PLC.RECIPE.SEGMENT_8.DISTANCE_8" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-8"><input type="text" class="input-text" id="id221" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HOLDING_ONE_8" oninput="validateNumberInput(event)"/></div> <!-- Updated from id189 -->
    <div class="holding-two-8"><input type="text" class="input-text" id="id222" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HOLDING_TWO_8" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-8"><input type="text" class="input-text" id="id223" name="DONGHWA.PLC.RECIPE.SEGMENT_8.NUMBER_LOOPS_8" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-8"><input type="text" class="input-text" id="id224" name="DONGHWA.PLC.RECIPE.SEGMENT_8.SPEED_PLUNGER_8" oninput="validateNumberInput(event)"/></div> <!-- Updated from id192 -->
    <div class="gradient-force-8"><input type="text" class="input-text" id="id225" name="DONGHWA.PLC.RECIPE.SEGMENT_8.GRADIENT_FORCE_8" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-8"><input type="checkbox" id="id226" name="DONGHWA.PLC.RECIPE.SEGMENT_8.FASTCOOLING_8" class="input-checkbox" disabled></div>
    <div class="gas-n-8"><input type="checkbox" id="id227" name="DONGHWA.PLC.RECIPE.SEGMENT_8.GAS_N_8" class="input-checkbox" disabled></div> <!-- Updated from id195 -->
    <div class="gas-a-8"><input type="checkbox" id="id228" name="DONGHWA.PLC.RECIPE.SEGMENT_8.GAS_A_8" class="input-checkbox" disabled></div>
    <div class="spare-8"><input type="checkbox" id="id229" name="DONGHWA.PLC.RECIPE.SEGMENT_8.SPARE_8" class="input-checkbox"></div>
    <div class="hydrulic-off-8"><input type="checkbox" id="id230" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HYDRULIC_OFF_8" class="input-checkbox"></div> <!-- Updated from id198 -->
    <div class="press-capacity-8"><input type="checkbox" id="id231" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESS_CAPACITY_8" class="input-checkbox"></div>
    <div class="press-position-8"><input type="checkbox" id="id232" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESS_POSITION_8" class="input-checkbox"></div>
    <div class="press-distance-8"><input type="checkbox" id="id233" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESS_DISTANCE_8" class="input-checkbox"></div>
</div>

<div id="seg-9">
    <div class="segment-9"><input type="text" class="input-segment" id="segment_9" value="9" disabled/></div>
    <div class="process-step-9"><input type="text" class="input-text" id="id234" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PROCESS_STEP_9" oninput="validateNumberInput(event)"/></div>
    <div class="time-9"><input type="text" class="input-text" id="id235" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TIME_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-9"><input type="text" class="input-text" id="id236" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TEMPERATURE_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-9"><input type="text" class="input-text" id="id237" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TEMPERATURE_TC_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-9"><input type="text" class="input-text" id="id238" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TEMPERATURE_TH_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-9"><input type="text" class="input-text" id="id238" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TEMPERATURE_TH_9" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-9"><input type="text" class="input-text" id="id239" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HBTH_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-9"><input type="text" class="input-text" id="id240" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESSURE_SV_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-9"><input type="text" class="input-text" id="id205" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESSING_ONE_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-9"><input type="text" class="input-text" id="id242" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESSING_TWO_9" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-9"><input type="text" class="input-text" id="id243" name="DONGHWA.PLC.RECIPE.SEGMENT_9.FORCE_TOL_9" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-9"><input type="text" class="input-text" id="id244" name="DONGHWA.PLC.RECIPE.SEGMENT_9.POSITION_AB_9" oninput="validateNumberInput(event)"/></div> <!-- Updated from id208 -->
    <div class="position-rel-9"><input type="text" class="input-text" id="id245" name="DONGHWA.PLC.RECIPE.SEGMENT_9.POSITION_REL_9" oninput="validateNumberInput(event)"/></div>
    <div class="distance-9"><input type="text" class="input-text" id="id246" name="DONGHWA.PLC.RECIPE.SEGMENT_9.DISTANCE_9" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-9"><input type="text" class="input-text" id="id247" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HOLDING_ONE_9" oninput="validateNumberInput(event)"/></div> <!-- Updated from id211 -->
    <div class="holding-two-9"><input type="text" class="input-text" id="id248" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HOLDING_TWO_9" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-9"><input type="text" class="input-text" id="id249" name="DONGHWA.PLC.RECIPE.SEGMENT_9.NUMBER_LOOPS_9" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-9"><input type="text" class="input-text" id="id250" name="DONGHWA.PLC.RECIPE.SEGMENT_9.SPEED_PLUNGER_9" oninput="validateNumberInput(event)"/></div> <!-- Updated from id214 -->
    <div class="gradient-force-9"><input type="text" class="input-text" id="id251" name="DONGHWA.PLC.RECIPE.SEGMENT_9.GRADIENT_FORCE_9" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-9"><input type="checkbox" id="id252" name="DONGHWA.PLC.RECIPE.SEGMENT_9.FASTCOOLING_9" class="input-checkbox" disabled></div>
    <div class="gas-n-9"><input type="checkbox" id="id253" name="DONGHWA.PLC.RECIPE.SEGMENT_9.GAS_N_9" class="input-checkbox" disabled></div> <!-- Updated from id217 -->
    <div class="gas-a-9"><input type="checkbox" id="id254" name="DONGHWA.PLC.RECIPE.SEGMENT_9.GAS_A_9" class="input-checkbox" disabled></div>
    <div class="spare-9"><input type="checkbox" id="id255" name="DONGHWA.PLC.RECIPE.SEGMENT_9.SPARE_9" class="input-checkbox"></div>
    <div class="hydrulic-off-9"><input type="checkbox" id="id256" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HYDRULIC_OFF_9" class="input-checkbox"></div> <!-- Updated from id220 -->
    <div class="press-capacity-9"><input type="checkbox" id="id257" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESS_CAPACITY_9" class="input-checkbox"></div>
    <div class="press-position-9"><input type="checkbox" id="id258" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESS_POSITION_9" class="input-checkbox"></div>
    <div class="press-distance-9"><input type="checkbox" id="id259" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESS_DISTANCE_9" class="input-checkbox"></div>
</div>




<div id="seg-10">
    <div class="segment-10"><input type="text" class="input-segment" id="segment_10" value="10" disabled/></div>
    <div class="process-step-10"><input type="text" class="input-text" id="id260" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PROCESS_STEP_10" oninput="validateNumberInput(event)"/></div>
    <div class="time-10"><input type="text" class="input-text" id="id261" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TIME_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-10"><input type="text" class="input-text" id="id262" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TEMPERATURE_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-10"><input type="text" class="input-text" id="id263" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TEMPERATURE_TC_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-10"><input type="text" class="input-text" id="id264" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TEMPERATURE_TH_10" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-10"><input type="text" class="input-text" id="id265" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HBTH_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-10"><input type="text" class="input-text" id="id266" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESSURE_SV_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-10"><input type="text" class="input-text" id="id227" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESSING_ONE_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-10"><input type="text" class="input-text" id="id268" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESSING_TWO_10" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-10"><input type="text" class="input-text" id="id269" name="DONGHWA.PLC.RECIPE.SEGMENT_10.FORCE_TOL_10" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-10"><input type="text" class="input-text" id="id270" name="DONGHWA.PLC.RECIPE.SEGMENT_10.POSITION_AB_10" oninput="validateNumberInput(event)"/></div> <!-- Updated from id230 -->
    <div class="position-rel-10"><input type="text" class="input-text" id="id271" name="DONGHWA.PLC.RECIPE.SEGMENT_10.POSITION_REL_10" oninput="validateNumberInput(event)"/></div>
    <div class="distance-10"><input type="text" class="input-text" id="id272" name="DONGHWA.PLC.RECIPE.SEGMENT_10.DISTANCE_10" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-10"><input type="text" class="input-text" id="id273" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HOLDING_ONE_10" oninput="validateNumberInput(event)"/></div> <!-- Updated from id233 -->
    <div class="holding-two-10"><input type="text" class="input-text" id="id274" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HOLDING_TWO_10" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-10"><input type="text" class="input-text" id="id275" name="DONGHWA.PLC.RECIPE.SEGMENT_10.NUMBER_LOOPS_10" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-10"><input type="text" class="input-text" id="id276" name="DONGHWA.PLC.RECIPE.SEGMENT_10.SPEED_PLUNGER_10" oninput="validateNumberInput(event)"/></div> <!-- Updated from id236 -->
    <div class="gradient-force-10"><input type="text" class="input-text" id="id277" name="DONGHWA.PLC.RECIPE.SEGMENT_10.GRADIENT_FORCE_10" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-10"><input type="checkbox" id="id278" name="DONGHWA.PLC.RECIPE.SEGMENT_10.FASTCOOLING_10" class="input-checkbox" disabled></div>
    <div class="gas-n-10"><input type="checkbox" id="id279" name="DONGHWA.PLC.RECIPE.SEGMENT_10.GAS_N_10" class="input-checkbox" disabled></div> <!-- Updated from id239 -->
    <div class="gas-a-10"><input type="checkbox" id="id280" name="DONGHWA.PLC.RECIPE.SEGMENT_10.GAS_A_10" class="input-checkbox" disabled></div>
    <div class="spare-10"><input type="checkbox" id="id281" name="DONGHWA.PLC.RECIPE.SEGMENT_10.SPARE_10" class="input-checkbox"></div>
    <div class="hydrulic-off-10"><input type="checkbox" id="id282" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HYDRULIC_OFF_10" class="input-checkbox"></div> <!-- Updated from id242 -->
    <div class="press-capacity-10"><input type="checkbox" id="id283" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESS_CAPACITY_10" class="input-checkbox"></div>
    <div class="press-position-10"><input type="checkbox" id="id284" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESS_POSITION_10" class="input-checkbox"></div>
    <div class="press-distance-10"><input type="checkbox" id="id285" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESS_DISTANCE_10" class="input-checkbox"></div>
</div>
<div id="seg-11">
    <div class="segment-11"><input type="text" class="input-segment" id="segment_11" value="11" disabled/></div>
    <div class="process-step-11"><input type="text" class="input-text" id="id286" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PROCESS_STEP_11" oninput="validateNumberInput(event)"/></div>
    <div class="time-11"><input type="text" class="input-text" id="id287" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TIME_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-11"><input type="text" class="input-text" id="id288" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TEMPERATURE_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-11"><input type="text" class="input-text" id="id289" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TEMPERATURE_TC_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-11"><input type="text" class="input-text" id="id290" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TEMPERATURE_TH_11" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-11"><input type="text" class="input-text" id="id291" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HBTH_291" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-11"><input type="text" class="input-text" id="id292" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESSURE_SV_292" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-11"><input type="text" class="input-text" id="id249" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESSING_ONE_11" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-11"><input type="text" class="input-text" id="id294" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESSING_TWO_11" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-11"><input type="text" class="input-text" id="id295" name="DONGHWA.PLC.RECIPE.SEGMENT_11.FORCE_TOL_11" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-11"><input type="text" class="input-text" id="id296" name="DONGHWA.PLC.RECIPE.SEGMENT_11.POSITION_AB_11" oninput="validateNumberInput(event)"/></div> <!-- Updated from id252 -->
    <div class="position-rel-11"><input type="text" class="input-text" id="id297" name="DONGHWA.PLC.RECIPE.SEGMENT_11.POSITION_REL_11" oninput="validateNumberInput(event)"/></div>
    <div class="distance-11"><input type="text" class="input-text" id="id298" name="DONGHWA.PLC.RECIPE.SEGMENT_11.DISTANCE_11" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-11"><input type="text" class="input-text" id="id299" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HOLDING_ONE_11" oninput="validateNumberInput(event)"/></div> <!-- Updated from id255 -->
    <div class="holding-two-11"><input type="text" class="input-text" id="id300" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HOLDING_TWO_11" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-11"><input type="text" class="input-text" id="id301" name="DONGHWA.PLC.RECIPE.SEGMENT_11.NUMBER_LOOPS_11" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-11"><input type="text" class="input-text" id="id302" name="DONGHWA.PLC.RECIPE.SEGMENT_11.SPEED_PLUNGER_11" oninput="validateNumberInput(event)"/></div> <!-- Updated from id258 -->
    <div class="gradient-force-11"><input type="text" class="input-text" id="id303" name="DONGHWA.PLC.RECIPE.SEGMENT_11.GRADIENT_FORCE_11" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-11"><input type="checkbox" id="id304" name="DONGHWA.PLC.RECIPE.SEGMENT_11.FASTCOOLING_11" class="input-checkbox" disabled></div>
    <div class="gas-n-11"><input type="checkbox" id="id305" name="DONGHWA.PLC.RECIPE.SEGMENT_11.GAS_N_11" class="input-checkbox" disabled></div> <!-- Updated from id261 -->
    <div class="gas-a-11"><input type="checkbox" id="id306" name="DONGHWA.PLC.RECIPE.SEGMENT_11.GAS_A_11" class="input-checkbox" disabled></div>
    <div class="spare-11"><input type="checkbox" id="id307" name="DONGHWA.PLC.RECIPE.SEGMENT_11.SPARE_11" class="input-checkbox"></div>
    <div class="hydrulic-off-11"><input type="checkbox" id="id308" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HYDRULIC_OFF_11" class="input-checkbox"></div> <!-- Updated from id264 -->
    <div class="press-capacity-11"><input type="checkbox" id="id309" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESS_CAPACITY_11" class="input-checkbox"></div>
    <div class="press-position-11"><input type="checkbox" id="id310" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESS_POSITION_11" class="input-checkbox"></div>
    <div class="press-distance-11"><input type="checkbox" id="id311" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESS_DISTANCE_11" class="input-checkbox"></div>
</div>
<div id="seg-12">
    <div class="segment-12"><input type="text" class="input-segment" id="segment_12" value="12" disabled/></div>
    <div class="process-step-12"><input type="text" class="input-text" id="id312" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PROCESS_STEP_12" oninput="validateNumberInput(event)"/></div>
    <div class="time-12"><input type="text" class="input-text" id="id313" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TIME_12" oninput="validateNumberInput(event)"/></div>
    <div class="time-15"><input type="text" class="input-text" id="id391" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TIME_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-12"><input type="text" class="input-text" id="id314" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TEMPERATURE_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-12"><input type="text" class="input-text" id="id315" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TEMPERATURE_TC_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-12"><input type="text" class="input-text" id="id316" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TEMPERATURE_TH_12" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-12"><input type="text" class="input-text" id="id317" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HBTH_317" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-12"><input type="text" class="input-text" id="id318" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESSURE_SV_318" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-12"><input type="text" class="input-text" id="id271" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESSING_ONE_12" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-12"><input type="text" class="input-text" id="id320" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESSING_TWO_12" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-12"><input type="text" class="input-text" id="id321" name="DONGHWA.PLC.RECIPE.SEGMENT_12.FORCE_TOL_12" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-12"><input type="text" class="input-text" id="id322" name="DONGHWA.PLC.RECIPE.SEGMENT_12.POSITION_AB_12" oninput="validateNumberInput(event)"/></div> <!-- Updated from id274 -->
    <div class="position-rel-12"><input type="text" class="input-text" id="id323" name="DONGHWA.PLC.RECIPE.SEGMENT_12.POSITION_REL_12" oninput="validateNumberInput(event)"/></div>
    <div class="distance-12"><input type="text" class="input-text" id="id324" name="DONGHWA.PLC.RECIPE.SEGMENT_12.DISTANCE_12" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-12"><input type="text" class="input-text" id="id325" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HOLDING_ONE_12" oninput="validateNumberInput(event)"/></div> <!-- Updated from id277 -->
    <div class="holding-two-12"><input type="text" class="input-text" id="id326" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HOLDING_TWO_12" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-12"><input type="text" class="input-text" id="id327" name="DONGHWA.PLC.RECIPE.SEGMENT_12.NUMBER_LOOPS_12" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-12"><input type="text" class="input-text" id="id328" name="DONGHWA.PLC.RECIPE.SEGMENT_12.SPEED_PLUNGER_12" oninput="validateNumberInput(event)"/></div> <!-- Updated from id280 -->
    <div class="gradient-force-12"><input type="text" class="input-text" id="id329" name="DONGHWA.PLC.RECIPE.SEGMENT_12.GRADIENT_FORCE_12" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-12"><input type="checkbox" id="id330" name="DONGHWA.PLC.RECIPE.SEGMENT_12.FASTCOOLING_12" class="input-checkbox" disabled></div>
    <div class="gas-n-12"><input type="checkbox" id="id331" name="DONGHWA.PLC.RECIPE.SEGMENT_12.GAS_N_12" class="input-checkbox" disabled></div> <!-- Updated from id283 -->
    <div class="gas-a-12"><input type="checkbox" id="id332" name="DONGHWA.PLC.RECIPE.SEGMENT_12.GAS_A_12" class="input-checkbox" disabled></div>
    <div class="spare-12"><input type="checkbox" id="id333" name="DONGHWA.PLC.RECIPE.SEGMENT_12.SPARE_12" class="input-checkbox"></div>
    <div class="hydrulic-off-12"><input type="checkbox" id="id334" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HYDRULIC_OFF_12" class="input-checkbox"></div> <!-- Updated from id286 -->
    <div class="press-capacity-12"><input type="checkbox" id="id335" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESS_CAPACITY_12" class="input-checkbox"></div>
    <div class="press-position-12"><input type="checkbox" id="id336" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESS_POSITION_12" class="input-checkbox"></div>
    <div class="press-distance-12"><input type="checkbox" id="id337" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESS_DISTANCE_12" class="input-checkbox"></div>
</div>
<div id="seg-13">
    <div class="segment-13"><input type="text" class="input-segment" id="segment_13" value="13" disabled/></div>
    <div class="process-step-13"><input type="text" class="input-text" id="id338" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PROCESS_STEP_13" oninput="validateNumberInput(event)"/></div>
    <div class="time-13"><input type="text" class="input-text" id="id339" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TIME_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-13"><input type="text" class="input-text" id="id340" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TEMPERATURE_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-13"><input type="text" class="input-text" id="id341" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TEMPERATURE_TC_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-13"><input type="text" class="input-text" id="id342" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TEMPERATURE_TH_13" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-13"><input type="text" class="input-text" id="id343" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HBTH_343" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-13"><input type="text" class="input-text" id="id344" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESSURE_SV_344" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-13"><input type="text" class="input-text" id="id293" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESSING_ONE_13" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-13"><input type="text" class="input-text" id="id346" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESSING_TWO_13" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-13"><input type="text" class="input-text" id="id347" name="DONGHWA.PLC.RECIPE.SEGMENT_13.FORCE_TOL_13" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-13"><input type="text" class="input-text" id="id348" name="DONGHWA.PLC.RECIPE.SEGMENT_13.POSITION_AB_13" oninput="validateNumberInput(event)"/></div> <!-- Updated from id296 -->
    <div class="position-rel-13"><input type="text" class="input-text" id="id349" name="DONGHWA.PLC.RECIPE.SEGMENT_13.POSITION_REL_13" oninput="validateNumberInput(event)"/></div>
    <div class="distance-13"><input type="text" class="input-text" id="id350" name="DONGHWA.PLC.RECIPE.SEGMENT_13.DISTANCE_13" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-13"><input type="text" class="input-text" id="id351" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HOLDING_ONE_13" oninput="validateNumberInput(event)"/></div><!-- Updated from id299 -->
    <div class="holding-two-13"><input type="text" class="input-text" id="id352" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HOLDING_TWO_13" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-13"><input type="text" class="input-text" id="id353" name="DONGHWA.PLC.RECIPE.SEGMENT_13.NUMBER_LOOPS_13" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-13"><input type="text" class="input-text" id="id354" name="DONGHWA.PLC.RECIPE.SEGMENT_13.SPEED_PLUNGER_13" oninput="validateNumberInput(event)"/></div> <!-- Updated from id302 -->
    <div class="gradient-force-13"><input type="text" class="input-text" id="id355" name="DONGHWA.PLC.RECIPE.SEGMENT_13.GRADIENT_FORCE_13" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-13"><input type="checkbox" id="id356" name="DONGHWA.PLC.RECIPE.SEGMENT_13.FASTCOOLING_13" class="input-checkbox" disabled></div>
    <div class="gas-n-13"><input type="checkbox" id="id357" name="DONGHWA.PLC.RECIPE.SEGMENT_13.GAS_N_13" class="input-checkbox" disabled></div> <!-- Updated from id305 -->
    <div class="gas-a-13"><input type="checkbox" id="id358" name="DONGHWA.PLC.RECIPE.SEGMENT_13.GAS_A_13" class="input-checkbox" disabled></div>
    <div class="spare-13"><input type="checkbox" id="id359" name="DONGHWA.PLC.RECIPE.SEGMENT_13.SPARE_13" class="input-checkbox"></div>
    <div class="hydrulic-off-13"><input type="checkbox" id="id360" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HYDRULIC_OFF_13" class="input-checkbox"></div> <!-- Updated from id308 -->
    <div class="press-capacity-13"><input type="checkbox" id="id361" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESS_CAPACITY_13" class="input-checkbox"></div>
    <div class="press-position-13"><input type="checkbox" id="id362" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESS_POSITION_13" class="input-checkbox"></div>
    <div class="press-distance-13"><input type="checkbox" id="id363" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESS_DISTANCE_13" class="input-checkbox"></div>
</div>
<div id="seg-14">
    <div class="segment-14"><input type="text" class="input-segment" id="segment_14" value="14" disabled/></div>
    <div class="process-step-14"><input type="text" class="input-text" id="id364" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PROCESS_STEP_14" oninput="validateNumberInput(event)"/></div>
    <div class="time-14"><input type="text" class="input-text" id="id365" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TIME_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-14"><input type="text" class="input-text" id="id366" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TEMPERATURE_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-14"><input type="text" class="input-text" id="id367" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TEMPERATURE_TC_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-14"><input type="text" class="input-text" id="id368" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TEMPERATURE_TH_14" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-14"><input type="text" class="input-text" id="id369" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HBTH_369" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-14"><input type="text" class="input-text" id="id370" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESSURE_SV_370" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-14"><input type="text" class="input-text" id="id315" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESSING_ONE_14" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-14"><input type="text" class="input-text" id="id372" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESSING_TWO_14" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-14"><input type="text" class="input-text" id="id373" name="DONGHWA.PLC.RECIPE.SEGMENT_14.FORCE_TOL_14" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-14"><input type="text" class="input-text" id="id374" name="DONGHWA.PLC.RECIPE.SEGMENT_14.POSITION_AB_14" oninput="validateNumberInput(event)"/></div> <!-- Updated from id318 -->
    <div class="position-rel-14"><input type="text" class="input-text" id="id375" name="DONGHWA.PLC.RECIPE.SEGMENT_14.POSITION_REL_14" oninput="validateNumberInput(event)"/></div>
    <div class="distance-14"><input type="text" class="input-text" id="id376" name="DONGHWA.PLC.RECIPE.SEGMENT_14.DISTANCE_14" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-14"><input type="text" class="input-text" id="id377" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HOLDING_ONE_14" oninput="validateNumberInput(event)"/></div> <!-- Updated from id321 -->
    <div class="holding-two-14"><input type="text" class="input-text" id="id378" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HOLDING_TWO_14" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-14"><input type="text" class="input-text" id="id379" name="DONGHWA.PLC.RECIPE.SEGMENT_14.NUMBER_LOOPS_14" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-14"><input type="text" class="input-text" id="id380" name="DONGHWA.PLC.RECIPE.SEGMENT_14.SPEED_PLUNGER_14" oninput="validateNumberInput(event)"/></div> <!-- Updated from id324 -->
    <div class="gradient-force-14"><input type="text" class="input-text" id="id381" name="DONGHWA.PLC.RECIPE.SEGMENT_14.GRADIENT_FORCE_14" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-14"><input type="checkbox" id="id382" name="DONGHWA.PLC.RECIPE.SEGMENT_14.FASTCOOLING_14" class="input-checkbox" disabled></div>
    <div class="gas-n-14"><input type="checkbox" id="id383" name="DONGHWA.PLC.RECIPE.SEGMENT_14.GAS_N_14" class="input-checkbox" disabled></div> <!-- Updated from id327 -->
    <div class="gas-a-14"><input type="checkbox" id="id384" name="DONGHWA.PLC.RECIPE.SEGMENT_14.GAS_A_14" class="input-checkbox" disabled></div>
    <div class="spare-14"><input type="checkbox" id="id385" name="DONGHWA.PLC.RECIPE.SEGMENT_14.SPARE_14" class="input-checkbox"></div>
    <div class="hydrulic-off-14"><input type="checkbox" id="id386" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HYDRULIC_OFF_14" class="input-checkbox"></div> <!-- Updated from id330 -->
    <div class="press-capacity-14"><input type="checkbox" id="id387" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESS_CAPACITY_14" class="input-checkbox"></div>
    <div class="press-position-14"><input type="checkbox" id="id388" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESS_POSITION_14" class="input-checkbox"></div>
    <div class="press-distance-14"><input type="checkbox" id="id389" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESS_DISTANCE_14" class="input-checkbox"></div>
</div>
<div id="seg-15">
    <div class="segment-15"><input type="text" class="input-segment" id="segment_15" value="15" disabled/></div>
    <div class="process-step-15"><input type="text" class="input-text" id="id390" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PROCESS_STEP_15" oninput="validateNumberInput(event)"/></div>
    <div class="time-15"><input type="text" class="input-text" id="id391" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TIME_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-15"><input type="text" class="input-text" id="id392" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TEMPERATURE_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-15"><input type="text" class="input-text" id="id393" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TEMPERATURE_TC_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-15"><input type="text" class="input-text" id="id394" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TEMPERATURE_TH_15" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-15"><input type="text" class="input-text" id="id395" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HBTH_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-15"><input type="text" class="input-text" id="id396" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESSURE_SV_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-15"><input type="text" class="input-text" id="id337" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESSING_ONE_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-15"><input type="text" class="input-text" id="id398" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESSING_TWO_15" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-15"><input type="text" class="input-text" id="id399" name="DONGHWA.PLC.RECIPE.SEGMENT_15.FORCE_TOL_15" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-15"><input type="text" class="input-text" id="id400" name="DONGHWA.PLC.RECIPE.SEGMENT_15.POSITION_AB_15" oninput="validateNumberInput(event)"/></div> <!-- Updated from id340 -->
    <div class="position-rel-15"><input type="text" class="input-text" id="id401" name="DONGHWA.PLC.RECIPE.SEGMENT_15.POSITION_REL_15" oninput="validateNumberInput(event)"/></div>
    <div class="distance-15"><input type="text" class="input-text" id="id402" name="DONGHWA.PLC.RECIPE.SEGMENT_15.DISTANCE_15" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-15"><input type="text" class="input-text" id="id403" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HOLDING_ONE_15" oninput="validateNumberInput(event)"/></div> <!-- Updated from id343 -->
    <div class="holding-two-15"><input type="text" class="input-text" id="id404" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HOLDING_TWO_15" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-15"><input type="text" class="input-text" id="id405" name="DONGHWA.PLC.RECIPE.SEGMENT_15.NUMBER_LOOPS_15" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-15"><input type="text" class="input-text" id="id406" name="DONGHWA.PLC.RECIPE.SEGMENT_15.SPEED_PLUNGER_15" oninput="validateNumberInput(event)"/></div> <!-- Updated from id346 -->
    <div class="gradient-force-15"><input type="text" class="input-text" id="id407" name="DONGHWA.PLC.RECIPE.SEGMENT_15.GRADIENT_FORCE_15" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-15"><input type="checkbox" id="id408" name="DONGHWA.PLC.RECIPE.SEGMENT_15.FASTCOOLING_15" class="input-checkbox" disabled></div>
    <div class="gas-n-15"><input type="checkbox" id="id409" name="DONGHWA.PLC.RECIPE.SEGMENT_15.GAS_N_15" class="input-checkbox" disabled></div> <!-- Updated from id349 -->
    <div class="gas-a-15"><input type="checkbox" id="id410" name="DONGHWA.PLC.RECIPE.SEGMENT_15.GAS_A_15" class="input-checkbox" disabled></div>
    <div class="spare-15"><input type="checkbox" id="id411" name="DONGHWA.PLC.RECIPE.SEGMENT_15.SPARE_15" class="input-checkbox"></div>
    <div class="hydrulic-off-15"><input type="checkbox" id="id412" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HYDRULIC_OFF_15" class="input-checkbox"></div> <!-- Updated from id352 -->
    <div class="press-capacity-15"><input type="checkbox" id="id413" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESS_CAPACITY_15" class="input-checkbox"></div>
    <div class="press-position-15"><input type="checkbox" id="id414" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESS_POSITION_15" class="input-checkbox"></div>
    <div class="press-distance-15"><input type="checkbox" id="id415" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESS_DISTANCE_15" class="input-checkbox"></div>
</div>
<div id="seg-16">
    <div class="segment-16"><input type="text" class="input-segment" id="segment_16" value="16" disabled/></div>
    <div class="process-step-16"><input type="text" class="input-text" id="id416" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PROCESS_STEP_16" oninput="validateNumberInput(event)"/></div>
    <div class="time-16"><input type="text" class="input-text" id="id417" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TIME_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-16"><input type="text" class="input-text" id="id418" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TEMPERATURE_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-16"><input type="text" class="input-text" id="id419" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TEMPERATURE_TC_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-16"><input type="text" class="input-text" id="id420" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TEMPERATURE_TH_16" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-16"><input type="text" class="input-text" id="id421" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HBTH_421" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-16"><input type="text" class="input-text" id="id422" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESSURE_SV_422" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-16"><input type="text" class="input-text" id="id359" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESSING_ONE_16" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-16"><input type="text" class="input-text" id="id424" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESSING_TWO_16" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-16"><input type="text" class="input-text" id="id425" name="DONGHWA.PLC.RECIPE.SEGMENT_16.FORCE_TOL_16" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-16"><input type="text" class="input-text" id="id426" name="DONGHWA.PLC.RECIPE.SEGMENT_16.POSITION_AB_16" oninput="validateNumberInput(event)"/></div> <!-- Updated from id362 -->
    <div class="position-rel-16"><input type="text" class="input-text" id="id427" name="DONGHWA.PLC.RECIPE.SEGMENT_16.POSITION_REL_16" oninput="validateNumberInput(event)"/></div>
    <div class="distance-16"><input type="text" class="input-text" id="id428" name="DONGHWA.PLC.RECIPE.SEGMENT_16.DISTANCE_16" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-16"><input type="text" class="input-text" id="id429" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HOLDING_ONE_16" oninput="validateNumberInput(event)"/></div> <!-- Updated from id365 -->
    <div class="holding-two-16"><input type="text" class="input-text" id="id430" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HOLDING_TWO_16" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-16"><input type="text" class="input-text" id="id431" name="DONGHWA.PLC.RECIPE.SEGMENT_16.NUMBER_LOOPS_16" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-16"><input type="text" class="input-text" id="id432" name="DONGHWA.PLC.RECIPE.SEGMENT_16.SPEED_PLUNGER_16" oninput="validateNumberInput(event)"/></div> <!-- Updated from id368 -->
    <div class="gradient-force-16"><input type="text" class="input-text" id="id433" name="DONGHWA.PLC.RECIPE.SEGMENT_16.GRADIENT_FORCE_16" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-16"><input type="checkbox" id="id434" name="DONGHWA.PLC.RECIPE.SEGMENT_16.FASTCOOLING_16" class="input-checkbox" disabled></div>
    <div class="gas-n-16"><input type="checkbox" id="id435" name="DONGHWA.PLC.RECIPE.SEGMENT_16.GAS_N_16" class="input-checkbox" disabled></div> <!-- Updated from id371 -->
    <div class="gas-a-16"><input type="checkbox" id="id436" name="DONGHWA.PLC.RECIPE.SEGMENT_16.GAS_A_16" class="input-checkbox" disabled></div>
    <div class="spare-16"><input type="checkbox" id="id437" name="DONGHWA.PLC.RECIPE.SEGMENT_16.SPARE_16" class="input-checkbox"></div>
    <div class="hydrulic-off-16"><input type="checkbox" id="id438" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HYDRULIC_OFF_16" class="input-checkbox"></div> <!-- Updated from id374 -->
    <div class="press-capacity-16"><input type="checkbox" id="id439" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESS_CAPACITY_16" class="input-checkbox"></div>
    <div class="press-position-16"><input type="checkbox" id="id440" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESS_POSITION_16" class="input-checkbox"></div>
    <div class="press-distance-16"><input type="checkbox" id="id441" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESS_DISTANCE_16" class="input-checkbox"></div>
</div>
<div id="seg-17">
    <div class="segment-17"><input type="text" class="input-segment" id="segment_17" value="17" disabled/></div>
    <div class="process-step-17"><input type="text" class="input-text" id="id442" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PROCESS_STEP_17" oninput="validateNumberInput(event)"/></div>
    <div class="time-17"><input type="text" class="input-text" id="id443" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TIME_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-17"><input type="text" class="input-text" id="id444" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TEMPERATURE_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-17"><input type="text" class="input-text" id="id445" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TEMPERATURE_TC_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-17"><input type="text" class="input-text" id="id446" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TEMPERATURE_TH_17" oninput="validateNumberInput(event)"/></div>
	<div class="hbth-17"><input type="text" class="input-text" id="id447" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HBTH_17" oninput="validateNumberInput(event)"/></div>    
    <div class="pressure-sv-17"><input type="text" class="input-text" id="id448" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESSURE_SV_448" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-17"><input type="text" class="input-text" id="id381" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESSING_ONE_17" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-17"><input type="text" class="input-text" id="id450" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESSING_TWO_17" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-17"><input type="text" class="input-text" id="id451" name="DONGHWA.PLC.RECIPE.SEGMENT_17.FORCE_TOL_17" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-17"><input type="text" class="input-text" id="id452" name="DONGHWA.PLC.RECIPE.SEGMENT_17.POSITION_AB_17" oninput="validateNumberInput(event)"/></div> <!-- Updated from id384 -->
    <div class="position-rel-17"><input type="text" class="input-text" id="id453" name="DONGHWA.PLC.RECIPE.SEGMENT_17.POSITION_REL_17" oninput="validateNumberInput(event)"/></div>
    <div class="distance-17"><input type="text" class="input-text" id="id454" name="DONGHWA.PLC.RECIPE.SEGMENT_17.DISTANCE_17" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-17"><input type="text" class="input-text" id="id455" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HOLDING_ONE_17" oninput="validateNumberInput(event)"/></div> <!-- Updated from id387 -->
    <div class="holding-two-17"><input type="text" class="input-text" id="id456" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HOLDING_TWO_17" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-17"><input type="text" class="input-text" id="id457" name="DONGHWA.PLC.RECIPE.SEGMENT_17.NUMBER_LOOPS_17" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-17"><input type="text" class="input-text" id="id458" name="DONGHWA.PLC.RECIPE.SEGMENT_17.SPEED_PLUNGER_17" oninput="validateNumberInput(event)"/></div> <!-- Updated from id390 -->
    <div class="gradient-force-17"><input type="text" class="input-text" id="id459" name="DONGHWA.PLC.RECIPE.SEGMENT_17.GRADIENT_FORCE_17" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-17"><input type="checkbox" id="id460" name="DONGHWA.PLC.RECIPE.SEGMENT_17.FASTCOOLING_17" class="input-checkbox" disabled></div>
    <div class="gas-n-17"><input type="checkbox" id="id461" name="DONGHWA.PLC.RECIPE.SEGMENT_17.GAS_N_17" class="input-checkbox" disabled></div> <!-- Updated from id393 -->
    <div class="gas-a-17"><input type="checkbox" id="id462" name="DONGHWA.PLC.RECIPE.SEGMENT_17.GAS_A_17" class="input-checkbox" disabled></div>
    <div class="spare-17"><input type="checkbox" id="id463" name="DONGHWA.PLC.RECIPE.SEGMENT_17.SPARE_17" class="input-checkbox"></div>
    <div class="hydrulic-off-17"><input type="checkbox" id="id464" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HYDRULIC_OFF_17" class="input-checkbox"></div> <!-- Updated from id396 -->
    <div class="press-capacity-17"><input type="checkbox" id="id465" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESS_CAPACITY_17" class="input-checkbox"></div>
    <div class="press-position-17"><input type="checkbox" id="id466" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESS_POSITION_17" class="input-checkbox"></div>
    <div class="press-distance-17"><input type="checkbox" id="id467" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESS_DISTANCE_17" class="input-checkbox"></div>
</div>
<div id="seg-18">
    <div class="segment-18"><input type="text" class="input-segment" id="segment_18" value="18" disabled/></div>
    <div class="process-step-18"><input type="text" class="input-text" id="id468" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PROCESS_STEP_18" oninput="validateNumberInput(event)"/></div>
    <div class="time-18"><input type="text" class="input-text" id="id469" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TIME_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-18"><input type="text" class="input-text" id="id470" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TEMPERATURE_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-18"><input type="text" class="input-text" id="id471" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TEMPERATURE_TC_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-18"><input type="text" class="input-text" id="id472" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TEMPERATURE_TH_18" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-18"><input type="text" class="input-text" id="id473" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HBTH_473" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-18"><input type="text" class="input-text" id="id474" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESSURE_SV_474" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-18"><input type="text" class="input-text" id="id403" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESSING_ONE_18" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-18"><input type="text" class="input-text" id="id476" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESSING_TWO_18" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-18"><input type="text" class="input-text" id="id477" name="DONGHWA.PLC.RECIPE.SEGMENT_18.FORCE_TOL_18" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-18"><input type="text" class="input-text" id="id478" name="DONGHWA.PLC.RECIPE.SEGMENT_18.POSITION_AB_18" oninput="validateNumberInput(event)"/></div> <!-- Updated from id406 -->
    <div class="position-rel-18"><input type="text" class="input-text" id="id479" name="DONGHWA.PLC.RECIPE.SEGMENT_18.POSITION_REL_18" oninput="validateNumberInput(event)"/></div>
    <div class="distance-18"><input type="text" class="input-text" id="id480" name="DONGHWA.PLC.RECIPE.SEGMENT_18.DISTANCE_18" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-18"><input type="text" class="input-text" id="id481" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HOLDING_ONE_18" oninput="validateNumberInput(event)"/></div> <!-- Updated from id409 -->
    <div class="holding-two-18"><input type="text" class="input-text" id="id482" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HOLDING_TWO_18" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-18"><input type="text" class="input-text" id="id483" name="DONGHWA.PLC.RECIPE.SEGMENT_18.NUMBER_LOOPS_18" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-18"><input type="text" class="input-text" id="id484" name="DONGHWA.PLC.RECIPE.SEGMENT_18.SPEED_PLUNGER_18" oninput="validateNumberInput(event)"/></div> <!-- Updated from id412 -->
    <div class="gradient-force-18"><input type="text" class="input-text" id="id485" name="DONGHWA.PLC.RECIPE.SEGMENT_18.GRADIENT_FORCE_18" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-18"><input type="checkbox" id="id486" name="DONGHWA.PLC.RECIPE.SEGMENT_18.FASTCOOLING_18" class="input-checkbox" disabled></div>
    <div class="gas-n-18"><input type="checkbox" id="id487" name="DONGHWA.PLC.RECIPE.SEGMENT_18.GAS_N_18" class="input-checkbox" disabled></div> <!-- Updated from id415 -->
    <div class="gas-a-18"><input type="checkbox" id="id488" name="DONGHWA.PLC.RECIPE.SEGMENT_18.GAS_A_18" class="input-checkbox" disabled></div>
    <div class="spare-18"><input type="checkbox" id="id489" name="DONGHWA.PLC.RECIPE.SEGMENT_18.SPARE_18" class="input-checkbox"></div>
    <div class="hydrulic-off-18"><input type="checkbox" id="id490" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HYDRULIC_OFF_18" class="input-checkbox"></div> <!-- Updated from id418 -->
    <div class="press-capacity-18"><input type="checkbox" id="id491" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESS_CAPACITY_18" class="input-checkbox"></div>
    <div class="press-position-18"><input type="checkbox" id="id492" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESS_POSITION_18" class="input-checkbox"></div>
    <div class="press-distance-18"><input type="checkbox" id="id493" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESS_DISTANCE_18" class="input-checkbox"></div>
</div>
<div id="seg-19">
    <div class="segment-19"><input type="text" class="input-segment" id="segment_19" value="19" disabled/></div>
    <div class="process-step-19"><input type="text" class="input-text" id="id494" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PROCESS_STEP_19" oninput="validateNumberInput(event)"/></div>
    <div class="time-19"><input type="text" class="input-text" id="id495" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TIME_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-19"><input type="text" class="input-text" id="id496" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TEMPERATURE_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-19"><input type="text" class="input-text" id="id497" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TEMPERATURE_TC_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-19"><input type="text" class="input-text" id="id498" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TEMPERATURE_TH_19" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-19"><input type="text" class="input-text" id="id499" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HBTH_499" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-19"><input type="text" class="input-text" id="id500" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESSURE_SV_500" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-19"><input type="text" class="input-text" id="id425" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESSING_ONE_19" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-19"><input type="text" class="input-text" id="id502" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESSING_TWO_19" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-19"><input type="text" class="input-text" id="id503" name="DONGHWA.PLC.RECIPE.SEGMENT_19.FORCE_TOL_19" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-19"><input type="text" class="input-text" id="id504" name="DONGHWA.PLC.RECIPE.SEGMENT_19.POSITION_AB_19" oninput="validateNumberInput(event)"/></div> <!-- Updated from id428 -->
    <div class="position-rel-19"><input type="text" class="input-text" id="id505" name="DONGHWA.PLC.RECIPE.SEGMENT_19.POSITION_REL_19" oninput="validateNumberInput(event)"/></div>
    <div class="distance-19"><input type="text" class="input-text" id="id506" name="DONGHWA.PLC.RECIPE.SEGMENT_19.DISTANCE_19" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-19"><input type="text" class="input-text" id="id507" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HOLDING_ONE_19" oninput="validateNumberInput(event)"/></div> <!-- Updated from id431 -->
    <div class="holding-two-19"><input type="text" class="input-text" id="id508" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HOLDING_TWO_19" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-19"><input type="text" class="input-text" id="id509" name="DONGHWA.PLC.RECIPE.SEGMENT_19.NUMBER_LOOPS_19" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-19"><input type="text" class="input-text" id="id510" name="DONGHWA.PLC.RECIPE.SEGMENT_19.SPEED_PLUNGER_19" oninput="validateNumberInput(event)"/></div> <!-- Updated from id434 -->
    <div class="gradient-force-19"><input type="text" class="input-text" id="id511" name="DONGHWA.PLC.RECIPE.SEGMENT_19.GRADIENT_FORCE_19" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-19"><input type="checkbox" id="id512" name="DONGHWA.PLC.RECIPE.SEGMENT_19.FASTCOOLING_19" class="input-checkbox" disabled></div>
    <div class="gas-n-19"><input type="checkbox" id="id513" name="DONGHWA.PLC.RECIPE.SEGMENT_19.GAS_N_19" class="input-checkbox" disabled></div> <!-- Updated from id437 -->
    <div class="gas-a-19"><input type="checkbox" id="id514" name="DONGHWA.PLC.RECIPE.SEGMENT_19.GAS_A_19" class="input-checkbox" disabled></div>
    <div class="spare-19"><input type="checkbox" id="id515" name="DONGHWA.PLC.RECIPE.SEGMENT_19.SPARE_19" class="input-checkbox"></div>
    <div class="hydrulic-off-19"><input type="checkbox" id="id516" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HYDRULIC_OFF_19" class="input-checkbox"></div> <!-- Updated from id440 -->
    <div class="press-capacity-19"><input type="checkbox" id="id517" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESS_CAPACITY_19" class="input-checkbox"></div>
    <div class="press-position-19"><input type="checkbox" id="id518" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESS_POSITION_19" class="input-checkbox"></div>
    <div class="press-distance-19"><input type="checkbox" id="id519" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESS_DISTANCE_19" class="input-checkbox"></div>
</div>
<div id="seg20">
    <div class="segment-20"><input type="text" class="input-segment" id="segment_20" value="20" disabled/></div>
    <div class="process-step-20"><input type="text" class="input-text" id="id520" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PROCESS_STEP_20" oninput="validateNumberInput(event)"/></div>
    <div class="time-20"><input type="text" class="input-text" id="id521" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TIME_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-20"><input type="text" class="input-text" id="id522" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TEMPERATURE_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-20"><input type="text" class="input-text" id="id523" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TEMPERATURE_TC_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-20"><input type="text" class="input-text" id="id524" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TEMPERATURE_TH_20" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-20"><input type="text" class="input-text" id="id525" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HBTH_525" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-20"><input type="text" class="input-text" id="id526" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESSURE_SV_526" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-20"><input type="text" class="input-text" id="id447" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESSING_ONE_20" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-20"><input type="text" class="input-text" id="id528" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESSING_TWO_20" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-20"><input type="text" class="input-text" id="id529" name="DONGHWA.PLC.RECIPE.SEGMENT_20.FORCE_TOL_20" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-20"><input type="text" class="input-text" id="id530" name="DONGHWA.PLC.RECIPE.SEGMENT_20.POSITION_AB_20" oninput="validateNumberInput(event)"/></div> <!-- Updated from id450 -->
    <div class="position-rel-20"><input type="text" class="input-text" id="id531" name="DONGHWA.PLC.RECIPE.SEGMENT_20.POSITION_REL_20" oninput="validateNumberInput(event)"/></div>
    <div class="distance-20"><input type="text" class="input-text" id="id532" name="DONGHWA.PLC.RECIPE.SEGMENT_20.DISTANCE_20" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-20"><input type="text" class="input-text" id="id533" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HOLDING_ONE_20" oninput="validateNumberInput(event)"/></div> <!-- Updated from id453 -->
    <div class="holding-two-20"><input type="text" class="input-text" id="id534" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HOLDING_TWO_20" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-20"><input type="text" class="input-text" id="id535" name="DONGHWA.PLC.RECIPE.SEGMENT_20.NUMBER_LOOPS_20" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-20"><input type="text" class="input-text" id="id536" name="DONGHWA.PLC.RECIPE.SEGMENT_20.SPEED_PLUNGER_20" oninput="validateNumberInput(event)"/></div> <!-- Updated from id456 -->
    <div class="gradient-force-20"><input type="text" class="input-text" id="id537" name="DONGHWA.PLC.RECIPE.SEGMENT_20.GRADIENT_FORCE_20" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-20"><input type="checkbox" id="id538" name="DONGHWA.PLC.RECIPE.SEGMENT_20.FASTCOOLING_20" class="input-checkbox" disabled></div>
    <div class="gas-n-20"><input type="checkbox" id="id539" name="DONGHWA.PLC.RECIPE.SEGMENT_20.GAS_N_20" class="input-checkbox" disabled></div> <!-- Updated from id459 -->
    <div class="gas-a-20"><input type="checkbox" id="id540" name="DONGHWA.PLC.RECIPE.SEGMENT_20.GAS_A_20" class="input-checkbox" disabled></div>
    <div class="spare-20"><input type="checkbox" id="id541" name="DONGHWA.PLC.RECIPE.SEGMENT_20.SPARE_20" class="input-checkbox"></div>
    <div class="hydrulic-off-20"><input type="checkbox" id="id542" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HYDRULIC_OFF_20" class="input-checkbox"></div> <!-- Updated from id462 -->
    <div class="press-capacity-20"><input type="checkbox" id="id543" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESS_CAPACITY_20" class="input-checkbox"></div>
    <div class="press-position-20"><input type="checkbox" id="id544" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESS_POSITION_20" class="input-checkbox"></div>
    <div class="press-distance-20"><input type="checkbox" id="id545" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESS_DISTANCE_20" class="input-checkbox"></div>
</div>
<div id="seg-21">
    <div class="segment-21"><input type="text" class="input-segment" id="segment_21" value="21" disabled/></div>
    <div class="process-step-21"><input type="text" class="input-text" id="id546" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PROCESS_STEP_21" oninput="validateNumberInput(event)"/></div>
    <div class="time-21"><input type="text" class="input-text" id="id547" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TIME_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-21"><input type="text" class="input-text" id="id548" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TEMPERATURE_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-21"><input type="text" class="input-text" id="id549" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TEMPERATURE_TC_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-21"><input type="text" class="input-text" id="id550" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TEMPERATURE_TH_21" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-21"><input type="text" class="input-text" id="id551" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HBTH_551" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-21"><input type="text" class="input-text" id="id552" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESSURE_SV_552" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-21"><input type="text" class="input-text" id="id469" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESSING_ONE_21" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-21"><input type="text" class="input-text" id="id554" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESSING_TWO_21" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-21"><input type="text" class="input-text" id="id555" name="DONGHWA.PLC.RECIPE.SEGMENT_21.FORCE_TOL_21" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-21"><input type="text" class="input-text" id="id556" name="DONGHWA.PLC.RECIPE.SEGMENT_21.POSITION_AB_21" oninput="validateNumberInput(event)"/></div> <!-- Updated from id472 -->
    <div class="position-rel-21"><input type="text" class="input-text" id="id557" name="DONGHWA.PLC.RECIPE.SEGMENT_21.POSITION_REL_21" oninput="validateNumberInput(event)"/></div>
    <div class="distance-21"><input type="text" class="input-text" id="id558" name="DONGHWA.PLC.RECIPE.SEGMENT_21.DISTANCE_21" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-21"><input type="text" class="input-text" id="id559" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HOLDING_ONE_21" oninput="validateNumberInput(event)"/></div> <!-- Updated from id475 -->
    <div class="holding-two-21"><input type="text" class="input-text" id="id560" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HOLDING_TWO_21" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-21"><input type="text" class="input-text" id="id561" name="DONGHWA.PLC.RECIPE.SEGMENT_21.NUMBER_LOOPS_21" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-21"><input type="text" class="input-text" id="id562" name="DONGHWA.PLC.RECIPE.SEGMENT_21.SPEED_PLUNGER_21" oninput="validateNumberInput(event)"/></div> <!-- Updated from id478 -->
    <div class="gradient-force-21"><input type="text" class="input-text" id="id563" name="DONGHWA.PLC.RECIPE.SEGMENT_21.GRADIENT_FORCE_21" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-21"><input type="checkbox" id="id564" name="DONGHWA.PLC.RECIPE.SEGMENT_21.FASTCOOLING_21" class="input-checkbox" disabled></div>
    <div class="gas-n-21"><input type="checkbox" id="id565" name="DONGHWA.PLC.RECIPE.SEGMENT_21.GAS_N_21" class="input-checkbox" disabled></div> <!-- Updated from id481 -->
    <div class="gas-a-21"><input type="checkbox" id="id566" name="DONGHWA.PLC.RECIPE.SEGMENT_21.GAS_A_21" class="input-checkbox" disabled></div>
    <div class="spare-21"><input type="checkbox" id="id567" name="DONGHWA.PLC.RECIPE.SEGMENT_21.SPARE_21" class="input-checkbox"></div>
    <div class="hydrulic-off-21"><input type="checkbox" id="id568" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HYDRULIC_OFF_21" class="input-checkbox"></div> <!-- Updated from id484 -->
    <div class="press-capacity-21"><input type="checkbox" id="id569" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESS_CAPACITY_21" class="input-checkbox"></div>
    <div class="press-position-21"><input type="checkbox" id="id570" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESS_POSITION_21" class="input-checkbox"></div>
    <div class="press-distance-21"><input type="checkbox" id="id571" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESS_DISTANCE_21" class="input-checkbox"></div>
</div>
<div id="seg-22">
    <div class="segment-22"><input type="text" class="input-segment" id="segment_22" value="22" disabled/></div>
    <div class="process-step-22"><input type="text" class="input-text" id="id572" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PROCESS_STEP_22" oninput="validateNumberInput(event)"/></div>
    <div class="time-22"><input type="text" class="input-text" id="id573" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TIME_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-22"><input type="text" class="input-text" id="id574" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TEMPERATURE_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-22"><input type="text" class="input-text" id="id575" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TEMPERATURE_TC_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-22"><input type="text" class="input-text" id="id576" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TEMPERATURE_TH_22" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-22"><input type="text" class="input-text" id="id577" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HBTH_577" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-22"><input type="text" class="input-text" id="id578" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESSURE_SV_578" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-22"><input type="text" class="input-text" id="id493" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESSING_ONE_22" oninput="validateNumberInput(event)"/></div> <!-- Updated from id491 -->
    <div class="pressing-two-22"><input type="text" class="input-text" id="id580" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESSING_TWO_22" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-22"><input type="text" class="input-text" id="id581" name="DONGHWA.PLC.RECIPE.SEGMENT_22.FORCE_TOL_22" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-22"><input type="text" class="input-text" id="id582" name="DONGHWA.PLC.RECIPE.SEGMENT_22.POSITION_AB_22" oninput="validateNumberInput(event)"/></div> <!-- Updated from id494 -->
    <div class="position-rel-22"><input type="text" class="input-text" id="id583" name="DONGHWA.PLC.RECIPE.SEGMENT_22.POSITION_REL_22" oninput="validateNumberInput(event)"/></div>
    <div class="distance-22"><input type="text" class="input-text" id="id584" name="DONGHWA.PLC.RECIPE.SEGMENT_22.DISTANCE_22" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-22"><input type="text" class="input-text" id="id585" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HOLDING_ONE_22" oninput="validateNumberInput(event)"/></div> <!-- Updated from id497 -->
    <div class="holding-two-22"><input type="text" class="input-text" id="id586" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HOLDING_TWO_22" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-22"><input type="text" class="input-text" id="id587" name="DONGHWA.PLC.RECIPE.SEGMENT_22.NUMBER_LOOPS_22" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-22"><input type="text" class="input-text" id="id588" name="DONGHWA.PLC.RECIPE.SEGMENT_22.SPEED_PLUNGER_22" oninput="validateNumberInput(event)"/></div> <!-- Updated from id500 -->
    <div class="gradient-force-22"><input type="text" class="input-text" id="id589" name="DONGHWA.PLC.RECIPE.SEGMENT_22.GRADIENT_FORCE_22" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-22"><input type="checkbox" id="id590" name="DONGHWA.PLC.RECIPE.SEGMENT_22.FASTCOOLING_22" class="input-checkbox" disabled></div>
    <div class="gas-n-22"><input type="checkbox" id="id591" name="DONGHWA.PLC.RECIPE.SEGMENT_22.GAS_N_22" class="input-checkbox" disabled></div> <!-- Updated from id503 -->
    <div class="gas-a-22"><input type="checkbox" id="id592" name="DONGHWA.PLC.RECIPE.SEGMENT_22.GAS_A_22" class="input-checkbox" disabled></div>
    <div class="spare-22"><input type="checkbox" id="id593" name="DONGHWA.PLC.RECIPE.SEGMENT_22.SPARE_22" class="input-checkbox"></div>
    <div class="hydrulic-off-22"><input type="checkbox" id="id594" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HYDRULIC_OFF_22" class="input-checkbox"></div> <!-- Updated from id506 -->
    <div class="press-capacity-22"><input type="checkbox" id="id595" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESS_CAPACITY_22" class="input-checkbox"></div>
    <div class="press-position-22"><input type="checkbox" id="id596" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESS_POSITION_22" class="input-checkbox"></div>
    <div class="press-distance-22"><input type="checkbox" id="id597" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESS_DISTANCE_22" class="input-checkbox"></div>
</div>
<div id="seg-23">
    <div class="segment-23"><input type="text" class="input-segment" id="segment_23" value="23" disabled/></div>
    <div class="process-step-23"><input type="text" class="input-text" id="id598" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PROCESS_STEP_23" oninput="validateNumberInput(event)"/></div>
    <div class="time-23"><input type="text" class="input-text" id="id599" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TIME_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-23"><input type="text" class="input-text" id="id600" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TEMPERATURE_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-23"><input type="text" class="input-text" id="id601" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TEMPERATURE_TC_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-23"><input type="text" class="input-text" id="id602" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TEMPERATURE_TH_23" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-23"><input type="text" class="input-text" id="id603" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HBTH_603" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-23"><input type="text" class="input-text" id="id604" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESSURE_SV_604" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-23"><input type="text" class="input-text" id="id515" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESSING_ONE_23" oninput="validateNumberInput(event)"/></div> <!-- Updated from id513 -->
    <div class="pressing-two-23"><input type="text" class="input-text" id="id606" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESSING_TWO_23" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-23"><input type="text" class="input-text" id="id607" name="DONGHWA.PLC.RECIPE.SEGMENT_23.FORCE_TOL_23" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-23"><input type="text" class="input-text" id="id608" name="DONGHWA.PLC.RECIPE.SEGMENT_23.POSITION_AB_23" oninput="validateNumberInput(event)"/></div> <!-- Updated from id516 -->
    <div class="position-rel-23"><input type="text" class="input-text" id="id609" name="DONGHWA.PLC.RECIPE.SEGMENT_23.POSITION_REL_23" oninput="validateNumberInput(event)"/></div>
    <div class="distance-23"><input type="text" class="input-text" id="id610" name="DONGHWA.PLC.RECIPE.SEGMENT_23.DISTANCE_23" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-23"><input type="text" class="input-text" id="id611" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HOLDING_ONE_23" oninput="validateNumberInput(event)"/></div> <!-- Updated from id519 -->
    <div class="holding-two-23"><input type="text" class="input-text" id="id612" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HOLDING_TWO_23" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-23"><input type="text" class="input-text" id="id613" name="DONGHWA.PLC.RECIPE.SEGMENT_23.NUMBER_LOOPS_23" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-23"><input type="text" class="input-text" id="id614" name="DONGHWA.PLC.RECIPE.SEGMENT_23.SPEED_PLUNGER_23" oninput="validateNumberInput(event)"/></div> <!-- Updated from id522 -->
    <div class="gradient-force-23"><input type="text" class="input-text" id="id615" name="DONGHWA.PLC.RECIPE.SEGMENT_23.GRADIENT_FORCE_23" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-23"><input type="checkbox" id="id616" name="DONGHWA.PLC.RECIPE.SEGMENT_23.FASTCOOLING_23" class="input-checkbox" disabled></div>
    <div class="gas-n-23"><input type="checkbox" id="id617" name="DONGHWA.PLC.RECIPE.SEGMENT_23.GAS_N_23" class="input-checkbox" disabled></div> <!-- Updated from id525 -->
    <div class="gas-a-23"><input type="checkbox" id="id618" name="DONGHWA.PLC.RECIPE.SEGMENT_23.GAS_A_23" class="input-checkbox" disabled></div>
    <div class="spare-23"><input type="checkbox" id="id619" name="DONGHWA.PLC.RECIPE.SEGMENT_23.SPARE_23" class="input-checkbox"></div>
    <div class="hydrulic-off-23"><input type="checkbox" id="id620" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HYDRULIC_OFF_23" class="input-checkbox"></div> <!-- Updated from id528 -->
    <div class="press-capacity-23"><input type="checkbox" id="id621" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESS_CAPACITY_23" class="input-checkbox"></div>
    <div class="press-position-23"><input type="checkbox" id="id622" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESS_POSITION_23" class="input-checkbox"></div>
    <div class="press-distance-23"><input type="checkbox" id="id623" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESS_DISTANCE_23" class="input-checkbox"></div>
</div>
<div id="seg-24">
    <div class="segment-24"><input type="text" class="input-segment" id="segment_24" value="24" disabled/></div>
    <div class="process-step-24"><input type="text" class="input-text" id="id624" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PROCESS_STEP_24" oninput="validateNumberInput(event)"/></div>
    <div class="time-24"><input type="text" class="input-text" id="id625" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TIME_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-24"><input type="text" class="input-text" id="id626" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TEMPERATURE_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-24"><input type="text" class="input-text" id="id627" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TEMPERATURE_TC_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-24"><input type="text" class="input-text" id="id628" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TEMPERATURE_TH_24" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-24"><input type="text" class="input-text" id="id629" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HBTH_629" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-24"><input type="text" class="input-text" id="id630" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESSURE_SV_630" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-24"><input type="text" class="input-text" id="id537" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESSING_ONE_24" oninput="validateNumberInput(event)"/></div> <!-- Updated from id535 -->
    <div class="pressing-two-24"><input type="text" class="input-text" id="id632" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESSING_TWO_24" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-24"><input type="text" class="input-text" id="id633" name="DONGHWA.PLC.RECIPE.SEGMENT_24.FORCE_TOL_24" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-24"><input type="text" class="input-text" id="id634" name="DONGHWA.PLC.RECIPE.SEGMENT_24.POSITION_AB_24" oninput="validateNumberInput(event)"/></div> <!-- Updated from id538 -->
    <div class="position-rel-24"><input type="text" class="input-text" id="id635" name="DONGHWA.PLC.RECIPE.SEGMENT_24.POSITION_REL_24" oninput="validateNumberInput(event)"/></div>
    <div class="distance-24"><input type="text" class="input-text" id="id636" name="DONGHWA.PLC.RECIPE.SEGMENT_24.DISTANCE_24" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-24"><input type="text" class="input-text" id="id637" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HOLDING_ONE_24" oninput="validateNumberInput(event)"/></div> <!-- Updated from id541 -->
    <div class="holding-two-24"><input type="text" class="input-text" id="id638" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HOLDING_TWO_24" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-24"><input type="text" class="input-text" id="id639" name="DONGHWA.PLC.RECIPE.SEGMENT_24.NUMBER_LOOPS_24" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-24"><input type="text" class="input-text" id="id640" name="DONGHWA.PLC.RECIPE.SEGMENT_24.SPEED_PLUNGER_24" oninput="validateNumberInput(event)"/></div> <!-- Updated from id544 -->
    <div class="gradient-force-24"><input type="text" class="input-text" id="id641" name="DONGHWA.PLC.RECIPE.SEGMENT_24.GRADIENT_FORCE_24" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-24"><input type="checkbox" id="id642" name="DONGHWA.PLC.RECIPE.SEGMENT_24.FASTCOOLING_24" class="input-checkbox" disabled></div>
    <div class="gas-n-24"><input type="checkbox" id="id643" name="DONGHWA.PLC.RECIPE.SEGMENT_24.GAS_N_24" class="input-checkbox" disabled></div> <!-- Updated from id547 -->
    <div class="gas-a-24"><input type="checkbox" id="id644" name="DONGHWA.PLC.RECIPE.SEGMENT_24.GAS_A_24" class="input-checkbox" disabled></div>
    <div class="spare-24"><input type="checkbox" id="id645" name="DONGHWA.PLC.RECIPE.SEGMENT_24.SPARE_24" class="input-checkbox"></div>
    <div class="hydrulic-off-24"><input type="checkbox" id="id646" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HYDRULIC_OFF_24" class="input-checkbox"></div> <!-- Updated from id550 -->
    <div class="press-capacity-24"><input type="checkbox" id="id647" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESS_CAPACITY_24" class="input-checkbox"></div>
    <div class="press-position-24"><input type="checkbox" id="id648" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESS_POSITION_24" class="input-checkbox"></div>
    <div class="press-distance-24"><input type="checkbox" id="id649" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESS_DISTANCE_24" class="input-checkbox"></div>
</div>
<div id="seg-25">
    <div class="segment-25"><input type="text" class="input-segment" id="segment_25" value="25" disabled/></div>
    <div class="process-step-25"><input type="text" class="input-text" id="id650" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PROCESS_STEP_25" oninput="validateNumberInput(event)"/></div>
    <div class="time-25"><input type="text" class="input-text" id="id651" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TIME_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-25"><input type="text" class="input-text" id="id652" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TEMPERATURE_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-25"><input type="text" class="input-text" id="id653" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TEMPERATURE_TC_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-25"><input type="text" class="input-text" id="id654" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TEMPERATURE_TH_25" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-25"><input type="text" class="input-text" id="id655" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HBTH_655" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-25"><input type="text" class="input-text" id="id656" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESSURE_SV_656" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-25"><input type="text" class="input-text" id="id559" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESSING_ONE_25" oninput="validateNumberInput(event)"/></div> <!-- Updated from id557 -->
    <div class="pressing-two-25"><input type="text" class="input-text" id="id658" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESSING_TWO_25" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-25"><input type="text" class="input-text" id="id659" name="DONGHWA.PLC.RECIPE.SEGMENT_25.FORCE_TOL_25" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-25"><input type="text" class="input-text" id="id660" name="DONGHWA.PLC.RECIPE.SEGMENT_25.POSITION_AB_25" oninput="validateNumberInput(event)"/></div> <!-- Updated from id560 -->
    <div class="position-rel-25"><input type="text" class="input-text" id="id661" name="DONGHWA.PLC.RECIPE.SEGMENT_25.POSITION_REL_25" oninput="validateNumberInput(event)"/></div>
    <div class="distance-25"><input type="text" class="input-text" id="id662" name="DONGHWA.PLC.RECIPE.SEGMENT_25.DISTANCE_25" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-25"><input type="text" class="input-text" id="id663" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HOLDING_ONE_25" oninput="validateNumberInput(event)"/></div> <!-- Updated from id563 -->
    <div class="holding-two-25"><input type="text" class="input-text" id="id664" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HOLDING_TWO_25" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-25"><input type="text" class="input-text" id="id665" name="DONGHWA.PLC.RECIPE.SEGMENT_25.NUMBER_LOOPS_25" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-25"><input type="text" class="input-text" id="id666" name="DONGHWA.PLC.RECIPE.SEGMENT_25.SPEED_PLUNGER_25" oninput="validateNumberInput(event)"/></div> <!-- Updated from id566 -->
    <div class="gradient-force-25"><input type="text" class="input-text" id="id667" name="DONGHWA.PLC.RECIPE.SEGMENT_25.GRADIENT_FORCE_25" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-25"><input type="checkbox" id="id668" name="DONGHWA.PLC.RECIPE.SEGMENT_25.FASTCOOLING_25" class="input-checkbox" disabled></div>
    <div class="gas-n-25"><input type="checkbox" id="id669" name="DONGHWA.PLC.RECIPE.SEGMENT_25.GAS_N_25" class="input-checkbox" disabled></div> <!-- Updated from id569 -->
    <div class="gas-a-25"><input type="checkbox" id="id670" name="DONGHWA.PLC.RECIPE.SEGMENT_25.GAS_A_25" class="input-checkbox" disabled></div>
    <div class="spare-25"><input type="checkbox" id="id671" name="DONGHWA.PLC.RECIPE.SEGMENT_25.SPARE_25" class="input-checkbox"></div>
    <div class="hydrulic-off-25"><input type="checkbox" id="id672" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HYDRULIC_OFF_25" class="input-checkbox"></div> <!-- Updated from id572 -->
    <div class="press-capacity-25"><input type="checkbox" id="id673" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESS_CAPACITY_25" class="input-checkbox"></div>
    <div class="press-position-25"><input type="checkbox" id="id674" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESS_POSITION_25" class="input-checkbox"></div>
    <div class="press-distance-25"><input type="checkbox" id="id675" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESS_DISTANCE_25" class="input-checkbox"></div>
</div>
<div id="seg-26">
    <div class="segment-26"><input type="text" class="input-segment" id="segment_26" value="26" disabled/></div>
    <div class="process-step-26"><input type="text" class="input-text" id="id676" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PROCESS_STEP_26" oninput="validateNumberInput(event)"/></div>
    <div class="time-26"><input type="text" class="input-text" id="id677" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TIME_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-26"><input type="text" class="input-text" id="id678" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TEMPERATURE_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-26"><input type="text" class="input-text" id="id679" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TEMPERATURE_TC_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-26"><input type="text" class="input-text" id="id680" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TEMPERATURE_TH_26" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-26"><input type="text" class="input-text" id="id681" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HBTH_681" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-26"><input type="text" class="input-text" id="id682" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESSURE_SV_682" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-26"><input type="text" class="input-text" id="id581" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESSING_ONE_26" oninput="validateNumberInput(event)"/></div> <!-- Updated from id579 -->
    <div class="pressing-two-26"><input type="text" class="input-text" id="id684" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESSING_TWO_26" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-26"><input type="text" class="input-text" id="id685" name="DONGHWA.PLC.RECIPE.SEGMENT_26.FORCE_TOL_26" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-26"><input type="text" class="input-text" id="id686" name="DONGHWA.PLC.RECIPE.SEGMENT_26.POSITION_AB_26" oninput="validateNumberInput(event)"/></div> <!-- Updated from id582 -->
    <div class="position-rel-26"><input type="text" class="input-text" id="id687" name="DONGHWA.PLC.RECIPE.SEGMENT_26.POSITION_REL_26" oninput="validateNumberInput(event)"/></div>
    <div class="distance-26"><input type="text" class="input-text" id="id688" name="DONGHWA.PLC.RECIPE.SEGMENT_26.DISTANCE_26" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-26"><input type="text" class="input-text" id="id689" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HOLDING_ONE_26" oninput="validateNumberInput(event)"/></div> <!-- Updated from id585 -->
    <div class="holding-two-26"><input type="text" class="input-text" id="id690" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HOLDING_TWO_26" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-26"><input type="text" class="input-text" id="id691" name="DONGHWA.PLC.RECIPE.SEGMENT_26.NUMBER_LOOPS_26" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-26"><input type="text" class="input-text" id="id692" name="DONGHWA.PLC.RECIPE.SEGMENT_26.SPEED_PLUNGER_26" oninput="validateNumberInput(event)"/></div> <!-- Updated from id588 -->
    <div class="gradient-force-26"><input type="text" class="input-text" id="id693" name="DONGHWA.PLC.RECIPE.SEGMENT_26.GRADIENT_FORCE_26" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-26"><input type="checkbox" id="id694" name="DONGHWA.PLC.RECIPE.SEGMENT_26.FASTCOOLING_26" class="input-checkbox" disabled></div>
    <div class="gas-n-26"><input type="checkbox" id="id695" name="DONGHWA.PLC.RECIPE.SEGMENT_26.GAS_N_26" class="input-checkbox" disabled></div> <!-- Updated from id591 -->
    <div class="gas-a-26"><input type="checkbox" id="id696" name="DONGHWA.PLC.RECIPE.SEGMENT_26.GAS_A_26" class="input-checkbox" disabled></div>
    <div class="spare-26"><input type="checkbox" id="id697" name="DONGHWA.PLC.RECIPE.SEGMENT_26.SPARE_26" class="input-checkbox"></div>
    <div class="hydrulic-off-26"><input type="checkbox" id="id698" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HYDRULIC_OFF_26" class="input-checkbox"></div> <!-- Updated from id594 -->
    <div class="press-capacity-26"><input type="checkbox" id="id699" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESS_CAPACITY_26" class="input-checkbox"></div>
    <div class="press-position-26"><input type="checkbox" id="id700" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESS_POSITION_26" class="input-checkbox"></div>
    <div class="press-distance-26"><input type="checkbox" id="id701" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESS_DISTANCE_26" class="input-checkbox"></div>
</div>
<div id="seg-27">
    <div class="segment-27"><input type="text" class="input-segment" id="segment_27" value="27" disabled/></div>
    <div class="process-step-27"><input type="text" class="input-text" id="id702" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PROCESS_STEP_27" oninput="validateNumberInput(event)"/></div>
    <div class="time-27"><input type="text" class="input-text" id="id703" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TIME_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-27"><input type="text" class="input-text" id="id704" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TEMPERATURE_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-27"><input type="text" class="input-text" id="id705" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TEMPERATURE_TC_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-27"><input type="text" class="input-text" id="id706" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TEMPERATURE_TH_27" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-27"><input type="text" class="input-text" id="id707" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HBTH_707" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-27"><input type="text" class="input-text" id="id708" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESSURE_SV_708" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-27"><input type="text" class="input-text" id="id601" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESSING_ONE_27" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-27"><input type="text" class="input-text" id="id710" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESSING_TWO_27" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-27"><input type="text" class="input-text" id="id711" name="DONGHWA.PLC.RECIPE.SEGMENT_27.FORCE_TOL_27" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-27"><input type="text" class="input-text" id="id712" name="DONGHWA.PLC.RECIPE.SEGMENT_27.POSITION_AB_27" oninput="validateNumberInput(event)"/></div> <!-- Updated from id604 -->
    <div class="position-rel-27"><input type="text" class="input-text" id="id713" name="DONGHWA.PLC.RECIPE.SEGMENT_27.POSITION_REL_27" oninput="validateNumberInput(event)"/></div>
    <div class="distance-27"><input type="text" class="input-text" id="id714" name="DONGHWA.PLC.RECIPE.SEGMENT_27.DISTANCE_27" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-27"><input type="text" class="input-text" id="id715" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HOLDING_ONE_27" oninput="validateNumberInput(event)"/></div> <!-- Updated from id607 -->
    <div class="holding-two-27"><input type="text" class="input-text" id="id716" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HOLDING_TWO_27" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-27"><input type="text" class="input-text" id="id717" name="DONGHWA.PLC.RECIPE.SEGMENT_27.NUMBER_LOOPS_27" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-27"><input type="text" class="input-text" id="id718" name="DONGHWA.PLC.RECIPE.SEGMENT_27.SPEED_PLUNGER_27" oninput="validateNumberInput(event)"/></div> <!-- Updated from id610 -->
    <div class="gradient-force-27"><input type="text" class="input-text" id="id719" name="DONGHWA.PLC.RECIPE.SEGMENT_27.GRADIENT_FORCE_27" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-27"><input type="checkbox" id="id720" name="DONGHWA.PLC.RECIPE.SEGMENT_27.FASTCOOLING_27" class="input-checkbox" disabled></div>
    <div class="gas-n-27"><input type="checkbox" id="id721" name="DONGHWA.PLC.RECIPE.SEGMENT_27.GAS_N_27" class="input-checkbox" disabled></div> <!-- Updated from id613 -->
    <div class="gas-a-27"><input type="checkbox" id="id722" name="DONGHWA.PLC.RECIPE.SEGMENT_27.GAS_A_27" class="input-checkbox" disabled></div>
    <div class="spare-27"><input type="checkbox" id="id723" name="DONGHWA.PLC.RECIPE.SEGMENT_27.SPARE_27" class="input-checkbox"></div>
    <div class="hydrulic-off-27"><input type="checkbox" id="id724" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HYDRULIC_OFF_27" class="input-checkbox"></div> <!-- Updated from id616 -->
    <div class="press-capacity-27"><input type="checkbox" id="id725" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESS_CAPACITY_27" class="input-checkbox"></div>
    <div class="press-position-27"><input type="checkbox" id="id726" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESS_POSITION_27" class="input-checkbox"></div>
    <div class="press-distance-27"><input type="checkbox" id="id727" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESS_DISTANCE_27" class="input-checkbox"></div>
</div>

<div id="seg-28">
    <div class="segment-28"><input type="text" class="input-segment" id="segment_28" value="28" disabled/></div>
    <div class="process-step-28"><input type="text" class="input-text" id="id728" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PROCESS_STEP_28" oninput="validateNumberInput(event)"/></div>
    <div class="time-28"><input type="text" class="input-text" id="id729" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TIME_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-28"><input type="text" class="input-text" id="id730" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TEMPERATURE_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-28"><input type="text" class="input-text" id="id731" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TEMPERATURE_TC_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-28"><input type="text" class="input-text" id="id732" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TEMPERATURE_TH_28" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-28"><input type="text" class="input-text" id="id733" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HBTH_733" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-28"><input type="text" class="input-text" id="id734" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESSURE_SV_734" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-28"><input type="text" class="input-text" id="id623" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESSING_ONE_28" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-28"><input type="text" class="input-text" id="id736" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESSING_TWO_28" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-28"><input type="text" class="input-text" id="id737" name="DONGHWA.PLC.RECIPE.SEGMENT_28.FORCE_TOL_28" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-28"><input type="text" class="input-text" id="id738" name="DONGHWA.PLC.RECIPE.SEGMENT_28.POSITION_AB_28" oninput="validateNumberInput(event)"/></div> <!-- Updated from id626 -->
    <div class="position-rel-28"><input type="text" class="input-text" id="id739" name="DONGHWA.PLC.RECIPE.SEGMENT_28.POSITION_REL_28" oninput="validateNumberInput(event)"/></div>
    <div class="distance-28"><input type="text" class="input-text" id="id740" name="DONGHWA.PLC.RECIPE.SEGMENT_28.DISTANCE_28" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-28"><input type="text" class="input-text" id="id741" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HOLDING_ONE_28" oninput="validateNumberInput(event)"/></div> <!-- Updated from id629 -->
    <div class="holding-two-28"><input type="text" class="input-text" id="id742" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HOLDING_TWO_28" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-28"><input type="text" class="input-text" id="id743" name="DONGHWA.PLC.RECIPE.SEGMENT_28.NUMBER_LOOPS_28" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-28"><input type="text" class="input-text" id="id744" name="DONGHWA.PLC.RECIPE.SEGMENT_28.SPEED_PLUNGER_28" oninput="validateNumberInput(event)"/></div> <!-- Updated from id632 -->
    <div class="gradient-force-28"><input type="text" class="input-text" id="id745" name="DONGHWA.PLC.RECIPE.SEGMENT_28.GRADIENT_FORCE_28" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-28"><input type="checkbox" id="id746" name="DONGHWA.PLC.RECIPE.SEGMENT_28.FASTCOOLING_28" class="input-checkbox" disabled></div>
    <div class="gas-n-28"><input type="checkbox" id="id747" name="DONGHWA.PLC.RECIPE.SEGMENT_28.GAS_N_28" class="input-checkbox" disabled></div> <!-- Updated from id635 -->
    <div class="gas-a-28"><input type="checkbox" id="id748" name="DONGHWA.PLC.RECIPE.SEGMENT_28.GAS_A_28" class="input-checkbox" disabled></div>
    <div class="spare-28"><input type="checkbox" id="id749" name="DONGHWA.PLC.RECIPE.SEGMENT_28.SPARE_28" class="input-checkbox"></div>
    <div class="hydrulic-off-28"><input type="checkbox" id="id750" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HYDRULIC_OFF_28" class="input-checkbox"></div> <!-- Updated from id638 -->
    <div class="press-capacity-28"><input type="checkbox" id="id751" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESS_CAPACITY_28" class="input-checkbox"></div>
    <div class="press-position-28"><input type="checkbox" id="id752" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESS_POSITION_28" class="input-checkbox"></div>
    <div class="press-distance-28"><input type="checkbox" id="id753" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESS_DISTANCE_28" class="input-checkbox"></div>
</div>
<div id="seg-29">
    <div class="segment-29"><input type="text" class="input-segment" id="segment_29" value="29" disabled/></div>
    <div class="process-step-29"><input type="text" class="input-text" id="id754" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PROCESS_STEP_29" oninput="validateNumberInput(event)"/></div>
    <div class="time-29"><input type="text" class="input-text" id="id755" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TIME_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-29"><input type="text" class="input-text" id="id756" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TEMPERATURE_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-29"><input type="text" class="input-text" id="id757" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TEMPERATURE_TC_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-29"><input type="text" class="input-text" id="id758" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TEMPERATURE_TH_29" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-29"><input type="text" class="input-text" id="id759" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HBTH_759" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-29"><input type="text" class="input-text" id="id760" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESSURE_SV_760" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-29"><input type="text" class="input-text" id="id645" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESSING_ONE_29" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-29"><input type="text" class="input-text" id="id762" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESSING_TWO_29" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-29"><input type="text" class="input-text" id="id763" name="DONGHWA.PLC.RECIPE.SEGMENT_29.FORCE_TOL_29" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-29"><input type="text" class="input-text" id="id764" name="DONGHWA.PLC.RECIPE.SEGMENT_29.POSITION_AB_29" oninput="validateNumberInput(event)"/></div> <!-- Updated from id648 -->
    <div class="position-rel-29"><input type="text" class="input-text" id="id765" name="DONGHWA.PLC.RECIPE.SEGMENT_29.POSITION_REL_29" oninput="validateNumberInput(event)"/></div>
    <div class="distance-29"><input type="text" class="input-text" id="id766" name="DONGHWA.PLC.RECIPE.SEGMENT_29.DISTANCE_29" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-29"><input type="text" class="input-text" id="id767" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HOLDING_ONE_29" oninput="validateNumberInput(event)"/></div> <!-- Updated from id651 -->
    <div class="holding-two-29"><input type="text" class="input-text" id="id768" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HOLDING_TWO_29" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-29"><input type="text" class="input-text" id="id769" name="DONGHWA.PLC.RECIPE.SEGMENT_29.NUMBER_LOOPS_29" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-29"><input type="text" class="input-text" id="id770" name="DONGHWA.PLC.RECIPE.SEGMENT_29.SPEED_PLUNGER_29" oninput="validateNumberInput(event)"/></div> <!-- Updated from id654 -->
    <div class="gradient-force-29"><input type="text" class="input-text" id="id771" name="DONGHWA.PLC.RECIPE.SEGMENT_29.GRADIENT_FORCE_29" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-29"><input type="checkbox" id="id772" name="DONGHWA.PLC.RECIPE.SEGMENT_29.FASTCOOLING_29" class="input-checkbox" disabled></div>
    <div class="gas-n-29"><input type="checkbox" id="id773" name="DONGHWA.PLC.RECIPE.SEGMENT_29.GAS_N_29" class="input-checkbox" disabled></div> <!-- Updated from id657 -->
    <div class="gas-a-29"><input type="checkbox" id="id774" name="DONGHWA.PLC.RECIPE.SEGMENT_29.GAS_A_29" class="input-checkbox" disabled></div>
    <div class="spare-29"><input type="checkbox" id="id775" name="DONGHWA.PLC.RECIPE.SEGMENT_29.SPARE_29" class="input-checkbox"></div>
    <div class="hydrulic-off-29"><input type="checkbox" id="id776" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HYDRULIC_OFF_29" class="input-checkbox"></div> <!-- Updated from id660 -->
    <div class="press-capacity-29"><input type="checkbox" id="id777" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESS_CAPACITY_29" class="input-checkbox"></div>
    <div class="press-position-29"><input type="checkbox" id="id778" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESS_POSITION_29" class="input-checkbox"></div>
    <div class="press-distance-29"><input type="checkbox" id="id779" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESS_DISTANCE_29" class="input-checkbox"></div>
</div>
<div id="seg-30">
    <div class="segment-30"><input type="text" class="input-segment" id="segment_30" value="30" disabled/></div>
    <div class="process-step-30"><input type="text" class="input-text" id="id780" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PROCESS_STEP_30" oninput="validateNumberInput(event)"/></div>
    <div class="time-30"><input type="text" class="input-text" id="id781" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TIME_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-30"><input type="text" class="input-text" id="id782" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TEMPERATURE_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-30"><input type="text" class="input-text" id="id783" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TEMPERATURE_TC_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-30"><input type="text" class="input-text" id="id784" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TEMPERATURE_TH_30" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-30"><input type="text" class="input-text" id="id785" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HBTH_785" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-30"><input type="text" class="input-text" id="id786" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESSURE_SV_786" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-30"><input type="text" class="input-text" id="id667" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESSING_ONE_30" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-30"><input type="text" class="input-text" id="id788" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESSING_TWO_30" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-30"><input type="text" class="input-text" id="id789" name="DONGHWA.PLC.RECIPE.SEGMENT_30.FORCE_TOL_30" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-30"><input type="text" class="input-text" id="id790" name="DONGHWA.PLC.RECIPE.SEGMENT_30.POSITION_AB_30" oninput="validateNumberInput(event)"/></div> <!-- Updated from id670 -->
    <div class="position-rel-30"><input type="text" class="input-text" id="id791" name="DONGHWA.PLC.RECIPE.SEGMENT_30.POSITION_REL_30" oninput="validateNumberInput(event)"/></div>
    <div class="distance-30"><input type="text" class="input-text" id="id792" name="DONGHWA.PLC.RECIPE.SEGMENT_30.DISTANCE_30" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-30"><input type="text" class="input-text" id="id793" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HOLDING_ONE_30" oninput="validateNumberInput(event)"/></div> <!-- Updated from id673 -->
    <div class="holding-two-30"><input type="text" class="input-text" id="id794" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HOLDING_TWO_30" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-30"><input type="text" class="input-text" id="id795" name="DONGHWA.PLC.RECIPE.SEGMENT_30.NUMBER_LOOPS_30" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-30"><input type="text" class="input-text" id="id796" name="DONGHWA.PLC.RECIPE.SEGMENT_30.SPEED_PLUNGER_30" oninput="validateNumberInput(event)"/></div> <!-- Updated from id676 -->
    <div class="gradient-force-30"><input type="text" class="input-text" id="id797" name="DONGHWA.PLC.RECIPE.SEGMENT_30.GRADIENT_FORCE_30" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-30"><input type="checkbox" id="id798" name="DONGHWA.PLC.RECIPE.SEGMENT_30.FASTCOOLING_30" class="input-checkbox" disabled></div>
    <div class="gas-n-30"><input type="checkbox" id="id799" name="DONGHWA.PLC.RECIPE.SEGMENT_30.GAS_N_30" class="input-checkbox" disabled></div> <!-- Updated from id679 -->
    <div class="gas-a-30"><input type="checkbox" id="id800" name="DONGHWA.PLC.RECIPE.SEGMENT_30.GAS_A_30" class="input-checkbox" disabled></div>
    <div class="spare-30"><input type="checkbox" id="id801" name="DONGHWA.PLC.RECIPE.SEGMENT_30.SPARE_30" class="input-checkbox"></div>
    <div class="hydrulic-off-30"><input type="checkbox" id="id802" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HYDRULIC_OFF_30" class="input-checkbox"></div> <!-- Updated from id682 -->
    <div class="press-capacity-30"><input type="checkbox" id="id803" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESS_CAPACITY_30" class="input-checkbox"></div>
    <div class="press-position-30"><input type="checkbox" id="id804" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESS_POSITION_30" class="input-checkbox"></div>
    <div class="press-distance-30"><input type="checkbox" id="id805" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESS_DISTANCE_30" class="input-checkbox"></div>
    </div>
<div id="seg-31">
    <div class="segment-31"><input type="text" class="input-segment" id="segment_31" value="31" disabled/></div>
    <div class="process-step-31"><input type="text" class="input-text" id="id806" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PROCESS_STEP_31" oninput="validateNumberInput(event)"/></div>
    <div class="time-31"><input type="text" class="input-text" id="id807" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TIME_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-31"><input type="text" class="input-text" id="id808" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TEMPERATURE_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-31"><input type="text" class="input-text" id="id809" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TEMPERATURE_TC_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-31"><input type="text" class="input-text" id="id810" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TEMPERATURE_TH_31" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-31"><input type="text" class="input-text" id="id811" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HBTH_811" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-31"><input type="text" class="input-text" id="id812" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESSURE_SV_812" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-31"><input type="text" class="input-text" id="id689" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESSING_ONE_31" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-31"><input type="text" class="input-text" id="id814" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESSING_TWO_31" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-31"><input type="text" class="input-text" id="id815" name="DONGHWA.PLC.RECIPE.SEGMENT_31.FORCE_TOL_31" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-31"><input type="text" class="input-text" id="id816" name="DONGHWA.PLC.RECIPE.SEGMENT_31.POSITION_AB_31" oninput="validateNumberInput(event)"/></div> <!-- Updated from id692 -->
    <div class="position-rel-31"><input type="text" class="input-text" id="id817" name="DONGHWA.PLC.RECIPE.SEGMENT_31.POSITION_REL_31" oninput="validateNumberInput(event)"/></div>
    <div class="distance-31"><input type="text" class="input-text" id="id818" name="DONGHWA.PLC.RECIPE.SEGMENT_31.DISTANCE_31" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-31"><input type="text" class="input-text" id="id819" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HOLDING_ONE_31" oninput="validateNumberInput(event)"/></div> <!-- Updated from id695 -->
    <div class="holding-two-31"><input type="text" class="input-text" id="id820" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HOLDING_TWO_31" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-31"><input type="text" class="input-text" id="id821" name="DONGHWA.PLC.RECIPE.SEGMENT_31.NUMBER_LOOPS_31" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-31"><input type="text" class="input-text" id="id822" name="DONGHWA.PLC.RECIPE.SEGMENT_31.SPEED_PLUNGER_31" oninput="validateNumberInput(event)"/></div> <!-- Updated from id698 -->
    <div class="gradient-force-31"><input type="text" class="input-text" id="id823" name="DONGHWA.PLC.RECIPE.SEGMENT_31.GRADIENT_FORCE_31" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-31"><input type="checkbox" id="id824" name="DONGHWA.PLC.RECIPE.SEGMENT_31.FASTCOOLING_31" class="input-checkbox" disabled></div>
    <div class="gas-a-31"><input type="checkbox" id="id826" name="DONGHWA.PLC.RECIPE.SEGMENT_31.GAS_A_31" class="input-checkbox" disabled></div>
    <div class="spare-31"><input type="checkbox" id="id827" name="DONGHWA.PLC.RECIPE.SEGMENT_31.SPARE_31" class="input-checkbox"></div>
    <div class="hydrulic-off-31"><input type="checkbox" id="id828" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HYDRULIC_OFF_31" class="input-checkbox"></div> <!-- Updated from id704 -->
    <div class="press-capacity-31"><input type="checkbox" id="id829" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESS_CAPACITY_31" class="input-checkbox"></div>
    <div class="press-position-31"><input type="checkbox" id="id830" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESS_POSITION_31" class="input-checkbox"></div>
    <div class="press-distance-31"><input type="checkbox" id="id831" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESS_DISTANCE_31" class="input-checkbox"></div>
</div>
<div id="seg-32">
    <div class="segment-32"><input type="text" class="input-segment" id="segment_32" value="32" disabled/></div>
    <div class="process-step-32"><input type="text" class="input-text" id="id832" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PROCESS_STEP_32" oninput="validateNumberInput(event)"/></div>
    <div class="time-32"><input type="text" class="input-text" id="id833" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TIME_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-32"><input type="text" class="input-text" id="id834" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TEMPERATURE_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-32"><input type="text" class="input-text" id="id835" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TEMPERATURE_TC_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-32"><input type="text" class="input-text" id="id836" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TEMPERATURE_TH_32" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-32"><input type="text" class="input-text" id="id837" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HBTH_837" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-32"><input type="text" class="input-text" id="id838" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESSURE_SV_838" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-32"><input type="text" class="input-text" id="id711" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESSING_ONE_32" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-32"><input type="text" class="input-text" id="id840" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESSING_TWO_32" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-32"><input type="text" class="input-text" id="id841" name="DONGHWA.PLC.RECIPE.SEGMENT_32.FORCE_TOL_32" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-32"><input type="text" class="input-text" id="id842" name="DONGHWA.PLC.RECIPE.SEGMENT_32.POSITION_AB_32" oninput="validateNumberInput(event)"/></div> <!-- Updated from id714 -->
    <div class="position-rel-32"><input type="text" class="input-text" id="id843" name="DONGHWA.PLC.RECIPE.SEGMENT_32.POSITION_REL_32" oninput="validateNumberInput(event)"/></div>
    <div class="distance-32"><input type="text" class="input-text" id="id844" name="DONGHWA.PLC.RECIPE.SEGMENT_32.DISTANCE_32" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-32"><input type="text" class="input-text" id="id845" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HOLDING_ONE_32" oninput="validateNumberInput(event)"/></div> <!-- Updated from id717 -->
    <div class="holding-two-32"><input type="text" class="input-text" id="id846" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HOLDING_TWO_32" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-32"><input type="text" class="input-text" id="id847" name="DONGHWA.PLC.RECIPE.SEGMENT_32.NUMBER_LOOPS_32" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-32"><input type="text" class="input-text" id="id848" name="DONGHWA.PLC.RECIPE.SEGMENT_32.SPEED_PLUNGER_32" oninput="validateNumberInput(event)"/></div> <!-- Updated from id720 -->
    <div class="gradient-force-32"><input type="text" class="input-text" id="id849" name="DONGHWA.PLC.RECIPE.SEGMENT_32.GRADIENT_FORCE_32" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-32"><input type="checkbox" id="id850" name="DONGHWA.PLC.RECIPE.SEGMENT_32.FASTCOOLING_32" class="input-checkbox" disabled></div>
    <div class="gas-n-32"><input type="checkbox" id="id851" name="DONGHWA.PLC.RECIPE.SEGMENT_32.GAS_N_32" class="input-checkbox" disabled></div> <!-- Updated from id723 -->
    <div class="gas-a-32"><input type="checkbox" id="id852" name="DONGHWA.PLC.RECIPE.SEGMENT_32.GAS_A_32" class="input-checkbox" disabled></div>
    <div class="spare-32"><input type="checkbox" id="id853" name="DONGHWA.PLC.RECIPE.SEGMENT_32.SPARE_32" class="input-checkbox"></div>
    <div class="hydrulic-off-32"><input type="checkbox" id="id854" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HYDRULIC_OFF_32" class="input-checkbox"></div> <!-- Updated from id726 -->
    <div class="press-capacity-32"><input type="checkbox" id="id855" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESS_CAPACITY_32" class="input-checkbox"></div>
    <div class="press-position-32"><input type="checkbox" id="id856" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESS_POSITION_32" class="input-checkbox"></div>
    <div class="press-distance-32"><input type="checkbox" id="id857" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESS_DISTANCE_32" class="input-checkbox"></div>
</div>


<div id="seg-33">
    <div class="segment-33"><input type="text" class="input-segment" id="segment_33" value="33" disabled/></div>
    <div class="process-step-33"><input type="text" class="input-text" id="id858" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PROCESS_STEP_33" oninput="validateNumberInput(event)"/></div>
    <div class="time-33"><input type="text" class="input-text" id="id859" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TIME_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-33"><input type="text" class="input-text" id="id860" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TEMPERATURE_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-33"><input type="text" class="input-text" id="id861" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TEMPERATURE_TC_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-33"><input type="text" class="input-text" id="id862" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TEMPERATURE_TH_33" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-33"><input type="text" class="input-text" id="id863" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HBTH_863" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-33"><input type="text" class="input-text" id="id864" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESSURE_SV_864" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-33"><input type="text" class="input-text" id="id733" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESSING_ONE_33" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-33"><input type="text" class="input-text" id="id866" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESSING_TWO_33" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-33"><input type="text" class="input-text" id="id867" name="DONGHWA.PLC.RECIPE.SEGMENT_33.FORCE_TOL_33" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-33"><input type="text" class="input-text" id="id868" name="DONGHWA.PLC.RECIPE.SEGMENT_33.POSITION_AB_33" oninput="validateNumberInput(event)"/></div> <!-- Updated from id736 -->
    <div class="position-rel-33"><input type="text" class="input-text" id="id869" name="DONGHWA.PLC.RECIPE.SEGMENT_33.POSITION_REL_33" oninput="validateNumberInput(event)"/></div>
    <div class="distance-33"><input type="text" class="input-text" id="id870" name="DONGHWA.PLC.RECIPE.SEGMENT_33.DISTANCE_33" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-33"><input type="text" class="input-text" id="id871" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HOLDING_ONE_33" oninput="validateNumberInput(event)"/></div> <!-- Updated from id739 -->
    <div class="holding-two-33"><input type="text" class="input-text" id="id872" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HOLDING_TWO_33" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-33"><input type="text" class="input-text" id="id873" name="DONGHWA.PLC.RECIPE.SEGMENT_33.NUMBER_LOOPS_33" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-33"><input type="text" class="input-text" id="id874" name="DONGHWA.PLC.RECIPE.SEGMENT_33.SPEED_PLUNGER_33" oninput="validateNumberInput(event)"/></div> <!-- Updated from id742 -->
    <div class="gradient-force-33"><input type="text" class="input-text" id="id875" name="DONGHWA.PLC.RECIPE.SEGMENT_33.GRADIENT_FORCE_33" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-33"><input type="checkbox" id="id876" name="DONGHWA.PLC.RECIPE.SEGMENT_33.FASTCOOLING_33" class="input-checkbox" disabled></div>
    <div class="gas-n-33"><input type="checkbox" id="id877" name="DONGHWA.PLC.RECIPE.SEGMENT_33.GAS_N_33" class="input-checkbox" disabled></div> <!-- Updated from id745 -->
    <div class="gas-a-33"><input type="checkbox" id="id878" name="DONGHWA.PLC.RECIPE.SEGMENT_33.GAS_A_33" class="input-checkbox" disabled></div>
    <div class="spare-33"><input type="checkbox" id="id879" name="DONGHWA.PLC.RECIPE.SEGMENT_33.SPARE_33" class="input-checkbox"></div>
    <div class="hydrulic-off-33"><input type="checkbox" id="id880" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HYDRULIC_OFF_33" class="input-checkbox"></div> <!-- Updated from id748 -->
    <div class="press-capacity-33"><input type="checkbox" id="id881" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESS_CAPACITY_33" class="input-checkbox"></div>
    <div class="press-position-33"><input type="checkbox" id="id882" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESS_POSITION_33" class="input-checkbox"></div>
    <div class="press-distance-33"><input type="checkbox" id="id883" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESS_DISTANCE_33" class="input-checkbox"></div>
</div>

<div id="seg-34">
    <div class="segment-34"><input type="text" class="input-segment" id="segment_34" value="34" disabled/></div>
    <div class="process-step-34"><input type="text" class="input-text" id="id884" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PROCESS_STEP_34" oninput="validateNumberInput(event)"/></div>
    <div class="time-34"><input type="text" class="input-text" id="id885" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TIME_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-34"><input type="text" class="input-text" id="id886" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TEMPERATURE_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-34"><input type="text" class="input-text" id="id887" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TEMPERATURE_TC_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-34"><input type="text" class="input-text" id="id888" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TEMPERATURE_TH_34" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-34"><input type="text" class="input-text" id="id889" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HBTH_889" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-34"><input type="text" class="input-text" id="id890" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESSURE_SV_890" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-34"><input type="text" class="input-text" id="id755" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESSING_ONE_34" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-34"><input type="text" class="input-text" id="id892" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESSING_TWO_34" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-34"><input type="text" class="input-text" id="id893" name="DONGHWA.PLC.RECIPE.SEGMENT_34.FORCE_TOL_34" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-34"><input type="text" class="input-text" id="id894" name="DONGHWA.PLC.RECIPE.SEGMENT_34.POSITION_AB_34" oninput="validateNumberInput(event)"/></div> <!-- Updated from id758 -->
    <div class="position-rel-34"><input type="text" class="input-text" id="id895" name="DONGHWA.PLC.RECIPE.SEGMENT_34.POSITION_REL_34" oninput="validateNumberInput(event)"/></div>
    <div class="distance-34"><input type="text" class="input-text" id="id896" name="DONGHWA.PLC.RECIPE.SEGMENT_34.DISTANCE_34" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-34"><input type="text" class="input-text" id="id897" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HOLDING_ONE_34" oninput="validateNumberInput(event)"/></div> <!-- Updated from id761 -->
    <div class="holding-two-34"><input type="text" class="input-text" id="id898" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HOLDING_TWO_34" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-34"><input type="text" class="input-text" id="id899" name="DONGHWA.PLC.RECIPE.SEGMENT_34.NUMBER_LOOPS_34" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-34"><input type="text" class="input-text" id="id900" name="DONGHWA.PLC.RECIPE.SEGMENT_34.SPEED_PLUNGER_34" oninput="validateNumberInput(event)"/></div> <!-- Updated from id764 -->
    <div class="gradient-force-34"><input type="text" class="input-text" id="id901" name="DONGHWA.PLC.RECIPE.SEGMENT_34.GRADIENT_FORCE_34" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-34"><input type="checkbox" id="id902" name="DONGHWA.PLC.RECIPE.SEGMENT_34.FASTCOOLING_34" class="input-checkbox" disabled></div>
    <div class="gas-n-34"><input type="checkbox" id="id903" name="DONGHWA.PLC.RECIPE.SEGMENT_34.GAS_N_34" class="input-checkbox" disabled></div> <!-- Updated from id767 -->
    <div class="gas-a-34"><input type="checkbox" id="id904" name="DONGHWA.PLC.RECIPE.SEGMENT_34.GAS_A_34" class="input-checkbox" disabled></div>
    <div class="spare-34"><input type="checkbox" id="id905" name="DONGHWA.PLC.RECIPE.SEGMENT_34.SPARE_34" class="input-checkbox"></div>
    <div class="hydrulic-off-34"><input type="checkbox" id="id906" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HYDRULIC_OFF_34" class="input-checkbox"></div> <!-- Updated from id770 -->
    <div class="press-capacity-34"><input type="checkbox" id="id907" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESS_CAPACITY_34" class="input-checkbox"></div>
    <div class="press-position-34"><input type="checkbox" id="id908" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESS_POSITION_34" class="input-checkbox"></div>
    <div class="press-distance-34"><input type="checkbox" id="id909" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESS_DISTANCE_34" class="input-checkbox"></div>
</div>
<div id="seg-35">
    <div class="segment-35"><input type="text" class="input-segment" id="segment_35" value="35" disabled/></div>
    <div class="process-step-35"><input type="text" class="input-text" id="id910" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PROCESS_STEP_35" oninput="validateNumberInput(event)"/></div>
    <div class="time-35"><input type="text" class="input-text" id="id911" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TIME_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-35"><input type="text" class="input-text" id="id912" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TEMPERATURE_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-35"><input type="text" class="input-text" id="id913" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TEMPERATURE_TC_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-35"><input type="text" class="input-text" id="id914" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TEMPERATURE_TH_35" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-35"><input type="text" class="input-text" id="id915" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HBTH_915" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-35"><input type="text" class="input-text" id="id916" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESSURE_SV_916" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-35"><input type="text" class="input-text" id="id777" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESSING_ONE_35" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-35"><input type="text" class="input-text" id="id918" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESSING_TWO_35" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-35"><input type="text" class="input-text" id="id919" name="DONGHWA.PLC.RECIPE.SEGMENT_35.FORCE_TOL_35" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-35"><input type="text" class="input-text" id="id920" name="DONGHWA.PLC.RECIPE.SEGMENT_35.POSITION_AB_35" oninput="validateNumberInput(event)"/></div> <!-- Updated from id780 -->
    <div class="position-rel-35"><input type="text" class="input-text" id="id921" name="DONGHWA.PLC.RECIPE.SEGMENT_35.POSITION_REL_35" oninput="validateNumberInput(event)"/></div>
    <div class="distance-35"><input type="text" class="input-text" id="id922" name="DONGHWA.PLC.RECIPE.SEGMENT_35.DISTANCE_35" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-35"><input type="text" class="input-text" id="id923" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HOLDING_ONE_35" oninput="validateNumberInput(event)"/></div> <!-- Updated from id783 -->
    <div class="holding-two-35"><input type="text" class="input-text" id="id924" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HOLDING_TWO_35" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-35"><input type="text" class="input-text" id="id925" name="DONGHWA.PLC.RECIPE.SEGMENT_35.NUMBER_LOOPS_35" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-35"><input type="text" class="input-text" id="id926" name="DONGHWA.PLC.RECIPE.SEGMENT_35.SPEED_PLUNGER_35" oninput="validateNumberInput(event)"/></div> <!-- Updated from id786 -->
    <div class="gradient-force-35"><input type="text" class="input-text" id="id927" name="DONGHWA.PLC.RECIPE.SEGMENT_35.GRADIENT_FORCE_35" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-35"><input type="checkbox" id="id928" name="DONGHWA.PLC.RECIPE.SEGMENT_35.FASTCOOLING_35" class="input-checkbox" disabled></div>
    <div class="gas-n-35"><input type="checkbox" id="id929" name="DONGHWA.PLC.RECIPE.SEGMENT_35.GAS_N_35" class="input-checkbox" disabled></div> <!-- Updated from id789 -->
    <div class="gas-a-35"><input type="checkbox" id="id930" name="DONGHWA.PLC.RECIPE.SEGMENT_35.GAS_A_35" class="input-checkbox" disabled></div>
    <div class="spare-35"><input type="checkbox" id="id931" name="DONGHWA.PLC.RECIPE.SEGMENT_35.SPARE_35" class="input-checkbox"></div>
    <div class="hydrulic-off-35"><input type="checkbox" id="id932" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HYDRULIC_OFF_35" class="input-checkbox"></div> <!-- Updated from id792 -->
    <div class="press-capacity-35"><input type="checkbox" id="id933" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESS_CAPACITY_35" class="input-checkbox"></div>
    <div class="press-position-35"><input type="checkbox" id="id934" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESS_POSITION_35" class="input-checkbox"></div>
    <div class="press-distance-35"><input type="checkbox" id="id935" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESS_DISTANCE_35" class="input-checkbox"></div>
</div>

<div id="seg-36">
    <div class="segment-36"><input type="text" class="input-segment" id="segment_36" value="36" disabled/></div>
    <div class="process-step-36"><input type="text" class="input-text" id="id936" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PROCESS_STEP_36" oninput="validateNumberInput(event)"/></div>
    <div class="time-36"><input type="text" class="input-text" id="id937" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TIME_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-36"><input type="text" class="input-text" id="id938" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TEMPERATURE_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-36"><input type="text" class="input-text" id="id939" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TEMPERATURE_TC_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-36"><input type="text" class="input-text" id="id940" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TEMPERATURE_TH_36" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-36"><input type="text" class="input-text" id="id941" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HBTH_941" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-36"><input type="text" class="input-text" id="id942" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESSURE_SV_942" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-36"><input type="text" class="input-text" id="id799" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESSING_ONE_36" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-36"><input type="text" class="input-text" id="id944" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESSING_TWO_36" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-36"><input type="text" class="input-text" id="id945" name="DONGHWA.PLC.RECIPE.SEGMENT_36.FORCE_TOL_36" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-36"><input type="text" class="input-text" id="id946" name="DONGHWA.PLC.RECIPE.SEGMENT_36.POSITION_AB_36" oninput="validateNumberInput(event)"/></div> <!-- Updated from id802 -->
    <div class="position-rel-36"><input type="text" class="input-text" id="id947" name="DONGHWA.PLC.RECIPE.SEGMENT_36.POSITION_REL_36" oninput="validateNumberInput(event)"/></div>
    <div class="distance-36"><input type="text" class="input-text" id="id948" name="DONGHWA.PLC.RECIPE.SEGMENT_36.DISTANCE_36" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-36"><input type="text" class="input-text" id="id949" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HOLDING_ONE_36" oninput="validateNumberInput(event)"/></div> <!-- Updated from id805 -->
    <div class="holding-two-36"><input type="text" class="input-text" id="id950" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HOLDING_TWO_36" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-36"><input type="text" class="input-text" id="id951" name="DONGHWA.PLC.RECIPE.SEGMENT_36.NUMBER_LOOPS_36" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-36"><input type="text" class="input-text" id="id952" name="DONGHWA.PLC.RECIPE.SEGMENT_36.SPEED_PLUNGER_36" oninput="validateNumberInput(event)"/></div> <!-- Updated from id808 -->
    <div class="gradient-force-36"><input type="text" class="input-text" id="id953" name="DONGHWA.PLC.RECIPE.SEGMENT_36.GRADIENT_FORCE_36" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-36"><input type="checkbox" id="id954" name="DONGHWA.PLC.RECIPE.SEGMENT_36.FASTCOOLING_36" class="input-checkbox" disabled></div>
    <div class="gas-n-36"><input type="checkbox" id="id955" name="DONGHWA.PLC.RECIPE.SEGMENT_36.GAS_N_36" class="input-checkbox" disabled></div> <!-- Updated from id811 -->
    <div class="gas-a-36"><input type="checkbox" id="id956" name="DONGHWA.PLC.RECIPE.SEGMENT_36.GAS_A_36" class="input-checkbox" disabled></div>
    <div class="spare-36"><input type="checkbox" id="id957" name="DONGHWA.PLC.RECIPE.SEGMENT_36.SPARE_36" class="input-checkbox"></div>
    <div class="hydrulic-off-36"><input type="checkbox" id="id958" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HYDRULIC_OFF_36" class="input-checkbox"></div> <!-- Updated from id814 -->
    <div class="press-capacity-36"><input type="checkbox" id="id959" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESS_CAPACITY_36" class="input-checkbox"></div>
    <div class="press-position-36"><input type="checkbox" id="id960" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESS_POSITION_36" class="input-checkbox"></div>
    <div class="press-distance-36"><input type="checkbox" id="id961" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESS_DISTANCE_36" class="input-checkbox"></div>
</div>
<div id="seg-37">
    <div class="segment-37"><input type="text" class="input-segment" id="segment_37" value="37" disabled/></div>
    <div class="process-step-37"><input type="text" class="input-text" id="id962" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PROCESS_STEP_37" oninput="validateNumberInput(event)"/></div>
    <div class="time-37"><input type="text" class="input-text" id="id963" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TIME_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-37"><input type="text" class="input-text" id="id964" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TEMPERATURE_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-37"><input type="text" class="input-text" id="id965" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TEMPERATURE_TC_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-37"><input type="text" class="input-text" id="id966" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TEMPERATURE_TH_37" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-37"><input type="text" class="input-text" id="id967" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HBTH_967" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-37"><input type="text" class="input-text" id="id968" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESSURE_SV_968" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-37"><input type="text" class="input-text" id="id821" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESSING_ONE_37" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-37"><input type="text" class="input-text" id="id970" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESSING_TWO_37" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-37"><input type="text" class="input-text" id="id971" name="DONGHWA.PLC.RECIPE.SEGMENT_37.FORCE_TOL_37" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-37"><input type="text" class="input-text" id="id972" name="DONGHWA.PLC.RECIPE.SEGMENT_37.POSITION_AB_37" oninput="validateNumberInput(event)"/></div> <!-- Updated from id824 -->
    <div class="position-rel-37"><input type="text" class="input-text" id="id973" name="DONGHWA.PLC.RECIPE.SEGMENT_37.POSITION_REL_37" oninput="validateNumberInput(event)"/></div>
    <div class="distance-37"><input type="text" class="input-text" id="id974" name="DONGHWA.PLC.RECIPE.SEGMENT_37.DISTANCE_37" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-37"><input type="text" class="input-text" id="id975" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HOLDING_ONE_37" oninput="validateNumberInput(event)"/></div> <!-- Updated from id827 -->
    <div class="holding-two-37"><input type="text" class="input-text" id="id976" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HOLDING_TWO_37" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-37"><input type="text" class="input-text" id="id977" name="DONGHWA.PLC.RECIPE.SEGMENT_37.NUMBER_LOOPS_37" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-37"><input type="text" class="input-text" id="id978" name="DONGHWA.PLC.RECIPE.SEGMENT_37.SPEED_PLUNGER_37" oninput="validateNumberInput(event)"/></div> <!-- Updated from id830 -->
    <div class="gradient-force-37"><input type="text" class="input-text" id="id979" name="DONGHWA.PLC.RECIPE.SEGMENT_37.GRADIENT_FORCE_37" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-37"><input type="checkbox" id="id980" name="DONGHWA.PLC.RECIPE.SEGMENT_37.FASTCOOLING_37" class="input-checkbox" disabled></div>
    <div class="gas-n-37"><input type="checkbox" id="id981" name="DONGHWA.PLC.RECIPE.SEGMENT_37.GAS_N_37" class="input-checkbox" disabled></div> <!-- Updated from id833 -->
    <div class="gas-a-37"><input type="checkbox" id="id982" name="DONGHWA.PLC.RECIPE.SEGMENT_37.GAS_A_37" class="input-checkbox" disabled></div>
    <div class="spare-37"><input type="checkbox" id="id983" name="DONGHWA.PLC.RECIPE.SEGMENT_37.SPARE_37" class="input-checkbox"></div>
    <div class="hydrulic-off-37"><input type="checkbox" id="id984" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HYDRULIC_OFF_37" class="input-checkbox"></div> <!-- Updated from id836 -->
    <div class="press-capacity-37"><input type="checkbox" id="id985" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESS_CAPACITY_37" class="input-checkbox"></div>
    <div class="press-position-37"><input type="checkbox" id="id986" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESS_POSITION_37" class="input-checkbox"></div>
    <div class="press-distance-37"><input type="checkbox" id="id987" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESS_DISTANCE_37" class="input-checkbox"></div>
</div>
<div id="seg-38">
    <div class="segment-38"><input type="text" class="input-segment" id="segment_38" value="38" disabled/></div>
    <div class="process-step-38"><input type="text" class="input-text" id="id988" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PROCESS_STEP_38" oninput="validateNumberInput(event)"/></div>
    <div class="time-38"><input type="text" class="input-text" id="id989" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TIME_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-38"><input type="text" class="input-text" id="id990" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TEMPERATURE_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-38"><input type="text" class="input-text" id="id991" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TEMPERATURE_TC_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-38"><input type="text" class="input-text" id="id992" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TEMPERATURE_TH_38" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-38"><input type="text" class="input-text" id="id993" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HBTH_993" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-38"><input type="text" class="input-text" id="id994" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESSURE_SV_994" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-38"><input type="text" class="input-text" id="id843" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESSING_ONE_38" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-38"><input type="text" class="input-text" id="id996" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESSING_TWO_38" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-38"><input type="text" class="input-text" id="id997" name="DONGHWA.PLC.RECIPE.SEGMENT_38.FORCE_TOL_38" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-38"><input type="text" class="input-text" id="id998" name="DONGHWA.PLC.RECIPE.SEGMENT_38.POSITION_AB_38" oninput="validateNumberInput(event)"/></div> <!-- Updated from id846 -->
    <div class="position-rel-38"><input type="text" class="input-text" id="id999" name="DONGHWA.PLC.RECIPE.SEGMENT_38.POSITION_REL_38" oninput="validateNumberInput(event)"/></div>
    <div class="distance-38"><input type="text" class="input-text" id="id1000" name="DONGHWA.PLC.RECIPE.SEGMENT_38.DISTANCE_38" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-38"><input type="text" class="input-text" id="id1001" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HOLDING_ONE_38" oninput="validateNumberInput(event)"/></div> <!-- Updated from id849 -->
    <div class="holding-two-38"><input type="text" class="input-text" id="id1002" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HOLDING_TWO_38" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-38"><input type="text" class="input-text" id="id1003" name="DONGHWA.PLC.RECIPE.SEGMENT_38.NUMBER_LOOPS_38" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-38"><input type="text" class="input-text" id="id1004" name="DONGHWA.PLC.RECIPE.SEGMENT_38.SPEED_PLUNGER_38" oninput="validateNumberInput(event)"/></div> <!-- Updated from id852 -->
    <div class="gradient-force-38"><input type="text" class="input-text" id="id1005" name="DONGHWA.PLC.RECIPE.SEGMENT_38.GRADIENT_FORCE_38" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-38"><input type="checkbox" id="id1006" name="DONGHWA.PLC.RECIPE.SEGMENT_38.FASTCOOLING_38" class="input-checkbox" disabled></div>
    <div class="gas-n-38"><input type="checkbox" id="id1007" name="DONGHWA.PLC.RECIPE.SEGMENT_38.GAS_N_38" class="input-checkbox" disabled></div> <!-- Updated from id855 -->
    <div class="gas-a-38"><input type="checkbox" id="id1008" name="DONGHWA.PLC.RECIPE.SEGMENT_38.GAS_A_38" class="input-checkbox" disabled></div>
    <div class="spare-38"><input type="checkbox" id="id1009" name="DONGHWA.PLC.RECIPE.SEGMENT_38.SPARE_38" class="input-checkbox"></div>
    <div class="hydrulic-off-38"><input type="checkbox" id="id1010" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HYDRULIC_OFF_38" class="input-checkbox"></div> <!-- Updated from id858 -->
    <div class="press-capacity-38"><input type="checkbox" id="id1011" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESS_CAPACITY_38" class="input-checkbox"></div>
    <div class="press-position-38"><input type="checkbox" id="id1012" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESS_POSITION_38" class="input-checkbox"></div>
    <div class="press-distance-38"><input type="checkbox" id="id1013" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESS_DISTANCE_38" class="input-checkbox"></div>
</div>
    <div id="seg-39">
    <div class="segment-39"><input type="text" class="input-segment" id="segment_39" value="39" disabled/></div>
    <div class="process-step-39"><input type="text" class="input-text" id="id1014" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PROCESS_STEP_39" oninput="validateNumberInput(event)"/></div>
    <div class="time-39"><input type="text" class="input-text" id="id1015" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TIME_39" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-39"><input type="text" class="input-text" id="id1016" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TEMPERATURE_39" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-39"><input type="text" class="input-text" id="id1017" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TEMPERATURE_TC_39" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-39"><input type="text" class="input-text" id="id1018" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TEMPERATURE_TH_39" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-39"><input type="text" class="input-text" id="id1019" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HBTH_1019" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-39"><input type="text" class="input-text" id="id1020" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESSURE_SV_1020" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-39"><input type="text" class="input-text" id="id865" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESSING_ONE_39" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-39"><input type="text" class="input-text" id="id1022" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESSING_TWO_39" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-39"><input type="text" class="input-text" id="id1023" name="DONGHWA.PLC.RECIPE.SEGMENT_39.FORCE_TOL_39" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-39"><input type="text" class="input-text" id="id1024" name="DONGHWA.PLC.RECIPE.SEGMENT_39.POSITION_AB_39" oninput="validateNumberInput(event)"/></div> <!-- Updated from id868 -->
    <div class="position-rel-39"><input type="text" class="input-text" id="id1025" name="DONGHWA.PLC.RECIPE.SEGMENT_39.POSITION_REL_39" oninput="validateNumberInput(event)"/></div>
    <div class="distance-39"><input type="text" class="input-text" id="id1026" name="DONGHWA.PLC.RECIPE.SEGMENT_39.DISTANCE_39" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-39"><input type="text" class="input-text" id="id1027" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HOLDING_ONE_39" oninput="validateNumberInput(event)"/></div> <!-- Updated from id871 -->
    <div class="holding-two-39"><input type="text" class="input-text" id="id1028" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HOLDING_TWO_39" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-39"><input type="text" class="input-text" id="id1029" name="DONGHWA.PLC.RECIPE.SEGMENT_39.NUMBER_LOOPS_39" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-39"><input type="text" class="input-text" id="id1030" name="DONGHWA.PLC.RECIPE.SEGMENT_39.SPEED_PLUNGER_39" oninput="validateNumberInput(event)"/></div> <!-- Updated from id874 -->
    <div class="gradient-force-39"><input type="text" class="input-text" id="id1031" name="DONGHWA.PLC.RECIPE.SEGMENT_39.GRADIENT_FORCE_39" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling-39"><input type="checkbox" id="id1032" name="DONGHWA.PLC.RECIPE.SEGMENT_39.FASTCOOLING_39" class="input-checkbox" disabled></div>
    <div class="gas-n-39"><input type="checkbox" id="id1033" name="DONGHWA.PLC.RECIPE.SEGMENT_39.GAS_N_39" class="input-checkbox" disabled></div> <!-- Updated from id877 -->
    <div class="gas-a-39"><input type="checkbox" id="id1034" name="DONGHWA.PLC.RECIPE.SEGMENT_39.GAS_A_39" class="input-checkbox" disabled></div>
    <div class="spare-39"><input type="checkbox" id="id1035" name="DONGHWA.PLC.RECIPE.SEGMENT_39.SPARE_39" class="input-checkbox"></div>
    <div class="hydrulic-off-39"><input type="checkbox" id="id1036" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HYDRULIC_OFF_39" class="input-checkbox"></div> <!-- Updated from id880 -->
    <div class="press-capacity-39"><input type="checkbox" id="id1037" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESS_CAPACITY_39" class="input-checkbox"></div>
    <div class="press-position-39"><input type="checkbox" id="id1038" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESS_POSITION_39" class="input-checkbox"></div>
    <div class="press-distance-39"><input type="checkbox" id="id1039" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESS_DISTANCE_39" class="input-checkbox"></div>
</div>

    <div class="fastcooling">Fastcooling</div>
    <div class="gas-nTwo">Gas N2</div>
    <div class="gas-ar">Gas Ar</div>
    <div class="spare">Spare</div>
    <div class="hydraulic-unlt-off">Hydraulic Unlt OFF</div>
    <div class="press-capacity-control">Press capacity control</div>
    <div class="press-position-control-abs">Press position control (abs.)</div>
    <div class="press-distance-control-rel">Press distance control (rel.)</div>

	 
	 <div class="frame-304">
      <div class="display-actual-row"><input type="checkbox" class="check-display-actual-row"></div>
      <div class="display-actual-row2">display actual row</div>
      <div class="edit">Edit</div>
      <div class="global-parameters" style="cursor:pointer;" onclick="location.href='/donghwa/furnace/recipe/globalParameter'"></div>
      <div class="global-parameters2"style="cursor:pointer;" >Global Parameters</div>
      <div class="save">Save</div>
      <button class="save-to-db">Save to Database</button>
      <div class="protocol">Protocol</div>
      <div class="graphical-process" style="cursor:pointer;" onclick="getGraphicalProcess();"></div>
      <div class="insert-segment"></div>
      <div class="save-to-csv"></div>
      <div class="delete-segment"></div>
      <button class="save-to-plc">Save to PLC</button>
      <div class="print"></div>
      <div class="back-to-recipe-overview">&lt;&lt; Back to recipe-overview</div>
      <div class="save-to-csv-file">Save to csv-file</div>
      <div class="print2">print</div>
      <div class="graphical-process2" style="cursor:pointer;" onclick="getGraphicalProcess();">Graphical Process</div>
      <div class="insert-segment2">Insert Segment</div>
      <div class="delete-segment2">Delete Segment</div>
      
    </div>
    <div class="_0-program-end">0 - Program end</div>
    <div class="_3-cooling-vacuum">3 - Cooling vacuum</div>
    <div class="_1-heating-vacuum">1 - Heating vacuum</div>
    <div class="_2-heating-gas-stationary">2 - Heating gas stationary</div>
    <div class="_4-cooling-gas-stationary">4 - Cooling gas stationary</div>
    <div class="process-step2">Process step</div>
  </div>
  </div>
<script>
//전역변수


//로드
$(function(){
	//레시피 초기데이터 조회
	getRecipeDataList();
});

//이벤트
//레시피 값 PLC 전송
   $('.save-to-plc').click(function() {
       const data = [];
       const dataString = [];

       var recipeName = $("#recipeName").val();
       var recipeComment = $("#recipeComment").val();

       //name, comment 먼저 추가
       dataString.push({
    	   nodeId :"string_name",
    	   valueString : recipeName
       });
       
       dataString.push({
    	   nodeId :"string_comment",
    	   valueString : recipeComment
       });


       // 모든 입력 필드를 순회하며 데이터 배열에 추가
       $('.input-text').each(function() {
           const inputField = $(this);
           const value = inputField.val(); // 입력된 값
           const nodeId = inputField.attr('name'); // name 속성 값

           data.push({
               nodeId: nodeId,
               value: value
           });
       });

       // 모든 체크박스를 순회하며 데이터 배열에 추가
       $('.input-checkbox').each(function() {
           const inputField = $(this);
           const value = inputField.is(':checked') ? 1 : 0; // 체크 상태 확인
           const nodeId = inputField.attr('name'); // name 속성 값

           data.push({
               nodeId: nodeId,
               value: value
           });
       });

       
       // AJAX 요청을 통해 데이터 전송
//       sendPlc(data);
       sendPlcString(dataString);
   });
   
//레시피 값 데이터베이스 전송
   $('.save-to-db').click(function() {
	   var dataArr = [];
	   	   
	   for(var i=0; i<40; i++){
		   var process_step = $("#seg-"+i+"> .process-step-"+i+" > input ").val();
		   
		   if(process_step != ""){
			   var dataObj = new Object();
			   
			   dataObj.segment = i;
			   dataObj.name = $("#recipeName").val();
			   dataObj.comment = $("#recipeComment").val();
			   dataObj.process_step = $("#seg-"+i+"> .process-step-"+i+" > input ").val();
			   dataObj.time = $("#seg-"+i+"> .time-"+i+" > input ").val();
			   dataObj.temperature = $("#seg-"+i+"> .temperature-"+i+" > input ").val();
			   dataObj.temperature_tc = $("#seg-"+i+"> .temperature-tc-"+i+" > input ").val();
			   dataObj.temperature_th = $("#seg-"+i+"> .temperature-th-"+i+" > input ").val();
			   dataObj.hbth = $("#seg-"+i+"> .hbth-"+i+" > input ").val();
			   dataObj.pressure_sv = $("#seg-"+i+"> .pressure-sv-"+i+" > input ").val();
			   dataObj.pressing_one = $("#seg-"+i+"> .pressing-one-"+i+" > input ").val();
			   dataObj.pressing_two = $("#seg-"+i+"> .pressing-two-"+i+" > input ").val();
			   dataObj.force_tol = $("#seg-"+i+"> .force-tol-"+i+" > input ").val();
			   dataObj.position_ab = $("#seg-"+i+"> .position-ab-"+i+" > input ").val();
			   dataObj.position_rel = $("#seg-"+i+"> .position-rel-"+i+" > input ").val();			   
			   dataObj.distance = $("#seg-"+i+"> .distance-"+i+" > input ").val();
			   dataObj.holding_one = $("#seg-"+i+"> .holding-one-"+i+" > input ").val();			   
			   dataObj.holding_two = $("#seg-"+i+"> .holding-two-"+i+" > input ").val();
			   dataObj.number_loops = $("#seg-"+i+"> .number-loops-"+i+" > input ").val();			   
			   dataObj.speed_plunger = $("#seg-"+i+"> .speed-plunger-"+i+" > input ").val();
			   dataObj.gradient_force = $("#seg-"+i+"> .gradient-force-"+i+" > input ").val();			   
			   dataObj.fastcooling = $("#seg-"+i+"> .fastcooling-"+i+" > input ").val();
			   dataObj.gas_n = $("#seg-"+i+"> .gas-n-"+i+" > input ").val();
			   dataObj.gas_a = $("#seg-"+i+"> .gas-a-"+i+" > input ").val();
			   dataObj.spare = $("#seg-"+i+"> .spare-"+i+" > input ").val();
			   dataObj.hydrulic_off = $("#seg-"+i+"> .hydrulic-off-"+i+" > input ").val();
			   dataObj.press_capacity = $("#seg-"+i+"> .press-capacity-"+i+" > input ").val();			   
			   dataObj.press_position = $("#seg-"+i+"> .press-position-"+i+" > input ").val();			   
			   dataObj.press_distance = $("#seg-"+i+"> .press-distance-"+i+" > input ").val();
			   
			   dataArr.push(dataObj);
		   }else{
//			   console.log("값없음 : "+i);
			   break;
		   }
	   }
	   
	   sendDatabase(dataArr);
   });


//함수

//process_step 값입력 이벤트
function validateNumberInput(event) {
    const input = event.target;
    input.value = input.value.replace(/[^0-9]/g, '');

    const inputId = input.id;
    const inputValue = input.value;
    const inputIdNumber = parseInt(inputId.replace('id', ''), 10);

    //id가 id로 시작하는 전체태그 배열
    const allInputs = document.querySelectorAll('input[id^="id"]');

    if (inputIdNumber % 26 == 0) {
        
        //process_step에서 입력된 값이 0
    	if (inputValue == "0") {
            allInputs.forEach(field => {
                const fieldId = field.id;
                const fieldIdNumber = parseInt(fieldId.replace('id', ''), 10);
                if (fieldIdNumber > inputIdNumber+25) {
                    field.disabled = true;
                    field.value = "";  // 비활성화될 때 값도 초기화합니다.
                }
            });        	
    	}else if(inputValue == "4"){
            
            allInputs.forEach(field => {
                const fieldId = field.id;
                const fieldIdNumber = parseInt(fieldId.replace('id', ''), 10);
                
            	if (fieldIdNumber >= (inputIdNumber+18) && fieldIdNumber <= (inputIdNumber+26)) {
                    if (fieldId) {
                    	field.disabled = false;
                    }                	
				}
            });
        }else if(inputValue == "1" || inputValue == "2" || inputValue == "3"){
            //1,2,3일때
            allInputs.forEach(field => {
                const fieldId = field.id;
                const fieldIdNumber = parseInt(fieldId.replace('id', ''), 10);
                
            	if (fieldIdNumber >= (inputIdNumber)) {
                	field.disabled = false;
				}
            });
        }
    }
}

//레시피값 PLC 전송
function sendPlc(data) {
    $.ajax({
        url: "/donghwa/furnace/recipe/plcWrite",
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8", // JSON 데이터를 전송할 경우 필요
        data: JSON.stringify(data), // 데이터를 JSON 문자열로 변환하여 전송
        success: function(response) {
            console.log('서버 응답:', response);
        },
        error: function(xhr, status, error) {
            console.error('AJAX 에러:', status, error);
        }
    });
}

//레시피값 PLC 전송
function sendPlcString(dataString) {
	
    $.ajax({
        url: "/donghwa/furnace/recipe/plcWriteString",
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8", // JSON 데이터를 전송할 경우 필요
        data: JSON.stringify(dataString), // 데이터를 JSON 문자열로 변환하여 전송
        success: function(response) {
            console.log('서버 응답:', response);
        },
        error: function(xhr, status, error) {
            console.error('AJAX 에러:', status, error);
        }
    });
}



//레시피값 데이터베이스 전송
function sendDatabase(data) {
    $.ajax({
        url: "/donghwa/furnace/recipe/databaseWrite",
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8", // JSON 데이터를 전송할 경우 필요
        data: JSON.stringify(data), // 데이터를 JSON 문자열로 변환하여 전송
        success: function(response) {
            console.log('서버 응답:', response);
        },
        error: function(xhr, status, error) {
            console.error('AJAX 에러:', status, error);
        }
    });
}

//레시피 데이터 조회
function getRecipeDataList(){

    $.ajax({
        url:"/donghwa/furnace/recipe/recipeDataList",
        type:"post",
        dataType:"json",
        data:{},
        success:function(result){
            var data = result.data;
            
            for(let key in data){
            	for(let keys in data[key]){
            		var d = data[key];
            		$("."+keys+"> input").val(d[keys]);
            		$("."+keys+"> input").prop('checked',d[keys]);
            		
            	}                    	
            }
            
        }
    });
}

//레시피값 트렌드 조회
function getGraphicalProcess(){
	var recipeNumber = $("#recipeNumber").val();
	var recipeNumberData = $("#recipeNumberData").val();

	sessionStorage.setItem("recipeNumber", recipeNumber);
	sessionStorage.setItem("recipeNumberData", recipeNumberData);
	
	
	var url = "/donghwa/furnace/recipe/graphicalProcess";
	
	window.open(url,"test", "scrollbars=no,width=1600,height=900,top=200,left=100,menubar=false");
}

//다이얼로그



</script>  
</body>

</html>