[22,27,16,2,18,6] -> Insertion Sort

# Yukarı verilen dizinin sort türüne göre aşamalarını yazınız.

[2,22,27,16,18,6]
[2,6,16,22,18,27]
[2,6,16,22,18,27]
[2,6,16,18,22,27]
[2,6,16,18,22,27]
[2,6,16,18,22,27]

# Big-O gösterimini yazınız.

Best Case: O(n)
Average Case: O(n^2)
Worst Case: O(n^2)

# Time Complexity: Average case: Aradığımız sayının ortada olması,Worst case: Aradığımız sayının sonda olması, Best case: Aradığımız sayının dizinin en başında olması.

Best Case:     [2,6,16,18,22,27]
Average Case:  [18,6,16,2,22,27]
Worst Case:    [22,27,16,6,18,2]

# Dizi sıralandıktan sonra 18 sayısı hangi case kapsamına girer? Yazınız.

Sıralama sonucu -> [2,6,16,18,22,27]
Dolayısıyla **average case**'e girmektedir.

# [7,3,5,8,2,9,4,15,6] dizisinin Insertion Sort'a göre ilk 4 adımını yazınız.

[2,3,5,8,7,9,4,15,6]
[2,3,5,8,7,9,4,15,6]
[2,3,4,8,7,9,5,15,6]
[2,3,4,5,7,9,8,15,6]
.
.
.
