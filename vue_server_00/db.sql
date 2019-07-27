USE m_nubia;
CREATE TABLE n_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32)
);
INSERT INTO n_login VALUES(null,'tom',md5('123'));
INSERT INTO n_login VALUES(null,'kity',md5('123'));
INSERT INTO n_login VALUES(null,'king',md5('123'));
INSERT INTO n_login VALUES(null,'jerry',md5('123'));
INSERT INTO n_login VALUES(null,'kate',md5('123'));
