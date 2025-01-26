-- 1. 'A' ile başlayıp 'a' ile biten ülke isimlerini sıralama
SELECT country FROM country 
WHERE country LIKE 'A%a';

-- 2. En az 6 karakterden oluşan ve 'n' harfi ile biten ülke isimlerini sıralama
SELECT country FROM country 
WHERE LENGTH(country) >= 6 AND country LIKE '%n';

-- 3. En az 4 adet 'T' harfi içeren film isimlerini sıralama (büyük/küçük harf duyarsız)
SELECT title FROM film 
WHERE LOWER(title) LIKE '%t%t%t%t%';

-- 4. 'C' ile başlayan, uzunluğu 90'dan büyük ve rental_rate'i 2.99 olan filmleri sıralama
SELECT * FROM film 
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
