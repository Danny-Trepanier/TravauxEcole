<?php
/**
 * Le fichier voitures.php est requis pour avoir accès aux voitures dans le tableau $voitures.
 * Le fichier fonctions.php est requis pour avoir accès aux fonctions.
 */
require('voitures.php');
require('fonctions.php');

if(!empty($_POST)) {
    if (!empty($_POST['prixMinimum'])) {
        if (!empty($_POST['prixMaximum'])) {
            $voitures = recherchePrixMinMax($voitures);
        } else {
            $voitures = recherchePrixMin($voitures);
        }
    } else {
        $voitures = recherchePrixMax($voitures);
    }
}

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Danny Trépanier">
    <meta name="description" content="Examen final">
    <title>Liste des voitures</title>
    <link rel="stylesheet" href="assets/css/main.css?v=2">
</head>
<body>
    <header>
        <nav>
            <a href="liste.php"><button>Liste</button></a>
            <a href="statistiques.php"><button>Statistiques</button></a>
        </nav>
        <h1>Liste des voitures</h1>
        <form action="liste.php" method="post">
            <label for="prixMinimum">Prix minimal :</label>
            <input type="text" name="prixMinimum" id="prixMinimum" value="<?= $_POST['prixMinimum'] ?? "" ?>">

            <label for="prixMaximum">Prix maximal :</label>
            <input type="text" name="prixMaximum" id="prixMaximum" value="<?= $_POST['prixMaximum'] ?? "" ?>">

            <input type="submit" value="Rechercher">
        </form>
    </header>
    <main>
        <?php // Si le tableau $voitures contient des valeurs, nous affichons le tableau
        if (count($voitures) > 0) : ?>
        <table class="voitures">
            <thead>
                <tr>
                    <th>Marque</th>
                    <th>Modèle</th>
                    <th>Année</th>
                    <th>Prix</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($voitures as $voiture) : ?>
                    <tr>
                        <td><?= $voiture['marque'] ?></td>
                        <td><?= $voiture['modele'] ?></td>
                        <td><?= $voiture['annee'] ?></td>
                        <td><?= $voiture['prix'] ?> $</td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
        <?php // Sinon, le tableau $voitures est vide et nous affichons "Aucune voiture à afficher."
        else : ?>
        <p>Aucune voiture à afficher.</p>
        <?php  endif; ?>
    </main>
    <footer>
        <span>Copyright &copy; 2021 Danny Trépanier.</span>
    </footer>
</body>
</html>