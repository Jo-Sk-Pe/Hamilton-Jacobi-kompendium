# STATUS — Hamilton-Jacobi-kompendiet

Alle 10 kapitler er skrevet og compilerer uden fejl (2026-09-27) —
kompendiets første fulde udkast er færdigt.

## 2026-09-30 — Udvidelse af kap. 7, 8, 10 (ophævet længdebegrænsning)

Jørn besluttede at ophæve en selvpålagt (uskreven) længdebegrænsning
på kapitlerne, i lyset af arbejdet med det nye kaos/statistik-
kompendium. Kap. 7, 8 og 10 blev udpeget som de kapitler, der havde
lidt mest under den — netop dem, der bærer overgangene til de andre
kompendier — og er nu udvidet:

- **Kap. 7**: nyt afsnit om bevægelsestorusen (med figur) og et fuldt
  udregnet flerdimensionalt eksempel (Kepler-/Coulomb-problemet,
  $J_r+J_\phi$-degenerationen, hydrogenatomets "tilfældige"
  kvantedegeneration). Peger eksplicit frem mod KAM-sætningen og det
  planlagte kaos-kompendium (resonante vs.\ inkommensurable tori).
- **Kap. 8**: nyt intuitivt afsnit før det formelle bevis for
  adiabatisk invarians; ny bemærkning om sammenbrud nær en separatrix
  ("adiabatisk kaos") som endnu en bro til kaos-kompendiet; udvidet
  korrespondensprincip-afsnit med niveautætheden $\rho(E)=\tau(E)/h$,
  som også peger mod et fremtidigt statistisk mekanik-kompendium.
- **Kap. 10**: nyt eksempel med det komplekse $U(1)$-felt i
  Hamilton-billedet, der viser at Noether-ladningen $Q$ selv er
  Poisson-generator af symmetrien ($\delta\psi=\varepsilon\{\psi,Q\}$)
  — direkte forberedelse til QFT-kompendiets ladningsoperator.
  Uddybet kvantiseringsafsnittet ($\{\cdot,\cdot\}\to\tfrac{1}{i\hbar}[\cdot,\cdot]$).
  To nye opgaver.

Sidetallet voksede fra 76 til 84 sider. Den betingede
side-paritetsløsning (`\ifodd\value{page}`) erstattede den tidligere
faste "altid to blanke sider"-løsning, som kun tilfældigt gav et
lige sidetal — se PROJEKTDAGBOG.md for detaljer. Fuldt testet
(pdflatex→makeindex→pdflatex×2) med rigtig dansk babel: 0 fejl, 84
sider, bagsiden på side 84 (lige).

## 2026-09-30 (2) — Facitliste tilføjet

I lyset af konventionen fra de øvrige kompendier (fx lineær algebra-
kompendiet) er der nu tilføjet en facitliste til alle kompendiets 29
opgaver (2-4 pr.\ kapitel). Facitlisten (`kapitler/facitliste.tex`)
er indsat i backmatter, lige efter kapitel 10 og før stikordsregistret.
Den giver facit og korte løsningsskitser, ikke fulde udførte
udregninger (opgaverne beder typisk netop om selv at gennemføre en
udregning, hvis opskrift står i teksten).

Sidetallet voksede til 90 sider (fra 84). Testet fejlfrit
(pdflatex→makeindex→pdflatex×3) med rigtig dansk babel; den betingede
sideparitetsløsning fungerede uden ændringer og gav stadig præcis to
blanke sider og bagsiden på en lige side (side 90).

## Formål og afgrænsning

Kompendiet skal bygge frem til det tankegods, der var på plads ved
kvantemekanikkens opståen (den ældre kvanteteori: Bohr-Sommerfeld,
adiabatiske invarianter) — ikke frem til kvantefeltteori (QFT) selv.
QFT og spredningsteori er emnet for et senere, separat kompendium.
Klassisk feltteori skal behandles i dette kompendium som forberedelse
dertil.

Der skal løbende krydshenvises til [kvantemekanik-kompendiet], især hvor
det klassiske stof direkte forbereder eller motiverer stof der (f.eks.
Bohr-Sommerfeld → bølgefunktion/Schrödinger, HJ-ligningen ↔ klassisk
grænse af Schrödinger-ligningen).

## Kapitelstruktur

