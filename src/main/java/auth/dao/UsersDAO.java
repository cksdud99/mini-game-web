package auth.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import auth.dto.UsersDTO;

public class UsersDAO {

	// singleton pattern 적용
	private static UsersDAO instance;

	public synchronized static UsersDAO getInstance() {
		if (instance == null) {
			instance = new UsersDAO();
		}
		return instance;
	}

	private Connection getConnection() throws Exception {

		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl");

		return ds.getConnection();

	}

	// 아이디 중복 확인
	public boolean isIdDuplicate(String id) {
		String sql = "select count(*) from users where id = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, id);
			try (ResultSet rs = pstat.executeQuery()) {
				if (rs.next() && rs.getInt(1) > 0) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// 닉네임 중복 확인
	public boolean isNicknameDuplicate(String nickname) {
		String sql = "select count(*) from users where nickname = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, nickname);
			try (ResultSet rs = pstat.executeQuery()) {
				if (rs.next() && rs.getInt(1) > 0) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// 마이페이지
	public UsersDTO myPage(String id) throws Exception {
		String sql = "select id, nickname, phone, email from users where id='user1'";

		UsersDTO dto = null;
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

//			pstat.setString(1, id);

			try (ResultSet rs = pstat.executeQuery();) {
				if (rs.next()) {
					id = rs.getString("id");
					String nickname = rs.getString("nickname");
					String phone = rs.getString("phone");
					String email = rs.getString("email");

					dto = new UsersDTO(id, "", "", nickname, phone, email, "", null, null, 0, "", 0, null, null);
				}
				return dto;
			}
		}
	}

	// 개인정보 수정페이지
	public UsersDTO modifyPage(String id) throws Exception {
		String sql = "select id, name, pw, nickname, phone, email, rnum, joindate from users where id='user1'";

		UsersDTO dto = null;
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

//			pstat.setString(1, id);

			try (ResultSet rs = pstat.executeQuery();) {
				if (rs.next()) {
					id = rs.getString("id");
					String name = rs.getString("name");
					String pw = rs.getString("pw");
					String nickname = rs.getString("nickname");
					String phone = rs.getString("phone");
					String email = rs.getString("email");
					String rnum = rs.getString("rnum");
					Timestamp joindate = rs.getTimestamp("joindate");

					dto = new UsersDTO(id, "", name, nickname, phone, email, rnum, null, joindate, 0, "", 0, null,
							null);
				}
				return dto;
			}
		}
	}
	
	public int withdraw(String id) throws Exception { // 탈퇴
		String sql = "delete from users where id = 'user1'";
		
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
//			pstat.setString(1, id);
			int result = pstat.executeUpdate();
			return result;
		}
	}
	
	public boolean isExistID(String id,String email) throws Exception { //아이디 찾기
		String sql = "select * from users where id='user1' and email='user1@email.com'";
		try (Connection con = this.getConnection(); PreparedStatement stat = con.prepareStatement(sql);) {

//			stat.setString(1, id);
			try (ResultSet rs = stat.executeQuery();) {
				System.out.println(rs.next());
				return rs.next();
			}
		}
		
	}

}
