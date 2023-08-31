package com.example.crawling;

import java.io.IOException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class Crawling {
	public static void main(String[] args) {
		final String inflearnUrl = "https://www.alba.co.kr/job/Main.asp?page=1";
		Connection conn = Jsoup.connect(inflearnUrl);

		try {
			Document document = conn.get();
			Elements localElements = document.select("td.local.first"); // 지역
			Elements titleElements = document.select("td.title > a > span.title"); // 제목
			Elements dataElements = document.select("td.data"); // 기간
			Elements payElements = document.select("td.pay"); // 액수
			Elements regDateElements = document.select("td.regDate.last"); // 업로드시간
			for (int j = 0; j < localElements.size(); j++) {
				final String local = localElements.get(j).text();
				System.out.println("지역: " + local);
				final String title = titleElements.get(j).text();
				System.out.println("알바 공고: " + title);
				final String data = dataElements.get(j).text();
				System.out.println("기간: " + data);
				final String pay = payElements.get(j).text();
				System.out.println(pay);
				final String regDate = regDateElements.get(j).text();
				System.out.println("업로드시간: " + regDate);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}