# Projektdagbog — Hamilton-Jacobi-kompendiet

Kronologisk log over beslutninger og fremdrift. Nyeste øverst.

---

## 2026-09-30 — Udvidelse af kap. 7, 8, 10; ny betinget sideparitets-løsning

Jørn ophævede en selvpålagt, uskreven begrænsning på kapitellængden
(i forbindelse med det nye kaos/statistik-mekanik-kompendium, hvor
begrænsningen for alvor blev synlig som et problem) og bad om, at
kap. 7, 8 og 10 — de kapitler, der bærer overgangene til de øvrige
kompendier — blev gennemgået og udvidet med det for øje.

Tilføjelser:
- Kap. 7 fik et nyt geometrisk afsnit om bevægelsestorusen (med
  figur) samt et fuldt Kepler-/Coulomb-eksempel med flere
  frihedsgrader, der viser $J_r+J_\phi$-degenerationen bag
  hydrogenatomets "tilfældige" kvantedegeneration — og forbereder
  eksplicit et fremtidigt kaos-kompendiums KAM-sætning (resonante vs.
  inkommensurable tori).
- Kap. 8 fik et intuitivt afsnit før det formelle bevis, en
  bemærkning om adiabatisk invarians' sammenbrud nær en separatrix
  (endnu en kaos-bro), og et udvidet korrespondensprincip-afsnit med
  niveautætheden $\rho(E)=\tau(E)/h$ (peger mod statistisk mekanik).
- Kap. 10 fik et nyt eksempel: det komplekse $U(1)$-felt i
  Hamilton-billedet, hvor Noether-ladningen $Q$ vises at være sin
  egen Poisson-generator, $\delta\psi=\varepsilon\{\psi,Q\}$ — en
  direkte forløber for QFT-kompendiets ladningsoperator.

Under første compilering ramte vi en reel fejl: `\oint` var brugt
uden for matematik-tilstand i løbende tekst i kap. 7 (linjen om
faktor 2 i $J_r$-integralet), hvilket udløste en kaskade af
LaTeX-fejl ("Missing $ inserted" → mismatch heleigennem til
`\end{eksempel}`). Rettet ved at sætte `\oint` i `$...$`.

Da kompendiet voksede med 9 sider (76→85 uden korrektion), viste det
sig, at den tidligere "altid to blanke sider før bagsiden"-løsning
kun havde virket ved et tilfælde: den lægger altid netop 1 ekstra
side til (ikke 2), og garanterer derfor kun et lige sidetal, hvis
sidetallet lige inden var ulige på et bestemt tidspunkt — hvilket
ikke længere var tilfældet, efter indholdet voksede. Erstattet med en
betinget løsning:
```
\ifodd\value{page}
  \thispagestyle{empty}
  \mbox{}
  \newpage
\fi
```
lige efter den første garanterede blanke side. Denne tilgang blev
tidligere (i en anden sammenhæng, med den nu-fjernede
`titlepage`-baserede bagside) mistænkt for ikke at konvergere — men
med bagsiden som en almindelig side (uden `titlepage`s interne
`\cleardoublepage`) konvergerer den nu stabilt: testet over 5
sammenhængende compileringspas uden ændring i sidetal (84 sider,
bagsiden på side 84).

Filerne blev denne gang overført til enheden med
`device_commit_files` og efterfølgende verificeret med `md5sum`
direkte på enheden (samme kontrol, som tidligere afslørede værktøjets
upålidelighed) — denne gang matchede kontrolsummerne.

---

## 2026-09-27 — Lige sidetal til tosidet udskrivning: bagsiden uden titlepage

Jørn påpegede korrekt, at den ekstra blanke side (for at få et lige
sidetal) skal ligge FØR bagsiden, ikke efter — ellers ville bagsiden
selv ende på en ulige side og printes forkert på et tosidet ark.

Rodårsag til at et forsøg på dette gav en uventet ekstra side med kun
sidehoved: `titlepage`-miljøet i klassen `book` (som er `twoside` som
standard) indeholder internt et `\cleardoublepage`, der ALTID tvinger
den efterfølgende side til at være ulige — hvis den ikke allerede er
det, indsætter LaTeX selv en ekstra side (med det almindelige
sidehoved, da intet undertrykker det) for at nå derhen. Så uanset hvor
mange blanke sider der blev sat ind før bagsiden, "korrigerede"
`titlepage` det tilbage til et ulige sidetal.

