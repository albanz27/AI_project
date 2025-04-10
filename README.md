# Istruzioni per l'esecuzione del programma MiniZinc

## Requisiti
- MiniZinc (versione consigliata 2.x o superiore)
- Gecode (o altro solver compatibile con MiniZinc)

## Preparazione
1. Assicurati di avere MiniZinc installato sul tuo sistema. Puoi scaricarlo dal [sito ufficiale di MiniZinc](https://www.minizinc.org).
2. Verifica che il solver scelto (ad esempio, Gecode) sia installato e configurato correttamente. Puoi farlo tramite le impostazioni di MiniZinc.

## Esecuzione

1. **Scarica i file**
   - Scarica dalla repository su Codeberg i seguenti file sorgente e dataset:
     - `NegoziMagazzini.mzn`
     - `istanza_1.dzn`
     - `istanza_2.dzn`
     - `istanza_3.dzn`

2. **Accedi alla directory**
   - Apri il terminale e spostati nella cartella contenente i tuoi file con il comando:
     ```bash
     cd C:\Users\AI_project
     ```

3. **Verifica la posizione dei file**
   - Assicurati che i file `NegoziMagazzini.mzn`, `istanza_1.dzn`, `istanza_2.dzn` e `istanza_3.dzn` siano nella stessa directory. Puoi verificare la loro presenza con il comando:
     ```bash
     ls
     ```

4. **Esegui il programma**
   - Una volta completati i passaggi precedenti, puoi eseguire il programma MiniZinc dal terminale o dalla linea di comando utilizzando i seguenti comandi:
     ```bash
     minizinc --solver Gecode NegoziMagazzini.mzn istanza_1.dzn

     minizinc --solver Gecode NegoziMagazzini.mzn istanza_2.dzn

     minizinc --solver Gecode NegoziMagazzini.mzn istanza_3.dzn
     ```
