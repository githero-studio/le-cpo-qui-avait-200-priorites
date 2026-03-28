#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# Init repo if needed
if [ ! -d ".git" ]; then
    git init
    git checkout -b main
fi

git add -A
git commit -m "init: book metadata"

# ==============================================================================
# MAIN : Le tronc principal — La descente aux enfers d'une CPO
# ==============================================================================

git commit --allow-empty -m "Premier jour : bienvenue en enfer

Tu pousses la porte du bureau ce lundi matin avec ton mug Spotify et ta conviction que tu vas changer le monde. Marc, le CEO, t'accueille avec un sourire de commercial Salesforce et te dit : 'On est tellement contents de t'avoir, on a TELLEMENT besoin de structure.' Tu hoches la tête. Tu ne sais pas encore que 'structure' signifie ici 'quelqu'un à blâmer quand rien n'avance'.

Ton bureau est un placard reconverti. Il y a un Post-it collé sur l'écran : 'Mot de passe Jira : admin123'. Tu te connectes. 1 400 tickets te fixent du regard. Le plus récent date de ce matin : 'URGENT : bouton pas assez bleu'. Le plus ancien date de 2021. Il est assigné à quelqu'un qui a quitté la boîte depuis deux ans. Tu refermes Jira. Tu rouvres Jira. Les tickets sont toujours là."

git commit --allow-empty -m "L'héritage : un Google Sheet de 47 onglets

Tu demandes à voir la roadmap. Thomas, le CTO, t'envoie un lien Google Sheet avec un emoji pouce. Tu ouvres le fichier. 47 onglets. Le premier s'appelle 'Roadmap V2 (VRAIE)'. Le deuxième s'appelle 'Roadmap V3 (VRAIE FINALE)'. Le troisième s'appelle 'Roadmap V3 - copie de Marc'. Aucun n'a été modifié depuis 8 mois. L'onglet 47 s'appelle 'NE PAS TOUCHER' et contient les salaires de tout le monde.

Tu cherches un PM. Il n'y en a pas. Le 'product management' était fait par Julien, le Head of Sales, qui décidait des priorités en fonction de ce que les clients criaient le plus fort. Quand tu lui demandes sa méthode de priorisation, il te répond : 'Je sens le marché.' Tu sens surtout que tu vas avoir besoin de beaucoup de café."

DIVERGE_AUDIT=$(git rev-parse HEAD)

git commit --allow-empty -m "L'audit du backlog : le verdict tombe

Tu viens de finir l'audit du backlog. 1 400 tickets. 847 non touchés depuis plus d'un an. 312 sans description. 289 qui sont les deux à la fois. L'un d'eux s'appelle 'FAIRE LE TRUC' et est tagué P0. Kevin, le dev senior, t'a dit 'c'est pas possible' 14 fois en une journée. Fatima, la designer UX, t'a montré les 47 nuances de bleu incohérentes dans l'interface. Le constat est sans appel : le produit est un patchwork tenu par du scotch.

Tu es devant ton écran, lundi soir, 20h. Le bureau est vide. Tu as le diagnostic complet. Et maintenant ? Tu pourrais commencer par le visible — nettoyer l'interface, mettre de l'ordre dans le chaos visuel. Fatima trépigne, elle a déjà un deck de 120 slides pour un design system. Ou tu pourrais aller chercher la vérité chez les utilisateurs — comprendre qui sont ces gens derrière les tickets, créer des personas, cartographier les vrais besoins. Le backlog est un symptôme. Mais de quoi exactement ?"

DIVERGE_VERDICT=$(git rev-parse HEAD)

git commit --allow-empty -m "La tentative de priorisation : le mur des ego

Tu as essayé RICE. Tu as essayé MoSCoW. 2 heures de réunion, 12 tickets priorisés sur 1 400. Julien a menacé de 'remonter au board' trois fois. Marc a proposé de 'juste faire de l'IA'. Kevin a dit 'c'est pas possible' sept fois. Sarah, ta PM junior, prend des notes frénétiquement sans rien comprendre. Tu t'es rabattue sur MoSCoW. Tout le monde a tout mis en Must. Tu es allée pleurer dans les toilettes. Pas longtemps. T'as pas le temps.

Tu es de retour devant ton écran. L'atelier a échoué, mais il a révélé le vrai problème : il n'y a pas de vision commune. Chacun priorise selon son propre agenda. Marc veut du rêve pour les investisseurs. Julien veut closer ses deals. Thomas veut de la dette technique. Toi, tu voudrais juste que quelqu'un écoute les utilisateurs. Le board meeting est dans 3 semaines et ils attendent une roadmap. Tu as 1 400 tickets, 0 consensus, et 3 semaines. Tu pourrais construire la roadmap que tout le monde veut entendre, ou celle que personne ne veut voir..."

DIVERGE_PRIORISATION=$(git rev-parse HEAD)

git commit --allow-empty -m "Le CEO qui revient de conférence : la lubie du mois

Marc revient du Web Summit. Transformé. 'On doit pivoter vers le composable.' Trois semaines plus tard, retour de VivaTech : 'On doit devenir une plateforme.' Ton produit est un SaaS B2B de gestion de notes de frais. Marc te répond : 'C'est justement ça la disruption.' Et maintenant, dimanche 23h47, il t'envoie un article sur le Product-Led Growth avec le sujet 'LIRE ABSOLUMENT - On doit faire ça'.

Tu as devant toi un CEO qui change de cap tous les mois. Mais cette fois, il est sérieux. Il parle de réorganiser les équipes, de couper le budget commercial, de tout miser sur le self-serve. Julien et ses 8 commerciaux te regardent comme si tu portais la faux. Le problème : le PLG, c'est pas idiot. Certaines parties du produit pourraient en bénéficier. Mais tout basculer d'un coup, sur un SaaS enterprise à 50K le contrat annuel ? C'est le genre de pari qui fait ou défait une boîte. Marc attend ta recommandation demain matin. Julien aussi."

DIVERGE_PLG=$(git rev-parse HEAD)

git commit --allow-empty -m "Les commerciaux : 14 features vendues qui n'existent pas

Julien a encore vendu une feature fantôme. 'Analytics Prédictif IA', 200K annuel, livraison sous 3 mois. Tu découvres que c'est pas un cas isolé : il y a 14 features 'vendues' qui n'existent pas. Les commerciaux ont un document interne qui s'appelle 'Ce qu'on peut promettre' et qui contient littéralement tout. Quand tu demandes à Julien de ne plus vendre sans validation produit, il répond : 'Si je fais ça, je vends plus rien.' Il n'a pas tort, et c'est ça le problème.

Tu es coincée. D'un côté, 14 promesses contractuelles que l'équipe ne peut pas tenir. De l'autre, des clients qui attendent, des commerciaux qui continuent de promettre, et un backlog qui gonfle de features fantômes chaque semaine. La pression du delivery est énorme : Julien te forward les emails des clients qui s'impatientent, Marc te rappelle que le CA dépend de ces deals. Tu pourrais céder — mettre toute l'équipe en mode livraison, coder sans réfléchir, honorer les promesses. Ou tu pourrais aller au front — affronter Julien, affronter les clients, affronter Marc. Mais le téléphone sonne déjà : GrosseCorp, 30% du CA, veut sa feature custom pour le mois prochain. Ou c'est la porte."

DIVERGE_FEATURES_VENDUES=$(git rev-parse HEAD)

git commit --allow-empty -m "Recrutement de PMs : la solitude du CPO

