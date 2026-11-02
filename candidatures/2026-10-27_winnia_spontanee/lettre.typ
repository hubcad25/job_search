// Lettre Winnia, candidature spontanée à JM Arseneau (envoi par courriel). Partie de cv/lettre_modele.typ, puis sortie du gabarit à la demande d'Hubert (2026-11-02) : ouverture sur le balado, ton moins formel.
// Faits : profil/ (ids en commentaire). Forme : guides/redaction.md. Ton : positionnement/.
// Fil unique (Hubert, 2026-11-02 : « pas trop éparpillé ») : agents IA en production → revenus des équipes québécoises. Pas de liste de projets sport.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 2 novembre 2026],
  // dossier.md : titre « PDG et fondateur » (AQT) ; « Co-Founder » (balado Profluence)
  // destinataire retiré : le nom est dans l appel et la lettre part en pièce jointe d un courriel (place sur 1 page)
  objet: [Candidature spontanée en science des données],
  appel: [Bonjour Monsieur Arseneau,],
)

// 1. Accroche (Hubert, 2026-11-02) : JM passait chaque semaine à Compte Complet (confirmé) ; à Entre la poire et le fromage (entrelapoireetlefromage.ca), JM a décrit Winnia et son fonctionnement interne : « exactement le genre de compagnie » où Hubert veut s'implanter ; survie des équipes québécoises.
J'ai suivi vos passages à _Compte Complet_ chaque semaine cet été, puis je vous ai entendu expliquer dans le balado _Entre la poire et le fromage_ ce que fait Winnia et comment votre équipe travaille. J'ai tout de suite reconnu le genre d'entreprise où j'ai envie de m'implanter. Dans un marché comme le nôtre, aider nos équipes à mieux vivre de leurs partisans me motive. Je vous écris donc pour vous proposer ma candidature en science des données, en IA et en développement.

// 2. exp-clessn (2021-2024), exp-environics, exp-vdq-stage ; exp-opubliq (cofondateur, seul développeur, depuis 2024, en veille) ; positionnement/opubliq.md (second plan, pas de revenu stable, plusieurs années) ; Hubert 2026-11-02 : chercher quelque chose de plus stable et établi
Je travaille en analyse de données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et en stage à la Ville de Québec en 2026. Depuis 2024, je bâtis aussi ma propre entreprise, Opubliq, où je suis le seul développeur. Je la mets maintenant au second plan parce qu'elle ne me donne pas un revenu stable, et je cherche un emploi à temps plein dans une entreprise plus établie où m'investir pendant plusieurs années.

// 3. Hubert 2026-11-02 : montrer qu'il a fait ce genre de projet dans son domaine ; pause = faute de besoin, pas à cause du produit (exp-opubliq : validation de marché, modèle récurrent difficile) ; proj-atlas-opubliq (agent analytique, rapport chiffré qui cite ses sources ; en pause, aucun client payant → prototype) ; positionnement/ia.md (l'agent calcule sur les données, ne les lit pas)
J'ai moi-même bâti ce genre d'agent dans mon domaine. Chez Opubliq, j'ai développé l'Atlas, une plateforme qui réunit des sondages, le recensement et le financement politique. Son agent répond aux questions en langage naturel et rédige un court rapport chiffré qui cite ses sources. L'Atlas fonctionne, mais je l'ai mis en pause parce que les clients visés n'en avaient pas assez besoin pour le payer.

// 4. Écart : billetterie, commandites (non). Fan : proj-pool-de-hockey, proj-pool-lp, proj-nhl-matchups, proj-mlb-analyses (dit par Hubert le 2026-11-02). Domaines variés : proj-datagotchi, exp-mitacs-musee, exp-vdq-stage.
Je n'ai jamais travaillé avec des données de billetterie ou de commandites. Je suis par contre un grand amateur de hockey et de baseball, et je fais des analyses de données sur ces sports dans mes temps libres, comme les projections de mes pools de hockey. J'aime beaucoup décortiquer un nouveau problème de données. Je l'ai fait avec des sujets très différents, du vote aux visiteurs d'un musée et aux services d'une ville.

// 5. exp-opubliq (seul développeur, entretiens clients ; positionnement/opubliq.md : pas « startup », pas « échec ») ; comp-dev-ia-pm ; proj-medaillon-plateforme (seul produit en production)
Bâtir une entreprise m'a appris à tout faire dans une très petite équipe, des entretiens avec les clients jusqu'à la mise en ligne. Dans mon propre travail, je me sers de Claude Code pour combler mes points plus faibles, surtout en développement logiciel. Je découpe moi-même le travail et je relis et teste tout ce qu'il produit. C'est ce qui m'a permis de livrer seul la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

// Spontanée à un fondateur, par courriel : ton moins formel (Hubert, 2026-11-02).
J'aimerais me joindre à votre équipe pour bâtir vos agents avec vous, et je serais heureux d'en discuter.

Au plaisir,
