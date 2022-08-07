#Patika - Veri Yapıları Dersi

# Time Complexity
Kitapları raflara gelişi güzel dağıtmak -> Worst Case Kitapların bölümüne göre kaç tane olduğunu biliyorsak -> Average Case Bütün kitapların raflarda ve alfabatik olarak sıralanması -> Best Case

# Big O Notation
# metinArray'ler ve Dynamic Array'lerin Mantığı 
Burada şu şekilde bir örnek verilebilir. Mesela sinema salonuna 5 arkadaş gitmek istiyoruz ve yanyana oturmak istiyoruz. Ancak 5 kişilik tam yer alacakken 1 arkadaş daha geliyor ve sinema salonuna 6 kişilik yer aramaya çalışıyoruz. Tam bulacakken 1 arkadaş daha geliyor ve 7 kişilik yer arıyoruz. Bu işlem gereksiz zaman öldürürken bunun çözümü Dynamic Array olabilir. 10 kişilik bir yer rezerve edilebilir mesela 5 kişi gidecekken son anda tam birisi mi geldi. Hiç sorun değil bir kişilik daha yer var gelebilir vs.

Ancak bu bir çözüm mü, hayır. Çünkü gereksiz yer işgali söz konusu. LinkedListler farklı bir çözüm işliyor bu konuda.

---------

# Linked List

Arrayler gibi yanyana tutmak yerine hafızanın başka yerlerinde tutma kolaylığı sağlaması. Mesela bu sinema salonunda 5 arkadaş yanyana oturmak zorunda değil boş koltuklara oturabilir.

Bu veriler birbirine bağlı olduğu için bütünlüğünü koruma var.

# metinLinked List vs Array List
**Array**

Arrayin istediğimiz elemanın sabit sürede erişebiliyoruz. Linked Listlerde tek tek gitmek gerekiyor. Buna Random access deniliyor.
Sadece elemanı tuttuğumuz için az yer kaplıyor. Linked list de adres de tutulduğu için yer kaplıyor.
Memory locality için iyi. Arrayler daha hızı. Statik durumlarda, liste belli ise Array daha hızlı yoksa Linked list mantıklı çünkü sürekli eklemenin çıkarılmanın yapıldığı yerlerde Linked List kullanmak daha mantıklı.
Linked List kalın metin

Eleman eklemek ve silmek arraylere göre daha kolay.
Elemanların bir blok olarak tutulması gerekmiyor. Hafızada blok olarak yer yoksa da kullanılabilir.

# Linked List Eleman Ekleme ve Silme

Elemanlar 4,5,7 ve 12 olsun ve Linked List'lerde elemanlar birbirine bağlı demiştim. Şimdi amaç onları görsel olarak göstermekte. Linked List'lerde bir elemanın yanında yazılan şey, onun adresi olmaktadır.

