let inputNomTache = document.getElementById("tache");
let selectImportance = document.getElementById("importance");
let boutonAjouter = document.getElementById("ajouter");

let tTaches = document.getElementById("modeleListe");
let eTaches = document.getElementById("listeTaches");
let tDetail = document.getElementById("modeleDetail");
let eDetail = document.getElementById("modale");

let tachesStorage = localStorage.getItem("taches");


// Ajout de la tâche aux local storage
boutonAjouter.addEventListener("click", function() {
  inputNomTacheValeur = inputNomTache.value;
  selectImportanceValeur = selectImportance.value;
  dateValeur = new Date();
  tacheTermineeValeur = false;
  if (tachesStorage == null) {
    tacheObjet = [];
  } else {
    tacheObjet = JSON.parse(tachesStorage);
  }
  tacheObjet.push({"nom" : inputNomTacheValeur, "importance" : selectImportanceValeur, "date" : dateValeur, "id" : tacheObjet.length+1, "fait" : tacheTermineeValeur});
  localStorage.setItem("taches", JSON.stringify(tacheObjet));
  location.reload();
})


// Affichage de la liste des tâches
window.addEventListener("load", function() {
  tabTache = JSON.parse(localStorage.taches);

  let tri = document.getElementById("tri").value;
    if (tri == "importance/nom") {
      tabTache.sort(function(a, b){
        if (a.importance < b.importance) { 
          return -1; 
        }
        if (a.importance > b.importance) { 
          return 1; 
        }
        return 0;
      })
    } else {
      tabTache.sort(function(a, b){
        if (a.nom < b.nom) { 
          return -1; 
        }
        if (a.nom > b.nom) { 
          return 1; 
        }
        return 0;
      })
    }
  for (let tache of tabTache) {
    let tClone = tTaches.cloneNode(true);
    for (let prop in tache) {
      tClone.innerHTML = tClone.innerHTML.replaceAll(`{${prop}}`, tache[prop]);
    }
    eTaches.appendChild(tClone.content);
  }
})


/**
 * Affichage de la fenêtre modale
 * @this {afficherFenetreModale}
 * @param {number} id Id de la tâche sélectionnée
 */
function afficherFenetreModale(id) {
  tabTache = JSON.parse(localStorage.taches);

  let tabFiltrer = tabTache.filter(personne => personne.id == id); 
    for (let tache of tabFiltrer) {
      let tClone = tDetail.cloneNode(true);
      for (let prop in tache) {
        tClone.innerHTML = tClone.innerHTML.replaceAll(`{${prop}}`, tache[prop]);
      }
      eDetail.appendChild(tClone.content);
    }
    document.getElementById("modale").showModal();
}


/**
 * Effacer une tâche
 * @this {effacerTache}
 * @param {number} id Id de la tâche sélectionnée
 */
function effacerTache(id) {
  tabTache = JSON.parse(localStorage.taches);
  tabTache.forEach(function(item, index, array) {
    if (item.id == id) {
      tabTache.splice(index, 1);
    }
  let jsonTaches = JSON.stringify(tabTache);
  localStorage.setItem("taches", jsonTaches);
  });
  location.reload();
}


/**
 * Changer le statut d'une tâche
 * @this {changementStatut}
 * @param {number} id Id de la tâche sélectionnée
 * @param {boolean} fait Retourne true ou false si la tâche est terminée ou non
 */
function changementStatut(id, fait) {
  tabTache = JSON.parse(localStorage.taches);
  tabTache.forEach(function(tache) {
    if (tache.id == id) {
      if (fait === true) {
        tache.fait = false; 
      } else {
        tache.fait = true; 
      }
    }
  });
  let jsonTaches = JSON.stringify(tabTache);
  localStorage.setItem("taches", jsonTaches);
  location.reload();
}