Tu as le budget pour recruter deux PMs. 340 candidatures. 280 sont des chefs de projet reconvertis pendant le COVID. 40 sont des vrais PMs qui raccrochent quand tu décris la situation. Tu recrutes Sarah (junior mais motivée) et Maxime (qui prétend avoir fait '3 ans de product chez Google' — c'était 6 mois de stage APM en 2019). Maxime demande où est le 'Product Ops team', voit le Google Sheet de 47 onglets, et devient tout pâle. Il démissionnera dans 7 semaines.

Te voilà avec Sarah, brillante mais terrorisée, comme seule alliée. L'équipe te regarde. Les devs veulent une direction. Les designers veulent de la cohérence. Marc veut des résultats. Et toi, tu te demandes comment structurer tout ça sans personne d'expérimenté à tes côtés. Sarah te propose d'introduire des OKRs — elle a lu 'Measure What Matters' et elle est convaincue que c'est la solution à l'alignement. Les OKRs pourraient donner un cadre. Ou bien ils pourraient ajouter une couche de bureaucratie sur un chaos qui n'a pas besoin d'être mesuré — juste résolu."

DIVERGE_SOLITUDE=$(git rev-parse HEAD)

git commit --allow-empty -m "Le all-hands qui dérape : la révolte des devs

Tu organises un all-hands produit. 45 minutes prévues. 12 minutes avant que Kevin lève la main : 'Ça fait 2 mois qu'on est là et on n'a toujours pas de stratégie claire. On code quoi exactement ?' Les vannes s'ouvrent. Un dev junior : 'On nous dit que tout est urgent, donc rien n'est urgent.' Fatima : 'Je designe des maquettes que personne ne regarde.' Kevin coupe Marc : 'On est dans une phase de n'importe quoi, Marc.'

Le silence après la révolte est nucléaire. Tout le monde pense la même chose en même temps. Pour la première fois, le malaise est partagé, visible, collectif. Marc est sous le choc. Thomas fixe la table. Julien est sorti de la salle. Tu as deux options et aucune n'est confortable."

DIVERGE_REVOLTE=$(git rev-parse HEAD)

git commit --allow-empty -m "Discovery vs Delivery : le schisme fondamental

Tu essaies d'introduire la discovery. Thomas te regarde comme si tu parlais une langue étrangère. 'On fait déjà du discovery — Julien nous dit ce que veulent les clients et on le code.' Tu parles d'interviews utilisateurs, de jobs-to-be-done, d'opportunity solution trees. Thomas te coupe : 'On n'a pas le temps, on a 14 features vendues à livrer.' Tu proposes 20% en discovery. Thomas contre-propose 5%. Julien propose 0%. Marc propose un hackathon.

Le conflit est posé et il est existentiel. D'un côté, tu veux comprendre les problèmes avant de coder des solutions. De l'autre, toute l'organisation veut coder des solutions sans comprendre les problèmes. Thomas t'a montré les estimations : 14 features vendues, c'est 18 mois de dev avec l'équipe actuelle. Les clients attendent. Les contrats sont signés. Et toi, tu voudrais 'prendre le temps de comprendre'. La tension entre répondre à l'urgence du delivery et investir dans la compréhension des vrais besoins est à son maximum. Quelque chose doit céder."

DIVERGE_SCHISME=$(git rev-parse HEAD)

git commit --allow-empty -m "La sprint review fantôme : personne ne regarde

Jeudi, 17h. Sprint review. Tu as préparé la démo. L'équipe est là. Tu attends les stakeholders. 17h05. 17h10. 17h15. Julien : 'Dsl, call client.' Marc : 'Board meeting, faites sans moi.' Tu fais la démo devant 6 personnes dont 4 sont les devs qui ont codé ce qu'on démontre. Kevin dit : 'Ça marche.' C'est le plus beau compliment qu'il ait jamais fait.

Sprint review suivante. Marc vient. Regarde son téléphone 20 minutes. Demande : 'Et l'IA, on en est où ?' Tu meurs un peu à l'intérieur. Le produit avance mais personne ne regarde. Les décisions se prennent sans données, sans feedback, sans conviction. Tu te demandes si le problème est le process ou les gens. Tu as lu que Booking.com fait 1 000 A/B tests par an pour décider. Marc te reparle de devenir 'data-driven'. Sauf que tu as 800 utilisateurs, pas 200 millions. La tentation de tout mesurer pour ne plus avoir à convaincre est forte. Mais est-ce que les données vont résoudre un problème de culture ?"

git commit --allow-empty -m "Le NPS chute, le churn monte : les chiffres qui font mal

Le rapport trimestriel tombe. NPS : -12. Oui, négatif. Le churn a augmenté de 40% en 6 mois. Les tickets support ont triplé. Les utilisateurs se plaignent de trois choses : l'interface est un labyrinthe, les bugs ne sont jamais corrigés, et le support met 72h à répondre. Aucune de ces plaintes n'apparaît dans la roadmap des 14 features vendues.

Tu présentes les chiffres en comité de direction. Julien dit que le churn est 'normal dans le secteur'. Marc dit qu'il faut 'plus de features pour retenir les clients'. Thomas dit qu'il faut 'réécrire le front-end'. Toi, tu dis qu'il faut arrêter d'ajouter des features et corriger ce qui existe. Tout le monde te regarde comme si tu avais proposé de sacrifier un stagiaire. Kevin, en passant dans le couloir, murmure : 'Elle a raison.' C'est la chose la plus gentille qu'il t'ait jamais dite."

git commit --allow-empty -m "La roadmap du board : fiction vs réalité

Le board meeting approche. Marc te demande de préparer 'la roadmap'. Tu prépares la vraie : bugs, dette technique, UX, 3 features sensées. Marc fait la grimace. 'C'est pas assez sexy. Les investisseurs veulent du rêve.' Il te demande d'ajouter l'IA, la blockchain, et 'un truc avec de la data'. Tu te retrouves à maintenir deux roadmaps : la vraie (Google Doc que personne ne lit) et la fausse (PowerPoint gradient, flèches convergentes vers 'VISION 2027'). Le board adore. Un investisseur : 'Enfin une vraie vision produit !'

Tu souris. Tu meurs un peu à l'intérieur. Fatima te regarde depuis le fond de la salle. Elle aussi sourit. Elle aussi meurt un peu."

DIVERGE_SPRINT_REVIEW=$(git rev-parse HEAD)

git commit --allow-empty -m "Le concurrent sort LA feature : panique générale

Slack explose un mardi matin. Le concurrent principal vient de sortir l'intégration comptable automatique — exactement ce que vos clients réclament depuis 2 ans. Julien t'envoie 47 messages en 20 minutes. Marc convoque une réunion d'urgence. Thomas dit : 'Je l'avais dit.' Kevin dit : 'C'est pas possible.'

Marc veut copier la feature 'en 2 semaines'. Thomas estime 6 mois. Julien dit que 3 clients ont déjà demandé une démo du concurrent. Tu analyses : le concurrent a sorti la feature, mais leurs reviews sont catastrophiques — 2.1 étoiles, 'Bugué', 'Inutilisable'. Tu proposes de prendre le temps de faire mieux. Mais la panique est plus forte que la raison. Marc tape du poing. Julien brandit les chiffres de churn. Thomas a déjà ouvert un IDE. Tout le monde veut foncer. Toi, tu voudrais réfléchir. Mais réfléchir, dans cette boîte, c'est un luxe que personne ne veut se payer."

DIVERGE_CONCURRENT=$(git rev-parse HEAD)

git commit --allow-empty -m "La crise de foi : le point de rupture

Trois mois dans le poste. Tu ne dors plus. Tu doutes de tout. De ta stratégie. De tes frameworks. De ta capacité à changer quoi que ce soit. Tu as lu tous les livres — Inspired, Empowered, Continuous Discovery Habits, Shape Up. La théorie ne dit pas quoi faire quand ton CEO change d'avis tous les mois, que tes commerciaux vendent du vent, et que ton backlog est un cimetière de bonnes intentions.

Un café avec Fatima. Elle te dit : 'Tu sais ce qui manque ici ? Pas des frameworks. Du courage.' Elle a raison. Fatima a toujours raison. C'est pour ça que personne ne l'écoute. Tu es au carrefour. Devant toi, deux chemins. Le premier : tout reprendre à zéro. Dire la vérité. Prioriser pour de vrai. Dire non à Marc, à Julien, au board, aux VIPs. Imposer le focus par la force de conviction. Le deuxième : admettre que cette bataille n'est pas gagnable. Que l'organisation te consume plus vite que tu ne la transformes. Que ton corps lâche — 4 kilos perdus, insomnies, la gorge nouée en permanence. Que continuer, c'est peut-être se détruire. Les deux chemins sont légitimes. Aucun n'est facile."

git commit --allow-empty -m "La off-site produit : 2 jours, 0 décision

Marc a eu une idée : une off-site de 2 jours dans un château en Sologne. 'Pour prendre de la hauteur.' Tu te retrouves avec Marc, Thomas, Julien, Sarah, Fatima et Kevin (qui a essayé de se porter malade) dans une salle sans WiFi. Kevin est en état de choc.

Jour 1 : brainstorming. Tout le monde parle en même temps. Marc dessine des cercles au feutre rouge. Julien fait des listes de clients. Thomas fait des diagrammes d'architecture sur des serviettes. Fatima dessine l'interface du futur. Kevin dessine un bonhomme pendu. Jour 2 : synthèse. 47 Post-its, 12 pages de paperboard, 0 décision concrète. Dans le train du retour, Sarah te demande : 'C'est toujours comme ça les off-sites ?' Tu lui réponds : 'Oui, mais d'habitude il y a du WiFi.'"

DIVERGE_RUPTURE=$(git rev-parse HEAD)

git commit --allow-empty -m "Le grand ménage : 1 400 tickets deviennent 47

Tu prends la décision la plus terrifiante de ta carrière : tu fermes 1 353 tickets d'un coup. Tu gardes 47 tickets — les 47 qui correspondent à des vrais problèmes utilisateurs documentés. Le Slack explose. 'Où est mon ticket ?' 'Qui a fermé le ticket 4832 ?' 'C'est un SCANDALE.'

Tu tiens bon. Tu publies un post interne de 2 000 mots. Certains comprennent. Beaucoup râlent. Mais pour la première fois, le backlog ressemble à quelque chose de gérable. Et dans les jours qui suivent, un truc inattendu se produit : un segment de clients que personne ne regardait — les cabinets comptables de taille moyenne — commence à exploser en adoption. +200% en 3 mois. Sans marketing. Sans sales. Par bouche-à-oreille. Comme si le nettoyage avait révélé quelque chose. Un signal dans le bruit. Le début d'un product-market fit que personne n'avait cherché. La question : est-ce un mirage ou une vraie opportunité ?"

DIVERGE_MENAGE=$(git rev-parse HEAD)

git commit --allow-empty -m "La lumière au bout du backlog

Quelque chose change. Lentement. Imperceptiblement. Avec 47 tickets au lieu de 1 400, l'équipe sait enfin sur quoi bosser. Les devs livrent plus vite parce qu'ils comprennent le contexte. Sarah commence à faire des interviews utilisateurs (elle est douée, en fait). Fatima redesigne les 3 parcours les plus utilisés. Même Kevin dit 'c'est faisable' sur un ticket. Tu manques de tomber de ta chaise.

Le NPS remonte. Doucement. De -12 à +3. C'est pas Notion, mais c'est positif. Le churn se stabilise. Un client envoie un email pour dire que 'l'app s'améliore'. Julien te forward l'email avec un commentaire : 'Bien joué.' Venant de lui, c'est presque un câlin. Tu sais que rien n'est gagné. Que Marc va revenir d'une conférence avec une nouvelle lubie. Que le prochain client VIP va exiger l'impossible. Mais aujourd'hui, tu respires. Et dans cette boîte, respirer, c'est déjà une victoire."

# Les DIVERGE_* sont capturés inline dans le script ci-dessus

# ==============================================================================
# BRANCHE 1 : feature/roadmap-fantasy
# Diverge du chapitre 4 (après la tentative de priorisation)
# Le CPO cède à la pression du board et construit la roadmap de rêve
# ==============================================================================

git checkout -b feature/roadmap-fantasy "$DIVERGE_PRIORISATION"

git commit --allow-empty -m "La roadmap fantasy — Le PowerPoint de tous les mensonges

Puisque personne ne veut prioriser, tu décides de faire plaisir à tout le monde. Tu ouvres PowerPoint (oui, PowerPoint, pas Notion, pas Miro — PowerPoint, parce que le board ne comprend que PowerPoint). Tu crées la roadmap de rêve : 47 features en 6 mois. Intégration IA, refonte UX, marketplace, API publique, mobile natif, et 'expérience conversationnelle'. Tu mets des couleurs vives et des émojis fusée.

Thomas regarde ta roadmap. Il compte les features. Il compte les devs. Il recompte. 47 features. 3 devs seniors, 2 juniors, un stagiaire. Il te fait un rapide calcul sur un coin de nappe : 'À ce rythme, on finit en 2034.' Tu lui dis que c'est une roadmap directionnelle. Il te répond que c'est de la science-fiction directionnelle."

git commit --allow-empty -m "La roadmap fantasy — Le board adore

Tu présentes la roadmap au board. Ils adorent. L'investisseur principal dit : 'Enfin du VISION.' Il prononce 'vision' avec une majuscule audible. Marc rayonne. Julien prend des notes pour les prochains appels clients. Thomas fixe le plafond. Tu as mis un timeline avec des jalons trimestriels. Q1 : 'Foundation'. Q2 : 'Expansion'. Q3 : 'Domination'. Q4 : 'IPO-ready'. Tu as honte, mais le board applaudit.

Problème : maintenant, tout le monde croit que c'est vrai. Julien a déjà vendu 'l'expérience conversationnelle' à trois clients. Marc a tweeté un teaser de la marketplace. Un journaliste tech a repris le tweet. Tu reçois des demandes de partenariat pour l'API publique. L'API publique qui est, pour le moment, un rectangle bleu dans un PowerPoint."

git commit --allow-empty -m "La roadmap fantasy — Le mur du réel

Semaine 6. Aucune feature livrée. Le board demande un point d'avancement. Tu prépares un slide intitulé 'Recalibrage stratégique' (traduction : on a rien fait). Tu inventes le concept de 'pre-delivery validation phase' pour justifier le retard. Marc hoche la tête savamment. Thomas a développé un ulcère.

Julien perd son premier client à cause de la feature conversationnelle promise. Le client a vu le tweet de Marc et pensait que c'était sorti. C'est un rectangle bleu dans un PowerPoint. Le client n'est pas content. Tu apprends une leçon fondamentale du product management : une roadmap n'est pas un engagement, sauf quand elle l'est, c'est-à-dire toujours."

git commit --allow-empty -m "La roadmap fantasy — Le retour à la réalité

Tu convoques une réunion de crise. Tu projettes la roadmap fantasy. Tu projettes la réalité. Le delta est abyssal. Tu annonces que vous allez passer de 47 features à 5. Julien quitte la salle. Marc te demande de 'garder au moins l'IA'. Thomas respire pour la première fois en 6 semaines.

Tu apprends que les roadmaps ne sont pas des listes de courses. Qu'une roadmap honnête vaut mieux qu'une roadmap spectaculaire. Que 5 features livrées valent mieux que 47 features promises. Tu détruis le PowerPoint. Tu crées un board Notion avec 5 colonnes : Now, Next, Later, Never, Graveyard. Le 'Never' contient 42 features. Le 'Graveyard' contient ta fierté."

git commit --allow-empty -m "La roadmap fantasy — Le cimetière des PowerPoints

Trois mois plus tard, un nouveau membre de l'équipe tombe sur le dossier partagé 'Roadmaps'. Il y a 23 fichiers PowerPoint. Roadmap_V1.pptx. Roadmap_V2_FINALE.pptx. Roadmap_V2_FINALE_VRAIE.pptx. Roadmap_board_Q3_marc_modifs.pptx. Chaque fichier est un fossile d'un moment où quelqu'un a cru pouvoir prédire l'avenir avec des rectangles colorés et des flèches.

Tu gardes le dossier. Tu l'appelles 'Le Musée'. Quand un nouveau PM est recruté, tu lui fais visiter le Musée. 'Regarde', tu dis. '23 tentatives de prédire le futur. 23 échecs. La seule roadmap qui a marché, c'est celle qui tenait sur un Post-it : faire 3 trucs bien, les livrer, recommencer.' Le nouveau PM hoche la tête. Dans 6 mois, il créera un PowerPoint de 40 slides. Le cycle continue."

git checkout main

# ==============================================================================
# BRANCHE 2 : feature/design-system
# Diverge du chapitre 3 (le verdict de l'audit — chaos visuel vs personas)
# Le CPO choisit de s'attaquer au chaos visible avec Fatima
# ==============================================================================

git checkout -b feature/design-system "$DIVERGE_VERDICT"

git commit --allow-empty -m "Le design system pharaonique — La vision de Fatima

Fatima en a marre. Marre des inconsistances. Marre des 47 nuances de bleu dans l'interface. Marre des boutons qui changent de taille selon les pages. Elle vient te voir avec un deck de 120 slides intitulé 'Towards a Unified Design Language'. C'est magnifique. C'est ambitieux. C'est complètement déconnecté de la réalité.

Tu la soutiens parce que c'est la bonne chose à faire. Un design system, c'est fondamental. Le problème : Fatima veut TOUT refaire. Chaque composant. Chaque couleur. Chaque micro-interaction. Elle veut des design tokens, du theming dynamique, du dark mode, de l'accessibilité AAA, et des animations physiques réalistes sur les dropdowns. Pour un SaaS de notes de frais. Kevin regarde les specs et dit : 'C'est pas possible.' Pour une fois, il n'a pas entièrement tort."

git commit --allow-empty -m "Le design system pharaonique — Le gouffre temporel

Mois 2. Le design system avance. Lentement. Fatima a créé 340 composants dans Figma. Les devs en ont implémenté 12. L'écart se creuse chaque jour. Pendant ce temps, les features n'avancent pas parce que 'on attend le design system'. C'est devenu l'excuse universelle. Un bug en prod ? 'On le corrigera avec le design system.' Un client qui râle ? 'Ce sera mieux avec le design system.'

Thomas commence à calculer le coût d'opportunité. 3 devs mobilisés depuis 2 mois sur des composants de base. Aucune feature livrée. Le design system est devenu un projet fantôme qui absorbe toutes les ressources sans rien produire de visible pour les utilisateurs. Tu te retrouves dans le dilemme classique : continuer et perdre encore du temps, ou arrêter et perdre tout ce qui a été fait."

git commit --allow-empty -m "Le design system pharaonique — Le compromis douloureux

Mois 4. Tu prends une décision chirurgicale : on garde 40 composants essentiels sur les 340 designés. On les implémente. On s'arrête là pour l'instant. Fatima est dévastée. 'C'est comme construire une cathédrale et s'arrêter au parking', dit-elle. Tu lui réponds : 'Au moins le parking est utilisable.'

Les 40 composants sont livrés en 6 semaines. L'interface commence enfin à avoir une cohérence. Les devs gagnent du temps sur les nouvelles pages. Fatima boude pendant 2 semaines puis admet que c'est mieux qu'avant. Kevin dit : 'C'est pas mal.' Venant de Kevin, c'est l'équivalent verbal d'un Oscar. Tu notes dans ton carnet : 'Un design system, c'est comme une roadmap — mieux vaut petit et livré que grand et fantasmé.'"

git commit --allow-empty -m "Le design system pharaonique — Les 300 composants fantômes

Les 300 composants non implémentés hantent Fatima. Elle les appelle 'les fantômes'. Parfois, elle ouvre son fichier Figma et les regarde. Le dropdown avec animation physique. Le date picker avec sélection par geste. Le toggle qui change de couleur selon l'heure de la journée. Des petits bijoux d'interaction design que personne ne verra jamais.

Un jour, un dev junior tombe sur le fichier Figma complet. Il s'exclame : 'Mais c'est INCROYABLE ! Pourquoi on n'a pas tout ça ?' Fatima et toi échangez un regard. Le regard de ceux qui savent que l'idéal est l'ennemi du bien. Que la perfection est l'ennemie de la livraison. Et que 340 composants Figma ne servent à rien s'ils restent dans Figma."

git commit --allow-empty -m "Le design system pharaonique — Post-mortem : La revanche de Fatima

Six mois après le compromis des 40 composants, quelque chose d'inattendu se produit. Les devs commencent à créer des composants eux-mêmes. Pas dans Figma. Directement en code. Des composants utilitaires, pragmatiques, moches mais fonctionnels. Fatima est horrifiée. Puis fascinée. Puis elle comprend : le design system vit. Il évolue. Il n'est plus un monument figé dans Figma — c'est un organisme vivant qui grandit avec l'équipe.

Fatima change d'approche. Au lieu de designer 340 composants parfaits en amont, elle collabore avec les devs en temps réel. Un composant est designé, codé et livré dans la même semaine. Le design system atteint 80 composants en 3 mois. Pas 340. Mais 80 composants qui existent vraiment, utilisés vraiment, par de vrais gens. Fatima résume sa leçon dans un tweet qui fait 2 000 likes : 'Un design system n'est pas un musée. C'est un potager. Il faut le cultiver, pas le contempler.'"

git checkout main

# ==============================================================================
# BRANCHE 3 : feature/user-research
# Diverge du chapitre 9 (le schisme discovery vs delivery)
# Le CPO force le passage vers la discovery malgré la résistance
# ==============================================================================

git checkout -b feature/user-research "$DIVERGE_SCHISME"

git commit --allow-empty -m "La user research — Les interviews qui changent tout

Tu recrutes 15 utilisateurs pour des interviews. C'est un parcours du combattant. Le RGPD. Les contrats de confidentialité. Les plannings. Julien refuse de te donner les contacts de ses clients 'stratégiques'. Tu te rabats sur les clients du support. Ceux qui appellent pour se plaindre. Au moins, eux ont des choses à dire.

Les interviews commencent. Et là, révélation. Ce que les utilisateurs veulent n'a RIEN à voir avec ce que l'équipe pense qu'ils veulent. Ils se fichent de l'IA. Ils se fichent de la marketplace. Ce qu'ils veulent : que l'export PDF fonctionne correctement, que la recherche soit plus rapide, et que l'onboarding ne prenne pas 3 jours. Des trucs basiques. Des trucs qu'on pourrait faire en 2 sprints. Des trucs que personne n'a jamais mis dans la roadmap parce qu'ils n'étaient pas assez 'sexy'."

git commit --allow-empty -m "La user research — Quand les données contredisent le CEO

Tu compiles les résultats. Jobs to be done. Verbatims. Opportunity scores. Tu présentes à Marc. Sa réaction : 'Mais c'est pas possible, nos utilisateurs sont des early adopters tech-savvy qui veulent de l'innovation.' Tu lui montres les verbatims. 'Je veux juste que l'export marche, bordel.' 'Votre app plante 3 fois par jour.' 'L'onboarding m'a pris une semaine, j'ai failli annuler.'

Marc refuse d'y croire. Il te dit que les gens ne savent pas ce qu'ils veulent. Il cite Henry Ford et les chevaux rapides. Tu lui expliques que Ford n'a jamais dit ça. Il te cite Steve Jobs et le focus group. Tu lui dis que Jobs faisait de l'observation ethnographique intensive, pas du freestyle. Marc te dit : 'On va faire un sondage pour confirmer.' Il fait le sondage. Les résultats confirment les interviews. Marc dit : 'Le sondage est biaisé.'"

git commit --allow-empty -m "La user research — L'utilisateur qui pleure en démo

Tu décides de montrer plutôt que de raconter. Tu organises une session de test utilisateur en direct, diffusée sur Zoom à toute l'entreprise. L'utilisateur s'appelle Christine. Christine est comptable dans une PME de 30 personnes. Christine utilise le produit tous les jours. Christine est sur le point de changer de solution.

Christine commence le test. Elle essaie d'exporter un rapport PDF. Ça plante. Elle réessaie. Ça plante. Elle soupire. Elle dit : 'C'est toujours comme ça.' Elle continue. Elle cherche une fonctionnalité. Elle clique 14 fois avant de la trouver. Fatima compte les clics, chaque clic est un coup de poignard. À la fin du test, Christine dit : 'Vous savez, j'aimais bien votre produit avant. Maintenant c'est juste... compliqué.' Sur le Zoom, 47 personnes sont silencieuses. Même Marc."

git commit --allow-empty -m "La user research — Le pivot silencieux

Le test de Christine a plus d'impact que 6 mois d'arguments. Le lendemain, Marc vient te voir : 'On devrait peut-être corriger l'export PDF.' C'est la première fois qu'il priorise un fix plutôt qu'une feature. Thomas propose d'allouer un dev full-time sur les bugs critiques. Julien accepte de reporter une feature vendue de 2 mois. Petit miracle.

L'export PDF est corrigé en 3 jours. L'onboarding est simplifié en 2 semaines. La recherche est optimisée en 1 sprint. Christine reçoit un email personnalisé pour tester les améliorations. Elle répond : 'Oh, ça marche maintenant. Merci.' Deux mots. 'Ça marche.' Les deux mots les plus beaux du product management. Tu frames l'email et tu l'accroches dans ton placard-bureau."

git commit --allow-empty -m "La user research — Le rituel Christine

Christine est devenue une légende interne. Son nom est invoqué en réunion comme un mantra. 'Christine ferait quoi ?' 'Christine comprendrait-elle ce parcours ?' 'Christine aurait combien de clics ?' Tu as créé sans le vouloir un test utilisateur permanent : le test Christine. Si Christine peut le faire sans pleurer, c'est bon. Si Christine pleure, on recommence.

Tu instaures un rituel : chaque mois, un test utilisateur est diffusé à toute l'entreprise. Tu l'appelles 'Les Chroniques de Christine' même quand ce n'est pas Christine qui teste. Marc assiste à tous les tests maintenant. Il ne regarde plus son téléphone. Thomas corrige les bugs en direct pendant les sessions. Kevin a même souri une fois en voyant un utilisateur réussir un parcours du premier coup. Un sourire de Kevin. C'est comme voir une éclipse : rare, bref, et profondément émouvant."

git checkout main

# ==============================================================================
# BRANCHE 4 : feature/product-led-growth
# Diverge du chapitre 5 (la lubie PLG du CEO)
# Le CPO suit Marc dans le pivot PLG
# ==============================================================================

git checkout -b feature/product-led-growth "$DIVERGE_PLG"

git commit --allow-empty -m "Le pivot PLG — On y va

Tu as pesé le pour et le contre toute la nuit. Le PLG, c'est pas idiot. Peut-être que Marc a raison, pour une fois. Peut-être que le self-serve pourrait ouvrir un nouveau segment. Tu décides de tenter. Tu présentes un plan à Marc : offre freemium, onboarding self-serve, métriques d'activation. Marc rayonne. Julien est en état de choc. Son équipe de 8 commerciaux te regarde comme si tu venais de leur annoncer un plan social.

Tu passes le week-end à modéliser les unit economics. Le plan gratuit permettrait de gérer 5 notes de frais par mois. Le tunnel de conversion vise 3% de free-to-paid. Sur le papier, ça tient. Sur le papier. Tu lances le projet. Thomas estime 6 semaines pour le freemium et l'onboarding. Tu te donnes 3 mois pour prouver le modèle. Julien te dit : 'Si ça foire, c'est ta tête.' Il n'a pas le pouvoir de te virer, mais il a le pouvoir de te pourrir la vie."

git commit --allow-empty -m "Le pivot PLG — Le freemium de l'enfer

Vous lancez l'offre freemium. Le plan gratuit permet de gérer 5 notes de frais par mois. Le problème : personne ne gère seulement 5 notes de frais par mois. Les utilisateurs freemium se retrouvent bloqués le 6 du mois. Le support croule sous les tickets : 'Pourquoi je peux plus rien faire ?' 'Votre app est cassée ?' 'C'est une arnaque ?'

Le pire : les clients existants qui payaient 50K découvrent qu'il existe un plan gratuit. Ils appellent Julien : 'Vous nous prenez pour des pigeons ?' Trois clients demandent une renégociation. Un client résilie. Julien te regarde avec des yeux de chien battu qui cache à peine une rage volcanique. Le freemium a coûté plus cher en un mois que ce qu'il est censé rapporter en un an."

git commit --allow-empty -m "Le pivot PLG — L'onboarding self-serve

Tu crées un onboarding self-serve. Tutoriels interactifs. Tooltips. Vidéos. Check-lists. Progress bars. Gamification. Tu y mets toute ton énergie. C'est magnifique. Le taux de complétion : 12%. 88% des utilisateurs abandonnent à l'étape 3 sur 7. L'étape 3, c'est 'Connectez votre logiciel comptable'. Aucun utilisateur freemium n'a de logiciel comptable connecté parce que ce sont des freelances qui gèrent leurs notes de frais sur un coin de nappe.

Tu réalises que tu as construit un onboarding pour tes clients enterprise en pensant que ça marcherait pour des freelances. Deux personas radicalement différents. Deux besoins radicalement différents. Un seul onboarding. C'est comme servir le même menu à un restaurant étoilé et à une cantine scolaire. Tu aurais dû faire de la research avant. Tu le sais. Mais Marc voulait 'aller vite'."

git commit --allow-empty -m "Le pivot PLG — Le retour du sales-led

Bilan après 3 mois de PLG : 4 000 inscriptions freemium, 23 conversions en payant, 2 clients enterprise perdus, une équipe support au bord du burnout, et Julien qui a commencé à chercher un autre job. Le CAC du PLG est 4 fois plus élevé que celui du sales-led. Marc regarde les chiffres. Longtemps. 'On va peut-être garder les commerciaux', dit-il.

Tu ne dis pas 'je te l'avais dit'. Tu as envie, mais tu ne le dis pas. Tu proposes un modèle hybride : PLG pour l'acquisition de leads, sales pour la conversion enterprise. C'est ce que font les boîtes qui réussissent en PLG B2B, mais Marc n'avait pas lu cette partie de l'article. Le freemium est transformé en trial de 14 jours. Le support respire. Julien reste. La leçon : le PLG n'est pas un interrupteur qu'on active, c'est une transformation de toute l'entreprise."

git commit --allow-empty -m "Le pivot PLG — L'article de Marc

Marc écrit un article LinkedIn : '5 leçons de notre pivot PLG'. L'article fait 12 000 vues. Il y décrit le pivot comme un 'choix stratégique audacieux' et le retour au sales-led comme une 'optimisation du modèle hybride'. À aucun moment il ne mentionne le freemium catastrophique, les clients perdus, ou l'équipe support au bord du gouffre. L'article est brillant. L'article est un mensonge par omission.

Un commentateur LinkedIn écrit : 'Incroyable retour d'expérience ! Comment avez-vous géré la transition ?' Marc te forwarde le commentaire : 'Tu peux répondre ?' Tu rédiges une réponse diplomatique de 3 lignes. Tu supprimes une réponse honnête de 3 pages. Julien commente l'article avec un emoji fusée. Le même Julien qui avait cherché un autre job pendant la crise PLG. LinkedIn est un univers parallèle où tout est victoire et personne n'échoue. Tu fermes l'onglet et tu retournes à Jira. Au moins, Jira ne ment pas."

git checkout main

# ==============================================================================
# BRANCHE 5 : feature/feature-factory
# Diverge du chapitre 6 (14 features vendues, pression du delivery)
# Le CPO cède à la pression et met l'équipe en mode usine
# ==============================================================================

git checkout -b feature/feature-factory "$DIVERGE_FEATURES_VENDUES"

git commit --allow-empty -m "La feature factory — Livrer, livrer, livrer

La pression de Julien gagne. Les emails de clients s'accumulent. Marc te rappelle chaque matin que le CA dépend de ces deals. Tu abandonnes la discovery. Tu abandonnes la priorisation. Tu deviens ce que tu as toujours juré de ne jamais devenir : une feature factory. L'équipe code du matin au soir. Pas de questions. Pas de 'pourquoi'. Juste des specs, du code, du déploiement. La vélocité explose. 47 story points par sprint ! Record ! Marc est ravi. Thomas est fier. L'équipe est épuisée.

Tu livres 12 features en 2 mois. Dashboard analytics. Export multi-format. Intégration Slack. Notifications personnalisées. Module de validation hiérarchique. Mode hors-ligne. Chacune de ces features a été demandée par au moins un client. Chacune a été 'validée' par Julien. Chacune a été livrée dans les temps. Tu devrais être contente. Tu ne l'es pas. Quelque chose cloche."

git commit --allow-empty -m "La feature factory — Le cimetière de features

Les métriques d'usage tombent. Dashboard analytics : 3% d'adoption. Export multi-format : 7%. Intégration Slack : 2%. Mode hors-ligne : 0.4%. Sur les 12 features livrées, 2 sont réellement utilisées. Les 10 autres sont des cadavres fonctionnels. Du code mort qui alourdit le produit, complexifie la maintenance, et confond les utilisateurs.

Kevin fait le calcul : 10 features inutiles x 3 semaines de dev en moyenne = 30 semaines de travail gaspillées. Presque 8 mois. L'équivalent d'un dev senior pendant un an. Pour des features que personne n'utilise. Tu montres les chiffres à Julien. Il hausse les épaules : 'Les clients les ont demandées.' Tu réponds : 'Les clients les ont demandées. Pas les utilisateurs.' Il ne comprend pas la différence. C'est là tout le problème."

git commit --allow-empty -m "La feature factory — La dette invisible

Le produit est devenu un monstre. L'interface est un labyrinthe de menus imbriqués. Le temps de chargement a doublé. Les bugs se multiplient parce que chaque feature interagit avec les autres de façon imprévisible. Thomas passe plus de temps à maintenir les features existantes qu'à en développer de nouvelles. Kevin a commencé à compter les jours avant la retraite. Il a 34 ans.

Tu réalises que la feature factory ne produit pas de la valeur — elle produit de la dette. De la dette technique. De la dette UX. De la dette cognitive pour les utilisateurs. Chaque feature ajoutée rend le produit un peu plus complexe, un peu plus lent, un peu plus confus. Tu as couru très vite dans la mauvaise direction. Il est temps de faire demi-tour."

git commit --allow-empty -m "La feature factory — Le régime features

Tu proposes l'impensable : supprimer des features. Pas en ajouter. En enlever. Tu identifies les 10 features à moins de 5% d'adoption. Tu proposes de les retirer du produit. Marc te regarde comme si tu avais perdu la raison. 'On ne peut pas RETIRER des features, les clients vont râler !' Tu lui montres que 0.4% d'utilisation signifie que personne ne remarquera.

Vous retirez 6 features sur 10 (les 4 autres ont des contrats clients qui les imposent — bienvenue en B2B). Le produit perd 15% de son code. Le temps de chargement baisse de 40%. Les bugs diminuent de 30%. Un utilisateur envoie un email : 'L'app est plus rapide, vous avez changé quelque chose ?' Oui. On a enlevé des trucs. Parfois, le meilleur produit est celui qui fait moins."

git commit --allow-empty -m "La feature factory — Le tableau des features mortes

Tu crées un dashboard que tu appelles 'Le Cimetière'. Il liste toutes les features supprimées avec leur coût de développement, leur taux d'adoption au moment de la suppression, et une épitaphe. L'épitaphe de l'intégration Slack (2% d'adoption) : 'Ci-gît une intégration que personne n'a demandée, née d'un deal commercial et morte d'indifférence.' L'épitaphe du mode hors-ligne (0.4%) : 'Ici repose le mode hors-ligne, conçu pour un monde sans WiFi qui n'existe plus depuis 2015.'

