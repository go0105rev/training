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
        a.setM001(scale.getM001());
        a.setM002(scale.getM002());
        a.setM003(scale.getM003());
        a.setM004(scale.getM004());
        a.setM005(scale.getM005());
        a.setM006(scale.getM006());
        a.setM007(scale.getM007());
        a.setM008(scale.getM008());
        a.setM009(scale.getM009());
        a.setM010(scale.getM010());
        a.setM011(scale.getM011());
        a.setM012(scale.getM012());
        a.setM013(scale.getM013());
        a.setM014(scale.getM014());
        a.setM015(scale.getM015());
        a.setM016(scale.getM016());
        a.setM017(scale.getM017());
        a.setM018(scale.getM018());
        a.setM019(scale.getM019());
        a.setM020(scale.getM020());
        a.setOther(scale.getOther());

        try {

            long s = mnSeq.getNextVal();
            String msNum = String.format("MS25%06d", s);
            a.setMscaleNum(msNum);
            a.setUserId(userId);
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
