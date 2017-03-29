

//=================== BRIEFING

player createDiaryRecord ["Diary", 
["Environnement", "Il est XXhXX, vous disposez d'un peu moins d'une heure de nuit. Le temps est bon et le ciel dégagé."]];

player createDiaryRecord ["Diary", 
["Equipement et supports", "Nous suspectons le Syndikat de posséder des moyens anti-aériens, votre Osprey a donc été retiré pour cette mission en faveur d'une vedette Mk.5 SOC.<br/>Cette vedette rapide (110 km/h) est équipée à son babord d'une M2 et d'une gatling de 6.5mm ainsi que d'une seconde M2 et d'un lance-grenades automatique à son tribord. Le commandant dispose d'un pod caméra.<br/>Deux canots pneumatiques sont actuellement chargés à son bord, et leur chargement/déchargement est contrôlé par le conducteur (via option du menu molette).<br/><br/>Le changement de poste entre la cabine et les postes de tir nécessite au joueur de marcher à l'arrière du bateau et 'd'enjamber' les éventuels obstacles invisibles.<br/><br/>De manière générale, il est fortement conseillé d'arrêter le bateau lors du chargement/déchargement d'un canot ou le déplacement d'un joueur.<br/><br/>Quoiqu'il arrive, nous ne tolérerons pas la capture de la vedette, faites en sorte d'avoir toujours quelqu'un à bord."]];

player createDiaryRecord ["Diary", 
["Insertion", "Vous êtes insérés sur le port de Georgetown, à proximité de votre vedette."]];

player createDiaryRecord ["Diary", 
["Renseignements", "- Le suspect s'est associé avec le Syndikat pour mener ses actions. C'est ce dernier qui est en charge de sa protection sur l'île. Nous n'avons pas détecté d'empreinte thermique, ce qui nous laisse penser qu'aucun véhicule ne se trouve sur zone.<br/><br/>- Sosovu était une place forte à l'époque de la seconde guerre mondiale, et de nombreux bunkers de cette époque ont été reconvertis par le Syndikat comme points de défense. A cause de la dense végétation sur place, nous ne disposons malheureusement pas de plus d'informations sur l'activité autour de ces sites.<br/><br/>- Si vous veniez à être repérés par les forces ennemis avant la capture du suspect, attendez vous à ce que le Syndikat tente de l'extraire par les airs.<br/><br/>- L'île est habitée et quelques civils peuvent y être croisés.<br/><br/>- Nous suspectons le Syndikat d'avoir mené les zones rouges avec des mines à oursin."]];

player createDiaryRecord ["Diary", 
["Mission", "Votre mission est simple : Localiser et capturer vivant le suspect.<br/>Ses positions possibles sont marquées sur votre carte par des croix.<br/><br/>Une fois la cible capturée, vous devrez vous extraire sur votre zone d'insertion."]];

player createDiaryRecord ["Diary", 
["Situation", "XXXXX, Archipel de Tanoa.<br/>Cela fait une semaine que la sextape de notre président et son secrétaire d'état a été récupérée et effacée sur l'île d'Imrali.<br/>Nos services de renseignements viennent de localiser le hacker a l'origine de la fuite sur une petite île de l'archipel : Sosovu.<br/><br/>Vous faites partie de l'équipe du MARSOC envoyée sur Imrali, et cette fois, vous êtes envoyé par bateau capturer ce terroriste."]];

// ROSTER --------------------------------------------------------------------------------
[0,true,true] execVM "roster.sqf";
