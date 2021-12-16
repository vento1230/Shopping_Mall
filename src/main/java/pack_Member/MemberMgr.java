package pack_Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberMgr {
	
	
	private DBConnectionMgr pool;

	public MemberMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	

///////////////////////////////////////////////////////////////////	
///////////// Member.jsp ID  중복확인 시작 //////////////////////
///////////////////////////////////////////////////////////////////

	
	public boolean checkId(String uId) {
		
		Connection					objConn 	= 		null;
		PreparedStatement		objPstmt	=		null;
		ResultSet					objRs			=		null;
		
		String sql = null;
		boolean flag = false;
		
		try {
			objConn = pool.getConnection();
			sql = "select uId from tblMember where uId=?";
			objPstmt = objConn.prepareStatement(sql);
			objPstmt.setString(1, uId);
			
			flag = objPstmt.executeQuery().next();
			
		} catch (Exception e) {
			
			System.out.println("SQL 이슈 : "  + e.getMessage());
			
		} finally {
			pool.freeConnection(objConn, objPstmt, objRs);
		}
		
		
		return flag;
	}

///////////////////////////////////////////////////////////////////	
///////////// Member.jsp ID  중복확인 끝 //////////////////////
///////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////	
///////////// MemberProc.jsp 회원가입 시작 //////////////////////
///////////////////////////////////////////////////////////////////
public boolean insertMember(MemberBean bean) {

Connection objConn = null;
PreparedStatement objPstmt = null;
String sql = null;
boolean flag = false;

try {
objConn = pool.getConnection();
sql = "insert into tblMember ";
sql += "(uName, uId, uPw, uEmail, ";
sql += "uBirthday, uPhone) ";
sql += "values ";
sql += "(?, ?, ?, ?, ?, ?)";
objPstmt = objConn.prepareStatement(sql);
objPstmt.setString(1, bean.getuName());
objPstmt.setString(2, bean.getuId());
objPstmt.setString(3, bean.getuPw());
objPstmt.setString(4, bean.getuEmail());
objPstmt.setString(5, bean.getuBirthday());
objPstmt.setString(6, bean.getuPhone());

int cnt = objPstmt.executeUpdate();
if (cnt > 0) flag = true;   // insert가 정상실행되었음을 의미

} catch (Exception e) {

System.out.println("SQL 이슈 : " + e.getMessage());

} finally {
pool.freeConnection(objConn, objPstmt);
}

return flag;
}


///////////////////////////////////////////////////////////////////	
///////////// MemberProc.jsp 회원가입 끝 //////////////////////
///////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////	
///////////// LoginProc.jsp 로그인 시작 //////////////////////
///////////////////////////////////////////////////////////////////

public boolean loginMember(String uId, String uPw) {

Connection objConn = null;
PreparedStatement objPstmt = null;
ResultSet objRs = null;

String sql = null;
boolean flag = false;

try {
objConn = pool.getConnection();
sql = "select uId from tblMember where uId=? and uPw=?";
objPstmt = objConn.prepareStatement(sql);
objPstmt.setString(1, uId);
objPstmt.setString(2, uPw);

flag = objPstmt.executeQuery().next();

} catch (Exception e) {

System.out.println("SQL 이슈 : " + e.getMessage());

} finally {
pool.freeConnection(objConn, objPstmt, objRs);
}

return flag;
}
///////////////////////////////////////////////////////////////////	
///////////// LoginProc.jsp 로그인 끝 //////////////////////
///////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////	
/////// Member_Mod.jsp 회원정보 수정 입력폼 시작 /////////////
///////////////////////////////////////////////////////////////////

public Vector modifyMember(String uId) {

Vector<MemberBean> vList = new Vector<>();

Connection objConn = null;
PreparedStatement objPstmt = null;
ResultSet objRs = null;

String sql = null;

try {
objConn = pool.getConnection();
sql = "select * from tblMember where uId=?";
objPstmt = objConn.prepareStatement(sql);
objPstmt.setString(1, uId);

objRs = objPstmt.executeQuery();

if (objRs != null) {
while (objRs.next()) {

MemberBean memBean = new MemberBean();

memBean.setuId(objRs.getString("uId"));
memBean.setuName(objRs.getString("uName"));
memBean.setuEmail(objRs.getString("uEmail"));
memBean.setuBirthday(objRs.getString("uBirthday"));
memBean.setuPhone(objRs.getString("uPhone"));

vList.add(memBean);

}
}

} catch (Exception e) {

System.out.println("SQL 이슈 : " + e.getMessage());

} finally {
pool.freeConnection(objConn, objPstmt, objRs);
}

return vList;
}

///////////////////////////////////////////////////////////////////	
/////// Member_Mod.jsp 회원정보 수정 입력폼 끝 /////////////
///////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////	
/////// Member_ModProc.jsp 회원정보 수정 시작 /////////////
///////////////////////////////////////////////////////////////////	
public boolean modifyMember(String uPw, String uPhone, String uEmail,String uId) {

Connection objConn = null;
PreparedStatement objPstmt = null;
String sql = null;
boolean flag = false;

try {
objConn = pool.getConnection();

sql = "update tblMember set ";
sql += "uPw=?, uPhone=?, uEmail=? ";
sql += "where uId = ?";
objPstmt = objConn.prepareStatement(sql);
objPstmt.setString(1, uPw);
objPstmt.setString(2, uPhone);
objPstmt.setString(3, uEmail);
objPstmt.setString(4, uId);

int cnt = objPstmt.executeUpdate();
if (cnt > 0)
flag = true; // update가 정상실행되었음을 의미

} catch (Exception e) {

System.out.println("SQL 이슈 : " + e.getMessage());

} finally {
pool.freeConnection(objConn, objPstmt);
}

return flag;
}

///////////////////////////////////////////////////////////////////	
/////// Member_ModProc.jsp 회원정보 수정 끝 /////////////
///////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////	
//////////////Member_Del.jsp 회원탈퇴 시작 ////////////////////
///////////////////////////////////////////////////////////////////	
public boolean deleteMember(String uId) {

Connection objConn = null;
PreparedStatement objPstmt = null;
String sql = null;
boolean flag = false;

try {
objConn = pool.getConnection();

sql = "delete from tblMember where uId = ?";
objPstmt = objConn.prepareStatement(sql);
objPstmt.setString(1, uId);

int cnt = objPstmt.executeUpdate();
if (cnt > 0)
flag = true; // update가 정상실행되었음을 의미

} catch (Exception e) {

System.out.println("SQL 이슈 : " + e.getMessage());

} finally {
pool.freeConnection(objConn, objPstmt);
}

return flag;
}

///////////////////////////////////////////////////////////////////	
//////////////Member_Del.jsp 회원탈퇴 끝 ////////////////////
///////////////////////////////////////////////////////////////////
	
///////////////////////////////////////////////////////////////////	
///////////// Member_Mod.jsp Email  중복확인 시작 //////////////////////
///////////////////////////////////////////////////////////////////


public boolean checkEmail(String uEmail) {

Connection					objConn 	= 		null;
PreparedStatement		objPstmt	=		null;
ResultSet					objRs			=		null;

String sql = null;
boolean flag = false;

try {
objConn = pool.getConnection();
sql = "select uEmail from tblMember where uEmail=?";
objPstmt = objConn.prepareStatement(sql);
objPstmt.setString(1, uEmail);

flag = objPstmt.executeQuery().next();

} catch (Exception e) {

System.out.println("SQL 이슈 : "  + e.getMessage());

} finally {
pool.freeConnection(objConn, objPstmt, objRs);
}


return flag;
}

///////////////////////////////////////////////////////////////////	
///////////// Member.jsp Email  중복확인 끝 //////////////////////
///////////////////////////////////////////////////////////////////

	
}// End of Class


	
	
	
