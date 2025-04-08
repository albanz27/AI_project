% Dati di input
int: n; % numero di negozi
int: m; % numero di magazzini

set of int: N = 1..n;
set of int: M = 1..m;
set of int: C = 10..100;

array[N, M] of var C: c; % costo c[i,j] per rifornire negozio i dal magazzino j
array[M] of int: S; % capacità di ciascun magazzino
array[M] of int: A; % costo di acquisto di ciascun magazzino
array[M] of int: V; % valore di rivendita

% Variabili decisionali
array[M] of var bool: a; % true se il magazzino è acquistato
array[N] of var M: supplier; % supplier[i] è il magazzino che rifornisce il negozio i, è anche il vincolo che ogni negozio è rifornito da un solo magazzino

% Vincoli
constraint forall(i in N)(
    a[supplier[i]] % posso usare solo magazzini aperti
);

constraint forall(j in M)(
    sum(i in N where supplier[i] = j)(1) <= S[j] % capacità magazzino
);

% Funzione obiettivo: costo totale
var int: total_cost =
    sum(i in N)(c[i, supplier[i]]) +  % costi di rifornimento
    sum(j in M)(bool2int(a[j]) * (A[j] - V[j])); % costo netto magazzini

solve minimize total_cost;

% Output formattato
output [
  "Magazzini acquistati:\n"
] ++
[
  "Magazzino \(j) " ++ if fix(a[j]) == 1 then "Acquistato" else "Non acquistato" endif ++ "\n"
  | j in M
] ++
[
  "\nAssegnazioni negozi:\n"
] ++
[
  "Negozio \(i) rifornito da Magazzino \(fix(supplier[i]))\n"
  | i in N
] ++
[
  "\nRiepilogo rifornimenti per magazzino:\n"
] ++
[
  "Magazzino \(j): \(sum(i in N where fix(supplier[i]) = j)(1)) negozi\n"
  | j in M
] ++
[
  "\nCosto totale: \(fix(total_cost))\n"
];
