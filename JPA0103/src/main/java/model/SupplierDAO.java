
package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;


public class SupplierDAO {
// @PersistenceContext
	private EntityManager em;

	public SupplierDAO() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA0103");
		em = emf.createEntityManager();
	}

	public void addSupplier(Supplier sup) {
		em.getTransaction().begin();
		try {
			em.persist(sup);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void editSupplier(Supplier sup) {
		em.getTransaction().begin();
		try {
			em.merge(sup);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void deleteSupplier(int id) {
		Supplier sup = em.find(Supplier.class, id);
		em.getTransaction().begin();
		try {
			em.remove(sup);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public Supplier getSupplier(int id) {
		return em.find(Supplier.class, id);
	}

	public List<Supplier> getAllSupplier() {
		return em.createNamedQuery("Supplier.findAll").getResultList();
	}
}