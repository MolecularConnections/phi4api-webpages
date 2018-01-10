
/**
 *
 */
package com.molcon.phibase.util;

import java.io.IOException;

/**
 * @author santosh
 *
 */

import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.net.URL;
import java.net.URLConnection;   
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.log4j.Logger;

public class SolarUtill {

	private static String QUERYURL="http://192.168.6.132:60983/solr/PHIBASE/select?q={query}&wt=json";
	private static String AUTOSUGGEST="http://192.168.6.132:60983/solr/PHIBASE/suggest?spellcheck.q={query}&wt=json";
	
	//private static String QUERYURL="http://localhost:8983/solr/PHIBASE/select?q={query}&wt=json";
	//private static String AUTOSUGGEST="http://localhost:8983/solr/PHIBASE/suggest?spellcheck.q={query}&wt=json";

	private static Logger logger = Logger.getLogger(SolarUtill.class);

	public static String getSearchData(String query,  String method,String type,int pageSize) throws Exception
	{
		URL url = null;
		Reader reader = null;
		String urlstring=QUERYURL;
		if("auto".equals(type))
			urlstring=AUTOSUGGEST;
		String parameters="";String cookie="";
		try {
			query=getComplexPhraseQuery(query,type);
			String pageUrl="&start="+pageSize+"&rows=45";
			query=(URLEncoder.encode(query,"UTF-8"));
			query+=pageUrl;
		} catch (Exception e) {
			System.out.println("Failed while encoding query");

			e.printStackTrace();
			throw new Exception();
		}

		urlstring=urlstring.replace("{query}",query);

		if(method.equals("get"))
		{
			url = new URL(urlstring + (parameters != null && parameters.length() > 0 ? "?" + parameters : ""));
			reader = new InputStreamReader(url.openStream(), "UTF-8");
		}
		else if(method.equals("post"))
		{
			url = new URL(urlstring);


			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			if(cookie != null && cookie.length() > 0)
				conn.addRequestProperty("Cookie", cookie);
			OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
			outStrmW.write(parameters);
			outStrmW.flush();
			outStrmW.close();
			reader = new InputStreamReader(conn.getInputStream(), "UTF-8");
		}
		else
		{
			System.err.println("method only get or post is allowed!");
			throw new Exception();
		}

		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}