Le Cimetière devient un outil pédagogique. Avant de lancer une nouvelle feature, l'équipe vérifie si elle ressemble à une résidente du Cimetière. 'Ça sent le Cimetière', dit Kevin quand quelqu'un propose une feature sans données utilisateurs. C'est devenu un verbe : cimetièrer. 'On va pas cimetièrer cette feature quand même ?' Marc ne comprend pas le concept mais il aime le néologisme."

git checkout main

# ==============================================================================
# BRANCHE 6 : feature/okr-hell
# Diverge du chapitre 7 (solitude du CPO, Sarah propose les OKRs)
# Le CPO tente de structurer le chaos avec des OKRs
# ==============================================================================

git checkout -b feature/okr-hell "$DIVERGE_SOLITUDE"

git commit --allow-empty -m "L'enfer des OKRs — La promesse de l'alignement

Tu acceptes la proposition de Sarah. Les OKRs, c'est ce qu'il faut. Tu lis 'Measure What Matters'. Tu es inspirée. Les OKRs vont sauver l'organisation. Plus de flou. Plus de 'je sens le marché'. Des objectifs mesurables. Des résultats clés quantifiables. Tu organises un workshop de 2 jours avec des Post-its et des feutres de 4 couleurs.

Le workshop commence. Marc veut un OKR sur la croissance. Julien veut un OKR sur le revenu. Thomas veut un OKR sur la dette technique. Toi, tu veux un OKR sur la satisfaction utilisateur. Fatima veut un OKR sur la cohérence UX. Kevin ne veut pas d'OKR du tout. Au bout de 2 jours, vous avez défini 14 Objectives et 47 Key Results. Pour une boîte de 120 personnes. C'est plus d'OKRs que de features livrées le trimestre dernier."

