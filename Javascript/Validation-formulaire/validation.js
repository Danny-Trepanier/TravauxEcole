let formulaire = document.querySelector('#formulaire');

formulaire.madame.addEventListener('change', function() {
    validationMadameMonsieur(this);
});

formulaire.monsieur.addEventListener('change', function() {
    validationMadameMonsieur(this);
});

formulaire.nom.addEventListener('change', function() {
    validationNom(this);
});

formulaire.prenom.addEventListener('change', function() {
    validationPrenom(this);
});

formulaire.courriel.addEventListener('change', function() {
    validationCourriel(this);
});

formulaire.codeConfidentiel.addEventListener('change', function() {
    validationCodeConfidentiel(this);
});

formulaire.location.addEventListener('change', function() {
    validationLocationAchat(this);
});

formulaire.achat.addEventListener('change', function() {
    validationLocationAchat(this);
});

formulaire.type.addEventListener('change', function() {
    validationTypeLogement(this);
});

formulaire.codePostal.addEventListener('change', function() {
    validationCodePostal(this);
});

formulaire.anneeConstruction.addEventListener('change', function() {
    validationAnneeConstruction(this);
});

formulaire.superficie.addEventListener('change', function() {
    validationSuperficie(this);
});

formulaire.nbPieces.addEventListener('change', function() {
    validationNbPieces(this);
});

formulaire.presentation.addEventListener('change', function() {
    validationPresentation(this);
});


// On empêche d'envoyer le formulaire, on doit vérifier les champs avant
// Si ils sont tous valide (true), on envoie le formulaire
formulaire.addEventListener('submit', function(e) {
    e.preventDefault();
    if (
        (validationNom(formulaire.nom)) && 
        (validationPrenom(formulaire.prenom)) &&
        (validationCourriel(formulaire.courriel)) &&
        (validationCodeConfidentiel(formulaire.codeConfidentiel)) &&
        (validationTypeLogement(formulaire.type)) &&
        (validationCodePostal(formulaire.codePostal)) &&
        (validationAnneeConstruction(formulaire.anneeConstruction)) &&
        (validationSuperficie(formulaire.superficie)) &&
        (validationNbPieces(formulaire.nbPieces)) &&
        (validationPresentation(formulaire.presentation))
    ) {
        formulaire.submit();
    } else {
        let messagePlusieursChampsManquants = document.getElementById('errEnvoiFormulaire');
        messagePlusieursChampsManquants.innerText = "Un ou plusieurs champs sont manquants.";
        messagePlusieursChampsManquants.style.color = 'red';
    }
});


// Validation du bouton radio Madame/Monsieur
const validationMadameMonsieur = function(radio) {
    let messageMadameMonsieur = document.getElementById('errTitre');
    if (radio.value != "") {
        messageMadameMonsieur.innerText = "Le titre est valide";
        messageMadameMonsieur.style.color = 'green';
        return true;
    } 
    else {
        messageMadameMonsieur.innerText = "* requis";
        messageMadameMonsieur.style.color = 'red';
        return false;
    }
};


