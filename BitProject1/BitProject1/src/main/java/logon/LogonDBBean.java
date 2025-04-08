package logon;

import java.util.Optional;

import org.springframework.stereotype.Service;
import jakarta.annotation.Resource;

@Service
public class LogonDBBean {
	@Resource
	private MemberMapper memberMapper;
		
	// 회원가입
	public int insertMember( LogonDataBean logonDto ) {
		return memberMapper.insertMember( logonDto );			
	}
	
	// 아이디 중복 확인	
	public int check( String userId ) {		
		return memberMapper.check( userId );
	}
	
	// 닉네임 중복 확인 
		public int checkNickname( String nickname ) {		
			return memberMapper.checkNickname( nickname );
		}
		
	// 이메일	
		public int checkEmail( String email ) {		
			return memberMapper.checkEmail( email );
		}
	
	// 로그인	
	public int check( String userId, String passwd ) {		
		int result = 0;		
		int count = check( userId );
		if( count == 1 ) {
			// 아이디가 있다
			LogonDataBean logonDto = getMember( userId );
			if( passwd.equals( logonDto.getPasswd() ) ) {
				// 비밀번호가 같다
				result = 1;
			} else {
				// 비밀번호가 다르다
				result = -1;
			}
		} else {
			// 아이디가 없다
			result = 0;
		}
		return result;
	}
	
	// 회원탈퇴
	public int deleteMember( String userId ) {		
		return memberMapper.deleteMember( userId );		
	}
	
	// 회원 정보 수정
	public LogonDataBean getMember( String userId ) {		
		return memberMapper.getMember( userId );
	}
	
	public int modifyMember( LogonDataBean logonDto ) {
		return memberMapper.modifyMember( logonDto );		
	}
	
	// DB 연동
	public Optional<Members> findByUserId( String userId ) {
		return memberMapper.findByUserId(userId)
;	}
	
} // class

























