[] execVM "T8_missionEXEC.sqf";

[str("GBU") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Tanoa")] spawn BIS_fnc_infoText;

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Environnement", "Il est 15h00, il fait jour et la météo est bonne et le ciel dégagé."]];

player createDiaryRecord ["Diary", 
["Equipement", "Les pilotes et le team leader disposent chacun d'une 117 longue distance. Tout le monde possède une 148 (attention, les fréquences sont partagés entre 117 et 148).<br/><br/>Le team leader possèdent quelques charges explosifs dans son sac en sus de sa radio 117.<br/>Le JTAC dispose d'un désignateur laser et d'un désignateur controlable à distance via console drone (DLC Marksman nécessaire). Ce dernier est montable via le sac du JTAC (l'élévation de la tourelle se fait via les touches A et E).<br/>L'AT dispose d'un lanceur Titan et de 3 missiles.<br/><br/>Les pilotes sont aux commandes de A-164 Wipeout (des A-10 du turfu) équipés chacun d'un canon anti-tank, 4 GBU, 2 missiles anti-aériens, 6 missiles Hellfire, et deux pods de roquettes.<br/>Les avions peuvent être réarmés sur l'aéroport de la Rochelle ou l'aéroport de Lifou via des camions de réapprovisionnement.<br/>Des parachutes sont disponibles dans chaque avion."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Les moyens aériens du CSAT sont constitués de VTOLs avancés et de jets classiques.<br/>En plus de l'aéroport très bien défendu, le CSAT possède des FOB sur la partie nord de l'île. Plusieurs patrouilles ont été aperçues.<br/>La partie sud de l'île et les villes civiles sont vides d'ennemis.<br/><br/>La présence de l'équipe de reconnaissance est suspectée, attendez-vous à ce que des moyens de recherche aériens soient déployés."]];

player createDiaryRecord ["Diary", 
["Insertion et extraction", "L'équipe de reconnaissance s'est déjà insérée sur l'île via RHIB. Elle se trouve actuellement à proximité d'un point de vue qui devrait lui permettre de neutraliser simultanément les deux ZSU actifs grâce au lanceur Titan de son infanterie anti-tank. Son extraction se fera par la mer via RHIB (avec le scientifique si capturé).<br/><br/>Les deux pilotes et leur appareil sont insérés sur l'aéroport de la Rochelle, au nord de l'île principal."]];

player createDiaryRecord ["Diary", 
["Mission", "Le CSAT a agit rapidement pour s'installer sur l'île de Tuvanaka, et leur dispositif de défense anti-aérien est pour l'instant très fragile. Seuls deux ZSU sont actuellement actifs et protègent l'île de nos frappes.<br/><br/>Votre mission se compose de plusieurs objectifs :<br/>- Détruire les deux ZSU qui empêchent actuellement le survol de l'île (obligatoire)<br/>- Vous coordonnez pour une frappe à la bombe sur l'aéroport de l'île dans le but de détruire un maximum d'engins ennemis (obligatoire)<br/>- Détruire par frappe ou sabotage une réserve de tanks T-100 repérés à l'est de l'île (optionnel)<br/>- Capturez vivant un scientifique ennemi à l'origine de la création de VTOLs avancés (optionnel)"]];

player createDiaryRecord ["Diary", 
["Situation", "Archipel de Tanoa, 06 Octobre 2035<br/>Le CSAT a rapidement établi une base aérienne sur l'île de Tuvanaka, lui permettant d'apporter un soutien aux troupes engagées sur l'île principal.<br/>Vous faites partie d'un détachement de l'OTAN chargé de neutraliser leurs moyens aériens."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";