// Validation du nom
const validationNom = function(champNom) {
    let regexNom = /[a-zA-Z-' ]$/;

    let messageNom = document.getElementById('errNom');

    if (regexNom.test(champNom.value)) {
        messageNom.innerText = "Le nom est valide";
        messageNom.style.color = 'green';
        return true;
    } else {
        if (champNom.value === "") {
            messageNom.innerText = "* requis";
            messageNom.style.color = 'red';
            return false;
        } else {
            messageNom.innerText = "Aucun caractère spéciaux ou nombre.";
            messageNom.style.color = 'red';
            return false;
        }
    }
};


// Validation du prénom
const validationPrenom = function(champPrenom) {
    let regexPrenom = /[a-zA-Z-' ]$/;

    let messagePrenom = document.getElementById('errPrenom');

    if (regexPrenom.test(champPrenom.value)) {
        messagePrenom.innerText = "Le prénom est valide";
        messagePrenom.style.color = 'green';
        return true;
    } else {
        if (champPrenom.value === "") {
            messagePrenom.innerText = "* requis";
            messagePrenom.style.color = 'red';
            return false;
        } else {
            messagePrenom.innerText = "Aucun caractère spéciaux ou nombre.";
            messagePrenom.style.color = 'red';
            return false;
        }
    }
};


// Validation du courriel
const validationCourriel = function(champCourriel) {
    let regexCourriel = /^[a-zA-Z0-9.-_]+[@]{1}[a-zA-Z0-9.-_]+[.]{1}[a-z]{2,}$/;

    let messageCourriel = document.getElementById('errCourriel');

    if (regexCourriel.test(champCourriel.value)) {
        messageCourriel.innerText = "Le courriel est valide";
        messageCourriel.style.color = 'green';
        return true;
    } else {
        if (champCourriel.value === "") {
            messageCourriel.innerText = "* requis";
            messageCourriel.style.color = 'red';
            return false;
        } else {
            messageCourriel.innerText = "format standard requis.";
            messageCourriel.style.color = 'red';
            return false;
        }
    }
};


// Validation du code confidentiel
const validationCodeConfidentiel = function(champCodeConfidentiel) {
    let regexCodeConfidentiel = /^.{8,}$/;

    let messageCodeConfidentiel = document.getElementById('errCodeConfidentiel');

    if (regexCodeConfidentiel.test(champCodeConfidentiel.value)) {
        messageCodeConfidentiel.innerText = "Le code confidentiel est valide";
        messageCodeConfidentiel.style.color = 'green';
        return true;
    } else {
        if (champCodeConfidentiel.value === "") {
            messageCodeConfidentiel.innerText = "* requis";
            messageCodeConfidentiel.style.color = 'red';
            return false;
        } else {
            messageCodeConfidentiel.innerText = "8 caractères minimum parmi les caractères alphanumériques majuscules et minuscules et quelques caractères spéciaux (&#@+=$%!), et au moins 5 caractères différents.";
            messageCodeConfidentiel.style.color = 'red';
            return false;
        }
    }
};


// Validation du bouton radio Location/Achat
const validationLocationAchat = function(radio) {
    let messageLocationAchat = document.getElementById('errLocationAchat');
    if (radio.value != "") {
        messageLocationAchat.innerText = "valide";
        messageLocationAchat.style.color = 'green';
        return true;
    } 
    else {
        messageLocationAchat.innerText = "* requis";
        messageLocationAchat.style.color = 'red';
        return false;
    }
};


// Validation du type de logement
const validationTypeLogement = function(optionTypeLogement) {

    let messageTypeLogement = document.getElementById('errType');

    if (optionTypeLogement.value != "") {
        messageTypeLogement.innerText = "Le type de logement est valide";
        messageTypeLogement.style.color = 'green';
        return true;
    } else {
        messageTypeLogement.innerText = "* requis";
        messageTypeLogement.style.color = 'red';
        return false;
    }
};


// Validation du code postal
const validationCodePostal = function(champCodePostal) {
    let regexCodePostal = /^[^wWzZ]{1}[^dDfFiIoOqQuU]{2}[ ]{1}[^dDfFiIoOqQuU]{3}$/;

    let messageCodePostal = document.getElementById('errCodePostal');

    if (regexCodePostal.test(champCodePostal.value)) {
        messageCodePostal.innerText = "Le code postal est valide";
        messageCodePostal.style.color = 'green';
        return true;
    } else {
        if (champCodePostal.value === "") {
            messageCodePostal.innerText = "* requis";
            messageCodePostal.style.color = 'red';
            return false;
        } else {
            messageCodePostal.innerText = "sous la forme A1B 2C3, lettres D,F,I,O,Q,U non permises, ainsi que W et Z en première position.";
            messageCodePostal.style.color = 'red';
            return false;
        }
    }
};


// Validation de l'année de construction
const validationAnneeConstruction = function(champAnneeConstruction) {
    let regexAnneeConstruction = /^[0-9]{4}$/;

    let messageAnneeConstruction = document.getElementById('errAnneeConstruction');
    // On prend l'année en cours
    let nouvelleDate = new Date();
    let anneeEnCours = nouvelleDate.getFullYear();

    if (regexAnneeConstruction.test(champAnneeConstruction.value) && (champAnneeConstruction.value >= 1800 && champAnneeConstruction.value <= anneeEnCours)) {
        messageAnneeConstruction.innerText = "Le date est valide";
        messageAnneeConstruction.style.color = 'green';
        return true;
    } else {
        if (champAnneeConstruction.value === "") {
            messageAnneeConstruction.innerText = "* requis";
            messageAnneeConstruction.style.color = 'red';
            return false;
        } else {
            messageAnneeConstruction.innerText = "entre 1800 et cette année.";
            messageAnneeConstruction.style.color = 'red';
            return false;
        }
    }
};


// Validation de la superficie
const validationSuperficie = function(champSuperficie) {
    let regexSuperficie = /^[0-9]{3,4}$/;

    let messageSuperficie = document.getElementById('errSuperficie');

    if (regexSuperficie.test(champSuperficie.value) && (champSuperficie.value >= 100 && champSuperficie.value <= 9999)) {
        messageSuperficie.innerText = "Le superficie est valide";
        messageSuperficie.style.color = 'green';
        return true;
    } else {
        if (champSuperficie.value === "") {
            messageSuperficie.innerText = "* requis";
            messageSuperficie.style.color = 'red';
            return false;
        } else {
            messageSuperficie.innerText = "entre 100 et 9999 pi2.";
            messageSuperficie.style.color = 'red';
            return false;
        }
    }
};


// Validation du nombre de pièce
const validationNbPieces = function(champNbPieces) {
    let regexNbPieces = /^[0-9]{1,2}$/;

    let messageNbPieces = document.getElementById('errNbPieces');

    if (regexNbPieces.test(champNbPieces.value) && (champNbPieces.value >= 1 && champNbPieces.value <= 20)) {
        messageNbPieces.innerText = "Le nombre de pièce est valide";
        messageNbPieces.style.color = 'green';
        return true;
    } else {
        if (champNbPieces.value === "") {
            messageNbPieces.innerText = "* requis";
            messageNbPieces.style.color = 'red';
            return false;
        } else {
            messageNbPieces.innerText = "de 1 à 20 pièces.";
            messageNbPieces.style.color = 'red';
            return false;
        }
    }
};


// Validation des options aProximiteDe
const validationAProximiteDe = function(option) {
    let messageAProximiteDe = document.getElementById('errAProximiteDe');
    if (option.value != "") {
        messageAProximiteDe.innerText = "valide";
        messageAProximiteDe.style.color = 'green';
        return true;
    } 
    else {
        messageAProximiteDe.innerText = "* requis";
        messageAProximiteDe.style.color = 'red';
        return false;
    }
};


// Validation du nombre de mot dans la présentation
const validationPresentation = function(textPresentation) {
    let regexPresentation = /[a-zA-Z-' ]{5,}$/;

    let messagePresentation = document.getElementById('errPresentation');

    if (regexPresentation.test(textPresentation.value)) {
        messagePresentation.innerText = "Le texte est valide";
        messagePresentation.style.color = 'green';
        return true;
    } else {
        if (textPresentation.value === "") {
            messagePresentation.innerText = "* requis";
            messagePresentation.style.color = 'red';
            return false;
        } else {
            messagePresentation.innerText = "au moins 5 mots.";
            messagePresentation.style.color = 'red';
            return false;
        }
    }
};