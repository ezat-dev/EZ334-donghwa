<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Recipe</title>
<jsp:include page="../include/pluginpage.jsp"/>

<!-- furnace/recipeData -->
<link rel="stylesheet" href="/donghwa/css/furnace/manualOperation/style.css">
</head>  
  <style>
   a,
   button,
   input,
   select,
   h1,
   h2,
   h3,
   h4,
   h5,
   * {
       box-sizing: border-box;
       margin: 0;
       padding: 0;
       border: none;
       text-decoration: none;
       background: none;
   
       -webkit-font-smoothing: antialiased;
   }
   
   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
   
   </style>
<body>
  <div class="group-1">
    <div class="manual-operation-box"></div>
    <div class="manual-operation-header"></div>
    <div class="manual-operation-main"></div>
    <img class="close" src="close0.png" />
    <div class="manual-operation">Manual Operation</div>
    <div class="auto"></div>
    <div class="_1"></div>
    <div class="auto2">Auto</div>
    <div class="manual"></div>
    <div class="_2"></div>
    <div class="manual2">Manual</div>
    <div class="pumping"></div>
    <div class="_3"></div>
    <div class="pumping-station">Pumping station</div>
    <div class="high-vacuum-pump"></div>
    <div class="_4"></div>
    <div class="high-vacuum-pump2">High vacuum pump</div>
    <div class="evacuate-fine"></div>
    <div class="_5"></div>
    <div class="evacuate-fine-vaccum">Evacuate Fine Vaccum</div>
    <div class="evacuate-high"></div>
    <div class="_6"></div>
    <div class="evacuate-high-vaccum">Evacuate High Vaccum</div>
    <div class="fur-pre-control"></div>
    <div class="_7"></div>
    <div class="furnace-pressure-control">Furnace Pressure Control</div>
    <div class="fur-hit"></div>
    <div class="_8"></div>
    <div class="furnace-heating">Furnace heating</div>
    <div class="n-2"></div>
    <div class="_9"></div>
    <div class="n-2-inlet">N2-Inlet</div>
    <div class="ar"></div>
    <div class="_10"></div>
    <div class="ar-inlet">Ar Inlet</div>
    <div class="venting"></div>
    <div class="_11"></div>
    <div class="venting2">Venting</div>
    <div class="venting-n-2"></div>
    <div class="_12"></div>
    <div class="venting-n-22">Venting N2</div>
    <div class="venting-ar"></div>
    <div class="_13"></div>
    <div class="venting-ar2">Venting Ar</div>
    <div class="fastcooling"></div>
    <div class="_14"></div>
    <div class="fastcooling2">Fastcooling</div>
    <div class="manual-leaktest"></div>
    <div class="_15"></div>
    <div class="manual-leaktest2">Manual leaktest</div>
    <div class="open-lid"></div>
    <div class="_16"></div>
    <div class="open-lid-clamps">Open Lid Clamps</div>
    <div class="close-lid"></div>
    <div class="_17"></div>
    <div class="close-lid-clamps">Close Lid Clamps</div>
  </div>
  
</body>
</html>