
<%@page import="com.logindata.CalculateUnits"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>MOED</title>
    <link rel="stylesheet" type="text/css" href="style2.css">
				<script>
				
				

				
	                function ddlselect()
	                	{
		                	var d = document.getElementById("ddselect");
		                	var displaytext=d.options[d.selectedIndex].value;
		                	var displaytext1=d.options[d.selectedIndex].id;
		                	vardisplaytext3 = d.options[d.selectedIndex].text;
		                	document.getElementById("txtvalue").value=displaytext;

		                	
		                	var displayzero = 0;
		                	document.getElementById("units_per_month").value=displayzero;
		                	document.getElementById("units_per_month1").value=displayzero;
		                	document.getElementById("units_per_month2").value=displayzero;
		                	document.getElementById("units_per_month3").value=displayzero;
		                	document.getElementById("units_per_month4").value=displayzero;
		                	document.getElementById("units_per_month5").value=displayzero;
		                	
		                	multiply();
		                	
		                	varwatt = displaytext1;
		                	
		                	switch(varwatt)
		                	{
		                	case "conditioner_watt":  
		                			varwatt = 42;
		                			varload = 1.4;
		                			break;
		                	case "computer_watt":
		                			varwatt = 6;
		                			varload = 0.2;
		                			break;
		                	case "refrigerator_watt":
		                			varwatt = 6;
		                			varload = 0.2;
		                			break;
		                	case "water-pump_watt":
		                			varwatt = 16.5;
		                			varload = 0.55;
		                			break;
		                	case "radio_watt":
		                		varwatt = 1.5;
		                		varload = 0.05;
		                			break;
		                	case "washing_machine_watt":
		                		varwatt = 6;
		                		varload = 0.2;
		                			break;
		                	case "tv_watt": 
		                		varwatt = 4.5;
		                		varload = 0.15;
		                			break;
		                	case "ceiling_fan_watt":
		                		varwatt = 1.5;
		                		varload = 0.5;
		                			break;
		                	case "tubelight_watt":
		                		varwatt = 1;
		                		varload = 0.10;
		                			break;
		                	case "machine_watt":
		                		varwatt = 54;
		                		varload = 2.2;
		                			break;
		                			
		                	}
		                	if(varm != 0)
		                	{
							
			                	hourschange();
			                	hourschange1();
			                	hourschange2();
		                	}

	                	}
	                
	                function multiply()
	                {
	                	varm = document.getElementById("no_appliances").value;
	                	
	                }       
	                function hourschange()
	                {
	                	multiply();
	                	
						if(varm == 0)
							{
								alert("Please mention total number of appliance");
							}
						else
							{
			                	var s = document.getElementById("box_shadow_property");
			                	varselected_hour1=s.options[s.selectedIndex].value;
			                	if(varselected_hour1==0){vardsplay1 ="0  U"}
			                	else
			                	{
			                		vardsplay1 = varm*varwatt*varselected_hour1 + " U";
			                	}			                	
			                	varbill1 = varm*varwatt*varselected_hour1;
			                	document.getElementById("units_per_month").value=vardsplay1;
			                	
			                	varbill11 = varbill1*6.5 + " Rs";
			                	document.getElementById("units_per_month3").value=varbill11;
			                	
							}
	                }
	                function hourschange1()
	                {
	                	multiply();
	                	
	                	if(varm == 0)
						{
							alert("Please mention total number of appliance");
						}
	                	else{
	                	var s = document.getElementById("box_shadow_property1");
	                	varselected_hour2=s.options[s.selectedIndex].value;
	                	
	                	if(varselected_hour2==0){vardsplay2 ="0  U"}
	                	else
	                	{
	                		vardsplay2 = varm*varwatt*varselected_hour2 + " U";
	                	}
	                	varbill2 = varm*varwatt*varselected_hour2;
	                	document.getElementById("units_per_month1").value=vardsplay2;
	                
	                	varbill12 = varbill2*6.5  + " Rs";
	                	document.getElementById("units_per_month4").value=varbill12;
	                
	                	}
	                }
	                function hourschange2()
	                {
	                	multiply();
	                	
	                	if(varm == 0)
						{
							alert("Please mention total number of appliance");
						}
	                	else
	                	{
		                	var s = document.getElementById("box_shadow_property2");
		                	varselected_hour3=s.options[s.selectedIndex].value;
		                
		                	if(varselected_hour3==0){vardsplay3 ="0  U"}
		                	else
		                	{
		                		vardsplay3 = varm*varwatt*varselected_hour3 + " U";
		                	}
		                	varbill3 = varm*varwatt*varselected_hour3;
		                	document.getElementById("units_per_month2").value=vardsplay3;	
		                
		                	varbill13 = varbill3*6.5  + " Rs";
		                	
		                	document.getElementById("units_per_month5").value=varbill13;
		                	document.getElementById("load").value= "            " + varload + " KW";		                	
		                	
		             
	                	}
	                }
	                function calculatedata()
	                {
	                	
		                	document.getElementById("um1").value = "    " + vardsplay1;
		                	document.getElementById("um2").value = "    " + vardsplay2;
		                	document.getElementById("um3").value = "    " + vardsplay3;
		                	
		                	if(document.getElementById("colorid7").value == 0)
		                	{
				                	document.getElementById("colorid1").value= "       " + vardisplaytext3 + "  *  " + varm;
				                	
				                	document.getElementById("colorid2").value= "     " + varselected_hour1 + " H";
				                	document.getElementById("colorid3").value= "     " + varselected_hour2 + " H";
				                	document.getElementById("colorid4").value= "     " + varselected_hour3 + " H";
				                	
				                	document.getElementById("colorid5").value= "  " + varbill11;
				                	document.getElementById("colorid6").value= "  " + varbill12;
				                	document.getElementById("colorid7").value= "  " + varbill13;
		                	
				                	vars1 = "       " + vardisplaytext3 + "  *  " + varm;
				                	
		                	}
		                	else if(document.getElementById("color7").value == 0)
		                	{
		                		document.getElementById("color1").value= "       " + vardisplaytext3 + "  *  " + varm;
			                	
			                	document.getElementById("color2").value= "     " + varselected_hour1 + " H";
			                	document.getElementById("color3").value= "     " + varselected_hour2 + " H";
			                	document.getElementById("color4").value= "     " + varselected_hour3 + " H";
			                	
			                	document.getElementById("color5").value= "  " + varbill11;
			                	document.getElementById("color6").value= "  " + varbill12;
			                	document.getElementById("color7").value= "  " + varbill13;
		                	}
		                	else if(document.getElementById("colour7").value == 0)
		                	{
		                		
								document.getElementById("colour1").value= "       " + vardisplaytext3 + "  *  " + varm;
			                	
			                	document.getElementById("colour2").value= "     " + varselected_hour1 + " H";
			                	document.getElementById("colour3").value= "     " + varselected_hour2 + " H";
			                	document.getElementById("colour4").value= "     " + varselected_hour3 + " H";
			                	
			                	document.getElementById("colour5").value= "  " + varbill11;
			                	document.getElementById("colour6").value= "  " + varbill12;
			                	document.getElementById("colour7").value= "  " + varbill13;
		                	}
		                	else if(document.getElementById("colorr7").value == 0)
		                	{
		                		
								document.getElementById("colorr1").value= "       " + vardisplaytext3 + "  *  " + varm;
			                	
			                	document.getElementById("colorr2").value= "     " + varselected_hour1 + " H";
			                	document.getElementById("colorr3").value= "     " + varselected_hour2 + " H";
			                	document.getElementById("colorr4").value= "     " + varselected_hour3 + " H";
			                	
			                	document.getElementById("colorr5").value= "  " + varbill11;
			                	document.getElementById("colorr6").value= "  " + varbill12;
			                	document.getElementById("colorr7").value= "  " + varbill13;
		                	}
		                	else if(document.getElementById("colr7").value == 0)
		                	{
		                		
								document.getElementById("colr1").value= "       " + vardisplaytext3 + "  *  " + varm;
			                	
			                	document.getElementById("colr2").value= "     " + varselected_hour1 + " H";
			                	document.getElementById("colr3").value= "     " + varselected_hour2 + " H";
			                	document.getElementById("colr4").value= "     " + varselected_hour3 + " H";
			                	
			                	document.getElementById("colr5").value= "  " + varbill11;
			                	document.getElementById("colr6").value= "  " + varbill12;
			                	document.getElementById("colr7").value= "  " + varbill13;
		                	}
		               	
	                }
	                let btnClear = document.querySelector('button');
	                let inputs = documentSelectAll('input');
	                
	                btnClear.addEventListener('click', () =>{
	                	inputs.forEach(input => input.value = '');
	                }
	                );

                </script>


