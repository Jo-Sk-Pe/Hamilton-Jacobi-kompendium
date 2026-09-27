# Hamilton-Jacobi-kompendiet

Hvilende/indledende projekt. Se `CLAUDE.md` for projektbeskrivelse, konventioner
og åbne spørgsmål, og `PROJEKTDAGBOG.md` for den kronologiske beslutningslog.

## Mappestruktur

```
.
├── main.tex            # Hoveddokument
├── praeambel.tex        # Fælles opsætning ("den sædvanlige opsætning")
├── kapitler/            # Kapitelfiler (\input fra main.tex)
├── figurer/             # TikZ-outputs, data-grundede figurer m.m.
├── CLAUDE.md            # Autoritativ projektreference
├── PROJEKTDAGBOG.md     # Kronologisk log over beslutninger
└── STATUS.md            # Kapitelstruktur og fremdrift (udfyldes efterhånden)
```

## Bygning

```
make
```