Rettelse: bagsiden bruger nu ikke `titlepage`-miljøet længere, men en
almindelig side (`\clearpage \thispagestyle{empty} \begingroup...
\endgroup \clearpage`) med samme visuelle indhold. Dermed kan der
frit indsættes lige mange blanke sider før den, og det samlede
sidetal bliver nu lige. Verificeret i test-sandkassen (med ægte
dansk babel): 76 sider i alt, to helt blanke sider (uden sidehoved)
efter stikordsregisteret, bagsiden på side 76 (lige).

---

## 2026-09-27 — Rettet compileringsfejl: lige gåseøjne under dansk babel

Jørn sendte en fejlliste fra sin egen MiKTeX-compilering. Rodårsagen:
kompendiet brugte almindelige, lige `"..."`-gåseøjne omkring citerede
ord/vendinger mange steder i teksten — helt harmløst under engelsk
babel (som blev brugt som en midlertidig test-workaround i denne
session, fordi det danske sprogmodul manglede i test-sandkassen), men
`babel[danish]` gør `"` til et aktivt shorthand-tegn. I kapitel 6's
sektionsoverskrift ``Det geometriske billede: $S$ som en "bølgefront"``
ramte dette ind i hyperref's PDF-strengsbehandling af
kapiteloverskriften og udløste en kaskade af parentes-/gruppefejl, der
også ødelagde den efterfølgende TikZ-figur.

Rettelse: alle ca. 74 forekomster af lige gåseøjne på tværs af alle 10
kapitler erstattet med korrekte LaTeX-gåseøjne (``` ``...'' ```).
Det danske sprogmodul (`texlive-lang-european`) blev denne gang
installeret i test-sandkassen, så rettelsen kunne verificeres med den
\emph{rigtige} `babel[danish]`-opsætning (ikke kun engelsk-workaroundet)
— fuld compilering (pdflatex → makeindex → pdflatex) gennemført helt
uden fejl eller advarsler, 75 sider.

