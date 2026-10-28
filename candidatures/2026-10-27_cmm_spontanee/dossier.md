# Communauté métropolitaine de Montréal (CMM)

Vérifié le 2026-10-28 · Facette : public · Concurrent d'Opubliq : non

> Limites de cette vérification : le site cmm.qc.ca n'a pas pu être ouvert directement (domaine bloqué dans la session) ; les faits viennent des résultats de recherche web (titres et extraits de documents CMM indexés). Les pages carrières et organigramme restent à consulter à la main.

## En bref
- Organisme de planification, de coordination et de financement qui regroupe 82 municipalités du Grand Montréal ; conseil de 28 élus municipaux (rapport d'activités 2025, publié en juin 2026 : https://cmm.qc.ca/wp-content/uploads/2026/06/2026-06-25_RA2025_F.pdf).
- Le rapport d'activités 2025 contient une section « Monitorage et géomatique » (même URL). La CMM publie aussi un portail de données ouvertes (https://donnees.cmm.qc.ca/en/organization/cmmadmin) et un Observatoire Grand Montréal (mentionné à l'ordre du jour du 2026-06-11, ci-dessous).
- Bureaux : avenue McGill College, Montréal (selon des offres CMM diffusées sur le RIMQ, p. ex. https://rimq.qc.ca/job_doc/job_doc_487537_6a4b9e6a4bc55.pdf). Taille (nombre d'employés) : introuvable.
- Contexte plus ancien (hors fenêtre de 12 mois) : l'Agora métropolitaine du 2025-05-30 était une « édition spéciale sur le monitorage du Grand Montréal » (https://agora.cmm.qc.ca/wp-content/uploads/2025/06/Rapport-2025-Agora_metropolitaine.pdf).

## Actualités récentes (12 derniers mois)
- 2026-06-25 — Publication du rapport d'activités 2025, avec une section « Monitorage et géomatique » (https://cmm.qc.ca/wp-content/uploads/2026/06/2026-06-25_RA2025_F.pdf).
- 2026-06-11 — Ordre du jour du conseil : contrat infonuagique Microsoft 365, rapport de l'Agora métropolitaine 2026 et note de l'Observatoire Grand Montréal sur le cap des 4,3 millions d'habitants (https://cmm.qc.ca/wp-content/uploads/2026/06/ODJ_CC_20260611_Amende.pdf).
- 2026-06-04 — Mandat octroyé pour la mise à jour du diagnostic économique du Plan métropolitain de développement économique (PMDE) 2022-2031 (https://cmm.qc.ca/wp-content/uploads/2026/06/2026-06-04-_MAJ_PMDE.pdf).
- 2026-04-23 — Conseil : examen des programmes d'immobilisations 2026-2035 des sociétés de transport, dépôt du rapport financier 2025 (procès-verbal non encore approuvé à la date de l'extrait) (https://cmm.qc.ca/wp-content/uploads/bsk-pdf-manager/2026/08/2026-04-23_PV_CC_vf.pdf).
- Révision du PMAD (horizon 2026-2046) : date d'adoption et d'entrée en vigueur introuvables (https://montreal.ca/evenements/soiree-dinformation-sur-les-orientations-du-plan-metropolitain-damenagement-et-de-developpement-112645).

## Pourquoi les contacter
- La direction Monitorage et géomatique a recruté un(e) scientifique de données (DMG2025-01, Python demandé, date limite 2025-02-15) : le besoin d'analyse de données existe dans l'équipe (https://rimq.qc.ca/job_doc/job_doc_441290_67a0c50b0de12.pdf). Hubert a construit pour la Ville de Québec un outil qui regroupe les sondages de la Ville dans un index interrogeable, avec classement des questions par LLM (`exp-vdq-stage`, `proj-vdq-outil-sondages`, tous deux `fort`).
- Le monitorage métropolitain repose sur des données de recensement par petite géographie. Hubert a conçu une API de profils sociodémographiques pour environ 57 000 aires de diffusion du recensement 2021, avec agrégation géographique (`proj-geo-marketing-api`, poids `moyen`, non montrable ; `comp-geospatial` : intermédiaire sans IA, avancé avec IA). À présenter comme un atout secondaire, pas central.
- L'Observatoire et les rapports de la CMM demandent des indicateurs et de la visualisation publiables : préparation, pondération et analyse de données d'enquête pour l'Environics Institute, dont l'analyse du rapport sur les technologies et l'emploi (`exp-environics`, `pub-environics-tech-emploi` : dire « recherche et analyse créditées dans les remerciements », jamais « auteur ») ; `comp-visualisation`.
- Pipelines de données et modélisation de bases (`comp-etl-pipelines`, `comp-modelisation-donnees` ; preuves `exp-clessn`, où il a conceptualisé les pipelines avec un développeur, sans les avoir construits seul).

## Angle recommandé
- Poste visé : analyste ou scientifique de données, direction Monitorage et géomatique (ou Observatoire Grand Montréal).
- Accroche : l'outil d'accès aux données de sondage de la Ville de Québec (`proj-vdq-outil-sondages`) : expérience municipale récente, données publiques, outil repris par l'équipe.
- Risques :
  - Les postes de géomatique de la CMM demandent souvent un diplôme en géomatique ; Hubert n'en a pas. Répondre par la maîtrise des données de recensement et des outils spatiaux (`comp-geospatial`), sans surévaluer le niveau sans IA (intermédiaire).
  - Power BI : ne pas dire qu'il a construit des tableaux de bord Power BI (`exp-vdq-stage`, champ attention) ; `comp-power-bi` = notions.
  - Expérience surtout à Québec : la CMM est un organisme montréalais ; le mandat CIUSSS de l'Est-de-l'Île (`exp-medaillon-ciusss`) montre un ancrage montréalais.

## À qui écrire
| Nom | Titre | Pourquoi lui/elle | Courriel ou LinkedIn | Source |
|---|---|---|---|---|
| Direction Monitorage et géomatique (titulaire introuvable) | Directeur ou directrice | Gestionnaire de l'équipe qui a recruté un scientifique de données | introuvable ; chercher sur LinkedIn « CMM monitorage géomatique » | https://rimq.qc.ca/job_doc/job_doc_441290_67a0c50b0de12.pdf |
| Massimo Iezzoni | Directeur général | Nommé au procès-verbal du 2026-04-23 ; à éviter en premier contact, sauf faute de mieux | introuvable | https://cmm.qc.ca/wp-content/uploads/bsk-pdf-manager/2026/08/2026-04-23_PV_CC_vf.pdf |
| Ressources humaines | — | Adresse de candidature publiée dans l'offre DMG2025-01 (février 2025) | rh@cmm.qc.ca (publiée en 2025, à vérifier) | https://rimq.qc.ca/job_doc/job_doc_441290_67a0c50b0de12.pdf |

- Ordre : trouver d'abord le nom du directeur ou de la directrice Monitorage et géomatique (organigramme du site, LinkedIn), puis RH en dernier recours.

## Offres et carrières
- Page carrières : https://cmm.qc.ca/carrieres/ (non consultée : domaine bloqué ; à vérifier à la main).
- Offres CMM repérées : scientifique de données DMG2025-01 (date limite 2025-02-15, fermée) ; technicien en géomatique pour le bureau de projet de gestion des risques d'inondation (https://rimq.qc.ca/job_doc/job_doc_424759_66c74ac0a7267.pdf, 2024, fermée). Aucune offre ouverte trouvée en octobre 2026.

## Sources
- https://cmm.qc.ca/wp-content/uploads/2026/06/2026-06-25_RA2025_F.pdf
- https://cmm.qc.ca/wp-content/uploads/2026/06/ODJ_CC_20260611_Amende.pdf
- https://cmm.qc.ca/wp-content/uploads/2026/06/2026-06-04-_MAJ_PMDE.pdf
- https://cmm.qc.ca/wp-content/uploads/bsk-pdf-manager/2026/08/2026-04-23_PV_CC_vf.pdf
- https://agora.cmm.qc.ca/wp-content/uploads/2025/06/Rapport-2025-Agora_metropolitaine.pdf
- https://donnees.cmm.qc.ca/en/organization/cmmadmin
- https://rimq.qc.ca/job_doc/job_doc_441290_67a0c50b0de12.pdf
- https://rimq.qc.ca/job_doc/job_doc_424759_66c74ac0a7267.pdf
- https://rimq.qc.ca/job_doc/job_doc_487537_6a4b9e6a4bc55.pdf
- https://montreal.ca/evenements/soiree-dinformation-sur-les-orientations-du-plan-metropolitain-damenagement-et-de-developpement-112645
