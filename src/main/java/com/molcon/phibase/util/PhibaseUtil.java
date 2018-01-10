package com.molcon.phibase.util;


import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import com.molcon.phibase.command.PhibaseRegistrationCommand;

public class PhibaseUtil {

	
	public static Map<String, String> getAdvanceSearchFieldMap(){
		Map<String, String> advSearchFieldMap=new HashMap<String, String>();
		advSearchFieldMap.put("Gene", "");
		advSearchFieldMap.put("Disease", "");
		advSearchFieldMap.put("Host_species", "");
		advSearchFieldMap.put("Pathogen_species", "");
		advSearchFieldMap.put("Anti_infective_agent", "");
		advSearchFieldMap.put("Mutant_Phenotype", "");
		advSearchFieldMap.put("Exp_Technique", "");
		advSearchFieldMap.put("Host_Target", "");
		return advSearchFieldMap;
	}

	public static void getAdvanceSearchValueMap(Map<String, String> advSearchFieldMap,String queryTerm){
		String []queryTermString=null;
		queryTerm=queryTerm.replaceAll("\"", "");
		if(queryTerm.contains("AND") && queryTerm.contains(":")){
			queryTermString=queryTerm.split("AND");
			for(int i=0;i<queryTermString.length;i++){
				String []termString=null;
				termString=queryTermString[i].split(":");
				String termKey=termString[0].trim();
				String termValue=termString[1].trim();
				if(advSearchFieldMap.containsKey(termKey))
					advSearchFieldMap.put(termKey, termValue);
			}
		}else if(!queryTerm.contains("AND") && queryTerm.contains(":")){
			String []termString=null;
			termString=queryTerm.split(":");
			String termKey=termString[0].trim();
			String termValue=termString[1].trim();
			if(advSearchFieldMap.containsKey(termKey))
				advSearchFieldMap.put(termKey, termValue);
		}else{
			
		}
	}
	
	public static String getUserInformationTabSep(PhibaseRegistrationCommand phibaseRegistrationCommand){
		
		Date date=new Date();
		StringBuilder userInformation=new StringBuilder();
		userInformation.append(date.toString()+"\t"+phibaseRegistrationCommand.getName()+"\t"+phibaseRegistrationCommand.getOrganisation()+"\t"+
				phibaseRegistrationCommand.getOrganisationtype()+"\t"+phibaseRegistrationCommand.getEmail()+"\t"+
				phibaseRegistrationCommand.getDepartment()+"\t"+phibaseRegistrationCommand.getStreet()+"\t"+
				phibaseRegistrationCommand.getCity()+"\t"+phibaseRegistrationCommand.getZip()+"\t"+
				phibaseRegistrationCommand.getState()+"\t"+phibaseRegistrationCommand.getCountry()+"\n");
				
		
		
		
		return userInformation.toString();
	}
	