		return sb.toString();
	}
	public static String getSearchData(String query,  String method,String type) throws Exception
	{
		URL url = null;
		Reader reader = null;
		String urlstring=QUERYURL;
		System.out.println("type:"+type);
		if("auto".equals(type))
			urlstring=AUTOSUGGEST;
		String parameters="";String cookie="";
		try {
			query=getComplexPhraseQuery(query,type);
			String pageUrl="&start=0&rows=0";
			query=(URLEncoder.encode(query,"UTF-8"));
			query+=pageUrl;
		} catch (Exception e) {
			System.out.println("Failed while encoding query");
			
			e.printStackTrace();
			throw new Exception();
		}

		urlstring=urlstring.replace("{query}",query);
		System.out.println("urlstring:"+urlstring);
		if(method.equals("get"))
		{
			url = new URL(urlstring + (parameters != null && parameters.length() > 0 ? "?" + parameters : ""));
			reader = new InputStreamReader(url.openStream(), "UTF-8");
		}
		else if(method.equals("post"))
		{
			url = new URL(urlstring);


			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			if(cookie != null && cookie.length() > 0)
				conn.addRequestProperty("Cookie", cookie);
			OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
			outStrmW.write(parameters);
			outStrmW.flush();
			outStrmW.close();
			reader = new InputStreamReader(conn.getInputStream(), "UTF-8");
		}
		else
		{
			System.err.println("method only get or post is allowed!");
			throw new Exception();
		}

		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}
		System.out.println("sb...."+sb.toString());
		return sb.toString();
	}

	public static String getSearchDataAdvance(String query,String method,String suggestField) throws Exception
	{
		URL url = null;
		Reader reader = null;
		String urlstring=AUTOSUGGEST;

		String parameters="";String cookie="";
		try {

			String pageUrl="&start=0&rows=0";
			query=(URLEncoder.encode(query,"UTF-8"));
			query+=pageUrl;
		} catch (Exception e) {
			System.out.println("Failed while encoding query");

			e.printStackTrace();
			throw new Exception();
		}

		urlstring=urlstring.replace("{query}",query).replace("suggest", suggestField);

		if(method.equals("get"))
		{
			url = new URL(urlstring + (parameters != null && parameters.length() > 0 ? "?" + parameters : ""));
			reader = new InputStreamReader(url.openStream(), "UTF-8");
		}
		else if(method.equals("post"))
		{
			url = new URL(urlstring);


			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			if(cookie != null && cookie.length() > 0)
				conn.addRequestProperty("Cookie", cookie);
			OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
			outStrmW.write(parameters);
			outStrmW.flush();
			outStrmW.close();
			reader = new InputStreamReader(conn.getInputStream(), "UTF-8");
		}
		else
		{
			System.err.println("method only get or post is allowed!");
			throw new Exception();
		}

		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}

		return sb.toString();
	}

	public static String getSearchGeneForMultipleMutation(String query,  String method) throws Exception
	{
		URL url = null;
		Reader reader = null;
		String urlstring=QUERYURL;

		String parameters="";String cookie="";
		try {
			query=getComplexPhraseQuery(query,"query");
			String pageUrl="&rows=1&fl=Gene";
			query=(URLEncoder.encode(query,"UTF-8"));
			query+=pageUrl;
		} catch (Exception e) {
			System.out.println("Failed while encoding query");

			e.printStackTrace();
			throw new Exception();
		}

		urlstring=urlstring.replace("{query}",query);



		if(method.equals("get"))
		{
			url = new URL(urlstring + (parameters != null && parameters.length() > 0 ? "?" + parameters : ""));
			reader = new InputStreamReader(url.openStream(), "UTF-8");
		}
		else if(method.equals("post"))
		{
			url = new URL(urlstring);


			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			if(cookie != null && cookie.length() > 0)
				conn.addRequestProperty("Cookie", cookie);
			OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
			outStrmW.write(parameters);
			outStrmW.flush();
			outStrmW.close();
			reader = new InputStreamReader(conn.getInputStream(), "UTF-8");
		}
		else
		{
			System.err.println("method only get or post is allowed!");
			throw new Exception();
		}

		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}

		return sb.toString();
	}
	public static String getSearchMultipleMutationForGene(String query,  String method) throws Exception
	{
		URL url = null;
		Reader reader = null;
		String urlstring=QUERYURL;

		String parameters="";String cookie="";
		try {
			query=getComplexPhraseQuery(query,"query");
			String pageUrl="&rows=1&fl=Phibase_accession_ID";
			query=(URLEncoder.encode(query,"UTF-8"));
			query+=pageUrl;
		} catch (Exception e) {
			System.out.println("Failed while encoding query");

			e.printStackTrace();
			throw new Exception();
		}

		urlstring=urlstring.replace("{query}",query);


		if(method.equals("get")) {
			url = new URL(urlstring + (parameters != null && parameters.length() > 0 ? "?" + parameters : ""));
			reader = new InputStreamReader(url.openStream(), "UTF-8");

		} else if(method.equals("post")) {
			url = new URL(urlstring);


			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			if(cookie != null && cookie.length() > 0)
				conn.addRequestProperty("Cookie", cookie);
			OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
			outStrmW.write(parameters);
			outStrmW.flush();
			outStrmW.close();
			reader = new InputStreamReader(conn.getInputStream(), "UTF-8");
		} else {
			throw new Exception("method only get or post is allowed!");
		}

		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}

		return sb.toString();
	}

	public static String getComplexPhraseQuery(String query,String type){

		if(!type.equals("auto")){
			query=query.replaceAll("^\"\\*", "\"");
			query=query.replaceAll("\\s\\*", "\\*");
			Pattern newLinePattern = Pattern.compile("\"[^\\*](.*?)\"",Pattern.CASE_INSENSITIVE);
			Matcher m = newLinePattern.matcher(query);
			while (m.find()) {
				if(m.group(0).contains("*")) {
					if(m.group(0).contains(" ")){
						query="{!complexphrase}"+query;
						break;
					}else{
						String temp=m.group(0).replace("\"", "");
						query=query.replace(m.group(0), temp);
					}
				}
			}
		}

		return query;
	}
	
	public static String formQuery(String queryTerm) {
		if (!queryTerm.equals("*:*")) {
			if (!(queryTerm.contains("GN_NAME") | queryTerm.contains("DISEASE_NAME")
					| queryTerm.contains("HOST_SPECIES") | queryTerm.contains("PATHOGEN_SPECIES")
					| queryTerm.contains("MUTANT_PHENOTYPE") | queryTerm.contains("EXPERIMENTAL_TECHNIQUE")
					| queryTerm.contains("Anti_infective_agent") | queryTerm.contains("Host_target"))) {
				queryTerm = "\"" + queryTerm + "\"";
				queryTerm = queryTerm.replaceAll("\\s+(OR|AND|or|and|NOT|not)\\s+", "\" $1 \"");
			} else {
				queryTerm = getQuery(queryTerm);
			}
		}
		return queryTerm;
	}

	public static String getQuery(String queryTerm) {

		StringBuffer finalQuery = new StringBuffer();
		String[] queryTermArr = queryTerm.split("\\s+");
		{
			for (String query : queryTermArr) {

				if (query.matches("(OR|AND|or|and|not|NOT)")) {
					finalQuery.append(query);
					finalQuery.append(" ");
				} else {
					String[] subQuery = query.split(":");
					if (subQuery.length > 1) {
						if(subQuery[1].equals("\"*\"")){
							finalQuery.append(subQuery[0]);
							finalQuery.append(":");
							finalQuery.append("*");
							finalQuery.append(" ");
						} else if (subQuery[0].toLowerCase().contains("phi")) {
							finalQuery.append("\"" + query + "\"");
							finalQuery.append(" ");
						} else if (!subQuery[1].toLowerCase().startsWith("\"")) {
							finalQuery.append(subQuery[0]);
							finalQuery.append(":");
							finalQuery.append("\"" + subQuery[1] + "\"");
							finalQuery.append(" ");

						} else if (subQuery[1].toLowerCase().startsWith("\"")) {
							finalQuery.append(subQuery[0]);
							finalQuery.append(":");
							finalQuery.append(subQuery[1]);
							finalQuery.append(" ");

						}
					} else {
						finalQuery.append("\"" + query + "\"");
						finalQuery.append(" ");
					}
				}
			}
		}
		return finalQuery.toString();
	}
	public static String getPhIdsForQueryId(String query, String method, String searchType, 
			int start, int offset) throws Exception {
		URL url = null;
		Reader reader = null;
		String urlstring=QUERYURL;
		if("auto".equals(searchType))
			urlstring=AUTOSUGGEST;
		String parameters="";String cookie="";
		try {
			query=getComplexPhraseQuery(query,searchType);
			String pageUrl="&fl=Phibase_accession_ID&start="+start+"&rows="+offset;
			query=(URLEncoder.encode(query,"UTF-8"));
			query+=pageUrl;
		} catch (Exception e) {
			System.out.println("Failed while encoding query");

			e.printStackTrace();
			throw new Exception();
		}

		urlstring=urlstring.replace("{query}",query);

		if(method.equals("get"))
		{
			url = new URL(urlstring + (parameters != null && parameters.length() > 0 ? "?" + parameters : ""));
			reader = new InputStreamReader(url.openStream(), "UTF-8");
		}
		else if(method.equals("post"))
		{
			url = new URL(urlstring);


			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			if(cookie != null && cookie.length() > 0)
				conn.addRequestProperty("Cookie", cookie);
			OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
			outStrmW.write(parameters);
			outStrmW.flush();
			outStrmW.close();
			reader = new InputStreamReader(conn.getInputStream(), "UTF-8");
		}
		else
		{
			System.err.println("method only get or post is allowed!");
			throw new Exception();
		}

		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}

		return sb.toString();
	}
	public static String getDocByPhiId(String phiId) throws Exception {

		URL url = null;
		Reader reader = null;
		String urlstring=QUERYURL;

		String parameters="";String cookie="";
		String query= "Phibase_accession_ID:\""+phiId+"\"";
		query=(URLEncoder.encode(query,"UTF-8"));
		urlstring=urlstring.replace("{query}",query);   

		url = new URL(urlstring);

		URLConnection conn = url.openConnection();
		conn.setDoOutput(true);
		if(cookie != null && cookie.length() > 0)
			conn.addRequestProperty("Cookie", cookie);
		OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
		outStrmW.write(parameters);
		outStrmW.flush();
		outStrmW.close();
		reader = new InputStreamReader(conn.getInputStream(), "UTF-8");


		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}

		return sb.toString();
	}
	
	public static String getAASequenceForAPhiId(String phiId) throws IOException {
		
		URL url = null;
		Reader reader = null;
		String urlstring=QUERYURL;

		String parameters="";String cookie="";
		String query = "Phibase_accession_ID:\""+phiId+"\"";
		query=(URLEncoder.encode(query,"UTF-8"));
		urlstring=urlstring.replace("{query}",query);   

		url = new URL(urlstring);

		URLConnection conn = url.openConnection();
		conn.setDoOutput(true);
		if(cookie != null && cookie.length() > 0)
			conn.addRequestProperty("Cookie", cookie);
		OutputStreamWriter outStrmW = new OutputStreamWriter(conn.getOutputStream());
		outStrmW.write(parameters);
		outStrmW.flush();
		outStrmW.close();
		reader = new InputStreamReader(conn.getInputStream(), "UTF-8");


		StringBuffer sb= new StringBuffer();
		int c = -1;
		while((c = reader.read())!= -1)
		{
			sb.append((char)c);
		}

		return sb.toString();
	}
}