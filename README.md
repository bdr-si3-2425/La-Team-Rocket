# La-Team-Rocket

Pour avoir la base de données sur PGADMIN4 : 

Veuillez télécharger la fichier backup présent sur le github ("BDDR-Projet-La_Team_Rocket")
- Ouvrez PgAdmin4 puis creer une nouvelle base de données.
- Faites un restore puis selectionnez le fichier téléchargé.
- Vous aurez toute la base de données à JOUR.
- Vous devez ajouter les users/rôles à la main (voir ci-dessous) :


Script pour la création des rôles/users : 

Projet REQUEST (Rôle/User) : 

-- Créer le rôle admin (boss) avec accès complet
CREATE ROLE admin WITH LOGIN PASSWORD 'motdepasseAdmin';
GRANT ALL PRIVILEGES ON DATABASE "TESTpBDDR" TO admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO admin;


-- Créer le rôle abonne avec accès en lecture uniquement
CREATE ROLE abonne WITH LOGIN PASSWORD 'motdepasseAbonne';
GRANT CONNECT ON DATABASE "TESTpBDDR" TO abonne;
GRANT USAGE ON SCHEMA public TO abonne;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO abonne;

-- Créer le rôle accueil avec accès en lecture sur toutes les tables et en écriture sur certaines tables
CREATE ROLE accueil WITH LOGIN PASSWORD 'motdepasseAccueil';
GRANT CONNECT ON DATABASE "TESTpBDDR" TO accueil;
GRANT USAGE ON SCHEMA public TO accueil;

-- Accès en lecture sur toute la base de données
GRANT SELECT ON ALL TABLES IN SCHEMA public TO accueil;

-- Accès en écriture sur certaines tables spécifiques
GRANT INSERT, UPDATE, DELETE ON TABLE abonnes TO accueil;
GRANT INSERT, UPDATE, DELETE ON TABLE reservations TO accueil;
GRANT INSERT, UPDATE, DELETE ON TABLE prets TO accueil;
GRANT INSERT, UPDATE, DELETE ON TABLE emplacements TO accueil;
GRANT INSERT, UPDATE, DELETE ON TABLE ouvrages TO accueil;
GRANT INSERT, UPDATE, DELETE ON TABLE participation_evenements TO accueil;
GRANT INSERT, UPDATE, DELETE ON TABLE transferts TO accueil;
GRANT INSERT, UPDATE, DELETE ON TABLE localisations TO accueil;


-- Créer un utilisateur
CREATE USER utilisateurAdmin WITH PASSWORD 'motdepasseAdmin';

-- Assigner le rôle 'admin' à cet utilisateur
GRANT admin TO utilisateurAdmin;

-- Créer un utilisateur
CREATE USER utilisateurAbonne WITH PASSWORD 'motdepasseAbonne';

-- Assigner le rôle 'abonne'
GRANT abonne TO utilisateurAbonne;

-- Créer un utilisateur
CREATE USER utilisateurAccueil WITH PASSWORD 'motdepasseAccueil';

-- Assigner le rôle 'accueil'
GRANT accueil TO utilisateurAccueil;







