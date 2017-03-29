[] execVM "T8_missionEXEC.sqf";


[str("Valkyrie 1") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Tanoa")] spawn BIS_fnc_infoText;

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Environnement", "Il est 10h, le ciel est pour l'instant beau. Quelques perturbations sont néanmoins à prévoir."]];

player createDiaryRecord ["Diary", 
["Groupes et équipement", "Vos moyens sont divisés en 4 groupes :<br/>- Une équipe multi-tâche d'infanterie classique.<br/>- Un trio de commandos Viper, équipé du meilleur équipement que le CSAT ait à offrir. Leurs lunettes thermiques les aideront certainement à survivre à la jungle et les embuscades du Syndikat.<br/>- Un char T-100 Varsuk et son équipage. Le Varsuk est le MBT du CSAT. Profilé et manoeuvrable, il peut se cacher avec peu de relief et détruire n'importe quel ennemi avec son canon de 125mm. Il est aussi équipé d'une tourelle de 12.7mm pour son commandant et d'une coaxiale de 7.62mm<br/>- Un BTR-K Kamysh et son équipage. Capable de transporter 8 personnels en plus de son équipage, équipé d'un canon de 30mm et d'un lance missile Titan, le Kamysh est ce qu'il se fait de mieux en matière d'IFV.<br/><br/>En plus de ces groupes et leur équipement, vous possédez deux quads, un Ifrit non armé et un camion de transport de troupes."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Depuis hier, les forces de l'OTAN sur l'archipel sont coupées de tout ravitaillement par notre blocus. Vous êtes donc face à une armée régulière certes surprise, affaiblie, et coupée de ses soutiens, mais pas encore battue.<br/>L'OTAN dispose de moyens blindés (APC, IFV, MBT) et d'infanterie très bien équipée. Soyez sur vos gardes, un Marshall bien caché peut toujours vous surprendre au détour d'une colline. De plus, plusieurs guérites gardées ont été repérées dans la vallée.<br/><br/>A noter que le gang criminel Syndikat s'est allié avec l'OTAN pour la défense de Tanoa. Bien que faiblement équipés, ces natifs de l'île en connaissent les moindres recoins et sont souvent déployés en patrouilles dans les jungles épaisses.<br/><br/>Il y a environ 30 minutes, une équipe de notre régiment a été déployée pour attaquer un site AA proche de Yanukka. L'équipe vient de rapporter que son avancée est bloquée au niveau de l'église de Yanukka par la présence du Syndikat sur les lieux.<br/><br/>A noter que l'OTAN a apparemment effectué une évacuation des populations civiles sur l'île."]];

player createDiaryRecord ["Diary", 
["Mission", "La progression de notre installation sur l'aérodrome de Bala est malheureusement stoppée pour l'instant, en raison de l'installation de sites anti-aériens proches par les forces de l'OTAN. Il va donc falloir utiliser les moyens déjà présents pour avancer sur l'île et sécuriser ses positions anti-aériennes.<br/><br/>Votre mission se compose d'un objectif principal : Eliminer les 4 positions anti-aériennes (marquées de croix rouges) de l'ennemi pour permettre à nos hélicoptères d'héli-treuiller le matériel restant sur la terre ferme.<br/><br/>Si vous vous en sentez capable, vous pouvez y ajouter deux objectifs secondaires :<br/>- Sécuriser une base avancée de l'OTAN, repérée dans <marker name=''>cette zone</marker>.<br/>- Sécuriser les accès routiers de l'île en éliminant toute force ennemie sur les entrées des ponts et y établir une surveillance."]];

player createDiaryRecord ["Diary", 
["Situation", "Mai 2038, Archipel de Tanoa.<br/><br/>Le CSAT étend son emprise sur le Pacifique face à des forces de l'OTAN désorganisée par le conflit en mer Méditerrannée. Les américains sont absorbés ailleurs, et la Chine compte bien se servir de cette opportunité pour marquer un grand coup en conquérant l'archipel de Tanoa.<br/>Vous faites partie d'un régiment chinois du CSAT et vous venez de poser pied sur l'archipel en y établissant une FOB sur l'aérodrome de XXXX depuis plusieurs navires au large des côtes tanoéennes."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";