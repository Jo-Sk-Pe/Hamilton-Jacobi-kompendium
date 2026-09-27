# CLAUDE.md — Hamilton-Jacobi-kompendiet

Denne fil er det autoritative referencepunkt for projektet — den samler opsætning,
skriverkonventioner og beslutninger, så de ikke skal gentages i chatten hver gang.

## Projektidé

Et selvstændigt kompendium (ikke en erstatning for kvantemekanik-kompendiet),
der udvikler Lagrange-, Hamilton- og Hamilton-Jacobi-teori og bruger det som
vej frem mod kanonisk kvantisering, sti-integraler og kvantefeltteori/spredningsteori.

Tænkt narrativ bue:
Lagrange/Hamilton → Hamilton-Jacobi-teori → kanonisk kvantisering →
sti-integraler → QFT-kim → spredningsteori.

## Status

Hvilende/indledende — struktur under overvejelse. Intet kapitel skrevet endnu.

## Skriverkonventioner (fælles med de øvrige kompendier)

- Kapitelfiler som modulære \input-filer i `kapitler/`, inkluderet fra main.tex
- Kapitler på ca. 500–950 linjer
- Udledninger trin for trin — aldrig "det kan vises at..."
- Mindst én TikZ-figur pr. hovedafsnit
- Datagrundede figurer (beregnede/målte værdier) frem for frihåndsskitser, hvor det er muligt
- "Idiotsikre løsninger": kritiske trin automatiseres i scripts frem for manuelle instruktioner
- Motivation før formalisme — fysisk intuition før matematisk apparat

## LaTeX-opsætning ("den sædvanlige opsætning")

- mathpazo/Palatino, A4 twoside, fancyhdr med lige/ulige-logik, dansk babel
- Farvede mdframed-miljøer: blå til eksempel, orange/sepia til bemærkning/opgave
- physics-pakken; TikZ med standardbiblioteker
- Se `praeambel.tex` for den fulde opsætning

## Åbne spørgsmål (til grubling)

- Skal Del I følge Kristensens/kvantemekanik-kompendiets "motivation før formalisme"-stil,
  eller er en mere analytisk-mekanik-drevet fremstilling passende her (stoffet er i sagens
  natur mere formelt: kanoniske transformationer, genererende funktioner,
  Poisson-parenteser, virkning-vinkel-variable)?
- Rækkefølge/parallelitet i forhold til kvantemekanik-kompendiet: vente til det er
  færdigt, eller køre projekterne parallelt?
- Omfang: Lagrange/Hamilton alene anslået til 8-10 kapitler, hele Hamilton-Jacobi-delen
  yderligere 10-15 — kompendiet er i sig selv på størrelse med eller større end
  kvantemekanik-kompendiet.
- Hvor stopper kompendiet? Ved sti-integral-formuleringens kim, eller fortsætter det
  ind i egentlig spredningsteori (S-matrix)?

## Kildegrundlag

Intet fast kildemateriale endnu (i modsætning til kvantemekanik-kompendiets
Kristensen-noter). Projektet bygges fra bunden ud fra klassisk analytisk mekanik-
og kvantefeltteori-litteratur, i takt med at strukturen lægges fast.
