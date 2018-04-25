## Projekt na zaliczenie z nosql

Informacje
-------
Projekt został napisany w języku Ruby i korzysta z Ruby MongoDB Driver.
Przed uruchomieniem skryptów należy:
1. Należy uruchomić Replica set.
2. Dokonujemy importu danych(11969 rekordów) przy pomocy wywołania znajdującego się w pliku "import.txt".\
2a. Możemy sprawdzić czy import przebiegł pomyślnie wykorzystując polcenie "db.thor.findOne()".\
Wyświetli ono pierwszy rekord.


Skrypty
-------
1. **skrypty/agregacja1.rb**

Skrypt wykonuje podsumowanie ilości misji bombowych wykonanych przez poszczególne państwa.
Tabela:
<table>
  <tr>
    <th>_id</th>
    <th>count</th>
  </tr>
  <tr>
    <td>UNITED STATES OF AMERICA</td>
    <td>8406</td>
  </tr>
  <tr>
    <td>VIETNAM (SOUTH)</td>
    <td>3129</td>
  </tr>
  <tr>
    <td>LAOS</td>
    <td>204</td>
  </tr>
  <tr>
    <td>KOREA (SOUTH)</td>
    <td>146</td>
  </tr>
  <tr>
    <td>AUSTRALIA</td>
    <td>68</td>
  </tr>
  <tr>
    <td>OTHER</td>
    <td>16</td>
  </tr>
</table>
<to_s/>

2. **skrypty/agregacja2.rb**
Skrypt tworzy diagram porównujący skalę w jakiej poszczególne rodzaje sił zbrojnych brały udział w operacjach bombowych.