git commit --allow-empty -m "L'enfer des OKRs — La bureaucratie s'installe

Les OKRs sont définis. Maintenant il faut les suivre. Tu crées un rituel hebdomadaire : le 'OKR Check-in'. Chaque équipe doit mettre à jour ses Key Results tous les vendredis. Le problème : personne ne sait comment mesurer la moitié des KRs. 'Améliorer la satisfaction utilisateur de 20%' — mesuré comment ? Par qui ? Quand ? Avec quel outil ? Personne ne sait.

Tu embauches un outil de suivi OKR. 15K par an. Tu fais une formation de 3 heures pour apprendre à l'utiliser. Les gens remplissent les KRs le vendredi à 17h55, juste avant de partir, avec des chiffres approximatifs. Le check-in hebdomadaire se transforme en séance de justification : 'Pourquoi ton KR est à 30% ?' 'Parce que j'ai pas eu le temps, j'étais en OKR check-in la semaine dernière.' Le serpent se mord la queue."

git commit --allow-empty -m "L'enfer des OKRs — Le gaming des métriques

Les équipes apprennent vite. Si le KR est 'augmenter le nombre de users actifs de 15%', il suffit de changer la définition d'un user actif. Avant : quelqu'un qui se connecte ET utilise une feature. Après : quelqu'un qui se connecte. Le KR passe de 30% à 120% en une semaine. Tout le monde applaudit. Personne ne mentionne le changement de définition.

