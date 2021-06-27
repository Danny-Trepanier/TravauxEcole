class GestionClients {

  clients = [];
  prets   = [];
  eSelectClient = document.getElementById("selectClient");
  eClient       = document.getElementById("client");
  ePrets        = document.getElementById("prets");
  tClient       = document.getElementById("modeleClient");
  tPret         = document.getElementById("modelePret");

  /**
   * Créer un objet gestionnaire de clients
   * @param {Object[]} clients 
   * @param {Object[]} prets 
   */
  constructor(clients, prets) {
    this.clients = clients;
    this.prets   = prets;

    // à faire :
    //   ajoutez les options de la balise select this.eSelectClient
    this.clients.forEach(client =>
      this.eSelectClient.add(
        new Option(client.nom + ", " + client.prenom, client.value = client.id_client)
      )
    );

    this.eSelectClient.addEventListener("change", this.detailClient.bind(this));
  }

  /**
   * Traiter la sélection d'une option de la select d'id selectClient  
   * @param {Object} evt 
   */
  detailClient(evt) {
    /*
      à faire :
    
        Affichez les données du client sélectionné dans la balise section this.eClient
        en utilisant le template this.tClient
    
        Affichez les données des prêts du client sélectionné dans la balise this.ePrets
        en utilisant le template this.tPret pour chaque prêt 

        Si aucun client n'est sélectionné (option "Sélectionnez un client"), réinitialisez
        les sections this.eClient et this.ePrets

        Si le client sélectionné n'a aucun prêt, insérez par exemple "<p>Aucun prêt.</p>"
        dans la section this.ePrets

        Animez l'affichage de ces sections this.eClient et this.ePrets
        Vous pouvez utiliser par exemple la transition déclarée sur le parent d'id "wrapper"
        ou bien définir toute(s) autre(s) transition(s) à votre convenance
		
        Vous pouvez organiser votre code en ajoutant des méthodes à cette méthode detailClient()     
           
    */
    
    this.clients = clients.filter((client) => {
      return client.id_client == this.eSelectClient.value;
    })

    this.prets = prets.filter((pret) => {
      return pret.id_client == this.eSelectClient.value;
    })

      if (this.clients.length > 0) {
        this.eClient.innerHTML = "";
        console.log(this.clients);
        for (let client of this.clients) {
          let tClone = this.tClient.cloneNode(true);
          for (let prop in client) {
            tClone.innerHTML = tClone.innerHTML.replaceAll(`{${prop}}`, client[prop]);
          }
          this.eClient.appendChild(tClone.content);
          let wrapper = document.getElementById("wrapper");
          wrapper.classList.add("voir");
        }
  
        if (this.prets.length > 0) {
          this.ePrets.innerHTML = "";
          for (let pret of this.prets) {
            let tHTML = this.tPret.innerHTML;
            for (let prop in pret) {
              tHTML = tHTML.replace(`{${prop}}`, pret[prop]); 
            }
            this.ePrets.insertAdjacentHTML("beforeend", tHTML);
          }
        } else {
          this.ePrets.innerHTML = "Aucun prêt.";
        }
      } else {
        let wrapper = document.getElementById("wrapper");
          wrapper.classList.remove("voir");
          this.eClient.innerHTML = "";
          this.ePrets.innerHTML = "";
      }
  }
}