Eleman [4, #23] ->
Eleman [5, #207] ->
Eleman [7, #98] ->
Eleman [12 null] Burada gösterilmek istenen de, 2. Eleman 1. elemanın adresine bağlı. 3. eleman 2. elemanın adresine bağlı bu durumda son elemanın adresi null olmaktadır.
Eğer sona eklenmek istenirse yeni gelecek eleman 4. elemanın adresine tutunması gerekmektedir. Bu durumda 4. elemanın tutulması için bir adres bulunur. ve gelecek 5. elemanın adresi ise null olmaktadır.

Eğer 3. elemandan önce bir eleman eklenmesi istenirse yani araya eklenmek istenirse; yeni gelecek elemanın adresinin tutulması için bir yer ayarlanır bilgisayar tarafından. Mesela adres #207 olsun ve gelecek eleman da 15

İlk önce mevcut 3. elemanın bağlı olduğu yani 5 sayısının, #44 numaralı adresi bir başka yerde tutulur ve yeni gelecek olan 3. elemanın adresi ona bağlanması istenir. Yani 15 numaralı sayının. Bu durumda 15 numaralı sayının adresi yani #207 de artık şu zamanki 4. elemanın tutunduğu adres olmuştur. Yani 4. eleman artık 7 numaralı sayıdır.

Silme Daha Kolay

Eleman [4, #23] ->
Eleman [5, #207] ->
Eleman [7, #98] ->
Eleman [12 null] Mevcut elemanımız bu şekilde ise ve ben 2. elemanı silmek istersem mesela 2. elemanı ortadan kaldırıyorum ve 3. elemanın bağlı olduğu #207 adresini ortadan kaldırıp direk #23 e bağlanmasını istiyorum.

# Stack

LIFO -> Last in First Out => İlk Giren Son Çıkar Bulaşık yıkanırken tabakların üst üste konması gibi. Ortadan ekleme çıkarma vs. yok

Push => Stack'e eleman eklemek için Pop => Stack'e eleman çıkarmak

# Queue

FIFO -> First in First Out => ilk Giren İlk Çıkar. Bir kuyrukta sıra beklemek gibi. Enqueue => Yeni elemanın Queue'ye eklenmesi Dequeue => Elemanın Queue'dan çıkarılması

# Hash Table

Ürünlerin fiyatını ezbere bilen çalışan gibi çalışmaktadır. Yani örneğin, ürünlerin isimlerini ve fiyatlarını Array'in elemanlarını olarak tutup bu sorunu çözebilirdik ama ürünleri array'de tek tek aramak istemiyorum. Anında aradığım ürünün fiyatını bulmak istiyorum.

**Çalışma Mantığı**

İlk eleman sayısı ürün sayısına eşit bir array oluşturulacak.
Ürünlerin isimlerini bir fonksiyona sokup çıktılar alacağım. Bu çıktılar sayılar olacak.
Fonksiyonun çıktılarını oluşturduğumuz array'in indeksleri olarak kullanıp, ürünlerin fiyatlarını bu indexlerde tutacağım.

**Özetle**

Arrayler bize kaçıncı eleman olursa olsun sabit sürede istenen lokasyondaki elemanı verebiliyordu. Bu sabit sürede erişmeyi lokasyon bazlı değil, tanım bazlı kullanmak istiyorum. Bana 3. elemanı getir değil, bana elmaya karşılık gelen elemanı/fiyatı getir demek istiyorum.
Biri bize bir ürünün fiyatını sorduğunda bu ürünü oluşturduğumuz fonksiyona besleyip arraydeki indexi neredeymiş onu bulacağız.
Bu fonksiyona Hash Function, Hash Function + Array yapısına da Hash Table deniyor.

** Hash Function Özellikleri
Hash Function her seferinde aynı girdiye aynı sonucu vermelidir.
Farklı girdilere farklı çıktılar vermeli.
Hash Function'ın çıktılarının sınırlarında (range) olmalı.
Maalesef her seferinde aynı girdiye farklı çıktılar veremiyor. Buna Collision ddurumu deniliyor.
Searching -> elemanları sıralama
Closest Pair -> birbirine yakın sayıları gruplandırma
Aynı eleman kontrolü birbiriyle aynı olan sayıların kaç tane aynı eleman varsa sayısını bulma
Mode bulma eleman dizisini search ettikten sonra elemanların yan yana olanları sayma

# Sorting Algorithms
## Insertion Sort

Verilen örüntüye ait en küçük elemanı buluyor ve en baştaki sayı ile yer değiştiriyor. Peki ya devamı? İkinci en küçük elemanı buluyor ve 2. sıra ile değiştiriyor. Baktın ki 2.sıradaki eleman en küçük hiç dokunma!!!. Hemen 3. sıraya geç. 4, 5 derken dizi bitti. İşte insertion sort'un temel çalışma prensibi.

## Merge Sort

Insertion Sort'da, Big-O gösteriminden dolayı input'um arttığında n2 olduğunda dolayı çalışma zamanı artıyor. Peki daha hızlı bir şekilde sıralama yapılabilir mi? Evet, Merge Sort burada yardımımıza koşuyor. Bir listeyi her adımda parçaya ayırıp tek eleman kalıncaya kadar bölüyor. Böldükten sonra sıralı bir şekilde bize sunuyor (Performans)

Insertion sort'da, time complexity n2 olduğundan ötürü çalışma zamanımız artıyordu. Merge sort'da ise nlogn olduğu için açık ara performans olarak daha iyi diyebiliriz.

## Quick Sort

Hızlı sıralama günümüzde çok yaygın olarak kullanılan bir sıralama algoritmasıdır. N tane sayıyı average case e göre big-o nlogn, worst case e göre big-o n^2 karmaşıklığı ile sıralanır. İlk olarak bir pivot belirler bu pivota göre pivottan küçük ve eşitler sol kısmına, pivottan büyük ve eşitler sağ kısmına yazılır. Parçalanmış kısımlar yeni bir pivot belirlenerek parça pinçik edilir.

# Searching Algorithms
Linear Search Linear search, tek tek elemanları dolandıktan sonra istediğim elemanın olup olmadığına bakmaktır. Örneğin, [20,25,46,48] veri setini ele alalım. Benim aradığım eleman 25. İlk elemana gidiyorum ve değeri 20 sen değilsin diyorum. İkinci elemana gidiyorum ve değeri 25 evet sensin diyorum. Linear search algoritmam burada bitmiş oluyor. Big-o ya göre incelediğimizde bizim worst case'imiz neydi? Elemanın dizinin sonunda bulunmasıydı. Bu sebepten ötürü n elemanımız varsa big-o notasyonumuz otomatik olarak n oluyor.

## Lineary Search

İkili arama algoritması, elimizde bulunan veri dizisini sıralı olduğunu varsayıyor, bu durumu değiştirerek sonuca varmak istiyor.

İkili arama algoritması, diziyi her seferinde ikiye bölerek ikili arama yapar. Sıralı bir listem var ise benim Big-o logn olarak karşımıza çıkıyor. Aradığım sayı 15 ve benim değer kümem [10,15,20,16,22,36,23] diyelim. Binary Search bu diziyi manipüle ederek şu ifadeye dönüştürüyor. [10,15,16,20,22,23,36]. 36 sayısını en yüksek sayı, 10 sayısını en düşük sayı ilan ediyor. Benim aradığım sayı ile ortada kalan sayıyı kıyaslıyor eğer benim sayım büyükse kendinden küçük bütün sayıları siliyor. Ve kendine yeni bir ortanca belirliyor. Böylelikle gereksiz arama yapmaktan kurtarıyor.

## Binary Search Tree

Bir düğüm her iki tarafa da referans verebiliyor. Sağ ve sol olarak. Sağ tarafından kendinden büyük elemanlar, sol tarafında ise kendinden küçük elemanlar bulunacak. Tree'ye eleman eklemek istediğimde root'dan başlıyorum. Örnek olarak ben 26 sayısını ağaç yapısına eklemek istiyorum. Root'a soruyorum senin değerin ne 56. Baştaki açıklamamızı hatırlayalım. Sağ tarafında kendinden büyük, sol tarafında kendinden küçük elemanlar var. O yüzden sırasıyla 56 ve 30 a kadar ilerliyorum. 30 bana benim sol tarafıma geçmelisin çünkü sen benden küçüksün diyor. Karşıma 22 değerinde olan düğüm çıkıyor ve 22 den büyük olduğum için sağ tarafına bir köşe çekiyorum ve 26 sayısını bağlıyorum.
