//Bubble sort - polega na porównywaniu dwóch kolejnych elementów i zmiany ich kolejności według porządku w jakim tablica jest sortowana

procedure bubbleSort( A : lista elementów do sortowania )
   n = liczba_elementów(A)
   do
     for (i = 0; i < n-1; i++) do:
       if A[i] > A[i+1] then
         swap(A[i], A[i+1])
       end if
     end for
     n = n-1
   while n > 1
 end procedure

//Quick Sort - W tablicy wybiera się element rozdzielający, który dzieli ją na dwie części. W pierwszej sortowane są elementy mniejsze od elementu rozdzielającego, a w drugiej większe.

PROCEDURE Quicksort(tablica, first, last)
  BEGIN
    If first< last THEN
BEGIN
        i := PodzielTablice(tablica, first, last);
        Quicksort(tablica, first, i-1); // sort. lewej str.
        Quicksort(tablica, i+1, r); //sort. prawej str.
      END
  END

PROCEDURE PodzielTablice(tablica, first, last)
  BEGIN
     IndeksPodzialu := ElementRozdzielajacy(first, last);
     wartoscPodzialu := tablica[indeksPodzialu];
     Zamien(tablica, indeksPodzialu, last); //przeniesienie elem. rozdzielającego na koniec
aktualnaPozycja := first;
     FOR i:=first TO last-1 DO
BEGIN
         IF tablica[i] < wartoscPodzialu THEN
         BEGIN
             Zamien(tablica, i, aktualnaPozycja);
             aktualnaPozycja := aktualnaPozycja + 1;
         END
     END
     Zamien(tablica, aktualnaPozycja, last);
return aktualnaPozycja;
  END
PROCEDURE ElementRozdzielajacy(first, last)
  BEGIN
     return first + (last - first) div 2;
  END
  PROCEDURE Zamien(tablica, i1, i2)
  BEGIN
    IF i1<>i2 THEN
    BEGIN

     aux := tablica[i1];
     tablica[i1] := tablica[i2];
     tablica[i2] := aux;
    END
  END


//Bucket Sort - Dzieli elementy na x przedziałów o takiej samej długości, następnie przypisuje sortowane elementy do odpowiednich przedziałów, gdzie są sortowane

function bucket-sort(array, n) is
  buckets
  for i = 0 to (length(array)-1) do
    insert array[i] into buckets[msbits(array[i], k)]
  for i = 0 to n – 1 do
    next-sort(buckets[i])
  return the concatenation of buckets[0], ... , buckets[n-1]

//Bucket Sort - Dzieli elementy na x przedziałów o takiej samej długości, następnie przypisuje sortowane elementy do odpowiednich przedziałów, gdzie są sortowane

function bucket-sort(array, n) is
  buckets
  for i = 0 to (length(array)-1) do
    insert array[i] into buckets[msbits(array[i], k)]
  for i = 0 to n – 1 do
    next-sort(buckets[i])
  return the concatenation of buckets[0], ..., buckets[n-1]


