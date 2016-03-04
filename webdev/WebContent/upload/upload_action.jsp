<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.media.jai.JAI"%>
<%@page import="javax.media.jai.RenderedOp"%>
<%@page import="java.awt.image.renderable.ParameterBlock"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	//String uploadPath = "C:\\dev64\\upload";
	String uploadPath = "C:/dev64/upload";	
	String file;
	String filename = null;
	String contenttype = null;
	int size = 1024*1024*20; //20메가
	boolean isImage = false;
	String ext = null;
	
	try{
		File dir = new File(uploadPath);
		if(!dir.exists()) {
			dir.mkdir();
		}
		
		MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy()); // 중복파일 새로 만듬
		Enumeration<String> filenames = multi.getFileNames();
		file = filenames.nextElement();
		filename = multi.getFilesystemName(file);
		contenttype = multi.getContentType(file);
		isImage = contenttype.substring(0, 6).toLowerCase().equals("image/");
		ext = contenttype.substring(6,contenttype.length());
	}catch(Exception e){
		e.printStackTrace();
	}
	try{
		if(isImage){
			ParameterBlock pb = new ParameterBlock();
			pb.add(uploadPath+"/"+filename);
			RenderedOp rOp = JAI.create("fileload", pb);
			BufferedImage bi = rOp.getAsBufferedImage();
			BufferedImage thumb = new BufferedImage(100,100,BufferedImage.TYPE_INT_RGB);
			Graphics2D g = thumb.createGraphics();
			
			g.drawImage(bi, 0, 0, 100,100,null);
			File f = new File(uploadPath+"/thumb_"+filename);
			ImageIO.write(thumb,ext,f);
		}
	}catch(Exception e){
		
	}
	response.sendRedirect("result.jsp?isImage="+isImage+"&filename="+URLEncoder.encode(filename));
%>
