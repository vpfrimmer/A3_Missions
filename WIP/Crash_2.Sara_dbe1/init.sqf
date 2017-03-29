//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Environnement", "Il est 9h du matin, le temps est clair. C'est une belle journée qui s'annonce sur la Nouvelle République Populaire de Podagorsk."]];

player createDiaryRecord ["Diary", 
["Equipement", "Vous disposez de l'équipement d'infanterie chernarien standard, vous n'étiez cependant pas prêts pour cette situation et n'avez pas emmené énormément de munitions.<br/><br/>Votre radio longue portée ainsi que le GPS du pilote ont été abimés lors de l'impact, et sont maintenant inutilisables.<br/>Tout le monde possède une 343."]];

player createDiaryRecord ["Diary", 
["Renseignements", "- Toute la partie sud du pays est sous contrôle du PDKZ et des patrouilles la sillonent. Il ne fait pas de doute qu'ils vont surement partir à votre recherche. Le PDKZ doit dorénavant être considéré comme hostile.<br/>- Différents points d'intérêt repérés pendant votre vol sont marqués sur votre carte, certains mieux défendus que d'autres (signalés par un point d'exclamation).<br/>- La guerilla loyaliste n'opère plus dans ce secteur depuis plus d'un mois, mais il peut être intéressant de visiter leurs dernières caches connues si vous êtes en mal d'équipement.<br/><br/>Le PDKZ est bien fourni et entrainé. Ses soldats sont équipés d'armement russe moderne, de véhicules légers ainsi que de blindés et quelques hélicoptères Mi-8. Il ne s'agit pas de votre guerilla sous-équipée habituelle."]];

player createDiaryRecord ["Diary", 
["Insertion", "Vous vous situez actuellement quelque part dans <marker name='mrkCrash'>la zone quadrillée verte</marker>, à 600 mètres d'altitude dans un Mi-8 presque sans fuel et sans rotor arrière. Accrochez-vous.<br/><br/>Note HRP : Vous survivrez au crash, et l'hélicoptère n'explosera pas. Pour sortir, n'importe qui peut utiliser l'action molette 'Faire sortir les occupants' disponible (il est recommandé d'attendre l'arrêt complet de l'appareil). Une fois débarqués, vous redeviendrez mortels et votre carte vous sera rendue."]];

player createDiaryRecord ["Diary", 
["Point de détail", "Vous êtes complètement paniqué et vous n'arrivez pas à sortir votre carte de votre poche !"]];

player createDiaryRecord ["Diary", 
["Mission", "Votre mission est simple : Utiliser tous les moyens nécessaires pour revenir sains et saufs à la base Echo."]];

player createDiaryRecord ["Diary", 
["Situation", "9 Avril 2008.<br/>Voilà maintenant six mois que le petit état voisin de Chernarus, Podagorsk, est en proie à la guerre.<br/>Le mouvement communiste du PDKZ, petit frère du ChDKZ, a en une demi-année pris l'avantage sur l'armée du gouvernement local en la poussant à se retrancher dans les forêts du nord de la région.<br/><br/>Vous faites partie d'une équipe d'observateurs chernariens envoyés par l'ONU dans le cadre d'une opération de restauration de la paix.<br/>Jusqu'à présent les communistes ont toléré la présence de l'ONU, mais ce matin, lors d'une reconnaissance aérienne de routine un ZSU-23 du PDKZ a ouvert le feu sur votre Mi-8.<br/<br/>Vous êtes à 600 mètres d'altitude en plein territoire ennemi, votre rotor de queue ne fonctionne plus et vous perdez du fuel."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";

showGPS false;
outOfTimeMan = 0;
player addEventHandler ["getoutman", "outOfTimeMan = 1; player allowDamage true; heli lock true; player linkItem 'ItemMap';"];
