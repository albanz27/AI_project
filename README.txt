# Istruzioni per l'esecuzione del programma MiniZinc

## Requisiti
- MiniZinc (versione consigliata 2.x o superiore)
- Gecode (o altro solver compatibile con MiniZinc)
  
## Preparazione
1. Assicurati di avere MiniZinc installato sul tuo sistema. Puoi scaricarlo da [MiniZinc ufficiale](httpswww.minizinc.org).
2. Assicurati che il solver scelto (ad esempio, Gecode) sia installato e configurato correttamente. Puoi verificarlo nelle impostazioni di MiniZinc.

## Esecuzione

1. Spostati nella directory
   - Spostati nella cartella contenente i tuoi file utilizzando il comando
     ```bash
     cd Cuserproject_Ai
     ```

2. Posizionamento dei file
   - Assicurati che i tuoi file `NegoziMagazzini.mzn`, `istanza_1.dzn` e `istanza_2.dzn` siano nella stessa directory. Puoi verificare la posizione con il comando
     ```bash
     ls
     ```

3. Comando per eseguire il programma
   - Una volta seguiti i comandi precedenti puoi eseguire il programma dal terminale o dalla linea di comando come segue
   ```bash
   minizinc --solver Gecode NegoziMagazzini.mzn istanza_1.dzn
