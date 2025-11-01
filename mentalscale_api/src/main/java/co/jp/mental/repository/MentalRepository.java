package co.jp.mental.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MentalRepository extends JpaRepository<Mental, String> {

    List<Mental> findByQuesKey(String ques);

}
