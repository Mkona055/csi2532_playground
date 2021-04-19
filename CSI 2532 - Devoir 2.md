# CSI 2532 - Devoir 2 [60 points]

## Q1: Normalisation

Considérez une relation avec le schéma R(A, B, C, D) et l'ensemble F des dépendances fonctionnelles:

```
 F = { 
 AB → C, 
 C → D, 
 D → A }
```

#### a. Trouver toutes les clés candidates de R. 

(A)+ = A ,   (B)+= B,  (C)+ = ACD,  (D)+ = AD

**(AB)+ = ABCD** , (AC)+ = ACD, (AD)+ = AD, **(BC)+ = ABCD**, **(BD)+ = ABCD**, (CD)+ = ACD

Les clés candidates sont AB, BC, BD

#### b. Indiquez toutes les violations de BCNF pour R et décomposez les relations en collections qui sont dans BCNF. 

```
R(A, B, C, D)
F = { 
 AB → C, 
 C → D, brise BCNF
 D → A  brise BCNF
 }
```

```
R1(C,D)
F1 = {
 C → D
 }

R2(A,B,C)
F2 = {
AB → C, 
}
```


#### c. Indiquez quelles dépendances, s'ils existent, qui ne sont pas conservées par la décomposition BCNF.

```
D → A n'est pas conservée
```

## Q2: Dépendances fonctionnelles

#### a. Sur informations ci-dessus, identifiez les quatre dépendances fonctionnelles décrites. 

```
F= {
NIN,contractNo → hoursPerWeek
NIN → eName
contractNo → hotelNo
hotelNo → hotelLocation
}
```

#### b. Liste toutes les clés candidates. 

```
La seule clé candidate est 
NIN,contractNo
```

#### c. Normaliser la relation avec la troisième forme normale (3NF) montrer les relations résultantes.

```
Dépendaces brisant 3NF
NIN → eName / dépendance partielle 
contractNo → hotelNo /dépendance partielle
hotelNo → hotelLocation/ dépendance transitive

On a la décomposition suivante
R1(NIN,contractNo,hoursPerWeek)
F1 = {
NIN,contractNo → hoursPerWeek
}

R2 (NIN,eName)
F2 = {
NIN → eName
}

R3(contractNo, hotelNo)
F3 = {
contractNo → hotelNo
}

R4(hotelNo,hotelLocation)
F4 = {
hotelNo → hotelLocation
}


```

## Q3: Langues pures

Considérez les relations suivantes: 

``` 
Sailors(sid, sname, rating, age) 
Reserves(sid, bid, day) 
Boat(bid, bname, bcolor)
```

 Écrivez des expressions en algèbre relationnelle (RA), calcul relationnel tuple (TRC) ou calcul

#### a. (RA) Listez les couleurs des bateaux réservés par Albert. 

```
∏ bcolor (σ sname = ‘Albert’ (sailors⋈ reserves⋈ boat))
```

#### b. (RA) Listez les identifiants de tous les marins ayant une évaluation (rating) d'au moins 8 ou un bateau réservé 103. 

NB: Portez attention au LEFT-JOIN

```
∏ sid (σ rating>= 8  ∨ bid = 103 (sailors ⟕ reserves ⋈ boat))
```
#### c. (TRC) Listez les noms et l'âge de tous les marins qui ont une évaluation inférieure à 3. 

```
{t | s∈ sailors(s[name] = t[name] ∧  s[age]=t[age] ∧  s[rating] <3)}
```
#### d. (RDC) Listez les identifiants de tous les bateaux réservés le 2019-04-28. 

```
{< bid > |<sid, bid, day> ∈  reserves (day = 2019-04-28)
		 }
```
#### e. (RDC) Listez les couleurs de tous les bateaux réservés par le marin Lubber.

```
{< bcolor > |<sid, bid, day> ∈ reserves ∧
			∃ <bid2, bname, bcolor> ∈  boat(bid2 = bid) ∧
			∃ <sid2, sname, rating, age> ∈ sailors(sid = sid2 ∧ sname = 'Lubber') 
		 }
```

