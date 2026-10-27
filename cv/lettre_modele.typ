// Modèle de lettre. Pour une candidature : copier dans candidatures/<dossier>/lettre.typ.
// Forme : guides/redaction.md (section Lettre). Faits : profil/ (ids en commentaire). Ton : positionnement/.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le #trou[date]],
  // destinataire : seulement si on connaît la personne ; retirer pour un PDF déposé dans un formulaire
  destinataire: (trou[Prénom Nom], trou[Titre], trou[Organisation]),
  objet: [Candidature au poste de #trou[titre exact de l'offre]],
  appel: [#trou[Madame / Monsieur Nom],],
)

// Structure : guides/redaction.md (exemple : lettre Teamworks, Drive coverletter-teamworks).
// 1. Qui je suis et ce que j'apporte : années d'expérience, spécialité. Ne jamais ouvrir en résumant l'offre.
#trou[Qui je suis, depuis quand, ce que j'apporte au poste : 2 phrases.]

// 2. Preuves : 2 ou 3 réalisations chiffrées du profil liées aux tâches de l'offre (citer les ids en commentaire).
#trou[Réalisation 1 liée à une tâche de l'offre.] #trou[Réalisation 2.] #trou[Réalisation 3, si utile.]

// 3. Pourquoi ce poste (offre.md), puis écart assumé en 1 ou 2 phrases. Fait sur l'organisation seulement s'il touche le poste.
#trou[Pourquoi ce poste me ressemble.] #trou[Exigence où mon niveau est plus bas, et ce qui le compense.]

// 4. IA en dernier, si l'offre s'y prête (positionnement/ia.md, « Le message en une phrase »).
//    Opubliq si pertinent (positionnement/opubliq.md). Ne jamais dire « échec », « pivot », « en attendant ».
#trou[Phrase sur l'IA si l'offre s'y prête, sinon supprimer.] #trou[Phrase sur Opubliq si pertinent, sinon supprimer.]

// Fin : disponibilité pour une entrevue, puis salutation. Pas de formule ampoulée.
#trou[Disponibilité pour une entrevue.]

#trou[Salutation.]
