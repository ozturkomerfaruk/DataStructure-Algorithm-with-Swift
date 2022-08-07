# [7, 5, 1, 8, 3, 6, 0, 9, 4, 2]

# dizisinin Binary-Search-Tree aşamalarını yazınız. Örnek: root x'dir. root'un sağından y bulunur. Solunda z bulunur vb.

1. kök 7 dir.
2. 5 sayısı 7'den küçük olduğu için soluna yazılır.
3. 1 sayısı 5'ten küçük olduğu için 5'in soluna yazılır.
4. 8 sayısı 7'den büyüktür ve bu yüzden 8'in sağına yazılır.
5. 3 sayısı 7'den küçük 5'ten küçük ama 1'den büyük 1'in sağına yazılır.
6. 6 sayısı 7'den küçük ama 5'ten büyük 5'in sağına yazılır.
7. 0 sayısı 7'den, 5'ten, 1'den küçük 1'in soluna yazılır.
8. 9 sayısı 7'den büyük ve 8'den büyük 8'in sağına yazılır.
9. 4 sayısı 7'den, 5'den küçük devamında da 1'den ve 3'den büyük 3'ün sağına yazılır.
10. 2 sayısı 7'den, 5'den küçük, 1'den büyük ve 3'den küçüktür. 3'ün soluna yazılır.

           7
          / \
         5   8
        / \   \
       1   6   9
      / \
     0   3 
        / \
       2    4
       
 Ağaç gösterimi bu şekildedir.