## Q4: RAID

| déclaration                                                  | correspond à | déclaration                                                  |
| ------------------------------------------------------------ | ------------ | ------------------------------------------------------------ |
| 1 - Je peux utiliser une technique RAID niveau 0 car         | B            | A - la tolérance aux pannes est importante pour mon application et je dois protéger mes données même si deux disques tombent en panne en même temps. |
| 2 - Je peux utiliser une technique RAID niveau 1 car         | D            | B - je n'inquiet pas de perdre les données. Mon objectif principal est de pouvoir lire et écrire à grande vitesse. |
| 3 - Je peux utiliser une technique RAID niveau 5 car         | E            | C - j'ai 6 disques disponibles mais j'ai besoin de la capacité de 5 d'entre eux ce qui signifie que je ne peux pas gaspiller l'espace qu'un seul disque pour assurer la redondance. |
| 4 - Je peux utiliser une technique RAID niveau 6 car         | A            | D - je n'ai que deux disques disponibles, ce qui représente plus du double de la capacité dont j'ai besoin pour mon application et je veut être capable de récupérer les données si nécessaire. |
| 5 - Je préfère utiliser une approche paritaire plutôt qu'une approche miroir car | C            | E - la tolérance aux pannes est importante pour mon application, mais je n'ai pas beaucoup d'espace disponible. |

## Q5: Arbre B+

#### a. Montrez l'arbre B+ qui résulte après l'insertion (dans l'ordre donné) 56, 50, 75, 87, 48.

racine :2+ enfants

interne: 2-4 enfants

feuille: 2-3 enfants

```
							[24|65|88]
							
			[2|10]		[24|45]		[65|72]		[88|93]
```

Insérons `56`

```
							[24|65|88]
							
			[2|10]		[24|45|56]		[65|72]		[88|93]
```

Insérons `50`

```
							[24|65|88]
							
			[2|10]		[24|45|50|56]		[65|72]		[88|93]
```

Débordement à  `[24|45|50|56] ` qui a 4 enfants au lieu de 3  on le sépare en `[24|45] `et `50|56] `et on pousse`50` vers le haut

```
							[24|50|65|88]
							
			[2|10]		
			[24|45] 
			[50|56]		
			[65|72]		
			[88|93]
```

Débordement à  `[24|50|65|88] ` qui a 5 enfants au lieu de 4  on le sépare en `[24|50] `et `[88] `et on pousse`65 vers le haut

```
								[65]
						[24|50]         [88]
							
			[2|10]	[24|45] [50|56]		[65|72]	[88|93]
```

Insérons `75`

```
								 [65]
						[24|50]         [88]
							
			[2|10]	[24|45] [50|56]		[65|72|75]	[88|93]
```

Insérons `87`

								  [65]
						[24|50]         [88]
							
			[2|10]	[24|45] [50|56]		[65|72|75|87]	[88|93]
Débordement à  `[65|72|75|87] ` qui a 5 enfants au lieu de 4  on le sépare en `[65|72] `et `[75|88] `et on pousse`75` vers le haut

```
							  [65]
					[24|50]         [75|88]
						
		[2|10]	[24|45] [50|56]		[65|72] [75|87]	[88|93]
```

Insérons `48`

```
							  [65]
					[24|50]         [75|88]
						
		[2|10]	[24|45|48] [50|56]		[65|72] [75|87]	[88|93]
```

#### b. En utilisant l'arbre B+ précédemment obtenu en (a.), Montrez l'arbre B+ qui résulte après suppression (dans l'ordre donné) 50, 24, 65, 93, 75.

Supprimons `50`

```
							  [65]
					[24]         	[75|88]
						
		[2|10]	
		[24|45|48] 
		[56]		
		[65|72] 
		[75|87]	
		[88|93]
```

`56` a seulement 1 enfant on fait un merge à gauche avec `[24|45|48]`  et `[56]`

```
		  					[65]
					[24]         	[75|88]
						
		[2|10]	
		[24|45|48|56]		
		[65|72] 
		[75|87]	
		[88|93]
