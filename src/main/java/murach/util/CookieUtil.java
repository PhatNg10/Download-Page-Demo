package murach.util;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

public class CookieUtil {

    public static String getCookieValue(
            Cookie[] cookies,
            String cookieName) {

        if (cookies != null) {

            for (Cookie cookie : cookies) {

                if (cookie.getName().equals(cookieName)) {
                    return cookie.getValue();
                }
            }
        }

        return null;
    }

    public static void addCookie(
            HttpServletResponse response,
            String name,
            String value,
            int maxAge) {

        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(maxAge);
        cookie.setPath("/");

        response.addCookie(cookie);
    }
}