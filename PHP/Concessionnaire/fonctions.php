<?php
/**
 * Faire la recherche dans le tableau $voitures selon le prix minimum indiqué par l'utilisateur
 * @param  array   $voitures, liste des voitures
 * @param  array   $resultatTableauVoiture, tableau temporaire pour recevoir le résultat de la recherche
 */
function recherchePrixMin($voitures) {
    // Initialisation du tableau resultatTableauVoiture
    $resultatTableauVoiture = [];
        // Critère, doit être un nombre entier et plus grand que zéro
        if (ctype_digit($_POST['prixMinimum']) > 0) {
            // Calcul pour savoir le nombre total - 1 de voiture dans le tableau $voitures.
            $nbElementMax = count($voitures);
            if (!empty($_POST['prixMinimum']) && empty($_POST['prixMaximum'])) {
                for ($i = 0; $i <= $nbElementMax -1; $i++) {
                    if ($voitures[$i]['prix'] >= $_POST['prixMinimum']) {
                        $resultatTableauVoiture[] = $voitures[$i];
                    }
                }
            } 
            // Si aucune voiture est trouvée selon le critère de recherche, le tableau sera vide et affichera un message à l'utilisateur
            if (empty($resultatTableauVoiture)) {
                $voitures = [];
            } else {
                $voitures = $resultatTableauVoiture;
            }
        } else {
            // Rénitialise le champ prix minimal
            $_POST['prixMinimum'] = "";
        }
        // Retourne le tableau $voitures avec le nouveau résultat de recherche
        return $voitures;
}



/**
 * Faire la recherche dans le tableau $voitures selon le prix maximum indiqué par l'utilisateur
 * @param  array   $voitures, liste des voitures
 * @param  array   $resultatTableauVoiture, tableau temporaire pour recevoir le résultat de la recherche
 */
function recherchePrixMax($voitures) {
    // Initialisation du tableau resultatTableauVoiture
    $resultatTableauVoiture = [];
        // Critère, doit être un nombre entier et plus grand que zéro
        if (ctype_digit($_POST['prixMaximum']) > 0) {
            // Calcul pour savoir le nombre total - 1 de voiture dans le tableau $voitures.
            $nbElementMax = count($voitures);
            if (!empty($_POST['prixMaximum']) && empty($_POST['prixMinimum'])) {
                for ($i = 0; $i <= $nbElementMax -1; $i++) {
                    if ($voitures[$i]['prix'] <= $_POST['prixMaximum']) {
                        $resultatTableauVoiture[] = $voitures[$i];
                    }
                }
            } 
            // Si aucune voiture est trouvée selon le critère de recherche, le tableau sera vide et affichera un message à l'utilisateur
            if (empty($resultatTableauVoiture)) {
                $voitures = [];
            } else {
                $voitures = $resultatTableauVoiture;
            }
        } else  {
            // Rénitialise le champ prix maximal
            $_POST['prixMaximum'] = "";
        }
        // Retourne le tableau $voitures avec le nouveau résultat de recherche
        return $voitures;
}



/**
 * Faire la recherche dans le tableau $voitures selon le prix minimum et maximum indiqué par l'utilisateur
 * @param  array   $voitures, liste des voitures
 * @param  array   $resultatTableauVoiture, tableau temporaire pour recevoir le résultat de la recherche
 */
function recherchePrixMinMax($voitures) {
    // Initialisation du tableau resultatTableauVoiture
    $resultatTableauVoiture = [];
        // Critères, doit être un nombre entier et plus grand que zéro
        if (ctype_digit($_POST['prixMinimum']) && ctype_digit($_POST['prixMaximum']) > 0) {
            // Calcul pour savoir le nombre total - 1 de voiture dans le tableau $voitures.
            $nbElementMax = count($voitures);
            if (!empty($_POST['prixMinimum']) && !empty($_POST['prixMaximum'])) {
                for ($i = 0; $i <= $nbElementMax -1; $i++) {
                    if ($voitures[$i]['prix'] >= $_POST['prixMinimum'] && $voitures[$i]['prix'] <= $_POST['prixMaximum']) {
                        $resultatTableauVoiture[] = $voitures[$i];
                    }
                }
            }
            // Si aucune voiture est trouvée selon les critères de recherches, le tableau sera vide et affichera un message à l'utilisateur
            if (empty($resultatTableauVoiture)) {
                $voitures = [];
            } else {
                $voitures = $resultatTableauVoiture;
            }
        } else {
            // Rénitialise les champs prix minimal et prix maximal
            $_POST['prixMinimum'] = "";
            $_POST['prixMaximum'] = "";
        }
        // Retourne le tableau $voitures avec le nouveau résultat de recherche
        return $voitures;
}



/**
 * Créer un nouveau tableau $marques qui servira de statistique avec les éléments du tableau $voitures
 * @param  array   $voitures, liste des voitures
 * @param  array   $marques, liste des marques de voiture
 */
function statistiquesParMarqueVoiture($voitures) {
    // Initialisation du tableau marques
    $marques = [];
    // Calcul pour savoir le nombre total - 1 de voiture dans le tableau $voitures.
    $nbElementMax = count($voitures);
    // Initialisation des clés du tableau $marques
    for ($i=0; $i <= 3; $i++) {
        $marques[$i]['marque'] = "";
        $marques[$i]['nbVoitureTotal'] = 0;
        $marques[$i]['prixTotal'] = 0;
        $marques[$i]['prixMoyen'] = 0;
    }

    for ($i = 0; $i <= $nbElementMax -1; $i++) {
        switch ($voitures[$i]['marque'])
        {
            case "Acura":
                $marques[0]['marque'] = "Acura";
                $marques[0]['nbVoitureTotal'] = $marques[0]['nbVoitureTotal'] + 1;
                $marques[0]['prixTotal'] += $voitures[$i]['prix'];
                $marques[0]['prixMoyen'] = $marques[0]['prixTotal'] / $marques[0]['nbVoitureTotal'];
            break;

            case "Nissan":
                $marques[1]['marque'] = "Nissan";
                $marques[1]['nbVoitureTotal'] += 1;
                $marques[1]['prixTotal'] += $voitures[$i]['prix'];
                $marques[1]['prixMoyen'] = $marques[1]['prixTotal'] / $marques[1]['nbVoitureTotal'];
            break;

            case "Toyota":
                $marques[2]['marque'] = "Toyota";
                $marques[2]['nbVoitureTotal'] += 1;
                $marques[2]['prixTotal'] += $voitures[$i]['prix'];
                $marques[2]['prixMoyen'] = $marques[2]['prixTotal'] / $marques[2]['nbVoitureTotal'];
            break;

            case "Fiat":
                $marques[3]['marque'] = "Fiat";
                $marques[3]['nbVoitureTotal'] += 1;
                $marques[3]['prixTotal'] += $voitures[$i]['prix'];
                $marques[3]['prixMoyen'] = $marques[3]['prixTotal'] / $marques[3]['nbVoitureTotal'];
            break;

            default:
        }
    }
    return $marques;
}
?>