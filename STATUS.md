# STATUS — Hamilton-Jacobi-kompendiet

Kapitelstruktur er nu lagt fast (2026-09-27). Skrivearbejdet er endnu ikke
begyndt.

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
- Kapitel 6 (Hamilton-Jacobi-teori) er næste skridt — kompendiets
  centrale kapitel.
