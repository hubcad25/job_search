// GABARIT OBLIGATOIRE de lettre. Pour une candidature : copier dans candidatures/<dossier>/lettre.typ, puis remplacer chaque #trou.
// Ce gabarit EST la lettre exo BI (2026-11-02), jugée la meilleure par Hubert. On garde ses 4 paragraphes, leur ordre, leur fonction et leurs phrases-cadres.
// On ne réinvente pas la structure. On ne retire pas une phrase-cadre sans l'accord d'Hubert.
// Faits : profil/ (ids en commentaire avant chaque paragraphe). Forme : guides/redaction.md. Ton : positionnement/.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le #trou[date]],
  // destinataire : seulement si on connaît la personne ; sinon retirer la ligne
  destinataire: (trou[Prénom Nom], trou[Titre], trou[Organisation]),
  objet: [Candidature au poste de #trou[titre exact de l'offre]],
  appel: [Madame, Monsieur,],
)

// 1. QUI JE SUIS (2 phrases, pas plus). Phrase 1 fixe. Phrase 2 : ce que je bâtis, avec les mots de l'offre.
//    Exo : « Je bâtis surtout des modèles prédictifs et les pipelines qui alimentent les tableaux de bord des gestionnaires. »
//    Interdit : résumer l'offre, une actualité, « je cherche un poste permanent » (sauf si Hubert le veut).
Je travaille en analyse de données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. #trou[Je bâtis surtout … (spécialité liée au besoin principal de l'offre).]

// 2. LE BESOIN PRINCIPAL DE L'OFFRE, PUIS LA PREUVE. La 1re phrase nomme la tâche centrale de l'offre et la relie à un contexte vécu.
//    Exo : « Le travail de prévision que décrit votre offre ressemble à celui que j'ai fait en campagne électorale, avec des modèles qu'il fallait garder à jour pendant qu'on s'en servait. »
//    Puis 2 ou 3 preuves du profil qui démontrent CE besoin (pas le CV en liste). Une preuve qui ne démontre pas le besoin sort, même si elle est bonne.
#trou[Le travail de … que décrit votre offre ressemble à celui que j'ai fait …] #trou[Preuve 1, concrète et chiffrée.] #trou[Preuve 2.]

// 3. ÉCARTS REGROUPÉS, PUIS FIN POSITIVE. Un seul paragraphe pour tous les écarts.
//    Écart d'outil = même travail, autre outil. Exo : « Je bâtis des tableaux de bord depuis plusieurs années, mais en R Shiny, en Quarto, en Streamlit et en React plutôt qu'en Power BI, que je connais peu. »
//    Écart de domaine : le dire franchement (« Je n'ai jamais … »). Intérêt pour le domaine seulement s'il vient d'Hubert (sinon rien).
//    Finir TOUJOURS sur la phrase-cadre de personnalité ci-dessous, jamais sur un manque. Interdit : « passionné », « mêmes méthodes ».
#trou[Écart d'outil : même travail, autre outil.] #trou[Écart de domaine : Je n'ai jamais …] J'aime beaucoup décortiquer un nouveau problème de données. Je l'ai fait avec des sujets très différents, du vote aux visiteurs d'un musée et aux services d'une ville.

// 4. IA. Si l'offre demande une capacité en IA (conseiller, livrer), ouvrir par une situation qui la prouve (exo : mandat flou à la VdQ, consultation, solution acceptée par les TI).
//    Puis les phrases-cadres ci-dessous, telles quelles. Jamais d'exemple pointu (« mes requêtes SQL »). Retirer tout le paragraphe seulement si l'offre est peu technique.
#trou[Situation qui prouve la capacité en IA demandée par l'offre, ou supprimer.] Dans mon propre travail, je me sers de Claude Code pour combler mes points plus faibles, surtout en développement logiciel. Je ne lui délègue pas ma réflexion. Je découpe moi-même le travail et je relis et teste tout ce qu'il produit. C'est ce qui m'a permis de livrer seul la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
