<style type="text/css">
<!--
body {
	background-color: #b6c7e5;
}
-->
</style>
<link href="../mail_style.css" rel="stylesheet" type="text/css">
<%-- This jsp Page is Uploding The Image into Database using MultipartRequest class
FileSystem concepts and ByteArray.
--%> 

<%@ page import="java.sql.*,java.io.*,java.util.*,com.oreilly.servlet.MultipartRequest,db.*"%>
<jsp:useBean id="obj" class="db.onBean"/>
<% String tut_id=(String)session.getAttribute("ses_tut_id");
	String bid = (String)session.getAttribute("batch");
	String titl = (String)session.getAttribute("title");%>
<%	String t = new String();
/* The Following Code is Used To Insert An Image Into Database */

String filename="";
try
{
//Download com.oreilly package
String ContextPath=System.getProperty("user.dir");
MultipartRequest multi= new MultipartRequest(request,".");
Enumeration files=multi.getFileNames();
//String ContextPath="D:/Tomcat 5.5/webapps/online";

File f=null;
String opFile=null;
String oppath=null;
while(files.hasMoreElements())
{
String name=(String)files.nextElement();
filename=multi.getFilesystemName(name);
String type=multi.getContentType(name);
f=multi.getFile(name);
opFile="The File is "+f.getName();
t = f.getName();
StringTokenizer stk = new StringTokenizer(t,".");
if(stk.hasMoreTokens())
	t = new String(stk.nextToken());
System.out.println("File title :"+t);
System.out.println(opFile);
oppath=ContextPath+"/Uploadedimages/"+f.getName();
}
InputStream is = new FileInputStream(f);
System.out.println("After input stream...");
int fcode=0;
fcode = obj.getMaxId("RESRCS","MEG_ID");
byte b[]=new byte[is.available()];
System.out.println("After byte.....");
is.read(b);
String sql = "INSERT INTO RESRCS VALUES("+fcode+",'/Uploadedimages/"+f.getName().trim()+"','"+titl+"',"+bid+")";
System.out.println("Query :"+sql);
int retVal=obj.insertData(sql);
System.out.println("Path "+oppath);
FileOutputStream os=new FileOutputStream(oppath);
System.out.println("After output stream...");
os.write(b);
is.close();
os.close();	%>
<%="The File is Added"%>
<%}catch(Exception e)
{%>
<%="The file is Not Added"%>
<%System.out.println(e);
e.printStackTrace();
}%>

