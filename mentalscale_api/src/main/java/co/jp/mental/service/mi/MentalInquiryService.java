package co.jp.mental.service.mi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import co.jp.mental.common.BusinessException;
import co.jp.mental.common.Output;
import co.jp.mental.common.ResStatus;
import co.jp.mental.domain.mi.MiInput;
import co.jp.mental.repository.MentalScale;
import co.jp.mental.repository.MentalScaleDetail;
import co.jp.mental.repository.MentalScaleDetailRepository;
import co.jp.mental.repository.MentalScaleRepository;
import co.jp.mental.service.BasicService;

/**
 * メンタルスケール結果照会。
 */
@Service
public class MentalInquiryService implements BasicService<Output, MiInput> {

    @Autowired
    MentalScaleRepository repository;

    @Autowired
    MentalScaleDetailRepository scaleDetail;

    @Override
    public Output run(MiInput input) {

        Sort sort = Sort.by("mscaleNum").ascending().and(Sort.by("userId").ascending());

        MentalInfo mi = new MentalInfo();
        if (input.isDetail()) {
            List<MentalScaleDetail> lst = scaleDetail.findAll(sort);
            if (CollectionUtils.isEmpty(lst)) {
                throw new BusinessException(ResStatus.NO_DATA, "メンタルスケール詳細のデータなし");
            }
            mi.setMsd(lst);

        } else {
            List<MentalScale> lst = repository.findAll(sort);
            if (CollectionUtils.isEmpty(lst)) {
                throw new BusinessException(ResStatus.NO_DATA, "メンタルスケールのデータなし");
            }
            mi.setMs(lst);
        }

        Output ou = new Output();
        ou.setInfo(mi);

        return ou;
    }

}
