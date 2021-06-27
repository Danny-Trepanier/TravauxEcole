let etapes = Array.from(document.querySelectorAll('form .etape'));
let boutonPrecedent = document.querySelectorAll('form .bouton-precedent');
let boutonSuivant = document.querySelectorAll('form .bouton-suivant');


boutonPrecedent.forEach(button => {
    button.addEventListener('click', (e) => {
        changementEtape('precedent');
    })
})

boutonSuivant.forEach(button => {
    button.addEventListener('click', (e) => {
        changementEtape('suivant');
    })
})

/**
 * Fonction pour changer d'étape dans le formulaire et afficher 
 * la bonne section du formulaire selon l'étape
 */
function changementEtape(bouton) {
    let etape = 0;
    let actif = document.querySelector('form .etape.actif');

    etape = etapes.indexOf(actif);
    etapes[etape].classList.remove('actif');

    if (etape === 0 && 
        bouton === 'suivant' && 
        validationNom(formulaire.nom) && 
        validationPrenom(formulaire.prenom) && 
        validationCourriel(formulaire.courriel) && 
        validationCodeConfidentiel(formulaire.codeConfidentiel)) 
        {
            etape ++;
        } else if (
            bouton != 'precedent'
        ) {
            let messagePlusieursChampsManquants = document.getElementById('errEnvoiFormulaire');
            messagePlusieursChampsManquants.innerText = "Un ou plusieurs champs sont manquants pour passer à la prochaine étape.";
            messagePlusieursChampsManquants.style.color = 'red';
        }

    if (etape === 1 && 
        bouton === 'suivant' && 
        validationTypeLogement(formulaire.type) && 
        validationCodePostal(formulaire.codePostal) && 
        validationAnneeConstruction(formulaire.anneeConstruction) && 
        validationSuperficie(formulaire.superficie) && 
        validationNbPieces(formulaire.nbPieces) && 
        validationPresentation(formulaire.presentation)) 
        {
            etape ++;
    } else if (bouton === 'precedent') {
        etape --;
    }

    if (etape === 2 && 
        bouton === 'precedent') 
        {
            etape --;
        }

    etapes[etape].classList.add('actif');
}