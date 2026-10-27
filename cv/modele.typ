// Modèle de CV commun à toutes les facettes : seule la mise en page vit ici.
// Le contenu (bases par facette, versions par candidature) importe ce fichier.
// Une colonne, texte réel (pas d'images ni de tableaux) pour rester lisible par les ATS.

#let accent = rgb("#1f4e79")
#let gris = rgb("#5a5a5a")

#let cv(nom: "", titre: "", coordonnees: (), liens: (), langue: "fr", corps) = {
  set document(title: nom + " — CV", author: nom)
  set page(paper: "us-letter", margin: (x: 1.8cm, y: 1.6cm), numbering: (n, total) => if total > 1 [
    #text(size: 8pt, fill: gris)[#nom — #n / #total]
  ], number-align: right)
  set text(font: ("IBM Plex Sans", "Fira Sans", "Lato"), size: 11pt, lang: langue)
  set par(justify: false, leading: 0.68em, spacing: 0.8em)
  set list(indent: 0.4em, body-indent: 0.5em, spacing: 0.6em, marker: text(fill: accent)[•])
  // Coordonnées en texte brut : les liens cliquables ne survivent ni aux ATS ni à l'impression.

  // En-tête
  text(size: 20pt, weight: "bold")[#nom]
  if titre != "" {
    v(-0.5em)
    text(size: 11.5pt, fill: accent)[#titre]
  }
  v(-0.3em)
  text(size: 9pt, fill: gris)[#(coordonnees + liens).join([ #h(0.3em)·#h(0.3em) ])]
  v(0.4em)

  corps
}

// Titre de section
#let section(titre) = {
  v(0.9em)
  block(below: 0.7em, sticky: true)[
    #text(size: 10.5pt, weight: "bold", fill: accent, tracking: 0.04em)[#upper(titre)]
    #v(-0.6em)
    #line(length: 100%, stroke: 0.5pt + accent)
  ]
}

// Entrée datée : expérience, formation, projet
#let entree(titre: "", org: "", lieu: "", dates: "", puces: none) = {
  block(breakable: false, below: 1.1em)[
    #grid(
      columns: (1fr, auto),
      [*#titre* #if org != "" [— #org]],
      text(fill: gris, size: 9pt)[#dates],
    )
    #if lieu != "" { v(-0.25em); text(fill: gris, size: 9pt)[#lieu] }
    #if puces != none { v(-0.05em); puces }
  ]
}

// Ligne de compétences : « Catégorie : a, b, c »
#let competences(..lignes) = {
  for (cat, items) in lignes.pos() {
    block(below: 0.6em)[*#cat :* #items.join(", ")]
  }
}

// Accroche (2-3 lignes sous l'en-tête)
#let accroche(texte) = block(below: 0.4em, text(size: 10pt)[#texte])

// Lettre de présentation : même en-tête que le CV, 1 page.
#let lettre(nom: "", coordonnees: (), liens: (), langue: "fr", date: "", destinataire: (), objet: "", appel: "Madame, Monsieur,", corps) = {
  set document(title: nom + (if langue == "en" { " — Cover letter" } else { " — Lettre de présentation" }), author: nom)
  set page(paper: "us-letter", margin: (x: 2.2cm, y: 2cm))
  set text(font: ("IBM Plex Sans", "Fira Sans", "Lato"), size: 11pt, lang: langue)
  set par(justify: false, leading: 0.7em, spacing: 1.1em)

  text(size: 20pt, weight: "bold")[#nom]
  v(-0.3em)
  text(size: 9pt, fill: gris)[#(coordonnees + liens).join([ #h(0.3em)·#h(0.3em) ])]
  v(1.2em)

  align(right)[#date]
  v(0.6em)
  if destinataire.len() > 0 { destinataire.join(linebreak()) }
  v(0.8em)
  if objet != "" { if langue == "en" [*Re: #objet*] else [*Objet : #objet*] }
  v(0.6em)
  appel
  v(0.2em)

  corps

  v(1em)
  nom
}

// Trou à combler : rouge et visible, pour qu'aucune lettre ne parte incomplète.
#let trou(texte) = text(fill: red, weight: "bold")[[#texte]]