1. Newtonsk mekanik og variationsprincipper (D'Alembert, virtuelt arbejde)
2. Lagrange-formalisme (Euler-Lagrange, tvangsbetingelser, symmetrier/Noether)
3. Hamilton-formalisme (Legendre-transformation, Hamiltons ligninger, faserum)
4. Poisson-parenteser og kanonisk struktur
5. Kanoniske transformationer
6. Hamilton-Jacobi-teori (HJ-ligningen, separation af variable)
7. Virknings-vinkel-variable og periodiske systemer
8. Adiabatiske invarianter — broen til den ældre kvanteteori (Bohr-Sommerfeld)
9. Klassisk feltteori (Lagrange-tæthed, Euler-Lagrange for felter, Noether for felter)
10. Hamiltonsk feltteori (afsluttende — peger frem mod QFT-kompendiet)

Kapitel 8 og 10 er nøglekapitlerne, der peger videre mod de næste kompendier
(kvantemekanik hhv. QFT), og skal derfor have ekstra vægt på de
begrebsmæssige overgange.

## Fremdrift

- Kapitel 1 (Newtonsk mekanik og variationsprincipper) skrevet og
  compileret uden fejl (2026-09-27). Dækker frihedsgrader,
  generaliserede koordinater, holonome/ikke-holonome tvangsbetingelser,
  virtuel forskydning, virtuelt arbejde og D'Alemberts princip, samt et
  udblik mod Hamiltons princip og variationsprincipper generelt.
- Kapitel 2 (Lagrange-formalisme) skrevet og compileret uden fejl
  (2026-09-27). Udleder Euler-Lagrange-ligningerne både fra
  D'Alemberts princip og fra Hamiltons princip (variationsregning),
  behandler Lagrange-multiplikatorer for ikke-eliminerede
  tvangsbetingelser, og indfører cykliske koordinater samt Noethers
  sætning (tidssymmetri → bevaret $H$, et forvarsel om
  Hamilton-funktionen).
- Kapitel 3 (Hamilton-formalisme) skrevet og compileret uden fejl
  (2026-09-27). Udleder Legendre-transformationen (generelt og anvendt
  på $L$), Hamiltons ligninger, og viser $dH/dt=\partial H/\partial t$.
  Eksempel: harmonisk oscillator med faseportræt (TikZ-figur). Tre
  opgaver, inkl. ladet partikel i EM-felt (kanonisk vs. mekanisk impuls).
- Kapitel 4 (Poisson-parenteser og kanonisk struktur) skrevet og
  compileret uden fejl (2026-09-27). Definerer Poisson-parentesen,
  de fundamentale parenteser, algebraiske egenskaber (inkl. Jacobi-
  identitet), bevarelseskriteriet $\{f,H\}=0$, banemomentets
  Poisson-algebra ($\{L_x,L_y\}=L_z$ cyklisk), og Liouvilles sætning
  (TikZ-figur). Tre opgaver.
- Kapitel 5 (Kanoniske transformationer) skrevet og compileret uden
  fejl (2026-09-27). Udleder genererende funktioner ($F_1$ og $F_2$)
  fra et modificeret Hamiltons princip, viser eksemplet hvor $q$ og
  $p$ bytter rolle, udleder infinitesimale kanoniske transformationer
  og forbindelsen $\delta f=\varepsilon\{f,G\}$ (med $G=H$ som
  generator af tidsudvikling selv — forbereder Hamilton-Jacobi),
  og noterer at kanoniske transformationer bevarer Poisson-strukturen
  (TikZ-figur). Fire opgaver.
- Kapitel 6 (Hamilton-Jacobi-teori) skrevet og compileret uden fejl
  (2026-09-27) — kompendiets centrale kapitel. Udleder HJ-ligningen
  som betingelsen $K\equiv 0$ for en kanonisk transformation
  (genererende funktion $S$), viser $S$ er virkningen ($dS/dt=L$),
  giver løsningsproceduren via $\beta_i=\partial S/\partial\alpha_i$,
  separation i tid til den tidsuafhængige HJ-ligning, og løser den
  harmoniske oscillator fuldstændigt via metoden. Geometrisk
  bølgefront-billede (TikZ-figur) og udblik mod den semiklassiske
  grænse af kvantemekanikken ($\psi\sim e^{iS/\hbar}$). Tre opgaver.
- Kapitel 7 (Virknings-vinkel-variable) skrevet og compileret uden
  fejl (2026-09-27). Definerer libration/rotation, virkningsvariablen
  $J=\oint p\,dq$ (TikZ-figur: areal i faserum), vinkelvariablen $w$
  og udleder $\nu=dE/dJ=1/\tau$ som svingningsfrekvensen. Løser den
  harmoniske oscillator via metoden ($E=\nu J$ — peger direkte mod
  Plancks $E=nh\nu$), og skitserer separable systemer med flere
  frihedsgrader. To opgaver.
- Kapitel 8 (Adiabatiske invarianter — broen til den ældre
  kvanteteori) skrevet og compileret uden fejl (2026-09-27). Udleder
  adiabatisk invarians af $J$ (plausibilitetsargument à la Landau),
  eksempel med oscillator ($E/\omega=$ konst., TikZ-figur),
  Bohr-Sommerfeld-kvantisering $J=nh$, kvantisering af oscillatoren
  ($E_n=nh\nu$, sammenlignet med den korrekte $(n+\tfrac12)h\nu$ —
  mangler nulpunktsenergi), partikel i kasse (eksakt
  $E_n=n^2h^2/(8mL^2)$), og korrespondensprincippet. To opgaver.
- Kapitel 9 (Klassisk feltteori) skrevet, udvidet og compileret uden
  fejl (2026-09-27). Udleder kontinuumsgrænsen fra diskret kæde til
  felt (TikZ-figur), Euler-Lagrange-ligningen for felter fra Hamiltons
  princip, bølgeligningen for strengen som eksempel, og Noethers
  sætning for felter i \emph{alle tre} tilfælde: tidstranslation
  → energitæthed/-strøm, rumtranslation → impulstæthed/spænding
  ($\mathcal{P},\mathcal{T}$), og intern $U(1)$-fasesymmetri af et
  komplekst felt → ladningstæthed/-strøm ($\rho,j$, strukturelt
  identisk med kvantemekanikkens sandsynlighedsstrøm). Fælles
  kontinuitetsligning-figur. Udblik mod energi-impuls-tensoren,
  relativistisk notation og Klein-Gordon-Lagrangianen. Fire opgaver.
  Dette giver feltteorien en komplet Noether-behandling
  (energi/impuls/ladning som bevarede strømme), som forudsætning for
  Jørns nye, kommende QFT/spredningsteori-projekt.
- Kapitel 10 (Hamiltonsk feltteori) skrevet og compileret uden fejl
  (2026-09-27) — kompendiets afsluttende kapitel. Legendre-
  transformerer feltet ($\pi=\partial\mathcal{L}/\partial\dot\varphi$),
  udleder Hamiltons ligninger for felter (med ekstra rumligt led),
  strengen i Hamilton-billede (konsistenstjek mod kapitel 9), og de
  fundamentale felt-Poisson-parenteser $\{\varphi(x),\pi(y)\}=\delta(x-y)$
  — den klassiske forløber for QFT's ligetids-kommutator. Kapitlet
  slutter med en kort, samlet konklusion på hele kompendiet.

## Status: første fulde udkast færdigt, inkl. stikordsregister

Alle 10 planlagte kapitler er skrevet, og hele main.tex compilerer
uden fejl på tværs af alle kryds-referencer (bekræftet med to
compileringspas, 2026-09-27). Del IV (Spredningsteori) er fjernet fra
main.tex's struktur, i overensstemmelse med den aftalte afgrænsning:
kompendiet stopper ved den ældre kvanteteoris tankegods og klassisk
feltteori; QFT og spredningsteori er emnet for det senere, separate
kompendium.

Stikordsregister (indeks) er nu sat op og udfyldt (2026-09-27):
- `makeidx`-pakken og `\makeindex` er tilføjet i praeambel.tex;
  `\printindex` er tilføjet i main.tex lige før `\end{document}`.
- Alle 10 kapitler har fået `\index{}`-markeringer ved de centrale
  fagtermer, ved deres første/definerende forekomst (69 opslagsord i
  alt), inkl.\ underopslag hvor det er naturligt (fx
  "tvangsbetingelse!holonom", "Euler-Lagrange-ligningerne!for
  felter", "Poisson-parentes!felt-") og en enkelt "see"-henvisning.
- Fuld test-compilering med `pdflatex → makeindex → pdflatex` er
  gennemført uden fejl eller advarsler (0 afviste opslagsord).
- Makefile's `clean`-target er udvidet til også at rydde
  `*.idx`/`*.ilg`/`*.ind`.

Forside og bagside er nu også på plads (2026-09-27):
- Forside (titlepage i main.tex): titel, undertitel, forfatter, og et
  emblem — en faserumsellipse med virkningsvariablen
  $J=\oint p\,dq$ (kapitel 7) krydset af "bølgefronter" $S=$konstant
  (kapitel 6), som visuelt sammenfatter kompendiets rejse fra klassisk
  mekanik til den semiklassiske grænse.
- Bagside (efter `\printindex`): et andet emblem — indlejrede
  faserumsellipser der ekkoer Bohr-Sommerfeld-kvantiseringen
  $J_n=nh$ — samt en kort blurb og en punktliste over kompendiets
  hovedemner.
- Bekræftet fejlfri test-compilering med begge tilføjede sider.

Naturlige næste skridt herfra (ikke påbegyndt):
- Gennemlæsning/korrekturlæsning af hele kompendiet i sammenhæng.
- Eventuel udbygning af enkelte afsnit eller flere opgaver.
- Facitliste/løsninger til opgaverne (jf.\ konventionen fra de øvrige
  kompendier).