Marc adore les OKRs maintenant. Il cite les chiffres en board meeting. 'Notre OKR satisfaction est à 85% !' Ce qu'il ne dit pas : la satisfaction est mesurée par un sondage envoyé uniquement aux clients qui ont renouvelé. Biais de survivant, level 100. Les OKRs ne mesurent plus la réalité. Ils mesurent la capacité de l'organisation à raconter une belle histoire avec des chiffres. Tu as créé un monstre."

git commit --allow-empty -m "L'enfer des OKRs — La désintoxication

Tu prends du recul. 14 Objectives, 47 Key Results, un outil à 15K, des check-ins hebdomadaires, du gaming de métriques. Tout ça pour quoi ? Pour se sentir alignés ? Tu poses la question en réunion : 'Est-ce que quelqu'un peut me citer nos 3 OKRs principaux de mémoire ?' Silence. Personne. Même pas toi.

Tu réduis à 3 Objectives et 6 Key Results. Tu supprimes l'outil (15K économisés). Tu remplaces le check-in hebdomadaire par un point mensuel de 30 minutes. Tu définis des métriques simples, impossibles à gamer : NPS, churn, revenue. Pas sexy. Pas gamifiable. Juste vrai. Kevin résume : 'Avant on avait un Google Sheet qu'on ne lisait pas. Maintenant on a un outil à 15K qu'on ne lit pas. Le progrès.' Il n'a pas tort."

git commit --allow-empty -m "L'enfer des OKRs — Le post-mortem trimestriel

Le premier bilan trimestriel des OKRs simplifiés tombe. NPS : objectif +10, résultat +3. Churn : objectif -15%, résultat -8%. Revenue : objectif +20%, résultat +12%. Aucun OKR n'est atteint à 100%. Marc panique : 'On a raté !' Tu lui expliques que 70% d'atteinte, c'est le sweet spot selon Google. Si tu atteins 100% de tes OKRs, c'est que tu n'es pas assez ambitieux. Marc ne comprend pas ce concept. Tu lui montres la vidéo de John Doerr. Marc regarde 3 minutes et dit : 'Oui mais nous on est pas Google.'

Tu laisses tomber l'explication théorique. Tu montres les tendances : NPS en hausse, churn en baisse, revenue en hausse. Tout va dans la bonne direction. Pas assez vite pour les OKRs, mais dans la bonne direction. Marc finit par accepter. 'Ok, on continue comme ça.' C'est la phrase la moins glamour et la plus précieuse qu'un CEO puisse dire à sa CPO. Continuer. Pas pivoter. Pas disrupter. Continuer."

git checkout main

# ==============================================================================
# BRANCHE 7 : feature/personas-fictives
# Diverge du chapitre 3 (le verdict de l'audit — chaos visuel vs personas)
# Le CPO choisit de cartographier les utilisateurs avec Sarah
# ==============================================================================

git checkout -b feature/personas-fictives "$DIVERGE_VERDICT"

git commit --allow-empty -m "Les personas fictives — La galerie des imaginaires

Sarah a lu un article sur les personas. Elle est motivée. Elle veut en créer. Tu la laisses faire — c'est une bonne occasion d'apprentissage. Le problème : Sarah n'a jamais parlé à un vrai utilisateur. Elle crée ses personas à partir de... son imagination. Et du profil LinkedIn de 3 personnes qu'elle ne connaît pas.

Résultat : 12 personas magnifiquement documentés. Avec des photos stock. Des citations inventées. Des frustrations imaginées. Des 'pain points' sortis de nulle part. Il y a 'Sophie, 34 ans, DAF dans une ETI, fan de yoga et de podcasts tech'. Il y a 'Jean-Marc, 52 ans, expert-comptable, collectionneur de montres'. Chaque persona a une backstory plus détaillée qu'un personnage de roman. Aucune ne correspond à un vrai utilisateur."

git commit --allow-empty -m "Les personas fictives — Le culte des personas

Les personas de Sarah deviennent virales en interne. Marc les ADORE. Il les fait imprimer en grand format et les affiche dans l'open space. 'Sophie dirait quoi de cette feature ?' devient une phrase courante en réunion. Le problème : Sophie n'existe pas. Sophie est une fiction. Et les décisions prises 'pour Sophie' ne correspondent à aucun besoin réel.

Julien adopte les personas pour ses pitchs commerciaux : 'Notre produit est parfait pour les Sophie de votre organisation.' Un prospect lui demande : 'C'est qui Sophie ?' Julien répond : 'C'est notre persona principal.' Le prospect : 'Vous avez parlé à de vrais utilisateurs ?' Julien : '...' Le silence est assourdissant. Fatima a mis les personas dans le design system comme avatars par défaut. Elles sont partout. Elles ne sont personne."

git commit --allow-empty -m "Les personas fictives — La confrontation avec le réel

Quand la user research commence pour de bon, les vrais utilisateurs ne ressemblent en rien aux personas. 'Sophie' fait du yoga dans sa bio persona, mais les vrais DAFs travaillent 50 heures par semaine et ne font pas de yoga. 'Jean-Marc' collectionne les montres, mais les vrais experts-comptables collectionnent les migraines. Les frustrations réelles n'apparaissent dans aucune persona.

Tu organises une cérémonie symbolique : tu décroches les posters des personas. Sarah est mortifiée. Tu lui expliques avec douceur que les personas ne sont pas mauvais en soi, mais qu'ils doivent être basés sur de vraies données. Elle comprend. Elle recommence. Cette fois, avec de vrais interviews, de vrais verbatims, de vraies frustrations. Les nouveaux personas sont moins beaux. Les photos sont floues. Les citations sont mal formulées. Mais ils sont vrais. Et ça change tout."

git commit --allow-empty -m "Les personas fictives — Sophie revient hanter

Un an plus tard, tu découvres que 'Sophie, 34 ans, fan de yoga' est toujours dans la présentation commerciale de Julien. Tu lui demandes de la retirer. Il refuse : 'Les clients adorent Sophie.' Tu insistes. Il te montre un email d'un prospect : 'J'adore le persona Sophie, on se reconnaît totalement dedans.' Le prospect est un homme de 56 ans qui dirige un cabinet comptable à Limoges. Il ne fait pas de yoga.

Tu abandonnes. Sophie est immortelle. Sophie transcende la réalité. Sophie est devenue un archétype, un mythe fondateur, une mascotte involontaire. Quand des nouveaux arrivent et demandent 'c'est qui Sophie ?', les anciens échangent un regard. 'Sophie, c'est... compliqué.' Fatima a gardé le poster original dans son tiroir. Parfois elle le ressort et murmure : 'Pardonne-nous, Sophie. On ne savait pas ce qu'on faisait.'"

git checkout main

# ==============================================================================
# BRANCHE 8 : hotfix/client-vip-otage
# Diverge du chapitre 6 (14 features vendues, GrosseCorp menace)
# Le CPO cède à l'urgence du client VIP
# ==============================================================================

git checkout -b hotfix/client-vip-otage "$DIVERGE_FEATURES_VENDUES"

git commit --allow-empty -m "Client VIP en otage — L'ultimatum

Tu as à peine eu le temps de digérer la liste des 14 features fantômes que le téléphone sonne. C'est Julien. Sa voix tremble. 'GrosseCorp veut partir.' GrosseCorp, c'est 30% du CA. 450K annuel. 200 utilisateurs. Le client qui fait vivre la boîte depuis 4 ans. Et GrosseCorp veut une feature spécifique : la validation multi-niveaux hiérarchique avec délégation conditionnelle. Dans 3 semaines. Sinon ils partent chez le concurrent.

