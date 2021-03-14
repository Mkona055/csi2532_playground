# Lab 6-MORESQL



| Nom            | Numéro d'étudiant | Email               |
| -------------- | ----------------- | ------------------- |
| Mohamed Konate | 300136750         | mkona055@uottawa.ca |

1. Lister les name et birthplace de tous les artists

   ```sql
   select name, birthplace from artists;
   
     name     |  birthplace
   --------------+---------------
    Caravaggio   | Milan
    Picasso      | Malaga
    Leonardo     | Florence
    Michelangelo | Arezzo
    Josefa       | Seville
    Hans Hofmann | Weisenburg
    John         | San Francisco
   (7 lignes)
   ```

2. Lister le title et le price de toutes les artworks après 1600.

   ```sql
   select title, price from artworks where year > 1600;
   
         title      |  price
   -----------------+----------
    Three Musicians | 11000.00
   (1 ligne)
   ```

3. Lister le title et le type de toutes les artworks qui ont été peintes en
   2000 ou peintes par Picasso.

   ```sql
   select title, type from artworks where year = 2000 or artist_name = 'Picasso';
   
         title      |  type
   -----------------+--------
    Three Musicians | Modern
   (1 ligne)
   ```

   

4. Lister les name et birthplace de tous les artists nés entre 1880 et 1930

   ```sql
   select name, birthplace from artists
   group by name, birthplace
   having extract(year from dateofbirth) between 1880 and 1930;
   
     name   |  birthplace
   ---------+---------------
    John    | San Francisco
    Picasso | Malaga
   (2 lignes)
   ```

5. Lister les name et le country de naissance de tous les artists dont le
   style de peinture est Modern, Baroque or Renaissance. (ASTUCE:
   utilisez le mot-clé IN).

   ```sql
   select name, country from artists where style in ('Modern','Baroque','Renaissance');
   
        name     | country
   --------------+---------
    Caravaggio   |
    Leonardo     | Italy
    Michelangelo | Italy
    Josefa       | Spain
    Hans Hofmann | Germany
    John         | USA
   (6 lignes)
   ```



6. Lister tous les détails des artworks dans la base de données, triés
   par title

   ```sql
   select * from artworks order by title;
   
         title      | year |  type   |  price   | artist_name
   -----------------+------+---------+----------+-------------
    The Cardsharps  | 1594 | Baroque | 40000.00 | Caravaggio
    Three Musicians | 1921 | Modern  | 11000.00 | Picasso
   (2 lignes)
   ```

   

7. Lister les name et les customer ids de tous les customers qui aiment Picasso.

   ```sql
   select customers.name, customers.id from likeartists
   join customers on customers.id = likeartists.customer_id
   where artist_name = 'Picasso';
   
    name  | id
   -------+----
    Emre  |  4
    Saeid |  5
   (2 lignes)
   ```

8. Lister les name de tous les customers qui aiment les artistes de style Renaissance et dont le amount
   est supérieur à 30000.

   ```sql
   select customers.name from likeartists
   join customers on customers.id = likeartists.customer_id
   join artists on likeartists.artist_name = artists.name
   where artists.style = 'Renaissance' and customers.amount > 30000;
   
    name
   -------
    Saeid
   (1 ligne)
   ```

   