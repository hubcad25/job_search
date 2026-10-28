// Lettre Metro, Analyste de marché, Développement immobilier (demande n° 50186). Faits : profil/ (ids en commentaire). Forme : guides/redaction.md. Ton : lettres CSSMB et STM.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 28 octobre 2026],
  objet: [Candidature au poste d'analyste de marché (demande n°~50186)],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis ; enquêtes et rapports ; données géographiques et mesure d'effet ; pourquoi ce poste + écarts (MapInfo, Power BI, alimentation et immobilier). Pas de paragraphe IA (offre peu technique).

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage ; identite.yaml (objectif : emploi stable)
Je travaille en analyse de données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je conçois des enquêtes, j'en analyse les résultats et je les présente à des gestionnaires. Je cherche maintenant un poste permanent où m'investir à long terme.

// 2. exp-medaillon-ciusss (5 questionnaires, collecte postale avec code QR, 6 000 + 1 100 commentaires, assistance pondération et rapport), exp-mitacs-musee (binôme, enquêtes de satisfaction, 2 rapports marketing, présentation aux gestionnaires)
Pour le Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal, j'ai conçu les cinq questionnaires d'une consultation et organisé une collecte par la poste avec un code QR qui nous a permis de recueillir plus de 7~000 commentaires. J'ai ensuite aidé à la pondération et au rapport avant de présenter les résultats au client. Au Musée de la civilisation, j'ai segmenté les visiteurs à partir des enquêtes de satisfaction et j'ai présenté aux gestionnaires les deux rapports d'orientation marketing que nous en avons tirés avec un collègue.

// 3. proj-geo-marketing-api (~57 000 aires de diffusion, recensement 2021, regrouper de petites zones en plus grandes) ; exp-enap, proj-enap-lois-localisation, comp-inference-causale (double différence), form-eiom
Chez Opubliq, l'entreprise que j'ai cofondée, j'ai bâti une base qui donne le profil sociodémographique du recensement pour les 57~000 aires de diffusion du Canada. En regroupant ces petites zones, on obtient le portrait sociodémographique de la zone de chalandise d'un magasin. Pour l'ENAP, j'ai mesuré par double différence l'effet de l'adoption de lois sur la localisation des données. La même méthode permet de mesurer l'effet de l'ouverture d'un concurrent sur les ventes d'un magasin, en comparant avec des magasins qui n'y sont pas exposés.

// 4. Pourquoi ce poste : offre.md (études pour les projets d'expansion) ; écarts : MapInfo (absent du profil), comp-power-bi (notions), exp-metro-commis (commis d'épicerie, 2016-2018, temps partiel) ; compensation : comp-geospatial (Python et R, dit par Hubert le 2026-10-28)
Au secondaire et au cégep, j'ai travaillé trois ans comme commis d'épicerie au Metro de Mont-Saint-Hilaire. J'aimerais revenir chez Metro comme analyste, pour aider à décider où ouvrir ou agrandir un magasin. Je n'ai pas encore utilisé MapInfo et je n'ai que des notions de Power BI, mais je fais déjà ce genre d'analyses géographiques en Python et en R.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
