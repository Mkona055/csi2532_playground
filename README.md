# Lab 7-projet



| Nom            | Numéro d'étudiant | Email               |
| -------------- | ----------------- | ------------------- |
| Mohamed Konate | 300136750         | mkona055@uottawa.ca |

## E1 Athlete Data
Create 20 female athletes and 20 male athletes to seed for your project.
```sql
   INSERT INTO athlete (name, date_of_birth, sex,email,nationality)
VALUES('Mohamed Konate','2002/05/01','M','mkona05@gmail.com','France'),
('Kamagaté Abdoul-Aziz','2001/10/16','M','kam056@gmail.com','Canada'),
('Loïc Ky','2000/09/14','M','kyloic@gmail.com','Burkina Faso'),
('Molly Kanyatsi','2001/09/16','F','mkany@gmail.com','Ivory Coast'),
('Yoanna Jones', '2001/02/09','F','joyoanna@gmail.com', 'France'),
('Isabela Christine','2001/11/18','M','isachr07@gmail.com','USA'),
('Andrew Magie','1995/09/14','M','andremag@gmail.com','USA'),
('Rose Monde','1996/09/16','F','rosemo@gmail.com','Canada'),
('Dao Fatoumata', '1997/02/09','F','daofatou@gmail.com', 'Ivory Coast'),
('Ouattara Aziz','2001/12/16','M','ouattaziz@gmail.com','Ivory Coast'),
('Henock Francis','2000/04/14','M','henfrancis@gmail.com','Congo'),
('Perle Yao','2001/05/01','F','pyaoyao@gmail.com','Congo'),
('Wang Lee', '2001/06/06','F','wangleen@gmail.com', 'China'),
('Ahmed Bakayoko','2000/10/16','M','bakamd@gmail.com','Ivory Coast'),
('Wilfried Sankara','1990/09/14','M','wilfsank@gmail.com','Burkina Faso'),
('Emmanuel Kouassi','1991/09/16','F','emmkouass@gmail.com','Ivory Coast'),
('Yapo Ange', '1993/02/09','F','yapang@gmail.com', 'France'),
('Jeanne Domi','1965/02/25','F','jeanne@gmail.com','France'),
('Eleanore Hellis','2000/06/14','F','helleanne@gmail.com','USA'),
('Jemima Antick','2001/05/23','F','jems@gmail.com','Congo'),
('Sung Park', '2001/06/26','F','sungpark@gmail.com', 'Corea'),
('Sarah Bakayoko','2002/10/16','F','baksarah@gmail.com','Congo'),
('Williane Ezy','1992/09/14','F','wilfezy@gmail.com','Burkina Faso'),
('Emmanuella Konate','1993/09/16','F','emmakona@gmail.com','Ivory Coast'),
('Yapo Angele', '1995/02/09','F','yapangele@gmail.com', 'Canada'),
('Jeanne Domi','1965/02/25','F','jeanne@gmail.com','Canada'),
('Eleanore Hellis','2000/06/14','F','helleanne@gmail.com','USA'),
('Jean Antick','2001/05/23','M','jeams@gmail.com','Congo'),
('Young Park', '1999/06/26','M','youngpark@gmail.com', 'Corea'),
('Christian Yoko','2002/10/16','M','chriyo@gmail.com','Canada'),
('Chris Youho','1992/09/24','M','youchrs@gmail.com','Burkina Faso'),
('Emmanuel Kanate','1993/09/30','M','emkana@gmail.com','Canada'),
('Yapi Paulin', '1995/02/09','M','yapaul@gmail.com', 'France'),
('Jean Lou','1992/09/14','M','jlou@gmail.com','France'),
('Kante Kylian','2001/09/16','M','kylliankante@gmail.com','France'),
('Yapo Kenny', '2001/02/09','M','yapkenny@gmail.com', 'Canada'),
('Emma Belle','2000/10/31','M','emmbelle@gmail.com','France'),
('Sery Dorcas','2000/09/15','M','dorcassery@gmail.com','France'),
('Jean Kouassi','2000/09/17','F','jeankouass@gmail.com','Ivory Coast'),
('Lisanna Lin', '2000/02/02','F','lisaliss@gmail.com', 'USA');
   ```
## E2 Competition data
Create 5 competitions (name, date, etc)

```sql
  INSERT INTO competitions(partner_id, name,venue,compet_year ,start_date , end_date, start_time,max_athlete,number_events,representative,email,phone_number)
VALUES
(1,'Joyfest','Arena Joshau',2021,'2021/02/10','2021/02/14' ,'13:30',10,2,'Galilé Jonia','galijon086@plateau.ca',8133550456),
(2,'Montreal Tour', 'Trudeau Stadium',2020 ,'2021/05/15','2021/05/20' ,'14:00',15,3,'Wes Gibbins','wegibb@gmail.ca',6134550469),
(2,'Ottawa Fest','uOttawa',1025 , '2021/04/03', '2021/04/06','9:00',20,5,'Laurel Castillo','laurcastillo@gmail.ca',6144550469),
(3,'Toronto Fest','Martin Square', 2019,'2021/03/01', '2021/03/03','16:00',20,2,'Annalise Keating', 'annakeat@gmail.com',6144557469),
(5,'California Fit','Calif Square',2021,'2021/04/15', '2021/04/20','16:00',20,5,'frank Delfino', 'frankdelf@gmail.com',8144567469);

   ```

## E3 Event matrix

