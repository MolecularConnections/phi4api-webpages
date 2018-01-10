<%  

  java.util.ResourceBundle resource=java.util.ResourceBundle.getBundle("/resources/messages");
  String filename = "PHI_accessions.csv";
  String path = resource.getString("phiDownloadFileurl");
  response.setContentType("text/xml");
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 
  
  java.net.URL url=new java.net.URL(path+filename);
  
  java.io.InputStream inputStream=url.openStream();
   
  int i; 
  while ((i=inputStream.read()) != -1) {
    out.write(i); 
  } 
  inputStream.close();
%>