```

Maintenant `[24|45|48|56]`a trop d'enfants on le scinde en  `[24|45]` et  `[48|56]` et on pousse vers le haut `48`

```
		  					[65]
					[24|48]         	[75|88]
						
		[2|10]	
		[24|45]
		[48|56]		
		[65|72] 
		[75|87]	
		[88|93]
```



```
		  					   [65]
					[24|48]         	 [75|88]
						
		[2|10]	[24|45]  [48|56]		[65|72] [75|87]	 [88|93]
```



Supprimons `24`

```
		  					[65]
					[48]         	[75|88]
						
		[2|10]	
		[45]
		[48|56]		
		[65|72] 
		[75|87]	
		[88|93]
```

`45` a seulement 1 enfant on fait un merge à gauche avec `[2|10]`  et `[45]`

```
		  					[65]
					[48]         	[75|88]
						
		[2|10|45]
		[48|56]		
		[65|72] 
		[75|87]	
		[88|93]
```

```
		  					[65]
				[48]         	         [75|88]
						
		[2|10|45] [48|56]		     [65|72]  [75|87]	[88|93]
```

Supprimons `65`

```
		  					[???]
				[48]         	         [75|88]
						
		[2|10|45] [48|56]		     [--|72]  [75|87]	[88|93]
```

`72` a seulement 1 enfant on fait un merge à droite avec `[75|87]`  et `[72]`  . 

On remplace le `[75|88]` par `[72|88]`

```
		  					[???]
				[48]         	         [72|88]
						
		[2|10|45] 
		[48|56]		     
		[72|75|87]	
		[88|93]
```

Pour déterminer la nouvelle racine on merge `[48]` et `[72|88]` et on 

```
				[48|72|88]
						
		[2|10|45] 
		[48|56]		     
		[72|75|87]	
		[88|93]
```

```
						[48|72|88]
						
		[2|10|45] [48|56]		[72|75|87]	[88|93]
```

Supprimons `93`

```
						[48|72|88]
						
		[2|10|45] [48|56]		[72|75|87]	[88|--]
```

`88` a un seul enfant on fait un merge à gauche avec `[72|75|87]`

```
						[48|72|88]
						
		[2|10|45] 
		[48|56]		
		[72|75|87|88]
```

On enlève le `88` à la racine car on a que 3 feuilles

						[48|72]
						
		[2|10|45] 
		[48|56]		
		[72|75|87|88]


`[72|75|87|88]` a trop d'enfants on le sépare en `[72|75]` et `[87|88]` on pousse `87` vers le haut

```
						[48|72|87]
						
		[2|10|45] 
		[48|56]		
		[72|75]
		[87|88]
```

```
							[48|72|87]
						
		  [2|10|45] [48|56]		        [72|75]  [87|88]
```



Supprimons `75`

							[48|72|87]
						
		  [2|10|45] [48|56]		        [72|--]  [87|88]
`[72]` a un seul enfant on fait un merge a droite avec `[87|88]`

```
						[48|72|87]
					
	  [2|10|45] 
	  [48|56]		        
	  [72|87|88]
```

On enlève le `87` à la racine car on a que 3 feuilles

```
						 [48|72]
					
	  [2|10|45] [48|56]		        [72|87|88]
```



## Q6: Index Bitmap

#### a. Construisez un index bitmap pour les attributs marque (Brand) et coleur (Color) de ce tableau.

| Row  | Brand | Type | Color |Risk  |
| ---- | ----- | ---- | ----- | -----|
| R0   | Opel  | Corsa|  Grey | Low  |
| R1   |   Opel    |   Corsa   | Red | Medium |
| R2   |   Peugeot    |   206   | Black | Medum |
| R3   |   BMW    | A | Black | Hiigh |



###### Index Bitmap pour (Brand)

| -    | R0   | R1   | R2   | R3   |
| :--- | :--: | :--: | :--: | :--: |
| Opel | 1 | 1 | 0 | 0 |
| Peugeot | 0 | 0 | 1 | 0 |
| BMW | 0 | 0 | 0 | 1 |

###### Index Bitmap pour(Color)

| -    | R0   | R1   | R2   | R3   |
| :--- | :--: | :--: | :--: | :--: |
| Grey | 1 | 0 | 0 | 0 |
| Red | 0 | 1 | 0 | 0 |
| Black | 0 | 0 | 1 | 1 |

#### b. Montrez comment les indices bitmap peuvent être utilisés pour répondre aux requêtes:

##### i. Montrez la marque (Brand) de toutes les voitures qui ne sont pas noires (Black).

​	           

```
 	   (Black)    (Result 1)
		| 0 |		| 1 |