Tu analyses la demande. C'est une feature qui concerne un seul client. Aucun autre client ne l'a demandée. C'est 4 à 6 semaines de dev minimum. Mais GrosseCorp est catégorique. Marc te convoque. Il est blanc. 'On ne peut pas perdre GrosseCorp.' Julien ajoute : 'Si on perd GrosseCorp, on perd la boîte.' Le long terme dit de refuser. Le court terme dit que sans ce client, il n'y a pas de long terme."

git commit --allow-empty -m "Client VIP en otage — Le sprint de la mort

Tu capitules. L'équipe est mobilisée. Thomas met 3 devs sur la feature. Kevin dit 'c'est pas possible en 3 semaines'. Tu lui demandes combien. '6 semaines.' Tu lui demandes avec des concessions. '4 semaines, si on coupe les coins.' Tu négocies une semaine de délai avec GrosseCorp. 4 semaines au lieu de 3. Ils acceptent. Julien négocie un renouvellement de 2 ans en échange.

L'équipe se tue au travail. Soirs. Week-ends. La feature est codée dans l'urgence, sans tests unitaires, sans documentation, sans design review. Fatima pleure en voyant l'interface : 'C'est un crime contre l'UX.' Kevin code comme un possédé. Sarah essaie d'écrire des specs mais les devs vont plus vite qu'elle. Thomas passe ses nuits à review le code. Tu apportes des pizzas et du remords."

git commit --allow-empty -m "Client VIP en otage — La livraison et ses conséquences

La feature est livrée. En 4 semaines. GrosseCorp est content. Julien signe le renouvellement de 2 ans. Marc ouvre du champagne. Victoire ! Sauf que non. La feature a introduit 23 bugs. Dont 3 critiques qui affectent TOUS les autres clients. Le week-end suivant, l'astreinte de Thomas sonne 7 fois. Kevin parle de démissionner. Sarah fait une crise d'angoisse.

Le coût réel de la feature GrosseCorp : 4 semaines de dev x 3 développeurs = 12 semaines-homme. Plus 3 semaines de correction de bugs. Plus 2 semaines de dette technique. Plus un dev junior qui démissionne (il n'est pas mentionné dans l'histoire, mais il existait et il est parti). Total : l'équivalent de 5 mois de travail pour un seul client. Le renouvellement de 2 ans rapporte 900K. Le coût interne est estimé à 300K. On est positif. Mais à quel prix humain ?"

git commit --allow-empty -m "Client VIP en otage — La politique client VIP

Tu écris une politique : plus jamais de feature custom pour un seul client sans passer par le process de priorisation. Marc signe. Julien grogne. Trois mois plus tard, un autre client VIP (15% du CA) demande une feature custom. Marc te regarde. Tu regardes la politique qu'il a signée. Il te dit : 'C'est un cas exceptionnel.' Tous les cas sont exceptionnels quand c'est un VIP.

Tu réalises qu'en B2B, les clients VIP sont comme des black holes : ils déforment la réalité autour d'eux. Chaque demande de VIP est 'urgente'. Chaque menace de départ est 'existentielle'. Et petit à petit, le produit se transforme en patchwork de features custom que personne d'autre n'utilise. Tu inscris dans ton carnet : 'Un produit qui appartient à ses clients VIP n'est plus un produit. C'est un service de développement externalisé avec un joli logo.'"

git commit --allow-empty -m "Client VIP en otage — Post-mortem : La facture cachée

Tu fais un audit des features custom développées pour des VIP au cours des 3 dernières années. Le résultat est édifiant : 23 features custom. 18 utilisées par un seul client. 4 utilisées par personne (le client a churné entre-temps). 1 seule a été adoptée par d'autres clients. Le coût total : l'équivalent de 2 années-homme de développement. Pour 23 features dont 22 sont du gaspillage.

Tu présentes l'audit au board. L'investisseur principal blêmit. Marc tousse. Julien regarde ses chaussures. Tu proposes une règle simple : toute feature custom doit passer par un comité produit qui évalue si elle a du potentiel pour d'autres clients. Si non, le client peut la financer en professional services, facturés au prix réel. GrosseCorp accepte. Les autres clients aussi. Le revenue professional services devient un nouveau business line. Kevin commente : 'On a transformé un problème en business model. C'est presque élégant.'"

git checkout main

# ==============================================================================
# BRANCHE 9 : hotfix/concurrent-panique
# Diverge du chapitre 13 (panique concurrentielle, tout le monde veut foncer)
# Le CPO cède à la pression et lance le mode copycat
# ==============================================================================

git checkout -b hotfix/concurrent-panique "$DIVERGE_CONCURRENT"

git commit --allow-empty -m "Panique concurrentielle — Le copycat

Marc a décidé : on copie la feature du concurrent. Mot pour mot. Pixel pour pixel. 'Si eux l'ont, on doit l'avoir.' Tu as essayé de résister, mais la panique collective est plus forte que la raison. Thomas estime 6 mois. Marc veut 6 semaines. Ils se mettent d'accord sur 3 mois, ce qui ne satisfait personne.

Tu fais un benchmark de la feature du concurrent. Leurs reviews App Store : 2.1 étoiles. Les commentaires : 'Bugué', 'Inutilisable', 'A fait planter mon export'. Le concurrent a sorti la feature trop vite, sans la peaufiner. Tu montres les reviews à Marc. 'Raison de plus pour la faire mieux qu'eux', dit-il. C'est le premier truc intelligent qu'il dit depuis le Web Summit."

git commit --allow-empty -m "Panique concurrentielle — L'intégration comptable

L'équipe se lance. L'intégration comptable automatique. Le truc que les clients demandent depuis 2 ans et que personne n'a jamais priorisé parce que 'c'est pas sexy'. Maintenant que le concurrent l'a fait (mal), c'est soudainement la priorité numéro 1. Drôle comme les features deviennent importantes quand un concurrent les sort.

Kevin s'y met. Et là, surprise : c'est faisable. C'est même pas si compliqué. La plus grosse partie du travail, c'est l'intégration avec les APIs des logiciels comptables (Sage, QuickBooks, Cegid). Kevin les étudie. Certaines sont bonnes. D'autres sont des crimes contre l'humanité informatique (coucou, Sage). Fatima designe une interface propre. Sarah fait de la research pour valider les parcours. Même Julien est constructif. L'équipe fonctionne. Il aura fallu une panique concurrentielle pour qu'on bosse correctement."

git commit --allow-empty -m "Panique concurrentielle — Mieux, pas pareil

Trois mois plus tard, la feature est prête. Et elle est mieux que celle du concurrent. Plus robuste. Plus intuitive. Compatible avec plus de logiciels comptables. Les beta-testeurs sont enthousiastes. Même Christine (celle qui avait pleuré en test utilisateur) est impressionnée. 'Ça, c'est utile', dit-elle. Tu accroches son email à côté du premier.

Le lancement se passe bien. Adoption : 34% en 2 semaines. C'est 10 fois plus que n'importe quelle feature livrée par la feature factory. La leçon est amère mais claire : la panique a déclenché la bonne réaction, mais pour les mauvaises raisons. Vous auriez pu faire cette feature il y a 2 ans si vous aviez écouté les utilisateurs plutôt que le CEO. Le concurrent vous a rendu service en vous forçant la main. Tu ne le remercieras jamais publiquement, mais intérieurement, un peu quand même."

git commit --allow-empty -m "Panique concurrentielle — La veille qui rend fou

Tu instaures une veille concurrentielle hebdomadaire. Chaque lundi, l'équipe passe 30 minutes à analyser ce que font les concurrents. C'est sain. C'est normal. C'est aussi une source d'angoisse permanente. Chaque feature sortie par un concurrent déclenche un micro-débat : 'On devrait faire pareil ?' 'Ils sont en avance ?' 'On est foutus ?'

Marc est le pire. Il s'est abonné aux newsletters de tous les concurrents. Il lit leurs blogs. Il suit leurs CEO sur LinkedIn. Il commente leurs posts (avec son compte perso, heureusement). Un lundi, il arrive avec une liste de 27 features concurrentes à copier. Tu la prends, tu la plies, tu la mets dans le tiroir du 'Musée des Paniques'. Le tiroir est plein. Tu prends un tiroir plus grand. Kevin propose de créer un script qui répond automatiquement 'c'est pas possible' à chaque email de Marc contenant le mot 'concurrent'. Thomas dit que c'est faisable en 2 heures."

git checkout main

# ==============================================================================
# BRANCHE 10 : hotfix/sprint-zero-infini
# Diverge du chapitre 9 (le schisme discovery vs delivery)
# Thomas profite du conflit pour imposer la réécriture technique
# ==============================================================================

git checkout -b hotfix/sprint-zero-infini "$DIVERGE_SCHISME"

git commit --allow-empty -m "Le sprint 0 infini — Thomas veut réécrire

Pendant que le débat discovery vs delivery fait rage, Thomas en profite. Il vient te voir avec un air solennel. 'Tant qu'à tout remettre à plat, il faut qu'on parle de la stack.' Le back-end est en PHP 7. Le front-end est en jQuery (oui, jQuery, en 2026). La base de données est un MySQL qui tient avec du scotch et des prières. 'Si on réécrit pas, tout va s'effondrer', dit Thomas. Et personne ne pourra faire de discovery ni de delivery sur un produit mort.

Il a raison. Recruter des devs PHP/jQuery en 2026, c'est comme chercher un mécanicien pour une Ford T. Mais réécrire, c'est 6 à 12 mois pendant lesquels on ne livre rien de nouveau. Tu proposes un compromis : un sprint 0 de 4 semaines pour poser les bases de la nouvelle stack, puis une migration progressive. Thomas accepte. Tu es naïve."

git commit --allow-empty -m "Le sprint 0 infini — Le scope creep technique

Semaine 1 du sprint 0. Thomas choisit la nouvelle stack : Node.js + React + PostgreSQL. Ok. Semaine 2, il ajoute : GraphQL au lieu de REST. Ok, pourquoi pas. Semaine 3 : microservices. Hmm. Semaine 4 : Kubernetes. Tu interviens. 'Thomas, on est 5 devs. On a besoin de Kubernetes ?' Il te regarde avec pitié : 'Tu ne comprends pas, c'est pour scaler.' Tu lui rappelles que vous avez 800 utilisateurs actifs. Il te répond : 'Justement, et quand on en aura 800 000 ?'

Le sprint 0 de 4 semaines se transforme en sprint 0 de 8 semaines. Puis 12. Puis 16. Chaque semaine apporte une nouvelle couche technique : monitoring, CI/CD, feature flags, A/B testing infrastructure, service mesh. Kevin code dans son coin en PHP et livre des features pendant que le reste de l'équipe construit une infrastructure pour un million d'utilisateurs qu'on n'aura jamais."

git commit --allow-empty -m "Le sprint 0 infini — Le mois 4

Mois 4. Le sprint 0 dure depuis 4 mois. Aucune feature livrée depuis le début. Marc commence à s'inquiéter : 'Mais vous faites quoi exactement ?' Thomas lui montre un diagramme d'architecture qui ressemble à un plan de métro de Tokyo. Marc hoche la tête sans comprendre. Julien est furieux : ses clients attendent des features depuis 4 mois.

