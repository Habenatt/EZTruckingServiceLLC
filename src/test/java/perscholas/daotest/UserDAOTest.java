package perscholas.daotest;

import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;
import perscholas.database.dao.ContactDAO;
import perscholas.database.dao.UserDAO;
import perscholas.database.entity.Contact;
import perscholas.database.entity.User;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

@DataJpaTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UserDAOTest {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private ContactDAO contactDao;
    private Contact contact;


    private User user;



   /* @Test
    public void testSaveNewProduct() {
        contactDao.findById(new contact(9));
        User product = userDao.findById(10);

        assertThat(product.getId()).isEqualTo(10);
    }

*/





}
