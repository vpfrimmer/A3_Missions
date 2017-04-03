[] execVM "T8_missionEXEC.sqf";

//=================== BRIEFING

player createDiaryRecord ["Diary", 
["Environnement", "Il est 12h, il fait beau."]];

player createDiaryRecord ["Diary", 
["Equipement et supports", "Le Mi-28 revient de mission, il ne dispose que de peu de munitions et sa réserve de fuel est à 80%. La soute passager est accessible sur le côté gauche de l'appareil et peut contenir 3 personnes."]];

player createDiaryRecord ["Diary", 
["Insertion", "Le Mi-28 et son équipage sont insérés au sud de la région. Les survivants se trouvent actuellement dans une maison à proximité du crash."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Zargabad est aux mains de l'ISAS et ses rues grouillent de patrouilles. Ils ne savent pas où se trouve actuellement les survivants mais n'hésitera pas à les prendre en chasse s'ils se font repérer.<br/><br/>Il n'y a pas de moyens anti-aérien repéré sur la ville."]];

player createDiaryRecord ["Diary", 
["Mission", "L'objectif de la mission est le sauvetage des survivants du crash de la ville de Zargabad. Sans armes, possédant uniquement une radio 148, l'équipage du Mi-28 devra trouver un moyen de les guider et les récupérer, puis s'extraire de la région par le nord."]];

player createDiaryRecord ["Diary", 
["Situation", "L'Afghanistan est actuellement le théâtre d'une attaque russe, dont vous faites partie, contre l'ISAS, un groupe d'extrêmistes islamistes.<br/><br/>Il y a quelques minutes, un Mi-8 transportant un officier russe et deux de ses hommes s'est écrasé en survolant la ville de Zargabad aux mains de l'ISAS.<br/>Les pilotes ont été tués, mais l'officier et ses hommes ont réussi à trouver refuge dans une maison non loin du lieu du crash.<br/><br/>Sur le chemin de son retour de mission, un Mi-28 dévie de sa trajectoire pour aller porter secours aux survivants."]];


// ROSTER --------------------------------------------------------------------------------
[0,true,true] execVM "roster.sqf";