	public static Map<String, String> getCountryMap(){
		Map<String, String> countryMap=new LinkedHashMap<String, String>();
		countryMap.put("UNITED KINGDOM","UNITED KINGDOM");
		countryMap.put("AFGHANISTAN","AFGHANISTAN");
		countryMap.put("ÃLAND ISLANDS","ÃLAND ISLANDS");
		countryMap.put("ALBANIA","ALBANIA");
		countryMap.put("ALGERIA","ALGERIA");
		countryMap.put("AMERICAN SAMOA","AMERICAN SAMOA");
		countryMap.put("ANDORRA","ANDORRA");
		countryMap.put("ANGOLA","ANGOLA");
		countryMap.put("ANGUILLA","ANGUILLA");
		countryMap.put("ANTARCTICA","ANTARCTICA");
		countryMap.put("ANTIGUA AND BARBUDA","ANTIGUA AND BARBUDA");
		countryMap.put("ARGENTINA","ARGENTINA");
		countryMap.put("ARMENIA","ARMENIA");
		countryMap.put("ARUBA","ARUBA");
		countryMap.put("AUSTRALIA","AUSTRALIA");
		countryMap.put("AUSTRIA","AUSTRIA");
		countryMap.put("AZERBAIJAN","AZERBAIJAN");
		countryMap.put("BAHAMAS","BAHAMAS");
		countryMap.put("BAHRAIN","BAHRAIN");
		countryMap.put("BANGLADESH","BANGLADESH");
		countryMap.put("BARBADOS","BARBADOS");
		countryMap.put("BELARUS","BELARUS");
		countryMap.put("BELGIUM","BELGIUM");
		countryMap.put("BELIZE","BELIZE");
		countryMap.put("BENIN","BENIN");
		countryMap.put("BERMUDA","BERMUDA");
		countryMap.put("BHUTAN","BHUTAN");
		countryMap.put("BOLIVIA","BOLIVIA");
		countryMap.put("BONAIRE","BONAIRE");
		countryMap.put("BOSNIA AND HERZEGOVINA","BOSNIA AND HERZEGOVINA");
		countryMap.put("BOTSWANA","BOTSWANA");
		countryMap.put("BOUVET ISLAND","BOUVET ISLAND");
		countryMap.put("BRAZIL","BRAZIL");
		countryMap.put("BRITISH INDIAN OCEAN TERRITORY","BRITISH INDIAN OCEAN TERRITORY");
		countryMap.put("BRUNEI DARUSSALAM","BRUNEI DARUSSALAM");
		countryMap.put("BULGARIA","BULGARIA");
		countryMap.put("BURKINA FASO","BURKINA FASO");
		countryMap.put("BURUNDI","BURUNDI");
		countryMap.put("CAMBODIA","CAMBODIA");
		countryMap.put("CAMEROON","CAMEROON");
		countryMap.put("CANADA","CANADA");
		countryMap.put("CAPE VERDE","CAPE VERDE");
		countryMap.put("CAYMAN ISLANDS","CAYMAN ISLANDS");
		countryMap.put("CENTRAL AFRICAN REPUBLIC","CENTRAL AFRICAN REPUBLIC");
		countryMap.put("CHAD","CHAD");
		countryMap.put("CHILE","CHILE");
		countryMap.put("CHINA","CHINA");
		countryMap.put("CHRISTMAS ISLAND","CHRISTMAS ISLAND");
		countryMap.put("COCOS (KEELING) ISLANDS","COCOS (KEELING) ISLANDS");
		countryMap.put("COLOMBIA","COLOMBIA");
		countryMap.put("COMOROS","COMOROS");
		countryMap.put("CONGO","CONGO");
		countryMap.put("COOK ISLANDS","COOK ISLANDS");
		countryMap.put("COSTA RICA","COSTA RICA");
		countryMap.put("CROATIA","CROATIA");
		countryMap.put("CÃTE D","CÃTE D'IVOIRE");
		countryMap.put("CUBA","CUBA");
	    countryMap.put("CURAÃAO","CURAÃAO"); 
		countryMap.put("CYPRUS","CYPRUS");
		countryMap.put("CZECH REPUBLIC","CZECH REPUBLIC");
		countryMap.put("DENMARK","DENMARK");
		countryMap.put("DJIBOUTI","DJIBOUTI");
		countryMap.put("DOMINICA","DOMINICA");
		countryMap.put("DOMINICAN REPUBLIC","DOMINICAN REPUBLIC");
		countryMap.put("ECUADOR","ECUADOR");
		countryMap.put("EGYPT","EGYPT");
		countryMap.put("EL SALVADOR","EL SALVADOR");
		countryMap.put("EQUATORIAL GUINEA","EQUATORIAL GUINEA");
		countryMap.put("ERITREA","ERITREA");
		countryMap.put("ESTONIA","ESTONIA");
		countryMap.put("ETHIOPIA","ETHIOPIA");
		countryMap.put("FALKLAND ISLANDS (MALVINAS)","FALKLAND ISLANDS (MALVINAS)");
		countryMap.put("FAROE ISLANDS","FAROE ISLANDS");
		countryMap.put("FIJI","FIJI");
		countryMap.put("FINLAND","FINLAND");
		countryMap.put("FRANCE","FRANCE");
		countryMap.put("FRENCH GUIANA","FRENCH GUIANA");
		countryMap.put("FRENCH POLYNESIA","FRENCH POLYNESIA");
		countryMap.put("FRENCH SOUTHERN TERRITORIES","FRENCH SOUTHERN TERRITORIES");
		countryMap.put("GABON","GABON");
		countryMap.put("GAMBIA","GAMBIA");
		countryMap.put("GEORGIA","GEORGIA");
		countryMap.put("GERMANY","GERMANY");
		countryMap.put("GHANA","GHANA");
		countryMap.put("GIBRALTAR","GIBRALTAR");
		countryMap.put("GREECE","GREECE");
		countryMap.put("GREENLAND","GREENLAND");
		countryMap.put("GRENADA","GRENADA");
		countryMap.put("GUADELOUPE","GUADELOUPE");
		countryMap.put("GUAM","GUAM");
		countryMap.put("GUATEMALA","GUATEMALA");
		countryMap.put("GUERNSEY","GUERNSEY");
		countryMap.put("GUINEA","GUINEA");
		countryMap.put("GUINEA-BISSAU","GUINEA-BISSAU");
		countryMap.put("GUYANA","GUYANA");
		countryMap.put("HAITI","HAITI");
		countryMap.put("HEARD ISLAND AND MCDONALD ISLANDS","HEARD ISLAND AND MCDONALD ISLANDS");
		countryMap.put("HOLY SEE (VATICAN CITY STATE)","HOLY SEE (VATICAN CITY STATE)");
		countryMap.put("HONDURAS","HONDURAS");
		countryMap.put("HONG KONG","HONG KONG");
		countryMap.put("HUNGARY","HUNGARY");
		countryMap.put("ICELAND","ICELAND");
		countryMap.put("INDIA","INDIA");
		countryMap.put("INDONESIA","INDONESIA");
		countryMap.put("IRAN","IRAN");
		countryMap.put("IRAQ","IRAQ");
		countryMap.put("IRELAND","IRELAND");
		countryMap.put("ISLE OF MAN","ISLE OF MAN");
		countryMap.put("ISRAEL","ISRAEL");
		countryMap.put("ITALY","ITALY");
		countryMap.put("JAMAICA","JAMAICA");
		countryMap.put("JAPAN","JAPAN");
		countryMap.put("JERSEY","JERSEY");
		countryMap.put("JORDAN","JORDAN");
		countryMap.put("KAZAKHSTAN","KAZAKHSTAN");
		countryMap.put("KENYA","KENYA");
		countryMap.put("KIRIBATI","KIRIBATI");
		countryMap.put("KOREA","KOREA");
		countryMap.put("KOREA","KOREA");
		countryMap.put("KUWAIT","KUWAIT");
		countryMap.put("KYRGYZSTAN","KYRGYZSTAN");
		countryMap.put("LAO PEOPLE","LAO PEOPLE'S DEMOCRATIC REPUBLIC");
		countryMap.put("LATVIA","LATVIA");
		countryMap.put("LEBANON","LEBANON");
		countryMap.put("LESOTHO","LESOTHO");
		countryMap.put("LIBERIA","LIBERIA");
		countryMap.put("LIBYA","LIBYA");
		countryMap.put("LIECHTENSTEIN","LIECHTENSTEIN");
		countryMap.put("LITHUANIA","LITHUANIA");
		countryMap.put("LUXEMBOURG","LUXEMBOURG");
		countryMap.put("MACAO","MACAO");
		countryMap.put("MACEDONIA","MACEDONIA");
		countryMap.put("MADAGASCAR","MADAGASCAR");
		countryMap.put("MALAWI","MALAWI");
		countryMap.put("MALAYSIA","MALAYSIA");
		countryMap.put("MALDIVES","MALDIVES");
		countryMap.put("MALI","MALI");
		countryMap.put("MALTA","MALTA");
		countryMap.put("MARSHALL ISLANDS","MARSHALL ISLANDS");
		countryMap.put("MARTINIQUE","MARTINIQUE");
		countryMap.put("MAURITANIA","MAURITANIA");
		countryMap.put("MAURITIUS","MAURITIUS");
		countryMap.put("MAYOTTE","MAYOTTE");
		countryMap.put("MEXICO","MEXICO");
		countryMap.put("MICRONESIA","MICRONESIA");
		countryMap.put("MOLDOVA","MOLDOVA");
		countryMap.put("MONACO","MONACO");
		countryMap.put("MONGOLIA","MONGOLIA");
		countryMap.put("MONTENEGRO","MONTENEGRO");
		countryMap.put("MONTSERRAT","MONTSERRAT");
		countryMap.put("MOROCCO","MOROCCO");
		countryMap.put("MOZAMBIQUE","MOZAMBIQUE");
		countryMap.put("MYANMAR","MYANMAR");
		countryMap.put("NAMIBIA","NAMIBIA");
		countryMap.put("NAURU","NAURU");
		countryMap.put("NEPAL","NEPAL");
		countryMap.put("NETHERLANDS","NETHERLANDS");
		countryMap.put("NEW CALEDONIA","NEW CALEDONIA");
		countryMap.put("NEW ZEALAND","NEW ZEALAND");
		countryMap.put("NICARAGUA","NICARAGUA");
		countryMap.put("NIGER","NIGER");
		countryMap.put("NIGERIA","NIGERIA");
		countryMap.put("NIUE","NIUE");
		countryMap.put("NORFOLK ISLAND","NORFOLK ISLAND");
		countryMap.put("NORTHERN MARIANA ISLANDS","NORTHERN MARIANA ISLANDS");
		countryMap.put("NORWAY","NORWAY");
		countryMap.put("OMAN","OMAN");
		countryMap.put("PAKISTAN","PAKISTAN");
		countryMap.put("PALAU","PALAU");
		countryMap.put("PALESTINE","PALESTINE");
		countryMap.put("PANAMA","PANAMA");
		countryMap.put("PAPUA NEW GUINEA","PAPUA NEW GUINEA");
		countryMap.put("PARAGUAY","PARAGUAY");
		countryMap.put("PERU","PERU");
		countryMap.put("PHILIPPINES","PHILIPPINES");
		countryMap.put("PITCAIRN","PITCAIRN");
		countryMap.put("POLAND","POLAND");
		countryMap.put("PORTUGAL","PORTUGAL");
		countryMap.put("PUERTO RICO","PUERTO RICO");
		countryMap.put("QATAR","QATAR");
		countryMap.put("RÃUNION","RÃUNION");
		countryMap.put("ROMANIA","ROMANIA");
		countryMap.put("RUSSIAN FEDERATION","RUSSIAN FEDERATION");
		countryMap.put("RWANDA","RWANDA");
		countryMap.put("SAINT BARTHÃLEMY","SAINT BARTHÃLEMY");
		countryMap.put("SAINT HELENA","SAINT HELENA");
		countryMap.put("SAINT KITTS AND NEVIS","SAINT KITTS AND NEVIS");
		countryMap.put("SAINT LUCIA","SAINT LUCIA");
		countryMap.put("SAINT MARTIN (FRENCH PART)","SAINT MARTIN (FRENCH PART)");
		countryMap.put("SAINT PIERRE AND MIQUELON","SAINT PIERRE AND MIQUELON");
		countryMap.put("SAINT VINCENT AND THE GRENADINES","SAINT VINCENT AND THE GRENADINES");
		countryMap.put("SAMOA","SAMOA");
		countryMap.put("SAN MARINO","SAN MARINO");
		countryMap.put("SAO TOME AND PRINCIPE","SAO TOME AND PRINCIPE");
		countryMap.put("SAUDI ARABIA","SAUDI ARABIA");
		countryMap.put("SENEGAL","SENEGAL");
		countryMap.put("SERBIA","SERBIA");
		countryMap.put("SEYCHELLES","SEYCHELLES");
		countryMap.put("SIERRA LEONE","SIERRA LEONE");
		countryMap.put("SINGAPORE","SINGAPORE");
		countryMap.put("SINT MAARTEN (DUTCH PART)","SINT MAARTEN (DUTCH PART)");
		countryMap.put("SLOVAKIA","SLOVAKIA");
		countryMap.put("SLOVENIA","SLOVENIA");
		countryMap.put("SOLOMON ISLANDS","SOLOMON ISLANDS");
		countryMap.put("SOMALIA","SOMALIA");
		countryMap.put("SOUTH AFRICA","SOUTH AFRICA");
		countryMap.put("SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS","SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS");
		countryMap.put("SOUTH SUDAN","SOUTH SUDAN");
		countryMap.put("SPAIN","SPAIN");
		countryMap.put("SRI LANKA","SRI LANKA");
		countryMap.put("SUDAN","SUDAN");
		countryMap.put("SURINAME","SURINAME");
		countryMap.put("SVALBARD AND JAN MAYEN","SVALBARD AND JAN MAYEN");
		countryMap.put("SWAZILAND","SWAZILAND");
		countryMap.put("SWEDEN","SWEDEN");
		countryMap.put("SWITZERLAND","SWITZERLAND");
		countryMap.put("SYRIAN ARAB REPUBLIC","SYRIAN ARAB REPUBLIC");
		countryMap.put("TAIWAN","TAIWAN");
		countryMap.put("TAJIKISTAN","TAJIKISTAN");
		countryMap.put("TANZANIA","TANZANIA");
		countryMap.put("THAILAND","THAILAND");
		countryMap.put("TIMOR-LESTE","TIMOR-LESTE");
		countryMap.put("TOGO","TOGO");
		countryMap.put("TOKELAU","TOKELAU");
		countryMap.put("TONGA","TONGA");
		countryMap.put("TRINIDAD AND TOBAGO","TRINIDAD AND TOBAGO");
		countryMap.put("TUNISIA","TUNISIA");
		countryMap.put("TURKEY","TURKEY");
		countryMap.put("TURKMENISTAN","TURKMENISTAN");
		countryMap.put("TURKS AND CAICOS ISLANDS","TURKS AND CAICOS ISLANDS");
		countryMap.put("TUVALU","TUVALU");
		countryMap.put("UGANDA","UGANDA");
		countryMap.put("UKRAINE","UKRAINE");
		countryMap.put("UNITED ARAB EMIRATES","UNITED ARAB EMIRATES");
		countryMap.put("UNITED STATES","UNITED STATES");
		countryMap.put("UNITED STATES MINOR OUTLYING ISLANDS","UNITED STATES MINOR OUTLYING ISLANDS");
		countryMap.put("URUGUAY","URUGUAY");
		countryMap.put("UZBEKISTAN","UZBEKISTAN");
		countryMap.put("VANUATU","VANUATU");
		countryMap.put("VENEZUELA","VENEZUELA");
		countryMap.put("VIET NAM","VIET NAM");
		countryMap.put("VIRGIN ISLANDS","VIRGIN ISLANDS");
		countryMap.put("VIRGIN ISLANDS","VIRGIN ISLANDS");
		countryMap.put("WALLIS AND FUTUNA","WALLIS AND FUTUNA");
		countryMap.put("WESTERN SAHARA","WESTERN SAHARA");
		countryMap.put("YEMEN","YEMEN");
		countryMap.put("ZAMBIA","ZAMBIA");
		countryMap.put("ZIMBABWE","ZIMBABWE");
		return countryMap;
	}
}