Læring til fremtidige kompendier: engelsk-babel-workaroundet i
test-sandkassen kan skjule ægte fejl, der kun opstår under dansk babels
shorthand-tegn (`"`, men også `'` og `` ` `` i visse sammenhænge) —
bør fremover tjekkes eksplicit, eller sandkassen bør have det danske
sprogmodul installeret fra start.

---

## 2026-09-27 — Forside og bagside tilføjet

Jørn bemærkede, at der nu blot manglede en forside og en bagside med
en beskrivelse af indholdet.

Forsiden (titlepage i main.tex, erstatter \maketitle) viser titel,
undertitel og forfatter, samt et TikZ-emblem: en faserumsellipse med
virkningsvariablen $J=\oint p\,dq$ (jf.\ kapitel 7), krydset af
"bølgefront"-kurver $S=$konstant (jf.\ kapitel 6's geometriske
billede) — et motiv der visuelt opsummerer kompendiets vej fra
klassisk mekanik til den semiklassiske grænse.

Bagsiden (en ny titlepage-side lige efter \printindex) bruger et andet
motiv — indlejrede faserumsellipser, der ekkoer
Bohr-Sommerfeld-kvantiseringen $J_n=nh$ — samt en kort blurb om
kompendiets formål og en punktliste over hovedemnerne.

Fuld test-compilering (pdflatex → makeindex → pdflatex) bekræftet
fejlfri med begge nye sider (kompendiet er nu 75 sider i testmiljøet).
En mindre TikZ-syntaksfejl (`\a and \b` uden mellemrum efter
foreach-substitution) blev fanget og rettet under test-compileringen.

Næste skridt: ingen planlagte — kompendiet fremstår nu som et
komplet, indbundet udseende værk (forside, indholdsfortegnelse,
kapitler, register, bagside).

---

## 2026-09-27 — Stikordsregister sat op og udfyldt

Jørn spurgte, om indholdsfortegnelse og stikordsregister var på
plads. Indholdsfortegnelsen var i orden, men der var intet
stikordsregister — Jørn bad om, at det blev sat op ordentligt fra
starten.

Infrastruktur: `makeidx`-pakken og `\makeindex` tilføjet i
praeambel.tex, `\printindex` tilføjet i main.tex, og Makefile's
`clean`-target udvidet til at rydde `.idx`/`.ilg`/`.ind`-filer.

Alle 10 kapitler er derefter gennemgået systematisk, og
`\index{}`-markeringer er indsat ved hver central fagterms
definerende forekomst — 69 opslagsord i alt, inkl.\ underopslag hvor
naturligt (fx "tvangsbetingelse!holonom",
"Euler-Lagrange-ligningerne!for felter", "Poisson-parentes!felt-") og
en "see"-henvisning ("holonom tvangsbetingelse" → "tvangsbetingelse,
holonom"). Fuld test-compilering (pdflatex → makeindex → pdflatex) er
gennemført uden fejl eller advarsler.

Næste skridt: ingen planlagte — kompendiets første fulde udkast,
inkl.\ register, er nu færdigt. Mulige senere skridt: korrekturlæsning
i sammenhæng og facitliste til opgaverne.

---

## 2026-09-27 — Kapitel 9 udvidet med fuld Noether-behandling af felter

Jørn er i gang med at oprette et nyt, kommende projekt om
spredningsteori og QFT, som forudsætter en kort "Del 0" om klassisk
feltteori (Lagrange-tæthed, Euler-Lagrange for felter, Noethers
sætning for energi/impuls/ladning som bevarede strømme). Ved
gennemgang stod det klart, at kapitel 9 her kun dækkede
tidstranslation → energi; rumtranslation → impuls og intern
$U(1)$-symmetri → ladning manglede.

Kapitel 9 er derfor udvidet med to nye afsnit: rumtranslationssymmetri
(impulstæthed $\mathcal{P}$ og -strøm/spænding $\mathcal{T}$, med
bemærkning om at $\mathcal{P},\mathcal{H}$ er komponenter af
energi-impuls-tensoren), og intern symmetri (et komplekst felt
$\psi$, $U(1)$-fasesymmetri, ladningstæthed $\rho$ og -strøm $j$ — med
en bemærkning om, at $\rho\propto\text{Im}(\psi^\ast\dot\psi)$ er
strukturelt identisk med kvantemekanikkens sandsynlighedstæthed). Ny
figur, der viser det fælles kontinuitetsligning-mønster bag alle tre
bevarelseslove. To nye opgaver (i alt fire i kapitlet).

Hele kompendiet er genkompileret uden fejl efter udvidelsen (to pas,
alle kryds-referencer OK). Diskuterede desuden, om klassisk
spredningsteori burde tilføjes som et 11. kapitel her — konklusion
(Jørn tilsluttede sig): nej, det hører hjemme som det nye
QFT-projekts eget indledende kapitel, ikke her; dette kompendiums
afgrænsning (stopper ved den ældre kvanteteori + klassisk feltteori)
står fast.

---

## 2026-09-27 — Kapitel 10 skrevet: første fulde udkast af kompendiet færdigt

Kapitel 10, "Hamiltonsk feltteori", er skrevet, compileret uden fejl,
og aktiveret i main.tex. Legendre-transformerer feltet
($\pi=\partial\mathcal{L}/\partial\dot\varphi$), udleder Hamiltons
ligninger for felter fra et modificeret Hamiltons princip (med det
ekstra rumlige led, der skyldes $\mathcal{H}$'s afhængighed af
$\varphi'$), viser strengen i Hamilton-billede som konsistenstjek mod
kapitel 9, og udleder de fundamentale felt-Poisson-parenteser
$\{\varphi(x),\pi(y)\}=\delta(x-y)$ ved kontinuumsgrænse af de
diskrete parenteser — den klassiske forløber for QFT's
ligetids-kommutator. Kapitlet, og dermed kompendiet, slutter med en
kort konklusion, der samler hele rejsen og peger mod de to opfølgende
kompendier (kvantemekanik og QFT).

Del IV (Spredningsteori) er fjernet fra main.tex, i overensstemmelse
med den aftalte afgrænsning fra 2026-09-27 (se nedenfor): kompendiet
stopper her.

**Alle 10 kapitler er nu skrevet, og hele kompendiet compilerer
uden fejl (bekræftet med to compileringspas for kryds-referencer).**
Dette er første fulde udkast. Naturlige næste skridt: gennemlæsning i
sammenhæng, evt.\ udbygning, facitliste og indeks — se STATUS.md.

---

## 2026-09-27 — Kapitel 9 skrevet

Kapitel 9, "Klassisk feltteori", er skrevet, compileret uden fejl, og
aktiveret i main.tex. Udleder kontinuumsgrænsen fra en diskret kæde af
koblede oscillatorer til et felt (TikZ-figur), Euler-Lagrange-
ligningen for felter fra et fuldt udført variationsprincip (med
randtermer diskuteret), bølgeligningen for strengen som gennemarbejdet
eksempel, og Noethers sætning for felter (kontinuitetsligning for
energitæthed/-strøm). Slutter med et udblik mod relativistisk
notation og Klein-Gordon-Lagrangianen, som forbereder det senere
QFT-kompendium. To opgaver.

Næste og sidste skridt: kapitel 10 (Hamiltonsk feltteori).

---

## 2026-09-27 — Kapitel 8 skrevet (nøglekapitel: broen til den ældre kvanteteori)

Kapitel 8, "Adiabatiske invarianter — broen til den ældre kvanteteori",
er skrevet, compileret uden fejl, og aktiveret i main.tex (Del III
påbegyndt). Udleder adiabatisk invarians af virkningsvariablen $J$
med et fuldt (om end ikke stringent-matematisk) argument, illustrerer
med oscillator-eksemplet $E/\omega=\text{konst.}$ (TikZ-figur), og når
frem til Bohr-Sommerfeld-kvantiseringen $J=nh$. To gennemarbejdede
eksempler: oscillatoren ($E_n=nh\nu$, sammenlignet ærligt med den
korrekte $(n+\tfrac12)h\nu$ og den manglende nulpunktsenergi) og
partiklen i kassen (hvor den ældre teori giver det \emph{eksakte}
kvantemekaniske resultat). Slutter med korrespondensprincippet. To
opgaver.

Næste skridt: kapitel 9 (Klassisk feltteori).

---

## 2026-09-27 — Kapitel 7 skrevet

Kapitel 7, "Virknings-vinkel-variable", er skrevet, compileret uden
fejl, og aktiveret i main.tex. Indeholder: klassifikation af
libration/rotation, virkningsvariablen $J=\oint p\,dq$ med geometrisk
tolkning (TikZ-figur), udledning af at $\nu=dE/dJ=1/\tau$ er
svingningsfrekvensen (uden at skulle finde $q(t)$ eksplicit), et
gennemarbejdet eksempel med den harmoniske oscillator ($E=\nu J$,
direkte optakt til Plancks kvantiseringsbetingelse), og separable
systemer med flere frihedsgrader. To opgaver.

Næste skridt: kapitel 8 (Adiabatiske invarianter — broen til den
ældre kvanteteori). Dette er sammen med kapitel 10 et af de to
nøglekapitler, der peger direkte mod kvantemekanik-kompendiet.

---

## 2026-09-27 — Kapitel 6 skrevet (kompendiets omdrejningspunkt)

Kapitel 6, "Hamilton-Jacobi-teori", er skrevet, compileret uden fejl,
og aktiveret i main.tex (Del II påbegyndt). Udleder Hamilton-Jacobi-
ligningen fra strategien om at finde en kanonisk transformation til
$K\equiv0$, bekræfter at $S$ er virkningen ($dS/dt=L$), giver den
fulde løsningsprocedure, separerer tidsafhængigheden for
tidsuafhængig $H$, og løser den harmoniske oscillator fuldstændigt
som et gennemarbejdet eksempel (inkl. tjek at $p=m\dot x$ og
$H=E$ er opfyldt identisk). Geometrisk bølgefront-billede med
TikZ-figur, og et udblik mod den semiklassiske grænse af
kvantemekanikken. Tre opgaver.

Næste skridt: kapitel 7 (Virknings-vinkel-variable).

---

## 2026-09-27 — Kapitel 5 skrevet

Kapitel 5, "Kanoniske transformationer", er skrevet, compileret uden
fejl, og aktiveret i main.tex. Indeholder: udledning af genererende
funktioner (type $F_1$ og $F_2$) fra et modificeret Hamiltons princip,
eksemplet hvor $q$ og $p$ bytter rolle (viser Hamilton-formalismens
symmetri mellem koordinater og impulser), infinitesimale kanoniske
transformationer og relationen $\delta f=\varepsilon\{f,G\}$, med den
vigtige pointe at $H$ selv genererer tidsudviklingen som en kanonisk
transformation — dette er sat op som direkte forberedelse til
Hamilton-Jacobi-ligningen i kapitel 6. Slutter med invariansen af
Poisson-parenteser under kanoniske transformationer (TikZ-figur). Fire
opgaver.

Næste skridt: kapitel 6 (Hamilton-Jacobi-teori) — kompendiets centrale
kapitel.

---

## 2026-09-27 — Kapitel 4 skrevet

Kapitel 4, "Poisson-parenteser og kanonisk struktur", er skrevet,
compileret uden fejl, og aktiveret i main.tex. Indeholder: definitionen
af Poisson-parentesen udledt fra $df/dt$ for en vilkårlig
faserumsfunktion, de fundamentale parenteser, de algebraiske
egenskaber (antisymmetri, Leibniz, Jacobi), bevarelseskriteriet
$\{f,H\}=0$, et fuldt udført eksempel med banemomentets Poisson-
algebra ($\{L_x,L_y\}=L_z$), og Liouvilles sætning med en TikZ-figur.
Tre opgaver.

Næste skridt: kapitel 5 (Kanoniske transformationer).

---

## 2026-09-27 — Kapitel 3 skrevet

Kapitel 3, "Hamilton-formalisme", er skrevet, compileret uden fejl, og
aktiveret i main.tex. Indeholder: Legendre-transformationen (generel
form + anvendt på $L$), udledning af Hamiltons ligninger via
sammenligning af to udtryk for $dH$, resultatet $dH/dt=\partial
H/\partial t$, og et fuldt udført eksempel (harmonisk oscillator) med
faseportræt som TikZ-figur. Tre opgaver, herunder kanonisk impuls for
en ladet partikel i et EM-felt.

Næste skridt: kapitel 4 (Poisson-parenteser og kanonisk struktur).

---

## 2026-09-27 — Kapitel 2 skrevet; rettede farvefejl i kapitel 1

Kapitel 2, "Lagrange-formalisme", er skrevet og aktiveret i main.tex.
Compileret uden fejl. Udleder Euler-Lagrange-ligningerne to veje (fra
D'Alembert og fra Hamiltons princip/variationsregning), viser deres
ækvivalens, behandler Lagrange-multiplikatorer for tvangsbetingelser,
og indfører cykliske koordinater og Noethers sætning (tidssymmetri →
bevaret $H$). Indeholder én TikZ-figur (perle på roterende ring, med
bifurkation som ekstra pointe) og tre opgaver.

Ved samme lejlighed opdaget og rettet: TikZ-figuren i kapitel 1 brugte
farven "ForestGreen", som kræver `dvipsnames`-pakken og ikke ville
compilere med den nuværende praeambel.tex — ændret til `green!55!black`
i begge kapitler.

Næste skridt: kapitel 3 (Hamilton-formalisme).

---

## 2026-09-27 — Kapitel 1 skrevet

Kapitel 1, "Newtonsk mekanik og variationsprincipper", er skrevet og
aktiveret i main.tex. Compileret uden fejl (kun forventede advarsler om
referencer til kapitel 2, som endnu ikke findes). Indeholder to
opgaver, én TikZ-figur (kugle på skråplan) og udleder D'Alemberts
princip fra Newtons love via virtuel forskydning/virtuelt arbejde, med
et udblik mod Hamiltons princip.

Næste skridt: kapitel 2 (Lagrange-formalisme).

---

## 2026-09-27 — Arbejdsplan og kapitelstruktur lagt fast

Afklaret:
- Formål: kompendiet skal bygge frem til det tankegods, der var på plads
  ved kvantemekanikkens opståen (ældre kvanteteori: Bohr-Sommerfeld,
  adiabatiske invarianter) — ikke frem til QFT selv. QFT/spredningsteori
  udskydes til et senere, separat kompendium.
- Klassisk feltteori skal med, som forberedelse til det senere QFT-kompendium.
- Der skal krydshenvises løbende til kvantemekanik-kompendiet.
- Kapitelstruktur fastlagt, 10 kapitler fra Newtonsk mekanik til Hamiltonsk
  feltteori — se STATUS.md for fuld liste og begrundelse.

Næste skridt: begynde skrivning af kapitel 1.

---

## 2026-09-16 — Projektet oprettet (hvilende)

Idéen opstod som en sidebemærkning under arbejdet med kvantemekanik-kompendiet:
en bog, der udvikler Lagrange-, Hamilton- og Hamilton-Jacobi-teori og bruger det
som vej mod kanonisk kvantisering, sti-integraler og kvantefeltteori/spredningsteori.

Afklaret undervejs:
- Det er et selvstændigt projekt — erstatter ikke kvantemekanik-kompendiet.
- Arbejdstitel fastlagt: "Hamilton-Jacobi-kompendiet" (konsistent med de øvrige
  kompendienavne).
- Projektet lægges til at hvile, mens kvantemekanik-kompendiet fortsætter.
  Indledende mappestruktur oprettet nu, så Jørn kan gruble over kapitelstruktur
  og stilvalg, uden at det binder skrivearbejde endnu.

Åbne spørgsmål noteret i CLAUDE.md til senere stillingtagen.
