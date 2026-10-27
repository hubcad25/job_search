// Aperçu du modèle avec du contenu factice. Pas un CV à envoyer.
#import "modele.typ": *

#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Titre adapté à l'offre",
  coordonnees: ("Montréal", "(438) 825-3958", link("mailto:hubertcadieux@gmail.com")[hubertcadieux\@gmail.com]),
  liens: (link("https://github.com/hubcad25")[github.com/hubcad25], link("https://hubcad25.github.io/portfolio/")[Portfolio]),
)

#accroche[Deux ou trois lignes d'accroche adaptées à l'offre. Texte factice pour juger la mise en page, la typographie et l'espacement.]

#section[Expérience]

#entree(titre: "Titre du poste", org: "Organisation", lieu: "Ville", dates: "2025 – 2026", puces: [
  - Réalisation factice avec un résultat mesurable.
  - Deuxième réalisation factice, un peu plus longue pour voir le retour à la ligne dans une puce de CV.
  - Troisième réalisation factice.
])

#entree(titre: "Autre poste", org: "Autre organisation", dates: "2022 – 2025", puces: [
  - Réalisation factice.
  - Réalisation factice.
])

#section[Projets choisis]

#entree(titre: "Nom du projet", org: "Client ou contexte", dates: "2026", puces: [
  - Une ligne de description factice.
])

#section[Formation]

#entree(titre: "Diplôme", org: "Université", dates: "Année")

#section[Compétences]

#competences(
  ("Langages", ("Langage A", "Langage B", "Langage C")),
  ("Outils", ("Outil A", "Outil B")),
  ("Langues", ("Français (langue maternelle)", "Anglais")),
)
