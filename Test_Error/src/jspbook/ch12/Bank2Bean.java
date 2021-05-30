 /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 05. 25          */
/* 파일명 : Bank2Bean.java      */
/* 내용 : 로깅    */
/******************************/

package jspbook.ch12;

//클래스 import
import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Bank2Bean {
	
	// 멤버 선언
	private int aid;
	private String aname;
	private int balance;

	// 데이터베이스 관련 객체 선언
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;

	Logger logger = LoggerFactory.getLogger(Bank2Bean.class);
	
	// JNDI를 통한 연결
	public void connect() {

		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/mysql");
			conn = ds.getConnection();
			logger.info("JNDI를 통한 연결성공");
			logger.warn("WARN TEST");
		}

		catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
	}

	// connection 연결종료
	public void disconnect() {
		try {
			if (conn != null)
				conn.close();
		}
		catch (SQLException e) {
			System.out.println(e);
		}
		System.out.println("close");
	}

	// bank1 테이블 데이터 가져오는 메서드
	public void getData() {
		connect();
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank2");
			rs.next();
			aid = rs.getInt("aid");
			aname = rs.getString("aname");
			balance = rs.getInt("balance");
			logger.info("bank2 테이블 정보 가져오기 성공");
			logger.info("bank2에서 이름 출력: {}",aname);
			logger.info("bank2에서 잔고 출력: {}",Integer.toString(balance));
		
		}
		catch (Exception e) {
			System.out.println(aid + aname + balance);
			System.out.println(e);
		}
		finally {
			disconnect();
		}
	}

	// getXxx 메서드
	public int getAid() {
		return aid;
	}

	public String getAname() {
		return aname;
	}

	public int getBalance() {
		return balance;
	}
}