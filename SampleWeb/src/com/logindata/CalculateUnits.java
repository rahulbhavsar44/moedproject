package com.logindata;

public class CalculateUnits {
	
	private String appliance_name;
	private int watt;
	private int no_of_appliance;
	private int appliance_load;
	private int summer_hours;
	private int winter_hours;
	private int monsoon_hours;
	
	
	public String getAppliance_name() {
		return appliance_name;
	}
	public void setAppliance_name(String appliance_name) {
		this.appliance_name = appliance_name;
	}
	public int getWatt() {
		return watt;
	}
    public void setWatt(int i) {
		this.watt = i;
	}
	public int getNo_of_appliance(int i) {
		return no_of_appliance;
	}
	public void setNo_of_appliance(int no_of_appliance) {
		this.no_of_appliance = no_of_appliance;
	}
	public int getAppliance_load() {
		return appliance_load;
	}
	public void setAppliance_load(int i) {
		this.appliance_load = i;
	}
	public int getSummer_hours() {
		return summer_hours;
	}
	public void setSummer_hours(int i) {
		this.summer_hours = i;
	}
	public int getWinter_hours(int i) {
		return winter_hours;
	}
    public void setWinter_hours(int winter_hours) {
		this.winter_hours = winter_hours;
	}
	public int getMonsoon_hours(int i) {
		return monsoon_hours;
	}
	public void setMonsoon_hours(int monsoon_hours) {
		this.monsoon_hours = monsoon_hours;
	}
	@Override
	//public String toString() {
//		return "CalculateUnits [appliance_name=" + appliance_name + ", watt=" + watt + ", no_of_appliance="
//				+ no_of_appliance + ", appliance_load=" + appliance_load + ", summer_hours=" + summer_hours
//				+ ", winter_hours=" + winter_hours + ", monsoon_hours=" + monsoon_hours + "]";
//}
	public String toString() {
		return  "   "+ watt + "  U/M" ;
	}
	
	
public class CalculateWatt
	{
	private String watt;

	public String getWatt() {
		return watt;
	}

	public void setWatt(String watt) {
		this.watt = watt;
	}

	@Override
	public String toString() {
		return "" + watt;
	}
	}

	

}

