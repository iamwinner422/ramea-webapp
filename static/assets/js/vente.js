 //var lst_prod = []
 var _prix;
 var _qte;
 var _designation;
 var boxQte = document.getElementById("qte_cmdee");
 var ptotal = document.getElementById("prixTotal");
 var montant_brut = 0;
 var montant_reduction = 0;
 var net_commercial = 0;
 var montant_taxe = 0;
 var montant_net = 0;
 $("#formProd select[name='produit']").on("change", function () {
   var prix = document.getElementById("prixProd");
   var qte = document.getElementById("qteProd");
   var $this = $(this);
   var elm;
   if ($this.val() != "") {
     boxQte.disabled = false;
     $.ajax({
       method: "GET",
       url: '{% url "get_info_prod" id=123 %}'.replace(
         /123/,
         $this.val().toString()
       ),
       dataType: "json",
       success: function (data, status) {
         console.log("SUCCESS:");
         elm = data;
         _prix = elm[0].prix_unitaire;
         _qte = elm[1].qte_stock;
         _designation = elm[0].designation;
         prix.innerHTML = "Prix: " + _prix + " FCFA";
         qte.innerHTML = "Qte en stock: " + _qte;
         //console.log(elm[1].qte_stock);
       },
       error: function (response) {
         console.log("Something went wrong awoo ");
       },
     });
   } else {
     $("#formProd select[name='produit']").find(".after").nextAll().remove();
     prix.innerHTML = "Prix: --";
     qte.innerHTML = "Qte en stock: --";
     boxQte.disabled = true;
     ptotal.innerHTML = "Total: 0 FCFA";
   }
 });
 //BOX QTE COMMANDEE AU CHANGEMENT
 $("#formProd input[name='qte_cmdee']").on("input", function () {
   var qte = document.getElementById("qte_cmdee").value;
   var total = 0;
   if ($.isNumeric(qte)) {
     total = parseInt(_prix * qte);
     ptotal.innerHTML = "Total: " + total + " FCFA";
   } else {
     ptotal.innerHTML = "Total: 0 FCFA";
   }
 });
 // CODE DU BOUTON AJOUTER LE PRODUIT
 $("#formProd button[name='ajoutProd']").on("click", function () {
   var qte = document.getElementById("qte_cmdee").value;
   //CONTROL
   if ($.isNumeric(qte)) {
     if (qte <= 0 || qte > _qte) {
       alert("Erreur de quantité.");
     } else {
       var leTotal = _prix * qte;
       montant_brut += leTotal;
       //CREATION DE L'OBJET 
       var new_prod = {
         designation: _designation,
         prix: _prix,
         qte_cmdee: qte,
         prix_total: leTotal,
       };

       lst_prod.push(new_prod);//INSERTION DANS LE TABLEAU
       function affichePanier() {
         if (lst_prod.length >= 1) {
           //CREATION DU TABLEAU DES PRODUITS/PANIER
           var tble = document.createElement("table");
           tble.setAttribute("class", "table table-responsive mt-1");
           var tbdy = document.createElement("tbody");

           lst_prod.forEach(function (prod, index, lst_prod) {
             var tr = document.createElement("tr");
             var td = document.createElement("td");
             var td1 = document.createElement("td");
             var td2 = document.createElement("td");
             var td3 = document.createElement("td");
             var td4 = document.createElement("td");
             td3.setAttribute('style', 'text-align:right;');
             td2.setAttribute('style', 'text-align:right;');
             td1.setAttribute('style', 'text-align:center;');
             var icone = document.createElement("i");
             icone.setAttribute("class", "bi bi-x-circle delete");//BUTTON SUPPRIMER
             //SUPESSION D'UN ELEMENT
             icone.onclick = function () {
               
               montant_brut -= lst_prod[index]['prix_total'];
               document.getElementById("montant_brut").innerHTML = "Montant brut: " + montant_brut + " FCFA"; 
               document.getElementById('net_commercial').innerHTML = "Net Commercial: " + montant_brut + " FCFA";
               //console.log(lst_prod[index]['prix_total']);
               lst_prod.splice(index, 1);//SUPPRESSION
               //NOUVEAU MONTANT BRUT
               affichePanier(); //RAPPEL DE LA FONCTION
               document.getElementById("nbProd").innerHTML = lst_prod.length;

               

             };
             //montant_brut += prod['prix_total'];
             //console.log(montant_brut);
               //
             td.appendChild(document.createTextNode(prod["designation"]));
             td1.appendChild(document.createTextNode(prod["qte_cmdee"]));
             td2.appendChild(document.createTextNode(prod["prix"]));
             td3.appendChild(document.createTextNode(prod["prix_total"]));
             td4.append(icone);
             tr.appendChild(td);
             tr.appendChild(td1);
             tr.appendChild(td2);
             tr.appendChild(td3);
             tr.appendChild(td4);
             tbdy.appendChild(tr);
           });

           tble.appendChild(tbdy);

           var p = document.createElement("p");
           
           document.getElementById("panier").innerHTML = "";
           document.getElementById("panier").appendChild(tble);
           document.getElementById("panier").appendChild(p);
           //MONTANT BRUT
           document.getElementById("montant_brut").innerHTML = "Montant brut: " + montant_brut + " FCFA";
           document.getElementById('net_commercial').innerHTML = "Net Commercial: " + montant_brut + " FCFA";
         } else {
           document.getElementById("panier").innerHTML =
             "<p class='alert alert-info text-center mt-5'>Aucun produit dans le panier.</p>";
         }
       }

       affichePanier();//AFFICHAGE DU PANIER
       
       document.getElementById("nbProd").innerHTML = lst_prod.length;//NOMBRE D'ELEMENT DANS LE PANIER
       
       document.getElementById("qte_cmdee").value = "";
       ptotal.innerHTML = "Total: 0 FCFA";
     }
   } else {
     alert("La quantité saisie est invalide.");
   }
 });

 //BOX TAUX DE REDUCTION

 $("#formAutres input[name='taux_reduction']").on("input", function () {
   var tReduction = document.getElementById("taux_reduction").value;
     if ($.isNumeric(tReduction)) {
       var tReductionN = parseInt(tReduction);
       if(tReductionN > 0){
         montant_reduction = parseInt((montant_brut * tReductionN) / 100);//CALCUL DE LA REDUCTION
         net_commercial = montant_brut - montant_reduction; //NET COMMERCIAL
         
         document.getElementById('montant_reduction').innerHTML = "Montant: " + montant_reduction +" FCFA";
         document.getElementById('net_commercial').innerHTML = "Net Commercial: " + net_commercial + " FCFA";
         //TAXE
         montant_taxe = 0;
         montant_taxe = parseFloat((net_commercial * 18) / 100);//CALCUL DE LA TVA
         montant_net = net_commercial - montant_taxe //NET A PAYER 
       }else{
         document.getElementById('montant_reduction').innerHTML = "Montant: 0 FCFA";
         document.getElementById('net_commercial').innerHTML = "Net Commercial: " + montant_brut + " FCFA";
       }
     } else {
       document.getElementById('montant_reduction').innerHTML = "Montant: 0 FCFA";
       document.getElementById('net_commercial').innerHTML = "Net Commercial: " + montant_brut + " FCFA";
     }
   
 });