Ces requêtes donne la matrice correspondants
```sql

CREATE TABLE mainscore(mainscore varchar(100));
CREATE TABLE main_tie_break(main_tie_break varchar(100));
CREATE TABLE secondary_tie_break(secondary_tie_break varchar(100));
CREATE TABLE secondaryscore(secondaryscore varchar(100));
INSERT INTO mainscore VALUES('COUNT DESC'),('COUNT ASC'),('TIME ASC'),('TIME DESC');
INSERT INTO secondaryscore VALUES('COUNT DESC'),('COUNT ASC'),('TIME ASC'),('TIME DESC'),('NULL');
INSERT INTO main_tie_break VALUES('COUNT DESC'),('COUNT ASC'),('TIME ASC'),('TIME DESC'),('NULL');
INSERT INTO secondary_tie_break VALUES('COUNT DESC'),('COUNT ASC'),('TIME ASC'),('TIME DESC'),('NULL');
select * from mainscore,main_tie_brak,secondaryscore,secondary_tie_brak;


 mainscore  | main_tie_break | secondaryscore | secondary_tie_break
------------+----------------+----------------+---------------------
 COUNT DESC | COUNT DESC     | COUNT DESC     | COUNT DESC
 COUNT DESC | COUNT DESC     | COUNT DESC     | COUNT ASC
 COUNT DESC | COUNT DESC     | COUNT DESC     | TIME ASC
 COUNT DESC | COUNT DESC     | COUNT DESC     | TIME DESC
 COUNT DESC | COUNT DESC     | COUNT DESC     | NULL
 COUNT DESC | COUNT DESC     | COUNT ASC      | COUNT DESC
 COUNT DESC | COUNT DESC     | COUNT ASC      | COUNT ASC
 COUNT DESC | COUNT DESC     | COUNT ASC      | TIME ASC
 COUNT DESC | COUNT DESC     | COUNT ASC      | TIME DESC
 COUNT DESC | COUNT DESC     | COUNT ASC      | NULL
 COUNT DESC | COUNT DESC     | TIME ASC       | COUNT DESC
 COUNT DESC | COUNT DESC     | TIME ASC       | COUNT ASC
 COUNT DESC | COUNT DESC     | TIME ASC       | TIME ASC
 COUNT DESC | COUNT DESC     | TIME ASC       | TIME DESC
 COUNT DESC | COUNT DESC     | TIME ASC       | NULL
 COUNT DESC | COUNT DESC     | TIME DESC      | COUNT DESC
 COUNT DESC | COUNT DESC     | TIME DESC      | COUNT ASC
 COUNT DESC | COUNT DESC     | TIME DESC      | TIME ASC
 COUNT DESC | COUNT DESC     | TIME DESC      | TIME DESC
 COUNT DESC | COUNT DESC     | TIME DESC      | NULL
 COUNT DESC | COUNT DESC     | NULL           | COUNT DESC
 COUNT DESC | COUNT DESC     | NULL           | COUNT ASC
 COUNT DESC | COUNT DESC     | NULL           | TIME ASC
 COUNT DESC | COUNT DESC     | NULL           | TIME DESC
 COUNT DESC | COUNT DESC     | NULL           | NULL
 COUNT DESC | COUNT ASC      | COUNT DESC     | COUNT DESC
 COUNT DESC | COUNT ASC      | COUNT DESC     | COUNT ASC
 COUNT DESC | COUNT ASC      | COUNT DESC     | TIME ASC
 COUNT DESC | COUNT ASC      | COUNT DESC     | TIME DESC
 COUNT DESC | COUNT ASC      | COUNT DESC     | NULL
 COUNT DESC | COUNT ASC      | COUNT ASC      | COUNT DESC
 COUNT DESC | COUNT ASC      | COUNT ASC      | COUNT ASC
 COUNT DESC | COUNT ASC      | COUNT ASC      | TIME ASC
 COUNT DESC | COUNT ASC      | COUNT ASC      | TIME DESC
 COUNT DESC | COUNT ASC      | COUNT ASC      | NULL
 COUNT DESC | COUNT ASC      | TIME ASC       | COUNT DESC
 COUNT DESC | COUNT ASC      | TIME ASC       | COUNT ASC
 COUNT DESC | COUNT ASC      | TIME ASC       | TIME ASC
 COUNT DESC | COUNT ASC      | TIME ASC       | TIME DESC
 COUNT DESC | COUNT ASC      | TIME ASC       | NULL
 COUNT DESC | COUNT ASC      | TIME DESC      | COUNT DESC
 COUNT DESC | COUNT ASC      | TIME DESC      | COUNT ASC
 COUNT DESC | COUNT ASC      | TIME DESC      | TIME ASC
 COUNT DESC | COUNT ASC      | TIME DESC      | TIME DESC
 COUNT DESC | COUNT ASC      | TIME DESC      | NULL
 COUNT DESC | COUNT ASC      | NULL           | COUNT DESC
 COUNT DESC | COUNT ASC      | NULL           | COUNT ASC
 COUNT DESC | COUNT ASC      | NULL           | TIME ASC
 COUNT DESC | COUNT ASC      | NULL           | TIME DESC
 COUNT DESC | COUNT ASC      | NULL           | NULL
 COUNT DESC | TIME ASC       | COUNT DESC     | COUNT DESC
 COUNT DESC | TIME ASC       | COUNT DESC     | COUNT ASC
 COUNT DESC | TIME ASC       | COUNT DESC     | TIME ASC
 COUNT DESC | TIME ASC       | COUNT DESC     | TIME DESC
 COUNT DESC | TIME ASC       | COUNT DESC     | NULL
 COUNT DESC | TIME ASC       | COUNT ASC      | COUNT DESC
 COUNT DESC | TIME ASC       | COUNT ASC      | COUNT ASC
 COUNT DESC | TIME ASC       | COUNT ASC      | TIME ASC
 COUNT DESC | TIME ASC       | COUNT ASC      | TIME DESC
 COUNT DESC | TIME ASC       | COUNT ASC      | NULL
 COUNT DESC | TIME ASC       | TIME ASC       | COUNT DESC
 COUNT DESC | TIME ASC       | TIME ASC       | COUNT ASC
 COUNT DESC | TIME ASC       | TIME ASC       | TIME ASC
 COUNT DESC | TIME ASC       | TIME ASC       | TIME DESC
 COUNT DESC | TIME ASC       | TIME ASC       | NULL
 COUNT DESC | TIME ASC       | TIME DESC      | COUNT DESC
 COUNT DESC | TIME ASC       | TIME DESC      | COUNT ASC
 COUNT DESC | TIME ASC       | TIME DESC      | TIME ASC
 COUNT DESC | TIME ASC       | TIME DESC      | TIME DESC
 COUNT DESC | TIME ASC       | TIME DESC      | NULL
 COUNT DESC | TIME ASC       | NULL           | COUNT DESC
 COUNT DESC | TIME ASC       | NULL           | COUNT ASC
 COUNT DESC | TIME ASC       | NULL           | TIME ASC
 COUNT DESC | TIME ASC       | NULL           | TIME DESC
 COUNT DESC | TIME ASC       | NULL           | NULL
 COUNT DESC | TIME DESC      | COUNT DESC     | COUNT DESC
 COUNT DESC | TIME DESC      | COUNT DESC     | COUNT ASC
 COUNT DESC | TIME DESC      | COUNT DESC     | TIME ASC
 COUNT DESC | TIME DESC      | COUNT DESC     | TIME DESC
 COUNT DESC | TIME DESC      | COUNT DESC     | NULL
 COUNT DESC | TIME DESC      | COUNT ASC      | COUNT DESC
 COUNT DESC | TIME DESC      | COUNT ASC      | COUNT ASC
 COUNT DESC | TIME DESC      | COUNT ASC      | TIME ASC
 COUNT DESC | TIME DESC      | COUNT ASC      | TIME DESC
 COUNT DESC | TIME DESC      | COUNT ASC      | NULL
 COUNT DESC | TIME DESC      | TIME ASC       | COUNT DESC
 COUNT DESC | TIME DESC      | TIME ASC       | COUNT ASC
 COUNT DESC | TIME DESC      | TIME ASC       | TIME ASC
 COUNT DESC | TIME DESC      | TIME ASC       | TIME DESC
 COUNT DESC | TIME DESC      | TIME ASC       | NULL
 COUNT DESC | TIME DESC      | TIME DESC      | COUNT DESC
 COUNT DESC | TIME DESC      | TIME DESC      | COUNT ASC
 COUNT DESC | TIME DESC      | TIME DESC      | TIME ASC
 COUNT DESC | TIME DESC      | TIME DESC      | TIME DESC
 COUNT DESC | TIME DESC      | TIME DESC      | NULL
 COUNT DESC | TIME DESC      | NULL           | COUNT DESC
 COUNT DESC | TIME DESC      | NULL           | COUNT ASC
 COUNT DESC | TIME DESC      | NULL           | TIME ASC
 COUNT DESC | TIME DESC      | NULL           | TIME DESC
 COUNT DESC | TIME DESC      | NULL           | NULL
 COUNT DESC | NULL           | COUNT DESC     | COUNT DESC
 COUNT DESC | NULL           | COUNT DESC     | COUNT ASC
 COUNT DESC | NULL           | COUNT DESC     | TIME ASC
 COUNT DESC | NULL           | COUNT DESC     | TIME DESC
 COUNT DESC | NULL           | COUNT DESC     | NULL
 COUNT DESC | NULL           | COUNT ASC      | COUNT DESC
 COUNT DESC | NULL           | COUNT ASC      | COUNT ASC
 COUNT DESC | NULL           | COUNT ASC      | TIME ASC
 COUNT DESC | NULL           | COUNT ASC      | TIME DESC
 COUNT DESC | NULL           | COUNT ASC      | NULL
 COUNT DESC | NULL           | TIME ASC       | COUNT DESC
 COUNT DESC | NULL           | TIME ASC       | COUNT ASC
 COUNT DESC | NULL           | TIME ASC       | TIME ASC
 COUNT DESC | NULL           | TIME ASC       | TIME DESC
 COUNT DESC | NULL           | TIME ASC       | NULL
 COUNT DESC | NULL           | TIME DESC      | COUNT DESC
 COUNT DESC | NULL           | TIME DESC      | COUNT ASC
 COUNT DESC | NULL           | TIME DESC      | TIME ASC
 COUNT DESC | NULL           | TIME DESC      | TIME DESC
 COUNT DESC | NULL           | TIME DESC      | NULL
 COUNT DESC | NULL           | NULL           | COUNT DESC
 COUNT DESC | NULL           | NULL           | COUNT ASC
 COUNT DESC | NULL           | NULL           | TIME ASC
 COUNT DESC | NULL           | NULL           | TIME DESC
 COUNT DESC | NULL           | NULL           | NULL
 COUNT ASC  | COUNT DESC     | COUNT DESC     | COUNT DESC
 COUNT ASC  | COUNT DESC     | COUNT DESC     | COUNT ASC
 COUNT ASC  | COUNT DESC     | COUNT DESC     | TIME ASC
 COUNT ASC  | COUNT DESC     | COUNT DESC     | TIME DESC
 COUNT ASC  | COUNT DESC     | COUNT DESC     | NULL
 COUNT ASC  | COUNT DESC     | COUNT ASC      | COUNT DESC
 COUNT ASC  | COUNT DESC     | COUNT ASC      | COUNT ASC
 COUNT ASC  | COUNT DESC     | COUNT ASC      | TIME ASC
 COUNT ASC  | COUNT DESC     | COUNT ASC      | TIME DESC
 COUNT ASC  | COUNT DESC     | COUNT ASC      | NULL
 COUNT ASC  | COUNT DESC     | TIME ASC       | COUNT DESC
 COUNT ASC  | COUNT DESC     | TIME ASC       | COUNT ASC
 COUNT ASC  | COUNT DESC     | TIME ASC       | TIME ASC
 COUNT ASC  | COUNT DESC     | TIME ASC       | TIME DESC
 COUNT ASC  | COUNT DESC     | TIME ASC       | NULL
 COUNT ASC  | COUNT DESC     | TIME DESC      | COUNT DESC
 COUNT ASC  | COUNT DESC     | TIME DESC      | COUNT ASC
 COUNT ASC  | COUNT DESC     | TIME DESC      | TIME ASC
 COUNT ASC  | COUNT DESC     | TIME DESC      | TIME DESC
 COUNT ASC  | COUNT DESC     | TIME DESC      | NULL
 COUNT ASC  | COUNT DESC     | NULL           | COUNT DESC
 COUNT ASC  | COUNT DESC     | NULL           | COUNT ASC
 COUNT ASC  | COUNT DESC     | NULL           | TIME ASC
 COUNT ASC  | COUNT DESC     | NULL           | TIME DESC
 COUNT ASC  | COUNT DESC     | NULL           | NULL
 COUNT ASC  | COUNT ASC      | COUNT DESC     | COUNT DESC
 COUNT ASC  | COUNT ASC      | COUNT DESC     | COUNT ASC
 COUNT ASC  | COUNT ASC      | COUNT DESC     | TIME ASC
 COUNT ASC  | COUNT ASC      | COUNT DESC     | TIME DESC
 COUNT ASC  | COUNT ASC      | COUNT DESC     | NULL
 COUNT ASC  | COUNT ASC      | COUNT ASC      | COUNT DESC
 COUNT ASC  | COUNT ASC      | COUNT ASC      | COUNT ASC
 COUNT ASC  | COUNT ASC      | COUNT ASC      | TIME ASC
 COUNT ASC  | COUNT ASC      | COUNT ASC      | TIME DESC
 COUNT ASC  | COUNT ASC      | COUNT ASC      | NULL
 COUNT ASC  | COUNT ASC      | TIME ASC       | COUNT DESC
 COUNT ASC  | COUNT ASC      | TIME ASC       | COUNT ASC
 COUNT ASC  | COUNT ASC      | TIME ASC       | TIME ASC
 COUNT ASC  | COUNT ASC      | TIME ASC       | TIME DESC
 COUNT ASC  | COUNT ASC      | TIME ASC       | NULL
 COUNT ASC  | COUNT ASC      | TIME DESC      | COUNT DESC
 COUNT ASC  | COUNT ASC      | TIME DESC      | COUNT ASC
 COUNT ASC  | COUNT ASC      | TIME DESC      | TIME ASC
 COUNT ASC  | COUNT ASC      | TIME DESC      | TIME DESC
 COUNT ASC  | COUNT ASC      | TIME DESC      | NULL
 COUNT ASC  | COUNT ASC      | NULL           | COUNT DESC
 COUNT ASC  | COUNT ASC      | NULL           | COUNT ASC
 COUNT ASC  | COUNT ASC      | NULL           | TIME ASC
 COUNT ASC  | COUNT ASC      | NULL           | TIME DESC
 COUNT ASC  | COUNT ASC      | NULL           | NULL
 COUNT ASC  | TIME ASC       | COUNT DESC     | COUNT DESC
 COUNT ASC  | TIME ASC       | COUNT DESC     | COUNT ASC
 COUNT ASC  | TIME ASC       | COUNT DESC     | TIME ASC
 COUNT ASC  | TIME ASC       | COUNT DESC     | TIME DESC
 COUNT ASC  | TIME ASC       | COUNT DESC     | NULL
 COUNT ASC  | TIME ASC       | COUNT ASC      | COUNT DESC
 COUNT ASC  | TIME ASC       | COUNT ASC      | COUNT ASC
 COUNT ASC  | TIME ASC       | COUNT ASC      | TIME ASC
 COUNT ASC  | TIME ASC       | COUNT ASC      | TIME DESC
 COUNT ASC  | TIME ASC       | COUNT ASC      | NULL
 COUNT ASC  | TIME ASC       | TIME ASC       | COUNT DESC
 COUNT ASC  | TIME ASC       | TIME ASC       | COUNT ASC
 COUNT ASC  | TIME ASC       | TIME ASC       | TIME ASC
 COUNT ASC  | TIME ASC       | TIME ASC       | TIME DESC
 COUNT ASC  | TIME ASC       | TIME ASC       | NULL
 COUNT ASC  | TIME ASC       | TIME DESC      | COUNT DESC
 COUNT ASC  | TIME ASC       | TIME DESC      | COUNT ASC
 COUNT ASC  | TIME ASC       | TIME DESC      | TIME ASC
 COUNT ASC  | TIME ASC       | TIME DESC      | TIME DESC
 COUNT ASC  | TIME ASC       | TIME DESC      | NULL
 COUNT ASC  | TIME ASC       | NULL           | COUNT DESC
 COUNT ASC  | TIME ASC       | NULL           | COUNT ASC
 COUNT ASC  | TIME ASC       | NULL           | TIME ASC
 COUNT ASC  | TIME ASC       | NULL           | TIME DESC
 COUNT ASC  | TIME ASC       | NULL           | NULL
 COUNT ASC  | TIME DESC      | COUNT DESC     | COUNT DESC
 COUNT ASC  | TIME DESC      | COUNT DESC     | COUNT ASC
 COUNT ASC  | TIME DESC      | COUNT DESC     | TIME ASC
 COUNT ASC  | TIME DESC      | COUNT DESC     | TIME DESC
 COUNT ASC  | TIME DESC      | COUNT DESC     | NULL
 COUNT ASC  | TIME DESC      | COUNT ASC      | COUNT DESC
 COUNT ASC  | TIME DESC      | COUNT ASC      | COUNT ASC
 COUNT ASC  | TIME DESC      | COUNT ASC      | TIME ASC
 COUNT ASC  | TIME DESC      | COUNT ASC      | TIME DESC
 COUNT ASC  | TIME DESC      | COUNT ASC      | NULL
 COUNT ASC  | TIME DESC      | TIME ASC       | COUNT DESC
 COUNT ASC  | TIME DESC      | TIME ASC       | COUNT ASC
 COUNT ASC  | TIME DESC      | TIME ASC       | TIME ASC
 COUNT ASC  | TIME DESC      | TIME ASC       | TIME DESC
 COUNT ASC  | TIME DESC      | TIME ASC       | NULL
 COUNT ASC  | TIME DESC      | TIME DESC      | COUNT DESC
 COUNT ASC  | TIME DESC      | TIME DESC      | COUNT ASC
 COUNT ASC  | TIME DESC      | TIME DESC      | TIME ASC
 COUNT ASC  | TIME DESC      | TIME DESC      | TIME DESC
 COUNT ASC  | TIME DESC      | TIME DESC      | NULL
 COUNT ASC  | TIME DESC      | NULL           | COUNT DESC
 COUNT ASC  | TIME DESC      | NULL           | COUNT ASC
 COUNT ASC  | TIME DESC      | NULL           | TIME ASC
 COUNT ASC  | TIME DESC      | NULL           | TIME DESC
 COUNT ASC  | TIME DESC      | NULL           | NULL
 COUNT ASC  | NULL           | COUNT DESC     | COUNT DESC
 COUNT ASC  | NULL           | COUNT DESC     | COUNT ASC
 COUNT ASC  | NULL           | COUNT DESC     | TIME ASC
 COUNT ASC  | NULL           | COUNT DESC     | TIME DESC
 COUNT ASC  | NULL           | COUNT DESC     | NULL
 COUNT ASC  | NULL           | COUNT ASC      | COUNT DESC
 COUNT ASC  | NULL           | COUNT ASC      | COUNT ASC
 COUNT ASC  | NULL           | COUNT ASC      | TIME ASC
 COUNT ASC  | NULL           | COUNT ASC      | TIME DESC
 COUNT ASC  | NULL           | COUNT ASC      | NULL
 COUNT ASC  | NULL           | TIME ASC       | COUNT DESC
 COUNT ASC  | NULL           | TIME ASC       | COUNT ASC
 COUNT ASC  | NULL           | TIME ASC       | TIME ASC
 COUNT ASC  | NULL           | TIME ASC       | TIME DESC
 COUNT ASC  | NULL           | TIME ASC       | NULL
 COUNT ASC  | NULL           | TIME DESC      | COUNT DESC
 COUNT ASC  | NULL           | TIME DESC      | COUNT ASC
 COUNT ASC  | NULL           | TIME DESC      | TIME ASC
 COUNT ASC  | NULL           | TIME DESC      | TIME DESC
 COUNT ASC  | NULL           | TIME DESC      | NULL
 COUNT ASC  | NULL           | NULL           | COUNT DESC
 COUNT ASC  | NULL           | NULL           | COUNT ASC
 COUNT ASC  | NULL           | NULL           | TIME ASC
 COUNT ASC  | NULL           | NULL           | TIME DESC
 COUNT ASC  | NULL           | NULL           | NULL
 TIME ASC   | COUNT DESC     | COUNT DESC     | COUNT DESC
 TIME ASC   | COUNT DESC     | COUNT DESC     | COUNT ASC
 TIME ASC   | COUNT DESC     | COUNT DESC     | TIME ASC
 TIME ASC   | COUNT DESC     | COUNT DESC     | TIME DESC
 TIME ASC   | COUNT DESC     | COUNT DESC     | NULL
 TIME ASC   | COUNT DESC     | COUNT ASC      | COUNT DESC
 TIME ASC   | COUNT DESC     | COUNT ASC      | COUNT ASC
 TIME ASC   | COUNT DESC     | COUNT ASC      | TIME ASC
 TIME ASC   | COUNT DESC     | COUNT ASC      | TIME DESC
 TIME ASC   | COUNT DESC     | COUNT ASC      | NULL
 TIME ASC   | COUNT DESC     | TIME ASC       | COUNT DESC
 TIME ASC   | COUNT DESC     | TIME ASC       | COUNT ASC
 TIME ASC   | COUNT DESC     | TIME ASC       | TIME ASC
 TIME ASC   | COUNT DESC     | TIME ASC       | TIME DESC
 TIME ASC   | COUNT DESC     | TIME ASC       | NULL
 TIME ASC   | COUNT DESC     | TIME DESC      | COUNT DESC
 TIME ASC   | COUNT DESC     | TIME DESC      | COUNT ASC
 TIME ASC   | COUNT DESC     | TIME DESC      | TIME ASC
 TIME ASC   | COUNT DESC     | TIME DESC      | TIME DESC
 TIME ASC   | COUNT DESC     | TIME DESC      | NULL
 TIME ASC   | COUNT DESC     | NULL           | COUNT DESC
 TIME ASC   | COUNT DESC     | NULL           | COUNT ASC
 TIME ASC   | COUNT DESC     | NULL           | TIME ASC
 TIME ASC   | COUNT DESC     | NULL           | TIME DESC
 TIME ASC   | COUNT DESC     | NULL           | NULL
 TIME ASC   | COUNT ASC      | COUNT DESC     | COUNT DESC
 TIME ASC   | COUNT ASC      | COUNT DESC     | COUNT ASC
 TIME ASC   | COUNT ASC      | COUNT DESC     | TIME ASC
 TIME ASC   | COUNT ASC      | COUNT DESC     | TIME DESC
 TIME ASC   | COUNT ASC      | COUNT DESC     | NULL
 TIME ASC   | COUNT ASC      | COUNT ASC      | COUNT DESC
 TIME ASC   | COUNT ASC      | COUNT ASC      | COUNT ASC
 TIME ASC   | COUNT ASC      | COUNT ASC      | TIME ASC
 TIME ASC   | COUNT ASC      | COUNT ASC      | TIME DESC
 TIME ASC   | COUNT ASC      | COUNT ASC      | NULL
 TIME ASC   | COUNT ASC      | TIME ASC       | COUNT DESC
 TIME ASC   | COUNT ASC      | TIME ASC       | COUNT ASC
 TIME ASC   | COUNT ASC      | TIME ASC       | TIME ASC
 TIME ASC   | COUNT ASC      | TIME ASC       | TIME DESC
 TIME ASC   | COUNT ASC      | TIME ASC       | NULL
 TIME ASC   | COUNT ASC      | TIME DESC      | COUNT DESC
 TIME ASC   | COUNT ASC      | TIME DESC      | COUNT ASC
 TIME ASC   | COUNT ASC      | TIME DESC      | TIME ASC
 TIME ASC   | COUNT ASC      | TIME DESC      | TIME DESC
 TIME ASC   | COUNT ASC      | TIME DESC      | NULL
 TIME ASC   | COUNT ASC      | NULL           | COUNT DESC
 TIME ASC   | COUNT ASC      | NULL           | COUNT ASC
 TIME ASC   | COUNT ASC      | NULL           | TIME ASC
 TIME ASC   | COUNT ASC      | NULL           | TIME DESC
 TIME ASC   | COUNT ASC      | NULL           | NULL
 TIME ASC   | TIME ASC       | COUNT DESC     | COUNT DESC
 TIME ASC   | TIME ASC       | COUNT DESC     | COUNT ASC
 TIME ASC   | TIME ASC       | COUNT DESC     | TIME ASC
 TIME ASC   | TIME ASC       | COUNT DESC     | TIME DESC
 TIME ASC   | TIME ASC       | COUNT DESC     | NULL
 TIME ASC   | TIME ASC       | COUNT ASC      | COUNT DESC
 TIME ASC   | TIME ASC       | COUNT ASC      | COUNT ASC
 TIME ASC   | TIME ASC       | COUNT ASC      | TIME ASC
 TIME ASC   | TIME ASC       | COUNT ASC      | TIME DESC
 TIME ASC   | TIME ASC       | COUNT ASC      | NULL
 TIME ASC   | TIME ASC       | TIME ASC       | COUNT DESC
 TIME ASC   | TIME ASC       | TIME ASC       | COUNT ASC
 TIME ASC   | TIME ASC       | TIME ASC       | TIME ASC
 TIME ASC   | TIME ASC       | TIME ASC       | TIME DESC
 TIME ASC   | TIME ASC       | TIME ASC       | NULL
 TIME ASC   | TIME ASC       | TIME DESC      | COUNT DESC
 TIME ASC   | TIME ASC       | TIME DESC      | COUNT ASC
 TIME ASC   | TIME ASC       | TIME DESC      | TIME ASC
 TIME ASC   | TIME ASC       | TIME DESC      | TIME DESC
 TIME ASC   | TIME ASC       | TIME DESC      | NULL
 TIME ASC   | TIME ASC       | NULL           | COUNT DESC
 TIME ASC   | TIME ASC       | NULL           | COUNT ASC
 TIME ASC   | TIME ASC       | NULL           | TIME ASC
 TIME ASC   | TIME ASC       | NULL           | TIME DESC
 TIME ASC   | TIME ASC       | NULL           | NULL
 TIME ASC   | TIME DESC      | COUNT DESC     | COUNT DESC
 TIME ASC   | TIME DESC      | COUNT DESC     | COUNT ASC
 TIME ASC   | TIME DESC      | COUNT DESC     | TIME ASC
 TIME ASC   | TIME DESC      | COUNT DESC     | TIME DESC
 TIME ASC   | TIME DESC      | COUNT DESC     | NULL
 TIME ASC   | TIME DESC      | COUNT ASC      | COUNT DESC
 TIME ASC   | TIME DESC      | COUNT ASC      | COUNT ASC
 TIME ASC   | TIME DESC      | COUNT ASC      | TIME ASC
 TIME ASC   | TIME DESC      | COUNT ASC      | TIME DESC
 TIME ASC   | TIME DESC      | COUNT ASC      | NULL
 TIME ASC   | TIME DESC      | TIME ASC       | COUNT DESC
 TIME ASC   | TIME DESC      | TIME ASC       | COUNT ASC
 TIME ASC   | TIME DESC      | TIME ASC       | TIME ASC
 TIME ASC   | TIME DESC      | TIME ASC       | TIME DESC
 TIME ASC   | TIME DESC      | TIME ASC       | NULL
 TIME ASC   | TIME DESC      | TIME DESC      | COUNT DESC
 TIME ASC   | TIME DESC      | TIME DESC      | COUNT ASC
 TIME ASC   | TIME DESC      | TIME DESC      | TIME ASC
 TIME ASC   | TIME DESC      | TIME DESC      | TIME DESC
 TIME ASC   | TIME DESC      | TIME DESC      | NULL
 TIME ASC   | TIME DESC      | NULL           | COUNT DESC
 TIME ASC   | TIME DESC      | NULL           | COUNT ASC
 TIME ASC   | TIME DESC      | NULL           | TIME ASC
 TIME ASC   | TIME DESC      | NULL           | TIME DESC
 TIME ASC   | TIME DESC      | NULL           | NULL
 TIME ASC   | NULL           | COUNT DESC     | COUNT DESC
 TIME ASC   | NULL           | COUNT DESC     | COUNT ASC
 TIME ASC   | NULL           | COUNT DESC     | TIME ASC
 TIME ASC   | NULL           | COUNT DESC     | TIME DESC
 TIME ASC   | NULL           | COUNT DESC     | NULL
 TIME ASC   | NULL           | COUNT ASC      | COUNT DESC
 TIME ASC   | NULL           | COUNT ASC      | COUNT ASC
 TIME ASC   | NULL           | COUNT ASC      | TIME ASC
 TIME ASC   | NULL           | COUNT ASC      | TIME DESC
 TIME ASC   | NULL           | COUNT ASC      | NULL
 TIME ASC   | NULL           | TIME ASC       | COUNT DESC
 TIME ASC   | NULL           | TIME ASC       | COUNT ASC
 TIME ASC   | NULL           | TIME ASC       | TIME ASC
 TIME ASC   | NULL           | TIME ASC       | TIME DESC
 TIME ASC   | NULL           | TIME ASC       | NULL
 TIME ASC   | NULL           | TIME DESC      | COUNT DESC
 TIME ASC   | NULL           | TIME DESC      | COUNT ASC
 TIME ASC   | NULL           | TIME DESC      | TIME ASC
 TIME ASC   | NULL           | TIME DESC      | TIME DESC
 TIME ASC   | NULL           | TIME DESC      | NULL
 TIME ASC   | NULL           | NULL           | COUNT DESC
 TIME ASC   | NULL           | NULL           | COUNT ASC
 TIME ASC   | NULL           | NULL           | TIME ASC
 TIME ASC   | NULL           | NULL           | TIME DESC
 TIME ASC   | NULL           | NULL           | NULL
 TIME DESC  | COUNT DESC     | COUNT DESC     | COUNT DESC
 TIME DESC  | COUNT DESC     | COUNT DESC     | COUNT ASC
 TIME DESC  | COUNT DESC     | COUNT DESC     | TIME ASC
 TIME DESC  | COUNT DESC     | COUNT DESC     | TIME DESC
 TIME DESC  | COUNT DESC     | COUNT DESC     | NULL
 TIME DESC  | COUNT DESC     | COUNT ASC      | COUNT DESC
 TIME DESC  | COUNT DESC     | COUNT ASC      | COUNT ASC
 TIME DESC  | COUNT DESC     | COUNT ASC      | TIME ASC
 TIME DESC  | COUNT DESC     | COUNT ASC      | TIME DESC
 TIME DESC  | COUNT DESC     | COUNT ASC      | NULL
 TIME DESC  | COUNT DESC     | TIME ASC       | COUNT DESC
 TIME DESC  | COUNT DESC     | TIME ASC       | COUNT ASC
 TIME DESC  | COUNT DESC     | TIME ASC       | TIME ASC
 TIME DESC  | COUNT DESC     | TIME ASC       | TIME DESC
 TIME DESC  | COUNT DESC     | TIME ASC       | NULL
 TIME DESC  | COUNT DESC     | TIME DESC      | COUNT DESC
 TIME DESC  | COUNT DESC     | TIME DESC      | COUNT ASC
 TIME DESC  | COUNT DESC     | TIME DESC      | TIME ASC
 TIME DESC  | COUNT DESC     | TIME DESC      | TIME DESC
 TIME DESC  | COUNT DESC     | TIME DESC      | NULL
 TIME DESC  | COUNT DESC     | NULL           | COUNT DESC
 TIME DESC  | COUNT DESC     | NULL           | COUNT ASC
 TIME DESC  | COUNT DESC     | NULL           | TIME ASC
 TIME DESC  | COUNT DESC     | NULL           | TIME DESC
 TIME DESC  | COUNT DESC     | NULL           | NULL
 TIME DESC  | COUNT ASC      | COUNT DESC     | COUNT DESC
 TIME DESC  | COUNT ASC      | COUNT DESC     | COUNT ASC
 TIME DESC  | COUNT ASC      | COUNT DESC     | TIME ASC
 TIME DESC  | COUNT ASC      | COUNT DESC     | TIME DESC
 TIME DESC  | COUNT ASC      | COUNT DESC     | NULL
 TIME DESC  | COUNT ASC      | COUNT ASC      | COUNT DESC
 TIME DESC  | COUNT ASC      | COUNT ASC      | COUNT ASC
 TIME DESC  | COUNT ASC      | COUNT ASC      | TIME ASC
 TIME DESC  | COUNT ASC      | COUNT ASC      | TIME DESC
 TIME DESC  | COUNT ASC      | COUNT ASC      | NULL
 TIME DESC  | COUNT ASC      | TIME ASC       | COUNT DESC
 TIME DESC  | COUNT ASC      | TIME ASC       | COUNT ASC
 TIME DESC  | COUNT ASC      | TIME ASC       | TIME ASC
 TIME DESC  | COUNT ASC      | TIME ASC       | TIME DESC
 TIME DESC  | COUNT ASC      | TIME ASC       | NULL
 TIME DESC  | COUNT ASC      | TIME DESC      | COUNT DESC
 TIME DESC  | COUNT ASC      | TIME DESC      | COUNT ASC
 TIME DESC  | COUNT ASC      | TIME DESC      | TIME ASC
 TIME DESC  | COUNT ASC      | TIME DESC      | TIME DESC
 TIME DESC  | COUNT ASC      | TIME DESC      | NULL
 TIME DESC  | COUNT ASC      | NULL           | COUNT DESC
 TIME DESC  | COUNT ASC      | NULL           | COUNT ASC
 TIME DESC  | COUNT ASC      | NULL           | TIME ASC
 TIME DESC  | COUNT ASC      | NULL           | TIME DESC
 TIME DESC  | COUNT ASC      | NULL           | NULL
 TIME DESC  | TIME ASC       | COUNT DESC     | COUNT DESC
 TIME DESC  | TIME ASC       | COUNT DESC     | COUNT ASC
 TIME DESC  | TIME ASC       | COUNT DESC     | TIME ASC
 TIME DESC  | TIME ASC       | COUNT DESC     | TIME DESC
 TIME DESC  | TIME ASC       | COUNT DESC     | NULL
 TIME DESC  | TIME ASC       | COUNT ASC      | COUNT DESC
 TIME DESC  | TIME ASC       | COUNT ASC      | COUNT ASC
 TIME DESC  | TIME ASC       | COUNT ASC      | TIME ASC
 TIME DESC  | TIME ASC       | COUNT ASC      | TIME DESC
 TIME DESC  | TIME ASC       | COUNT ASC      | NULL
 TIME DESC  | TIME ASC       | TIME ASC       | COUNT DESC
 TIME DESC  | TIME ASC       | TIME ASC       | COUNT ASC
 TIME DESC  | TIME ASC       | TIME ASC       | TIME ASC
 TIME DESC  | TIME ASC       | TIME ASC       | TIME DESC
 TIME DESC  | TIME ASC       | TIME ASC       | NULL
 TIME DESC  | TIME ASC       | TIME DESC      | COUNT DESC
 TIME DESC  | TIME ASC       | TIME DESC      | COUNT ASC
 TIME DESC  | TIME ASC       | TIME DESC      | TIME ASC
 TIME DESC  | TIME ASC       | TIME DESC      | TIME DESC
 TIME DESC  | TIME ASC       | TIME DESC      | NULL
 TIME DESC  | TIME ASC       | NULL           | COUNT DESC
 TIME DESC  | TIME ASC       | NULL           | COUNT ASC
 TIME DESC  | TIME ASC       | NULL           | TIME ASC
 TIME DESC  | TIME ASC       | NULL           | TIME DESC
 TIME DESC  | TIME ASC       | NULL           | NULL
 TIME DESC  | TIME DESC      | COUNT DESC     | COUNT DESC
 TIME DESC  | TIME DESC      | COUNT DESC     | COUNT ASC
 TIME DESC  | TIME DESC      | COUNT DESC     | TIME ASC
 TIME DESC  | TIME DESC      | COUNT DESC     | TIME DESC
 TIME DESC  | TIME DESC      | COUNT DESC     | NULL
 TIME DESC  | TIME DESC      | COUNT ASC      | COUNT DESC
 TIME DESC  | TIME DESC      | COUNT ASC      | COUNT ASC
 TIME DESC  | TIME DESC      | COUNT ASC      | TIME ASC
 TIME DESC  | TIME DESC      | COUNT ASC      | TIME DESC
 TIME DESC  | TIME DESC      | COUNT ASC      | NULL
 TIME DESC  | TIME DESC      | TIME ASC       | COUNT DESC
 TIME DESC  | TIME DESC      | TIME ASC       | COUNT ASC
 TIME DESC  | TIME DESC      | TIME ASC       | TIME ASC
 TIME DESC  | TIME DESC      | TIME ASC       | TIME DESC
 TIME DESC  | TIME DESC      | TIME ASC       | NULL
 TIME DESC  | TIME DESC      | TIME DESC      | COUNT DESC
 TIME DESC  | TIME DESC      | TIME DESC      | COUNT ASC
 TIME DESC  | TIME DESC      | TIME DESC      | TIME ASC
 TIME DESC  | TIME DESC      | TIME DESC      | TIME DESC
 TIME DESC  | TIME DESC      | TIME DESC      | NULL
 TIME DESC  | TIME DESC      | NULL           | COUNT DESC
 TIME DESC  | TIME DESC      | NULL           | COUNT ASC
 TIME DESC  | TIME DESC      | NULL           | TIME ASC
 TIME DESC  | TIME DESC      | NULL           | TIME DESC
 TIME DESC  | TIME DESC      | NULL           | NULL
 TIME DESC  | NULL           | COUNT DESC     | COUNT DESC
 TIME DESC  | NULL           | COUNT DESC     | COUNT ASC
 TIME DESC  | NULL           | COUNT DESC     | TIME ASC
 TIME DESC  | NULL           | COUNT DESC     | TIME DESC
 TIME DESC  | NULL           | COUNT DESC     | NULL
 TIME DESC  | NULL           | COUNT ASC      | COUNT DESC
 TIME DESC  | NULL           | COUNT ASC      | COUNT ASC
 TIME DESC  | NULL           | COUNT ASC      | TIME ASC
 TIME DESC  | NULL           | COUNT ASC      | TIME DESC
 TIME DESC  | NULL           | COUNT ASC      | NULL
 TIME DESC  | NULL           | TIME ASC       | COUNT DESC
 TIME DESC  | NULL           | TIME ASC       | COUNT ASC
 TIME DESC  | NULL           | TIME ASC       | TIME ASC
 TIME DESC  | NULL           | TIME ASC       | TIME DESC
 TIME DESC  | NULL           | TIME ASC       | NULL
 TIME DESC  | NULL           | TIME DESC      | COUNT DESC
 TIME DESC  | NULL           | TIME DESC      | COUNT ASC
 TIME DESC  | NULL           | TIME DESC      | TIME ASC
 TIME DESC  | NULL           | TIME DESC      | TIME DESC
 TIME DESC  | NULL           | TIME DESC      | NULL
 TIME DESC  | NULL           | NULL           | COUNT DESC
 TIME DESC  | NULL           | NULL           | COUNT ASC
 TIME DESC  | NULL           | NULL           | TIME ASC
 TIME DESC  | NULL           | NULL           | TIME DESC
 TIME DESC  | NULL           | NULL           | NULL

   
```
## E4  Database Models
```sql
CREATE TYPE scorebase AS ENUM ('Time ASC', 'Time DESC', 'Count ASC','Count DESC' );
CREATE SEQUENCE events_id_seq;
CREATE TABLE events(
   id int DEFAULT nextval('events_id_seq'),
   identifier varchar(100) NOT NULL DEFAULT md5(random()::text),
   created timestamp NOT NULL  DEFAULT NOW(),
   modified timestamp NOT NULL  DEFAULT NOW(),
   event_date date,
   primary_score scorebase NOT NULL,
   primary_score_tb scorebase,
   time_cap scorebase,
   time_cap_tb scorebase,
   competition_id int NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (competition_id) references competitions(id)
       ON DELETE CASCADE
       ON UPDATE CASCADE,
   UNIQUE (identifier)
 );
```