</head>
<body>

	<%
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
			
		}
	
	%>

<body>

    <div class="container">


        <div class="title_line" >

            <span class="space"></span>

            <div class="title_links">
            <a href="updated1.jsp" id="space_up" >HOME</a>
            <a href="#" id="space_up">ABOUT US</a>
            <a href="#" id="space_up">CONTACT US</a>
            <a href="#" id="space_up">SITE MAP</a>
            </div>

        </div>


        <br>
        
        
        <div class="top">


            <div class="quick_action" id="border">

                <!-- <div class="functions"> -->
                <div class="quick_info"> <a href=""> <span class="quick_symbol"> &#128712; </span>Quick Info </a></div>
                <div class="downloads"> <a href=""> <span class="download_symbol"> &#128447; </span> Downloads </a></div>
                <div class="safety_tips"> <a href=""> <span class="safety_symbol"> &#128369; </span> Safety Tips </a></div>
                <div class="save_energy"> <a href=""> <span class="save_energy_symbol"> &#128161; </span> Save Energy </a></div>
                <div class="faqs"> <a href=""> <span class="faqs_symbol"> &#65533; </span> FAQs</a></div>
                <div class="logout"> <a href="login.jsp"> <span class="logout_symbol"> &#8689; </span> Logout</a></div>
            </div>

            <div class="energy_block">

				                
                <span class="energy_line" id="border1">
                    <span class="calc">&#9638</span>
                     Energy Calculator-Daily consumption based on no of hours of usage across.

                     <!-- <div class="container1"> -->
                    <button class="back_button"> <a href="login.jsp"> Back </a></button>
                <!-- </div> -->
                </span><br>
                <div class="top_box">
                <br><br>
                
               

               
                    
                        <div class="content">
                        
                            <div class="appliance_name" > Appliance Name &nbsp;&nbsp;&nbsp;
                                <span id="box_shadow_property3" >
                                <select name="appliance_name1" id="ddselect" onchange="ddlselect();">
                                    <option id="select_device" value="">Select</option>
                                    <option id="tubelight_watt" value="  35 Watt">Tubelight</option>
                                    <option id="ceiling_fan_watt" value="  50 Watt">Ceiling Fan</option>
                                    <option id="computer_watt" value="  200 Watt">Computer</option>
                                    <option id="tv_watt" value="  150 Watt">TV</option>
                                    <option id="radio_watt" value="  50 Watt">Radio</option>
                                    <option id="washing_machine_watt" value="  200 Watt">Washing Machine</option>
                                    <option id="conditioner_watt" value="  1TON">Air-Conditioner</option>
                                    <option id="water-pump_watt" value="  550 Watt">Water Pump</option>
                                    <option id="refrigerator_watt" value="  200 LTS">Refrigerator</option>
                                    <option id="machine_watt" value="3000 watt">Geyser</option>
								
                                </select>
                            </span>


                            </div>
                            <div class="watt_line">
                                <span class="watt"> Watt</span>
                                
                                <span class="watt_select_box"> 
								<input type="text" id="txtvalue"/>
                            </span>




                            </div>
                        </div>
                        <br><br>

                        <span class="no_of_appliance">No. of Appliance &nbsp;&nbsp;
                            <span>
                            <input type="text" id="no_appliances" oninput="multiply();">
                        </span>
                        
 						<%
						
							CalculateUnits.CalculateWatt cwatt = (CalculateUnits.CalculateWatt)request.getAttribute("wattdata");
                            if(cwatt!=null){	
                            
						}%>

                        </span>
                        <span class="appliance_load">Appliance Load(KW)&nbsp;&nbsp;</span>
                        <input type="text" id = "load">

                        <br><br><br><br>
                        <div class="season_big">
                        <span class="consumption"> <b> Consumption/Season</b></span>
                        <span class="summer_symbol">&#127774</span>
                        <span class="winter_symbol">&#9924</span>
                        <span class="rainy_symbol">&#127784</span>
                        <!-- <span class="summer_symbol">&#9728</span>
                        <span class="winter_symbol">&#9729</span>
                        <span class="rainy_symbol">&#9730</span> -->

                        <br>
                        <div class="summer_winter_rainy">
                            <span class="summer1"> <b> Summer</b></span>
                            <span class="winter1"> <b> Winter</b></span>
                            <span class="monsoon1"> <b> Monsoon</b></span>

                        </div>
                        
                    </div>
                        <br>

                        <span class="no_of_hours">No of hours based on season &nbsp;&nbsp;&nbsp;
                            <select class="summer" id="box_shadow_property" onchange="hourschange();" onchange="billcount();">
                                <option value="0">  0</option>
                                <option value="1">  1</option>
                                <option value="2">  2</option>
                                <option value="3">  3</option>
                                <option value="4">  4</option>
                                <option value="5">  5</option>
                                <option value="6">  6</option>
                                <option value="7">  7</option>
                                <option value="8">  8</option>
                                <option value="9">  9</option>
                                <option value="10">  10</option>
                                <option value="11">  11</option>
                                <option value="12">  12</option>
                            </select>

                            <select class="winter" id="box_shadow_property1" onchange="hourschange1();" onchange="billcount();">
                                <option value="0">  0</option>
                                <option value="1">  1</option>
                                <option value="2">  2</option>
                                <option value="3">  3</option>
                                <option value="4">  4</option>
                                <option value="5">  5</option>
                                <option value="6">  6</option>
                                <option value="7">  7</option>
                                <option value="8">  8</option>
                                <option value="9">  9</option>
                                <option value="10">  10</option>
                                <option value="11">  11</option>
                                <option value="12">  12</option>
                             </select>

                            <select class="rainy" id="box_shadow_property2" onchange="hourschange2();" onchange="billcount();">
                                <option value="0">  0</option>
                                <option value="1">  1</option>
                                <option value="2">  2</option>
                                <option value="3">  3</option>
                                <option value="4">  4</option>
                                <option value="5">  5</option>
                                <option value="6">  6</option>
                                <option value="7">  7</option>
                                <option value="8">  8</option>
                                <option value="9">  9</option>
                                <option value="10">  10</option>
                                <option value="11">  11</option>
                                <option value="12">  12</option>
                            </select>

                        </span>
                        <br><br>

                        
                        <span class="units_month">Units / Month</span>
                        <input type="text" id="units_per_month" name="appliance_name">
                        <input type="text" id="units_per_month1">
                        <input type="text" id="units_per_month2">
                  	 	
                  	 	<%
						
							CalculateUnits calci = (CalculateUnits)request.getAttribute("calcdata");
                        	if(calci!=null)
                        	{	

                        	}
                        	
						%>
                  	 	
                        <br><br>
                        
                        <span class="units_month">Bill Amount</span>
                        <input type="text" id="units_per_month3">
                        <input type="text" id="units_per_month4">
                        <input type="text" id="units_per_month5">
        
                        <br><br><br>
                        

                    </div>
                        <br>
 					
  					<span class="calculate2">
                        <button class="calculate" onclick="calculatedata();">Calculate</button>
                    </span>
                        
                    <span class="save_appliance1">
                        <button type="submit" class="save_appliance">Save My Appliances</button></form>
                    </span>
                    
                        <br><br>
                    <br>
	
                    <div class="save_appliances">
                        <div class="save_box_shadow">
                            <span class="save_suit_symbol">&#128274</span>
                    <span class="my_appliances">My Appliances</span>
                    <br><br>
                </div>
                <div class="total_unit_to_action_shadow">
                <br>

                <div class="save_appliance_total_unit">
                    <span class="small_summer">&#127774</span>
                    <span class="small_winter">&#9924</span>
                    <span class="small_monsoon">&#127784</span>
                    <br>
                    <span class="total_units"> <b> Total Units / Month </b> </span>
                    <input type="text" class="month1" id = "um1"><input type="text" class="month1" id = "um2"><input type="text" class="month1" id = "um3">
                    </div>

                    <br><br>


                    <div class="print_total_units">
                    <span class="appliance" id="center_words">
                         <b> Appliance </b> </span>
                    <span class="hours_use">
                      <div id="center_words" > <b> Hours of daily use </b> </div>
                      <div class="small1_symbols">
                      <div class="s1">&#127774</div>
                      <div class="w1">&#9924</div>
                      <div class="m1">&#127784</div>
                    </div>

                    </span>

                    <span class="units_per_month">
                        <div id="center_words" > <b> Amount per month </b> </div>
                        <div class="small2_symbols">
                            <div class="s1">&#127774</div>
                            <div class="w1">&#9924</div>
                            <div class="m1">&#127784</div>
                        </div>
                          
                    </span>
                    <span class="action" id="center_words"> <b> Action </b> </span>
                    </div>
                    <br></div>
					<form action="input1">
                    <div class="input_shows">
                        <div class="appliance_input">
                        
                        
                        <input type="text" class="inpu1" id="colorid1" size="28">
                        
                    </div>
                        <div class="hours_of_use_input">
                        <input type="text" class="inpu2" id="colorid2" size="6">
                        <input type="text" class="inpu3" id="colorid3" size="6">
                        <input type="text" class="inpu3" id="colorid4" size="6">
                    </div>
                        <div class="units_per_month_input">
                        <input type="text" class="inpu2" id="colorid5" size="7" >
                        <input type="text" class="inpu3" id="colorid6" size="7">
                        <input type="text" class="inpu3" id="colorid7" size="7">
                    </div>
                    <div class="action_show">
                    <input type="reset" class="inpu8" id="colorid" value = " Clear " size="5">
                </div>
                    </div>
					</form>

                    <form action="input2">
                    <div class="input_shows">
                        <div class="appliance_input">
                        
                        
                        <input type="text" class="inpu1" id="color1" size="28">
                    </div>
                        <div class="hours_of_use_input">
                        <input type="text" class="inpu2" id="color2" size="6">
                        <input type="text" class="inpu1" id="color3" size="6">
                        <input type="text" class="inpu1" id="color4" size="6">
                    </div>
                        <div class="units_per_month_input">
                        <input type="text" class="inpu2" id="color5" size="7" >
                        <input type="text" class="inpu1" id="color6" size="7">
                        <input type="text" class="inpu1" id="color7" size="7">
                    </div>
                    <div class="action_show">
                    <input type="reset" class="inpu8" id="colorid" value = " Clear " size="5">
                </div>
                    </div>
					</form>
                    
                    <form action="input3">
                    <div class="input_shows">
                        <div class="appliance_input">
                        
                        
                        <input type="text" class="inpu1" id="colour1" size="28">
                    </div>
                        <div class="hours_of_use_input">
                        <input type="text" class="inpu2" id="colour2" size="6">
                        <input type="text" class="inpu1" id="colour3" size="6">
                        <input type="text" class="inpu1" id="colour4" size="6">
                    </div>
                        <div class="units_per_month_input">
                        <input type="text" class="inpu2" id="colour5" size="7" >
                        <input type="text" class="inpu1" id="colour6" size="7">
                        <input type="text" class="inpu1" id="colour7" size="7">
                    </div>
                    <div class="action_show">
                    <input type="reset" class="inpu8" value = " Clear " id="colorid" size="5">
                </div>
                    </div>
					</form>
                    
                    <form action="input4">
                    <div class="input_shows">
                        <div class="appliance_input">
                        
                        
                        <input type="text" class="inpu1" id="colorr1" size="28">
                    </div>
                        <div class="hours_of_use_input">
                        <input type="text" class="inpu2" id="colorr2" size="6">
                        <input type="text" class="inpu3" id="colorr3" size="6">
                        <input type="text" class="inpu1" id="colorr4" size="6">
                    </div>
                        <div class="units_per_month_input">
                        <input type="text" class="inpu2" id="colorr5" size="7" >
                        <input type="text" class="inpu1" id="colorr6" size="7">
                        <input type="text" class="inpu1" id="colorr7" size="7">
                    </div>
                    <div class="action_show">
                    <input type="reset" value = " Clear " class="inpu8" id="colorid" size="5">
                </div>
                    </div>
					</form>
   
   					<form action="input5">                 
                    <div class="input_shows">
                        <div class="appliance_input">
                        
                        
                        <input type="text" class="inpu1" id="colr1" size="28">
                    </div>
                        <div class="hours_of_use_input">
                        <input type="text" class="inpu2" id="colr2" size="6">
                        <input type="text" class="inpu1" id="colr3" size="6">
                        <input type="text" class="inpu1" id="colr4" size="6">
                    </div>
                        <div class="units_per_month_input">
                        <input type="text" class="inpu2" id="colr5" size="7" >
                        <input type="text" class="inpu1" id="colr6" size="7">
                        <input type="text" class="inpu1" id="colr7" size="7">
                    </div>
                    <div class="action_show">
                    <input type="reset" value = " Clear " class="inpu8" id="colorid" size="5">
                </div>
                    </div>
					</form>
                </div>

            </div>

						



        </div>
        <br>
        <div class="paragraph">
            <p>The above units are estimated and will vary based on the consumption of individual appliances and the number of hours of usage. 1000 watts/hour of usage results in consumption of 1 unit of electricity. 

            </p></div>
            <div class="last_line">
                <span class="credit">&#169; 2021 MOED</span>
                <span class="extra_space" ></span>
                      <span class="term_word" id="term_privacy_font"> <b> TERMS OF SERVICE </b> </span> &nbsp;
                     |
                     &nbsp;&nbsp;
                     <span class="privacy_policy_word" id="term_privacy_font"> <b> PRIVACY POLICY </b></span>
            </div>
    </div>


</body>


</html>

</body>
</html>