Tu convoques une réunion de crise technique. Tu demandes : 'Combien de temps avant qu'on puisse livrer la première feature sur la nouvelle stack ?' Thomas réfléchit. '3 mois.' Tu as un vertige. 4 mois de sprint 0 + 3 mois = 7 mois sans livrer une seule feature. Tu prends une décision douloureuse : on arrête le sprint 0. On migre uniquement le front-end en React (4 semaines). Le back-end reste en PHP pour l'instant. Thomas te déteste pendant 3 semaines. Puis il admet que livrer un front React en 4 semaines, c'est mieux que ne rien livrer en 7 mois."

git commit --allow-empty -m "Le sprint 0 infini — La migration qui n'a jamais fini

Le front-end est migré en React en 5 semaines (1 semaine de retard, honnêtement un miracle). Le back-end PHP reste. Le MySQL reste. Le Kubernetes a été abandonné (Thomas a pleuré, silencieusement). L'infrastructure de microservices a été réduite à un monolithe propre avec des modules bien séparés. Kevin résume : 'On a passé 4 mois à construire un avion pour finir par prendre le train. Mais le train est arrivé à l'heure.'

Le diagramme d'architecture de Tokyo est imprimé et encadré dans la salle de pause. C'est un mémorial. Un avertissement. Un rappel que le sprint 0 est l'excuse la plus dangereuse de l'ingénierie logicielle : un projet sans deadline, sans scope fixe, et sans accountability. Tu inscris dans ton carnet : 'Le sprint 0 qui dure plus de 4 semaines n'est plus un sprint 0. C'est un projet parallèle avec un joli nom.'"

git checkout main

# ==============================================================================
# BRANCHE 11 : fix/back-to-basics
# Diverge du chapitre 14 (le point de rupture — se battre ou partir)
# Le CPO choisit de se battre et de tout reprendre à zéro
# ==============================================================================

git checkout -b fix/back-to-basics "$DIVERGE_RUPTURE"

git commit --allow-empty -m "Retour aux fondamentaux — Trois features maximum

Tu as choisi de te battre. Tu décides de tout simplifier. Plus de frameworks compliqués. Plus de 47 OKRs. Plus de roadmap fantasy. Tu poses une règle : 3 features maximum en parallèle. Pas 4. Pas 5. Trois. Chaque feature doit répondre à un problème utilisateur documenté. Pas un problème imaginé. Pas un problème vendu. Un problème observé.

L'équipe résiste. Marc : 'Trois ? C'est RIEN.' Julien : 'J'ai 14 features promises.' Thomas : 'Et la migration ?' Toi : 'Trois.' Tu tiens bon. Tu deviens la CPO qui dit non. Non à Marc. Non à Julien. Non à Thomas. Non au board. Non aux clients VIP. Non aux concurrents. Non à tout ce qui n'est pas dans les 3 features. Kevin te regarde avec un respect nouveau. Il avait dit non toute sa vie. Il reconnaît une âme sœur."

git commit --allow-empty -m "Retour aux fondamentaux — Écouter les utilisateurs (pour de vrai)

Tu instaures une règle : chaque semaine, 2 heures d'écoute utilisateur pour toute l'équipe produit. Pas Sarah seule dans son coin. Tout le monde. Les devs. Fatima. Même Thomas. Tu les mets devant des vrais utilisateurs avec de vrais problèmes. Les devs réalisent que le bug qu'ils ont marqué 'mineur' fait perdre 30 minutes par jour à Christine.

Les résultats sont immédiats. Les devs corrigent les bugs avec une motivation nouvelle. Fatima redesigne les parcours les plus problématiques. Thomas comprend pourquoi certains choix techniques impactent les utilisateurs. Même Julien participe à une session. Il revient changé : 'Je comprends pourquoi ils râlent. Le produit est vraiment... compliqué.' C'est la première fois qu'il admet un problème produit. Tu marques ce jour dans ton calendrier."

git commit --allow-empty -m "Retour aux fondamentaux — Le focus qui paie

Deux mois de focus. 3 features. Des corrections de bugs. De l'écoute utilisateur. Rien de spectaculaire. Rien de disruptif. Rien qui mériterait un tweet de Marc. Mais les chiffres parlent. Le NPS passe de -12 à +8. Le churn diminue de 25%. Le temps de réponse du support passe de 72h à 12h. Les tickets support diminuent parce que le produit bugge moins.

Un investisseur appelle Marc : 'Qu'est-ce que vous avez changé ? Les métriques sont meilleures.' Marc répond : 'On a mis en place une stratégie de focus produit radical avec une approche user-centric outcome-based.' Traduction : on a fait 3 features au lieu de 47 et on a écouté les utilisateurs. Mais la version de Marc sonne mieux en board meeting. Tu t'en fiches. Les chiffres sont bons. Les utilisateurs sont contents. L'équipe respire. C'est tout ce qui compte."

git commit --allow-empty -m "Retour aux fondamentaux — La nouvelle culture produit

Quelque chose de profond a changé. Pas seulement les métriques. La culture. Les devs demandent 'pourquoi' avant de coder. Fatima est impliquée dès le début des features. Les commerciaux vérifient avec le produit avant de promettre (bon, 60% du temps — c'est un progrès). Les sprint reviews sont pleines. Marc pose des questions pertinentes (parfois).

Tu réalises que le product management, ce n'est pas des frameworks. Ce n'est pas des outils. Ce n'est pas des OKRs ou des personas ou des roadmaps. C'est une culture. Une façon de penser. De mettre l'utilisateur au centre. De dire non. De mesurer ce qui compte. De livrer moins mais mieux. Ça a pris 6 mois pour installer cette culture. C'était les 6 mois les plus durs de ta carrière. Et les plus importants."

git checkout main

# ==============================================================================
# BRANCHE 12 : fix/demission-burnout
# Diverge du chapitre 14 (le point de rupture — se battre ou partir)
# Le CPO choisit d'écouter son corps qui lâche
# ==============================================================================

git checkout -b fix/demission-burnout "$DIVERGE_RUPTURE"

git commit --allow-empty -m "Burnout — Les signaux d'alerte

Tu n'as pas choisi de te battre. Pas cette fois. Ton corps a choisi pour toi. Tu ne dors plus. Enfin, tu dors, mais tu te réveilles à 3h du matin en pensant au backlog. Tu vérifies Slack avant de te brosser les dents. Tu manges devant Jira. Tu rêves en story points. Un soir, tu calcules ton vélocité personnelle pendant le dîner. Ton conjoint te demande ce que tu fais. 'Un RICE scoring de ma semaine.' Il te regarde avec inquiétude.

Tu as perdu 4 kilos en 3 mois. Pas parce que tu fais du sport — tu n'as plus le temps. Parce que tu oublies de manger. Ton médecin te dit de ralentir. Tu ris. 'Ralentir ? J'ai 14 features en retard, un NPS négatif, et un CEO qui veut pivoter tous les mois.' Le médecin ne comprend pas la moitié de ce que tu dis. Il te prescrit des somnifères. Tu ne les prends pas. Tu n'as pas le temps de dormir, pourquoi prendre des somnifères ?"

git commit --allow-empty -m "Burnout — Le jour où tout s'arrête

Un mardi, en plein comité produit, tu ne trouves plus tes mots. Tu es en train d'expliquer la stratégie Q3 et soudain, rien. Le vide. Les mots ont disparu. Tu fixes l'écran. Sarah te demande si ça va. Marc consulte son téléphone. Thomas attend. Tu dis : 'Excusez-moi.' Tu te lèves. Tu vas aux toilettes. Tu t'assois par terre. Tu pleures. Pas de tristesse. D'épuisement. Ton corps a décidé de s'arrêter puisque tu refusais de le faire.

Tu rentres chez toi ce mardi. Tu ne reviendras pas mercredi. Ni jeudi. Ni la semaine d'après. Le médecin dit 'burnout'. Arrêt de travail. 3 mois minimum. Tu protestes : 'Mais la roadmap...' Le médecin : 'La roadmap survivra sans toi.' Tu veux argumenter mais tu n'as plus l'énergie. Pour la première fois en 6 mois, tu n'ouvres pas Slack au réveil. C'est terrifiant et libérateur en même temps."

git commit --allow-empty -m "Burnout — La reconstruction

Semaine 3 de l'arrêt. Tu commences à dormir normalement. Semaine 5, tu lis un roman (pas un livre de product management). Semaine 8, tu fais une randonnée. Tu redécouvres que le monde existe en dehors de Jira. Que les arbres ne sont pas des user stories. Que les rivières ne sont pas des flux d'onboarding.

Sarah t'envoie un message : 'L'équipe gère. Ne t'inquiète pas.' Tu es à la fois soulagée et vexée. Soulagée parce que le monde ne s'est pas effondré sans toi. Vexée parce que le monde ne s'est pas effondré sans toi. Tu réalises que ton burnout n'est pas un échec personnel. C'est le résultat d'un système qui demande trop sans donner assez. Trop de pression. Trop d'urgences. Trop de conflits. Pas assez de soutien. Pas assez de limites. Pas assez de 'non'."

git commit --allow-empty -m "Burnout — Le choix

Mois 3. Tu dois décider. Revenir ou partir. Tu fais le bilan. Ce que tu aimes dans le product management : comprendre les utilisateurs, résoudre des problèmes, créer de la valeur. Ce que tu détestes : la politique, les ego, les fausses urgences, les PowerPoint menteurs, les OKRs gamés, les VIPs en otage. Le ratio amour/déteste est de 1 pour 6.

Tu démissionnes. Tu écris une lettre à Marc, Thomas, et toute l'équipe. Tu remercies. Tu t'excuses pour ce que tu n'as pas pu faire. Kevin répond : 'C'était bien de t'avoir.' C'est le plus beau truc qu'on m'ait dit ici. Fatima pleure. Sarah est terrifiée de se retrouver seule. Julien envoie un emoji pouce. Tu fermes ton laptop d'entreprise. Tu vas te balader. Tu ne vérifies pas Slack. Tu ne vérifies rien. Tu marches. C'est suffisant."

git commit --allow-empty -m "Burnout — Freelance et liberté

Six mois plus tard. Tu es freelance. Tu fais du conseil produit pour 3 boîtes. 3 jours par semaine. Pas 5. Pas 6. Trois. Tu choisis tes clients. Tu refuses les boîtes qui n'ont pas de stratégie produit et qui veulent que tu en inventes une en 2 semaines. Tu dis non. Souvent. Facilement. Dire non est devenu ton super-pouvoir.

Tu suis l'ancienne boîte de loin. Ils ont recruté un nouveau CPO. Il est reparti en 4 mois. Le deuxième tient depuis 2 mois. Le Google Sheet de 47 onglets existe toujours. Le backlog est remonté à 900 tickets. Kevin est toujours là. Kevin sera toujours là. Kevin est éternel. Tu souris. Tu fermes LinkedIn. Tu ouvres un roman. C'est mardi, 15h. Tu es en pyjama. C'est la liberté."

git checkout main

# ==============================================================================
# BRANCHE 13 : fix/product-market-fit
# Diverge du chapitre 16 (le grand ménage révèle un signal PMF)
# Le CPO poursuit le signal des cabinets comptables
# ==============================================================================

git checkout -b fix/product-market-fit "$DIVERGE_MENAGE"

git commit --allow-empty -m "Le Product-Market Fit — L'accident heureux

Le signal est réel. Tu creuses. Tu fais des interviews avec les cabinets comptables de taille moyenne qui explosent en adoption. Il s'avère que ta simplification de l'interface a rendu le produit parfait pour les assistants comptables qui n'avaient pas le temps de se former sur un outil complexe. Ils ont trouvé ton produit par bouche-à-oreille. Ils l'utilisent tous les jours. Ils l'aiment.

C'est un accident. Tu n'as pas visé ce segment. Tu n'as pas conçu pour eux. Mais en nettoyant le produit, en le simplifiant, tu as créé quelque chose qui leur convient parfaitement. Sean Ellis parlerait de PMF. Toi, tu parles de chance. Mais la chance sourit aux produits simples, et ton produit est enfin simple."

git commit --allow-empty -m "Le Product-Market Fit — Le pivot inattendu

Tu présentes les chiffres à Marc. Pour une fois, il n'a pas besoin d'être convaincu. +200% de croissance organique. Rétention de 95%. NPS de +45. C'est le jackpot. Marc veut pivoter immédiatement : 'On devient le produit pour les cabinets comptables !' Tu le calmes. Pas de pivot brutal. Un ajustement progressif.

Julien est sceptique. Les cabinets comptables de taille moyenne, ce n'est pas les clients enterprise à 200K qu'il aime vendre. C'est des contrats à 5K-15K. 'C'est du small deal', dit-il. Tu lui montres la LTV : avec 95% de rétention, un client à 10K qui reste 7 ans rapporte plus qu'un client VIP à 200K qui part en 2 ans. Julien sort sa calculatrice. Fait le calcul. Refait le calcul. 'Ok', dit-il. C'est le deuxième plus beau jour de ta carrière CPO."

git commit --allow-empty -m "Le Product-Market Fit — Construire pour le segment

L'équipe se mobilise autour du nouveau segment. Pour la première fois, tout le monde tire dans la même direction. Tu fais de la research avec les cabinets comptables. Leurs besoins sont clairs, spécifiques, adressables. Fatima designe des parcours dédiés. Kevin code avec enthousiasme (oui, enthousiasme — tu ne pensais pas voir ça un jour). Sarah devient l'experte du segment.

Les features demandées sont raisonnables : un tableau de bord simplifié pour les assistants, un export vers les logiciels comptables standards, une vue consolidée multi-clients. Pas d'IA. Pas de blockchain. Pas d'expérience conversationnelle. Des vraies features pour de vrais problèmes. Thomas estime 3 mois de dev. Pour une fois, l'estimation est réaliste. Pour une fois, le scope ne gonfle pas. Pour une fois, tout le monde est d'accord."

git commit --allow-empty -m "Le Product-Market Fit — La croissance qui change tout

Six mois après le pivot. Les cabinets comptables représentent 40% du CA. La croissance organique continue. Le bouche-à-oreille est plus efficace que toute l'équipe de Julien (il l'admet, après 3 bières). Le NPS global est à +32. Le churn est à 5%. L'équipe est motivée. Le produit est cohérent.

