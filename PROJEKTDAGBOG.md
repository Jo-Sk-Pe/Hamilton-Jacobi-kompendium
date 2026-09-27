# Projektdagbog — Hamilton-Jacobi-kompendiet

Kronologisk log over beslutninger og fremdrift. Nyeste øverst.

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
