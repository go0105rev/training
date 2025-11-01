package co.jp.mental.repository;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MentalScaleDetailRepository extends JpaRepository<MentalScaleDetail, String> {

    // TODO 集計登録バッチどこかで新規作成で利用。
    // @Query("SELECT
    // m.scale01,m.scale02,m.scale03,m.scale04,m.scale05,m.scale06,m.scale07,m.scale08,m.scale09,m.scale10,m.scale11,m.scale12,m.scale13,m.scale14,m.scale15,m.scale16,m.scale17,m.scale18,m.scale19,m.scale20
    // FROM b_mental_scale_detail m WHERE m.mscale_num = :mscaleNum")
    // List<Integer> findScalesByMscaleNum(@Param("mscaleNum") String mscaleNum);
}
