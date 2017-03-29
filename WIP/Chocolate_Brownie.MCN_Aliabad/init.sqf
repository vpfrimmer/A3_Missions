//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

//=================== BRIEFING

player createDiaryRecord ["Diary", 
["Equipement", "Vous disposez de 4 AH-6 Littlebird disposant chacun d'un type d'armement différent.<br/>Une zone de réarmement et refuel a été mise en place au nord de l'installation."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Au delà de notre FOB, toute la région d'Aliabad est aux mains d'un ennemi entrainé et bien mieux équipé qu'il n'y paraît.<br/>Les forces ennemies sont composées d'infanterie, de technicals, de blindés, d'hélicoptères de combat. De plus, plusieurs villages sont occupés par des troupes barricadées et défendus par plusieurs postes fixes.<br/><br/>Nous ne sommes malheureusement pas en mesure d'évaluer leur nombre."]];

player createDiaryRecord ["Diary", 
["Mission", "Votre mission se compose de trois objectifs :<br/><br/>1. Assassiner trois officiers pendant leur rencontre dans la ville d'Ahmad Golam.<br/>2. Empêcher un échange d'armes en cours sur la côte en détruisant les hélicoptères et camions de transport sur place.<br/>3. Repérer et détruire 6 pièces d'artillerie cachées dans le village de Hadiz.<br/>Une fois les objectifs accomplis, rentrez à la FOB et terminez la mission via le drapeau.<br/><br/>Par ailleurs, vous êtes bien entendu autorisé à éliminer tout élément hostile rencontré."]];

player createDiaryRecord ["Diary", 
["Situation", "L'armée américaine a démarré son invasion d'Aliabad, région frontalière du Takistan. Après un combat difficile, les américains ont réussi à déployer une petite FOB, Bigfoot, au nord-est de la région.<br/>La progression est difficile : Alors que l'armée ennemie ne devait être que peu fournie en matériel, des blindés et plusieurs hélicoptères de combat ont été repérés et patrouillent la zone.<br/><br/>Vous faites partie d'une équipe de pilotes de AH-6 Littlebird chargée de conduire une série d'attaques rapides et précises dans le but d'affaiblir la chaîne de commandement ennemie, son ravitaillement, ainsi que ses moyens de support."]];


// ROSTER --------------------------------------------------------------------------------
[0,true,true] execVM "roster.sqf";