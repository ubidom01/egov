package bankscan.let.uss.olp.cns.service.impl;

import java.util.List;

import bankscan.com.cmm.service.impl.EgovComAbstractMapper;
import bankscan.let.uss.olp.cns.service.CnsltManageDefaultVO;
import bankscan.let.uss.olp.cns.service.CnsltManageVO;

import org.springframework.stereotype.Repository;



/**
 *
 * 상담내용을 처리하는 DAO 클래스
 * EgovComAbstractDAO 클래스가 기존의 iBatis 를 사용하는 용도로 사용중이어서 EgovComAbstractMapper 를 다시 만들었음
 * 추후 iBatis를 모두 변경할 경우 원래의 이름 EgovComAbstractDAO로 변경할 수 있다.
 * @author 공통서비스 개발팀 박정규 
 * @since 2009.04.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.04.01  박정규          최초 생성
 *   2020.01.22  장봉섭          부모클래스 이름을 EgovComAbstractMapper로 수정
 *
 * </pre>
 */
@Repository("CnsltManageDAO")
public class CnsltManageDAO extends EgovComAbstractMapper {


    /**
	 * 상담내용 글 목록에 대한 상세내용을 조회한다.
	 * @param vo
	 * @return 조회한 글
	 * @exception Exception
	 */
    public CnsltManageVO selectCnsltListDetail(CnsltManageVO vo) throws Exception {

        return (CnsltManageVO) selectOne("CnsltManageDAO.selectCnsltListDetail", vo);
    }

	/**
	 * 상담내용 글을 수정한다.(조회수를 수정)
	 * @param vo
	 * @exception Exception
	 */
    public void updateCnsltInqireCo(CnsltManageVO vo) throws Exception {

        update("CnsltManageDAO.updateCnsltInqireCo", vo);

    }

    /**
	 * 상담내용 글 목록을 조회한다.
	 * @param searchVO
	 * @return 글 목록
	 * @exception Exception
	 */
    public List<?> selectCnsltList(CnsltManageDefaultVO searchVO) throws Exception {

        return list("CnsltManageDAO.selectCnsltList", searchVO);

    }

    /**
	 * 상담내용 글 총 갯수를 조회한다.
	 * @param searchVO
	 * @return 글 총 갯수
	 */
    public int selectCnsltListTotCnt(CnsltManageDefaultVO searchVO) {

        return (Integer)selectOne("CnsltManageDAO.selectCnsltListTotCnt", searchVO);
    }

	/**
	 * 상담내용 글을 등록한다.
	 * @param vo
	 * @exception Exception
	 */
    public void insertCnsltDtls(CnsltManageVO vo) throws Exception {

        insert("CnsltManageDAO.insertCnsltDtls", vo);

    }

    /**
	 * 작성비밀번호를 확인한다.
	 * @param vo
	 * @return 글 총 갯수
	 */
    public int selectCnsltPasswordConfirmCnt(CnsltManageVO vo) {

        return (Integer)selectOne("CnsltManageDAO.selectCnsltPasswordConfirmCnt", vo);
    }

	/**
	 * 상담내용 글을 수정한다.
	 * @param vo
	 * @exception Exception
	 */
    public void updateCnsltDtls(CnsltManageVO vo) throws Exception {

        update("CnsltManageDAO.updateCnsltDtls", vo);

    }

	/**
	 * 상담내용 글을 삭제한다.
	 * @param vo
	 * @exception Exception
	 */
    public void deleteCnsltDtls(CnsltManageVO vo) throws Exception {

        delete("CnsltManageDAO.deleteCnsltDtls", vo);

    }


    /**
	 * 상담답변 글 목록에 대한 상세내용을 조회한다.
	 * @param vo
	 * @return 조회한 글
	 * @exception Exception
	 */
    public CnsltManageVO selectCnsltAnswerListDetail(CnsltManageVO vo) throws Exception {

        return (CnsltManageVO) selectOne("CnsltManageDAO.selectCnsltAnswerListDetail", vo);
    }


    /**
	 * 상담답변 글 목록을 조회한다.
	 * @param searchVO
	 * @return 글 목록
	 * @exception Exception
	 */
    public List<?> selectCnsltAnswerList(CnsltManageDefaultVO searchVO) throws Exception {

        return list("CnsltManageDAO.selectCnsltAnswerList", searchVO);

    }

    /**
	 * 상담답변 글 총 갯수를 조회한다.
	 * @param searchVO
	 * @return 글 총 갯수
	 */
    public int selectCnsltAnswerListTotCnt(CnsltManageDefaultVO searchVO) {

        return (Integer)selectOne("CnsltManageDAO.selectCnsltAnswerListTotCnt", searchVO);
    }

	/**
	 * 상담답변 글을 수정한다.
	 * @param vo
	 * @exception Exception
	 */
    public void updateCnsltDtlsAnswer(CnsltManageVO vo) throws Exception {

        update("CnsltManageDAO.updateCnsltDtlsAnswer", vo);

    }


}