Marc est invité à un podcast tech. Il raconte 'sa vision stratégique de pivoter vers les cabinets comptables'. Tu rigoles toute seule en écoutant. Sa vision. L'accident heureux que tu as transformé en stratégie. La simplification qui a créé le PMF. Mais c'est ok. Les CPO n'ont pas besoin de gloire. Ils ont besoin de résultats. Et les résultats sont là. Fatima dessine un petit cœur sur le poster de Christine-la-testeuse-qui-pleurait. Christine est devenue ambassadrice du produit. La boucle est bouclée."

git commit --allow-empty -m "Le Product-Market Fit — La sagesse du chaos

Tu regardes le chemin parcouru. Le Google Sheet de 47 onglets. Le backlog de 1 400 tickets. Les 14 features vendues. Le concurrent qui panique. Le VIP qui prend en otage. Le burnout qui menace. Et au bout, ça : un produit qui marche, des utilisateurs qui l'aiment, une équipe qui y croit.

La leçon n'est pas que le chaos mène au PMF. La leçon est que le PMF ne se planifie pas. Il se découvre. En nettoyant. En simplifiant. En écoutant. En acceptant que la roadmap n'est pas une carte — c'est une boussole. Et parfois la boussole pointe dans une direction que personne n'avait prévue. Ton carnet est plein. Ton burnout est derrière toi. Ton produit a trouvé son marché. Et Kevin, pour la première fois en 5 ans, a dit : 'C'est possible.'"

git checkout main

# ==============================================================================
# BRANCHE 14 : feature/ab-testing-obsession
# Diverge du chapitre 10 (la sprint review fantôme, tentation data-driven)
# Le CPO tente de résoudre le problème de feedback par les données
# ==============================================================================

git checkout -b feature/ab-testing-obsession "$DIVERGE_SPRINT_REVIEW"

git commit --allow-empty -m "L'obsession A/B testing — Data-driven à tout prix

Puisque personne ne vient aux sprint reviews et que personne ne donne de feedback, tu décides de laisser les données parler. Marc est ravi — il avait justement lu cet article sur Booking.com et leurs 1 000 A/B tests par an. Il en veut 1 000 aussi. Tu lui expliques que Booking a 200 millions de visiteurs par mois et vous en avez 800. La significativité statistique avec 800 utilisateurs, c'est comme prédire la météo en regardant par la fenêtre une seule fois. Marc ne comprend pas les statistiques. Il comprend les chiffres ronds. Il veut 1 000 tests.

Tu mets en place une infrastructure d'A/B testing. 3 semaines de dev. Un outil à 8K par an. Des dashboards. Des funnels. Tout y est. Premier test : couleur du bouton 'Valider'. Bleu contre vert. Résultat après 2 semaines : 412 vs 388 clics. Marc : 'Le vert gagne ! On met du vert partout !' Toi : 'Ce n'est pas statistiquement significatif.' Marc : 'C'est quoi statistiquement significatif ?' Tu meurs un peu à l'intérieur."

git commit --allow-empty -m "L'obsession A/B testing — Tester, tout tester, ne rien décider

L'équipe se prend au jeu. Tout est testé. La taille du titre. Le wording des messages d'erreur. La position du logo. La couleur du fond. Le nombre de colonnes du tableau. L'icône du menu hamburger vs trois points vs chevron. Chaque décision, même la plus triviale, est 'data-driven'. Plus personne ne décide rien sans test.

Le problème : avec 800 utilisateurs, aucun test ne converge. Les résultats sont du bruit statistique. Mais l'équipe lit dans le bruit comme des chamans lisent dans les entrailles. 'Le bouton ovale a 0.3% de plus que le rectangulaire !' '0.3% sur 800 users, c'est 2 personnes, Kevin.' 'Oui mais c'est DATA-DRIVEN.' Fatima refuse de trancher une couleur sans A/B test. Elle qui avait 15 ans d'expérience en design. L'intuition a été assassinée par un graphe non significatif."

git commit --allow-empty -m "L'obsession A/B testing — La paralysie par analyse

Mois 3. L'équipe a lancé 47 A/B tests. Aucun n'est conclusif. Les décisions sont repoussées indéfiniment : 'On attend les résultats du test.' Le produit n'évolue plus. Chaque changement potentiel est bloqué par un test en cours. Fatima a un backlog de 23 décisions design en attente de 'données'.

Sarah résume la situation dans un Slack que tu frames : 'On a remplacé le HiPPO (Highest Paid Person's Opinion) par le HIPPO-DATA (Highest Paid Person's Opinion Déguisée en A/B Test Approximatif). On prend les mêmes décisions qu'avant, mais 3 semaines plus tard et avec un graphe.' Kevin like le message. Thomas like le message. Même Marc like le message, sans comprendre que c'est de lui qu'on parle."

git commit --allow-empty -m "L'obsession A/B testing — L'équilibre retrouvé

Tu poses les règles : A/B testing uniquement pour les décisions à fort impact ET avec assez de trafic pour converger. Les décisions design quotidiennes reviennent à Fatima et son expertise. Les décisions produit stratégiques reviennent à l'équipe et sa compréhension des utilisateurs. Les données informent, elles ne décident pas.

L'outil de testing passe de 47 tests simultanés à 3. Les résultats sont enfin lisibles. Le premier vrai test significatif montre que simplifier l'onboarding de 7 étapes à 3 augmente la complétion de 340%. Ça, c'est un insight. Un vrai. Pas du bruit. Tu apprends que la data n'est pas une religion. C'est un outil. Comme un marteau. Utile pour planter des clous. Moins utile pour tout le reste. Et désastreux quand on prend tout pour un clou."

git commit --allow-empty -m "L'obsession A/B testing — Le dashboard de la vérité

Tu crées un dashboard que tu appelles 'Le Minimum Vital de Données'. 5 métriques. Pas 50. Pas 500. Cinq. NPS. Churn mensuel. Temps moyen de première valeur. Tickets support par feature. Revenue par segment. Chaque métrique est mise à jour automatiquement. Chaque métrique raconte une histoire. Et aucune métrique ne peut être gamée sans que ça se voie immédiatement.

Marc veut ajouter 'un KPI de vélocité innovation'. Tu lui demandes ce que ça veut dire. Il ne sait pas. Tu n'ajoutes pas. Julien veut ajouter 'le pipeline par feature'. C'est pertinent. Tu ajoutes. 6 métriques. C'est le maximum. Kevin a imprimé le dashboard et l'a collé au-dessus de la machine à café. Chaque matin, les devs regardent les chiffres en buvant leur café. Pas besoin de réunion. Pas besoin de check-in. Les chiffres parlent. Et pour une fois, ils disent la vérité."

git checkout main

# ==============================================================================
# FIN — Retour sur main, dernier commit
# ==============================================================================

echo ""
echo "=================================================="
echo "  Livre généré avec succès !"
echo "=================================================="
echo ""

# Compter les commits et branches
TOTAL_COMMITS=$(git log --all --oneline | wc -l)
TOTAL_BRANCHES=$(git branch -a | wc -l)

echo "  Total commits  : $TOTAL_COMMITS"
echo "  Total branches : $TOTAL_BRANCHES"
echo ""
echo "  Branches :"
git branch -a
echo ""
echo "  Vérifiez avec : git log --all --oneline --graph"
echo "=================================================="