NOT		| 0 |  = 	| 1 |  
		| 1 |		| 0 |
		| 1 |		| 0 |
		
		Les voiture noires sont R0, et R1
On va alors dans l'indice bitmap de Brand et on fait 
 	   (Opel)     (Result 1)    (Result 2)
		| 1 |	    | 1 |		 | 1 |
		| 1 |  AND  | 1 |    =   | 1 |
		| 0 |		| 0 |		 | 0 |
		| 0 |		| 0 |		 | 0 |
		
	  (Peugeot)     (Result 1)    (Result 3)
		| 0 |	    | 1 |		 | 0 |
		| 0 |  AND  | 1 |    =   | 0 |
		| 1 |		| 0 |		 | 0 |
		| 0 |		| 0 |		 | 0 |
		
	    (BMW)    (Result 1)    (Result 4)
		| 0 |	    | 1 |		 | 0 |
		| 0 |  AND  | 1 |    =   | 0 |
		| 0 |		| 0 |		 | 0 |
		| 1 |		| 0 |		 | 0 |
		
	R0 et R1 sont de la marque Opel d'après (result 2 )
	NB: On avait pas besoin de vérifier ensuite pour Peugeot ou BMW
```

​                     

##### ii. Donnez le nombre total de voitures Opel (Opel) rouges (Red) avec un score de risque moyen (Medium).

###### On construit un bitmap pour les risques (Risk)

| -    | R0   | R1   | R2   | R3   |
| :--- | :--: | :--: | :--: | :--: |
| Low | 1 | 0 | 0 | 0 |
| Medium | 0 | 1 | 1 | 0 |
| High | 0 | 0 | 0 | 1 |

```
 	   (Opel)       (Red)      (Medium)     (Result)
		| 1 |	    | 0 |		| 0 |       | 0 |
		| 1 |  AND  | 1 |  AND  | 1 |   =   | 1 |
		| 0 |		| 0 |		| 1 |		| 0 |
		| 0 |		| 0 |		| 0 |		| 0 |
		
On compte le nombre de 1 dans Result on trouve un seul 1. Donc le nombre total de voitures Opel (Opel) rouges (Red) avec un score de risque moyen (Medium) est 1
```

## Q7: Hachage

Considérez la fonction de hachage suivante h(x) = x mod 4 pour construire un index de hachage. Cette fonction vous permet d'utiliser 4 panier différents. Supposons que chaque compartiment ne peut contenir que 3 entrées d'index.

#### a. Utilisez cette fonction pour créer l'index de hachage des valeurs de clé de recherche suivantes: 2, 4, 6, 12, 13, 16, 20, 24, 28, 40

On a :

h(2) = 2 mod 4   =   2    

h(4) = 4 mod 4  = 0 

h(6) = 6 mod 4 = 2

h(12) = 12 mod 4  = 0 

h(13) =  13 mod 4 = 1

h(16) = 16  mod 4  = 0 

h(20) = 20 mod 4 = 0

h(24) = 24 mod 4 = 0

h(28) = 28 mod  4 = 0

h(40) = 40 mod  4 = 0



#### b. Basé sur ces valeurs de clé de recherche, est-ce que cette fonction est une bonne fonction de hachage? Expliquez votre réponse.

Sur 10 clés de recherche 7 ont le même panier n n'a pas une répartition uniforme dans les paniers. Donc cette fonction est une mauvaise fonction de hachage.