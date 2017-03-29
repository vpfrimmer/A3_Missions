[] execVM "T8_missionEXEC.sqf";

"mrkGravia_1" setMarkerAlpha 0;
"mrkGravia_2" setMarkerAlpha 0;
"mrkLakka_1" setMarkerAlpha 0;
"mrkLakka_2" setMarkerAlpha 0;
"mrkSelakano_1" setMarkerAlpha 0;
"mrkSelakano_2" setMarkerAlpha 0;
"mrkAAC_1" setMarkerAlpha 0;
"mrkAAC_2" setMarkerAlpha 0;
"mrkAbdera_1" setMarkerAlpha 0;
"mrkAbdera_2" setMarkerAlpha 0;
"mrkMolos_1" setMarkerAlpha 0;
"mrkMolos_2" setMarkerAlpha 0;

call compile PreProcessFile "reinforcements.sqf";

loadedCrates = 0;
cratesInPlane = 0;
cratesInTruck = 0;
attack = 0;

"onCrateLoaded" addPublicVariableEventHandler {

	loadedCrates = loadedCrates + 1;
	cratesInPlane = cratesInPlane + 1;
	
	hint format["Caisses chargees : %1", loadedCrates];
		
};

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Environnement", "Il est 12h, le ciel est beau et dégagé. Rien à signaler."]];

player createDiaryRecord ["Diary", 
["Equipement", "Le pilote et le chef possèdent une 148. Tout le monde a une 343.<br/><br/>Vous disposez d'un Antonov An-2, capable de transporter des caisses de matériel et contenant 30 parachutes, du matériel médical et une toolbox.<br/>De plus, un lanceur de grenades explosives a été fixé sous l'avant de l'appareil, et est utilisable par le pilote. Il dispose de 10 grenades.<br/><br/>Une caisse de munition et un camion de carburant se trouvent à votre camp, au cas où vous auriez besoin de vous réapprovisionner entre plusieurs objectifs.<br/><br/>Pour votre extraction sur la planque, vous disposez de deux offroads et un camion de transport capable de récupérer les caisses contenues dans l'Antonov.<br/>Ne vous servez pas de ces véhicules pour l'attaque, ils doivent rester inconnus de l'AAF.<br/>Autrement, vous êtes libres de vous servir de tout véhicule que vous croiserez pour cette opération, évitez juste de ramener un véhicule volé sur la planque, cela attirerait les soupçons."]];

player createDiaryRecord ["Diary", 
["Renseignements", "L'AAF n'est pas sur ses gardes et ne s'attend pas à être attaquée. Des QRF viendront cependant surement lors de l'attaque d'un site.<br/><br/>Nous estimons que vous disposez d'un total de 60 minutes à partir du premier contact avant qu'ils ne remontent la piste jusqu'au camp."]];

player createDiaryRecord ["Diary", 
["Insertion et extraction", "Vous êtes insérés sur votre camp, près du lac salé et sa piste.<br/><br/>Quand vous le souhaiterez, partez en véhicule sur la planque et abandonnez l'avion."]];

player createDiaryRecord ["Diary", 
["Détails", "- Les caisses peuvent être chargées dans l'Antonov lorsqu'elles se trouvent à proximité via une action sur la barre d'espace.<br/><br/>- Les caisses peuvent être portées via le menu d'interaction ACE<br/><br/>- Une action barre d'espace sur le camion permet de transférer les caisses contenues dans l'Antonov lorsque l'avion est à proximité.<br/><br/>- Pour certains sites, la position précise des caisses est connue et marquée par un point"]];

player createDiaryRecord ["Diary", 
["Mission", "Votre objectif consiste à voler à l'AAF du matériel spécial, contenu dans des caisses reconnaissables (voir photo). Nous ne savons pas ce qu'elles contiennent, et nous sommes payés pour ne pas poser de questions.<br/><br/>Ces caisses peuvent être trouvées sur différents sites AAF de l'île, visibles sur votre carte. Vous pouvez voir combien chaque site possède de caisses à côté de son nom.<br/>Très logiquement, les sites contenant le plus de caisses sont les mieux défendus.<br/><br/>Récupérez en un maximum avec l'Antonov, ramenez les à votre camp, transférez les en camion, et partez sur votre planque avant que l'AAF ne remonte jusqu'à vous !<br/><br/><br/>Les caisses que vous recherchez : <br/><br/><img image='box.jpg'/>"]];

player createDiaryRecord ["Diary", 
["Situation", "Altis, été 2020.<br/>L'AAF règne en maître sur l'île et indépendamment de toute puissance étrangère.<br/>Vous faites partie d'un groupe de bandits recrutés pour voler l'AAF."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";