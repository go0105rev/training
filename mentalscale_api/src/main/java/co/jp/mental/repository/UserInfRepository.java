package co.jp.mental.repository;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserInfRepository extends JpaRepository<UserInf, String> {

    long countByUserId(String userId);

}
