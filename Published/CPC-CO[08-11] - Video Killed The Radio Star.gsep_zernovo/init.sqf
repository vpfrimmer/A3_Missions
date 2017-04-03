[] execVM "T8_missionEXEC.sqf";

_loulz = [] spawn {
	waitUntil {time > 10};
	
	while{alive radio} do 
	{
		radio say3D ["radiostar", 300];
		sleep 225;
	};
};

[str("Radio Star") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Zernovo")] spawn BIS_fnc_infoText;

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Environnement", "Il est 05h30, le jour se lève et la météo est brumeuse. Le brouillard ne devrait pas tarder à se lever mais servira de couverture pour votre insertion.<br/><br/>Surement à cause du brouillard qui a perduré toute la nuit, les Shilkas n'ont pas tiré depuis déjà quelques heures.."]];

player createDiaryRecord ["Diary", 
["Equipement", "Pour cette mission, votre équipe de reconnaissance s'est jointe avec un APC Marshall et son équipage. Nous espérons qu'il vous permettra de vous déplacer rapidement et de vous défendre efficacement en cas de rencontre avec un blindé ennemi. De plus, il est amphibie et peut traverser les cours d'eau de la zone sans problèmes.<br/>Le teamleader possède une 148, et une autre 148 se trouve à l'intérieur du Marshall. Tout le monde dispose d'une 343.<br/><br/>Le Marshall peut transporter 8 passagers en plus de son équipage et dispose d'un canon pouvant tirer munitions explosives ou perforantes à côté de sa coaxiale."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Le NAPA n'est pas à sous-estimer. Principalement constitué d'infanterie équipée d'armes russes, ils disposent aussi de chars T-34 et de technicals. Nous estimons à une centaine de personnels les forces présentes dans votre zone d'opération.<br/>De plus, le NAPA recrute en masse la population locale et des fermiers ont pu être aperçus patrouillant les routes pour leur compte. Considérez les civils armés comme ennemis.<br/><br/>Gardez bien à l'esprit que votre objectif n'est pas de nettoyer entièrement la région, mais simplement de mener à bien vos deux objectifs.<br/><br/>Les villes d'Avdon et Lebedov ont été abandonnées par les civils et le NAPA."]];

player createDiaryRecord ["Diary", 
["Insertion et extraction", "Votre Marshall (l'APC de l'OTAN) sera parachuté à basse altitude aux alentours du point d'insertion par avion. La partie débute donc avec tous les joueurs dans le Marshall lui même dans la soute de l'avion dans les airs.<br/><br/>Pour vous extraire, appelez le Blackfish d'extraction via le canal 5 de n'importe quel radio 148 (CPC_CHOPPA). Attention, le VTOL envoyé sera équipé pour contenir uniquement des véhicules."]];

player createDiaryRecord ["Diary", 
["Mission", "Votre mission comporte deux objectifs simples : <br/>- Détruire deux ZSU du NAPA<br/>- Détruire une station de contrôle de drône<br/><br/>Une fois ces objectifs accomplis, appelez votre extraction !"]];

player createDiaryRecord ["Diary", 
["Situation", "Zernovo, 11 Octobre 2020<br/>Cela fait deux semaines que la population de Zernovo se soulèvent contre le gouvernement du Chernarus, souverain des lieux, grâce à une action du NAPA.<br/>Allié à Chernarus, vous faites partie d'un groupe de reconnaissance américain de l'OTAN chargé de saboter les moyens du NAPA dans la région et faciliter la contre-attaque chernarienne."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";