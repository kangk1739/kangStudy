package project.team3.action;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class newsSearchApi {

    public StringBuffer searchAction () {
    	System.out.println("searchAction 메서드 실행");
    	
        String clientId = "JpNcMMECIVWHx4NbDR2g";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "M_Q__7wZHl";//애플리케이션 클라이언트 시크릿값";
        StringBuffer response = new StringBuffer();
        try {
            String text = URLEncoder.encode("태양광", "UTF-8"); //검색어";
            String apiURL = "https://openapi.naver.com/v1/search/news.json?query="+ text + "&display=10&start=1&sort=sim"; // 뉴스의 json 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);	//응답을 StringBuffer에 담는다.
            }
            br.close();
            System.out.println(response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
        return response; //json 형태로 응답받은 응답값을 StringBuffer 데이터 타입으로 리턴
    }
}