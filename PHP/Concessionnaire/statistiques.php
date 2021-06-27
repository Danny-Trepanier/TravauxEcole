<?php
/**
 * Le fichier voitures.php est requis pour avoir accès aux voitures dans le tableau $voitures.
 * Le fichier fonctions.php est requis pour avoir accès aux fonctions.
 */
require('voitures.php');
require('fonctions.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Danny Trépanier">
    <meta name="description" content="Examen final">
    <title>Statistiques des voitures</title>
    <link rel="stylesheet" href="assets/css/main.css?v=2">
</head>
<body>
    <header>
        <nav>
            <a href="liste.php"><button>Liste</button></a>
            <a href="statistiques.php"><button>Statistiques</button></a>
        </nav>
        <h1>Statistiques des voitures</h1>
    </header>
    <main>
        <?php // Si le tableau $voitures contient des valeurs, nous pouvons afficher les statistiques des marques
        if (count($voitures) > 0) : ?>
        <table class="voitures">
            <thead>
                <tr>
                    <th>Marque</th>
                    <th>Nombre de voitures</th>
                    <th>Prix moyen</th>
                </tr>
            </thead>
            <tbody>
                <?php //Nous appelons la fonction statistiquesParMarqueVoiture pour générer un tableau par marque de voiture ?>
                <?php foreach(statistiquesParMarqueVoiture($voitures) as $marque) : ?>
                    <tr>
                        <td><?= $marque['marque'] ?></td>
                        <td><?= $marque['nbVoitureTotal'] ?></td>
                        <td><?= $marque['prixMoyen'] ?> $</td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
        <?php // Sinon, le tableau $voitures est vide et nous affichons "Aucune statistique à afficher."
        else : ?>
        <p>Aucune statistique à afficher.</p>
        <?php  endif; ?>
    </main>
    <footer>
        <span>Copyright &copy; 2021 Danny Trépanier.</span>
    </footer>
</body>
</html>