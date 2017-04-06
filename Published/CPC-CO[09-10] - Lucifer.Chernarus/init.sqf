[] execVM "T8_missionEXEC.sqf";

//=================== BRIEFING

player createDiaryRecord ["Diary", 
["Environnement", "Il est 08h00, il fait jour. Le temps est plutôt mauvais, mais rien d'alarmant."]];

player createDiaryRecord ["Diary", 
["Equipement", "- Vous disposez d'un BRDM équipé d'une PKT, ainsi que d'un Tigr non armé, mais avec une trappe sur le toit. Il est possible de faire monter des personnes sur l'extérieur du BRDM pour le transport.<br/><br/>- Tout le monde possède une 343, 3 autres sont trouvables à l'intérieur du BRDM.<br/><br/>- Vous êtes plutôt mal équipés, les miliciens parmi vous ne possédent que de simples Mosin-Nagant, des fusils 5 coups datant de la seconde guerre mondiale. Le reste de l'équipe est équipé d'AKS."]];

player createDiaryRecord ["Diary", 
["Insertion", "Vous êtes insérés au barrage de Pobeda, dans une zone de no man's land. Les alentours sont sûrs jusqu'à la zone cerclée rouge.<br/><br/>Vous devrez revenir au barrage pour votre extraction (molette sur drapeau)."]];

player createDiaryRecord ["Diary", 
["Renseignements", "- Les Mi-24 viendront débarquer leurs troupes sur le chateau d'ici environ 1h15<br/><br/>- La zone marquée d'un cercle rouge est à considérer comme dangereuse et patrouillée par l'ennemi à pied et surement en Tigr.<br/><br/>- Une cache se trouve à proximité du chateau. Sa mise en place date d'il y a quelques jours déjà et elle a peut être été repérée par l'ennemi entre temps. Aux dernières nouvelles, il s'y trouvait des mortiers et diverses armes avancées dérobés à l'armée russe.<br/><br/>- Ne vous y trompez pas, vous êtes en sous-nombre, et ce territoire est rempli de russes. Evitez le contact autant que possible, et restez mobiles, jusqu'à l'assaut du chateau.<br/><br/>- Attendez vous à ce que le chateau appelle des renforts de l'aéroport si vous commencez à les surpasser."]];

player createDiaryRecord ["Diary", 
["Mission", "Dans ce conflit, l'avantage est à l'armée russe. Bien entraînée et surtout mieux équipée que notre mouvement, les pertes qu'elle inflige sur le front Est sont énormes.<br/>Tous les jours, des Mi-24 sont envoyés depuis l'aéroport du nord-ouest, trop bien protégé, vers la côte Est. Tous les jours, ces hélicoptères assurent la supériorité russe sur le champ de bataille.<br/>Aujourd'hui cependant, nous avons appris que deux hélicoptères marqueraient un arrêt sur la base avancée russe du chateau du Diable, afin de décharger des troupes.<br/><br/>Votre mission consiste à prendre temporairement possession de cette base par tous les moyens, contrôler les moyens anti-aériens qui s'y trouvent, et abattre les Mi-24 lors de leur approche."]];

player createDiaryRecord ["Diary", 
["Situation", "2012,<br/>Chernarus est déchirée par une guerre civile. D'un côté le gouvernement qui, dépassé, a fait appel à son allié russe pour l'aider à maîtriser la situation, de l'autre la faction insurgée dont vous faites partie qui milite pour une indépendance totale du pays, la démission du gouvernement, et un retrait des forces russes.<br/><br/>Votre groupe est infiltré loin derrière la ligne de front principale pour une mission spéciale."]];


// ROSTER --------------------------------------------------------------------------------
[0,true,true] execVM "roster.sqf";
