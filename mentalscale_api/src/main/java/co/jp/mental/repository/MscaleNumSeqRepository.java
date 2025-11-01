package co.jp.mental.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class MscaleNumSeqRepository {

    @PersistenceContext
    private EntityManager em;

    public Long getNextVal() {
        return ((Number) em.createNativeQuery("SELECT nextval('mscale_num_seq_2025')").getSingleResult()).longValue();
    }
}
