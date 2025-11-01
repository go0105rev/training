package co.jp.mental.service.mr;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import co.jp.mental.common.Output;
import co.jp.mental.common.ResStatus;
import co.jp.mental.common.SystemException;
import co.jp.mental.domain.mr.MrInput;
import co.jp.mental.domain.mr.MrInput.Scale;
import co.jp.mental.repository.Mental;
import co.jp.mental.repository.MentalRepository;
import co.jp.mental.repository.MentalScaleDetail;
import co.jp.mental.repository.MentalScaleDetailRepository;
import co.jp.mental.repository.MscaleNumSeqRepository;
import co.jp.mental.repository.UserInfRepository;
import co.jp.mental.service.BasicService;

/**
 * メンタルスケール入力。
 */
@Service
public class MentalRegisterService implements BasicService<Output, MrInput> {

    @Autowired
    UserInfRepository userInf;

    @Autowired
    MentalScaleDetailRepository scaleDetail;

    @Autowired
    MscaleNumSeqRepository mnSeq;

    @Autowired
    MentalRepository mental;

    @Override
    public Output run(MrInput input) {

        MentalRegister m = new MentalRegister();

        if (input.getScaleEntity() == null) {
            String ques = getQues(input.getQues());
            m.setQuesDetail(ques);

        } else {
            setDetail(input.getUserId(), input.getScaleEntity());
        }

        m.setRes(ResStatus.OK);
        Output ou = new Output();
        ou.setInfo(m);

        return ou;
    }

    private String getQues(String ques) {

        List<Mental> a = mental.findByQuesKey(ques);
        if (a.size() != 1) {
            throw new SystemException(ResStatus.NG, "存在しない質問");
        }

        return a.get(0).getQuesDetail();
    }

    private MentalScaleDetail setDetail(String userId, Scale scale) {

        /* ユーザ確認 */
        if (userInf.countByUserId(userId) != 1) {
            throw new SystemException(ResStatus.NG, "存在しないユーザ");
        }

        /* 詳細登録 */
        MentalScaleDetail a = new MentalScaleDetail();
        a.setScale01(scale.getScale01());
        a.setScale02(scale.getScale02());
        a.setScale03(scale.getScale03());
        a.setScale04(scale.getScale04());
        a.setScale05(scale.getScale05());
        a.setScale06(scale.getScale06());
        a.setScale07(scale.getScale07());
        a.setScale08(scale.getScale08());
        a.setScale09(scale.getScale09());
        a.setScale10(scale.getScale10());
        a.setScale11(scale.getScale11());
        a.setScale12(scale.getScale12());
        a.setScale13(scale.getScale13());
        a.setScale14(scale.getScale14());
        a.setScale15(scale.getScale15());
        a.setScale16(scale.getScale16());
        a.setScale17(scale.getScale17());
        a.setScale18(scale.getScale18());
        a.setScale19(scale.getScale19());
        a.setScale20(scale.getScale20());
        a.setOther(scale.getOther());

        try {

            long s = mnSeq.getNextVal();
            String msNum = String.format("MS25%06d", s);
            a.setMscaleNum(msNum);
            a.setsDate(LocalDateTime.now());

        } catch (Exception e) {
            if (e instanceof DuplicateKeyException se) {
                setDetail(userId, scale);
            }
            throw e;
        }

        scaleDetail.save(a);

        return a;
    }

}
