package library.cookie;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cooker {
	private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	
	public Cooker(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies!=null){
			for(Cookie cookie:cookies){
				cookieMap.put(cookie.getName(), cookie);
			}
		}
	}
	
	public static Cookie createCookie(String name, String value) throws UnsupportedEncodingException{
		
		return new Cookie(name,URLEncoder.encode(value,"UTF-8"));		
	}
	public static Cookie createCookie(String name, String value, int maxAge) throws UnsupportedEncodingException{
		Cookie c = new Cookie(name,URLEncoder.encode(value,"UTF-8"));
		c.setMaxAge(maxAge);
		return 	c;
	}
	public String getValue(String name) throws UnsupportedEncodingException{
		Cookie cookie = cookieMap.get(name);
		if(cookie!=null) {
			return URLDecoder.decode(cookie.getValue(),"UTF-8");
		}else{
			return null;			
		}
	}
	public boolean isExist(String name){
		return cookieMap.get(name) != null? true:false;
	}
	public void invalidate(HttpServletResponse response) throws UnsupportedEncodingException{
		for(String name : cookieMap.keySet()){
			response.addCookie(createCookie(name, "", 0));
		}
	}
}
