CREATE SCHEMA `ningcomputer` DEFAULT CHARACTER SET utf8mb4 ;
CREATE TABLE `ningcomputer`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NULL,
  `image` VARCHAR(1000) NULL,
  `price` INT NULL,
  `description` VARCHAR(500) NULL,
  `title` VARCHAR(500) NULL,
  `cateID` VARCHAR(10) NULL,
  `sell_ID` VARCHAR(10) NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`id`));
CREATE TABLE `ningcomputer`.`categrory` (
  `cid` INT NOT NULL AUTO_INCREMENT,
  `cname` NVARCHAR(50) NULL,
  PRIMARY KEY (`cid`));
  ALTER TABLE `ningcomputer`.`categrory` 
ADD COLUMN `subsection` VARCHAR(50) NULL AFTER `cname`;
ALTER TABLE `ningcomputer`.`categrory` 
ADD COLUMN `pc` VARCHAR(45) NULL AFTER `laptop`,
ADD COLUMN `banphim` VARCHAR(45) NULL AFTER `pc`,
ADD COLUMN `chuot` VARCHAR(45) NULL AFTER `banphim`,
ADD COLUMN `tainge` VARCHAR(45) NULL AFTER `chuot`,
ADD COLUMN `manhinh` VARCHAR(45) NULL AFTER `tainge`,
ADD COLUMN `apple` VARCHAR(45) NULL AFTER `manhinh`,
CHANGE COLUMN `subsection` `laptop` VARCHAR(50) NULL DEFAULT NULL ;
UPDATE `ningcomputer`.`categrory` SET `laptop` = 'Laptop Acer', `pc` = 'Cáº¥u hĂ¬nh siĂªu cao cáº¥p', `banphim` = 'BĂ n phĂ­m hĂ£ng', `chuot` = 'Chuá»™t hĂ£ng', `tainge` = 'Tai nge hĂ£ng', `manhinh` = 'Theo thÆ°Æ¡ng hiá»‡u', `apple` = 'MacBook' WHERE (`cid` = '1');
UPDATE `ningcomputer`.`categrory` SET `laptop` = 'Laptop Asus', `pc` = 'Cáº¥u hĂ¬nh cao cáº¥p', `banphim` = 'BĂ n phĂ­m hiá»‡u', `chuot` = 'Chuá»™t káº¿t ná»‘i', `tainge` = 'Kiá»ƒu tai nge', `manhinh` = 'Theo kĂ­ch cá»¡', `apple` = 'iMac' WHERE (`cid` = '2');
UPDATE `ningcomputer`.`categrory` SET `laptop` = 'Laptop MSI', `pc` = 'Cáº¥u hĂ¬nh táº§m trung', `banphim` = 'BĂ n phĂ­m káº¿t ná»‘i', `chuot` = 'LĂ³t chuá»™t theo hĂ£ng', `tainge` = 'Tai nge nhu cáº§u', `manhinh` = 'Táº§n sá»‘ quĂ©t', `apple` = 'Phá»¥ Kiá»‡n' WHERE (`cid` = '3');
UPDATE `ningcomputer`.`categrory` SET `laptop` = 'Laptop Lenovo', `tainge` = '' WHERE (`cid` = '4');

ALTER TABLE `ningcomputer`.`product` 
ADD COLUMN `configuration` VARCHAR(300) NULL AFTER `quantity`,
ADD COLUMN `parameter` VARCHAR(200) NULL AFTER `configuration`;

ALTER TABLE `ningcomputer`.`product` 
CHANGE COLUMN `price` `price` VARCHAR(20) NULL DEFAULT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(1000) NULL DEFAULT NULL ,
CHANGE COLUMN `title` `title` VARCHAR(1000) NULL DEFAULT NULL ;

ALTER TABLE `ningcomputer`.`product` 
CHANGE COLUMN `name` `name` NVARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `image` `image` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `description` `description` NVARCHAR(1000) NULL DEFAULT NULL ,
CHANGE COLUMN `title` `title` NVARCHAR(1000) NULL DEFAULT NULL ,
CHANGE COLUMN `configuration` `configuration` NVARCHAR(500) NULL DEFAULT NULL ,
CHANGE COLUMN `parameter` `parameter` NVARCHAR(500) NULL DEFAULT NULL ;
ALTER TABLE `ningcomputer`.`categrory` 
ADD COLUMN `cname1` VARCHAR(45) NULL AFTER `cname`,
ADD COLUMN `cname2` VARCHAR(45) NULL AFTER `cname1`,
ADD COLUMN `cname3` VARCHAR(45) NULL AFTER `cname2`,
ADD COLUMN `cname4` VARCHAR(45) NULL AFTER `cname3`;
ALTER TABLE `ningcomputer`.`categrory` 
ADD COLUMN `cname5` VARCHAR(45) NULL AFTER `cname4`,
ADD COLUMN `cname6` VARCHAR(45) NULL AFTER `cname5`,
ADD COLUMN `cname7` VARCHAR(45) NULL AFTER `cname6`;
ALTER TABLE `ningcomputer`.`categrory` 
ADD COLUMN `cname8` VARCHAR(45) NULL AFTER `cname7`,
ADD COLUMN `cname9` VARCHAR(45) NULL AFTER `cname8`,
ADD COLUMN `cname10` VARCHAR(45) NULL AFTER `cname9`,
ADD COLUMN `cname11` VARCHAR(45) NULL AFTER `cname10`,
ADD COLUMN `cname12` VARCHAR(45) NULL AFTER `cname11`,
ADD COLUMN `cname13` VARCHAR(45) NULL AFTER `cname12`,
ADD COLUMN `cname14` VARCHAR(45) NULL AFTER `cname13`;

UPDATE `ningcomputer`.`categrory` SET `cname1` = 'Laptop Acer', `cname2` = 'Laptop Asus', `cname3` = 'Laptop MSI', `cname4` = 'Laptop Lenovo' WHERE (`cid` = '1');
UPDATE `ningcomputer`.`categrory` SET `cname5` = 'Aspire Series' WHERE (`cid` = '1');
UPDATE `ningcomputer`.`categrory` SET `cname5` = 'Nitro Series' WHERE (`cid` = '2');
UPDATE `ningcomputer`.`categrory` SET `cname5` = 'Predator Helios' WHERE (`cid` = '3');
UPDATE `ningcomputer`.`categrory` SET `cname1` = 'Cấu hình siêu cao cấp', `cname2` = 'Cấu hình cao cấp', `cname3` = 'Cấu hình tầm trung' WHERE (`cid` = '2');
UPDATE `ningcomputer`.`categrory` SET `cname1` = 'Bàn phím hãng', `cname2` = 'Bàn phím hiệu', `cname3` = 'Bàn phím kết nối' WHERE (`cid` = '3');
UPDATE `ningcomputer`.`categrory` SET `cname1` = 'Chuột hãng', `cname2` = 'Chuột kết nối', `cname3` = 'Lót chuột theo hãng' WHERE (`cid` = '4');
UPDATE `ningcomputer`.`categrory` SET `cname1` = 'Tai nge hãng', `cname2` = 'Kiểu tai nge', `cname3` = 'Tai nge nhu cầu' WHERE (`cid` = '5');
UPDATE `ningcomputer`.`categrory` SET `cname1` = 'Theo thương hiệu', `cname2` = 'Theo kích cỡ', `cname3` = 'Tần số quét' WHERE (`cid` = '6');
UPDATE `ningcomputer`.`categrory` SET `cname1` = 'MacBook', `cname2` = 'iMac', `cname3` = 'Phụ Kiện' WHERE (`cid` = '7');
UPDATE `ningcomputer`.`categrory` SET `cname8` = 'TUF Series', `cname9` = 'ROG Series', `cname10` = 'Zephyrus Series', `cname11` = 'GF Series', `cname12` = 'GL Series', `cname13` = 'Laptop Lenovo', `cname14` = 'Legion Series' WHERE (`cid` = '1');
UPDATE `ningcomputer`.`categrory` SET `cname8` = 'Darius S', `cname9` = 'Phantom S', `cname10` = 'Volibear S', `cname11` = 'Ventus M', `cname12` = 'Mystic M' WHERE (`cid` = '2');
UPDATE `ningcomputer`.`categrory` SET `cname8` = 'Razer', `cname9` = 'Logitech', `cname10` = 'Leopold', `cname11` = 'Kết nối có dây', `cname12` = 'Kết nối bluetooth' WHERE (`cid` = '3');
UPDATE `ningcomputer`.`categrory` SET `cname8` = 'Kết nối có dây', `cname9` = 'kết nối bluetooth', `cname10` = 'Volibear S', `cname11` = 'Razer', `cname12` = 'Cougar' WHERE (`cid` = '4');
UPDATE `ningcomputer`.`categrory` SET `cname8` = 'Tai nghe nhét tai', `cname9` = 'Tai nghe chụp tai', `cname10` = 'Tai nghe gaming', `cname11` = 'Tai nghe audio' WHERE (`cid` = '5');
UPDATE `ningcomputer`.`categrory` SET `cname8` = 'Màn hình 24\"', `cname9` = 'Màn hình 27\"', `cname10` = 'Màn hình 32\"', `cname11` = 'Màn hình 60Hz', `cname12` = 'Màn hình 75Hz', `cname13` = 'Màn hình 144Hz' WHERE (`cid` = '6');
UPDATE `ningcomputer`.`categrory` SET `cname7` = 'iMac24', `cname10` = 'Âm thanh', `cname11` = 'Bàn phím & Chuột' WHERE (`cid` = '7');


INSERT INTO `ningcomputer`.`product` (`id`, `name`, `image`, `price`, `description`, `title`, `cateID`, `configuration`, `parameter`) VALUES ('1', 'Laptop Gaming MSI Katana GF76 11UC 096VN', 'https://gstatic.gearvn.com/2021/09/gearvn-laptop-gaming-msi-katana-gf76-11uc-096vn-1-1.png', '28.490.000', 'GeForce RTXâ„¢ 30 Series GPU mang Ä‘áº¿n sá»©c máº¡nh tá»‘i thÆ°á»£ng cho game thá»§ vĂ  ngÆ°á»i sĂ¡ng táº¡o ná»™i dung. Sá»­ dá»¥ng kiáº¿n trĂºc Ampere danh giĂ¡ Ä‘Ă£ Ä‘áº¡t nhiá»u giáº£i thÆ°á»Ÿng uy tĂ­n â€”cÅ©ng lĂ  kiáº¿n trĂºc RTX tháº¿ há»‡ thá»© 2 cá»§a NVIDIA â€”vá»›i nhĂ¢n RT vĂ  nhĂ¢n Tensor má»›i, cĂ¹ng vá»›i Ä‘a nhĂ¢n xá»­ lĂ­ streaming giĂºp Ä‘em láº¡i Ä‘á»“ há»a ray-tracing siĂªu chĂ¢n thá»±c vĂ  cĂ¡c tĂ­nh nÄƒng AI tĂ¢n tiáº¿n nháº¥t.', 'LAP-MSI-KATANA-GF76-11UC-096VN ', '1', 'Sá»­ dá»¥ng vi xá»­ lĂ­ IntelÂ® Coreâ„¢ i7 tháº¿ há»‡ 11 má»›i nháº¥t, hiá»‡u nÄƒng cao hÆ¡n tá»‘i Ä‘a tá»›i 40% so vá»›i tháº¿ há»‡ trÆ°á»›c. Máº¡nh máº½ hÆ¡n bao giá» háº¿t vá»›i vi xá»­ lĂ­ 8 nhĂ¢n, xung turbo hai nhĂ¢n tá»‘i Ä‘a tá»›i 4.6GHz giĂºp phĂ¡t huy hiá»‡u suáº¥t tá»‘i Ä‘a trong viá»‡c xá»­ lĂ­ game, pháº§n má»m cĂ´ng viá»‡c vĂ  tĂ¡c vá»¥ Ä‘a nhiá»‡m.', 'NVIDIA GeForce RTX 3050 4GB GDDR6 + Intel UHD Graphics');
INSERT INTO `ningcomputer`.`product` (`name`, `image`, `price`, `title`, `cateID`, `configuration`, `parameter`) VALUES ('PC GVN URUS X', 'PC GVN URUS X', '113.990.000', 'GVN Urus X', '2', 'AMD Ryzen 9 5950X / 64MD / 3.4GHz Boost 4.9GHz / 16 nhĂ¢n 32 luá»“ng', 'CPU AMD Ryzen 9 5950X dáº«n Ä‘áº§u vá» hiá»‡u suáº¥t chÆ¡i game vĂ  lĂ m viá»‡c Ä‘a nhiá»‡m. Ryzen 9 5950X Ä‘Æ°á»£c AMD giá»›i thiá»‡u vá»›i má»©c hiá»‡u suáº¥t vÆ°á»£t trá»™i khi so sĂ¡nh vá»›i Ryzen 9 3950X Ä‘Ă£ Ä‘Æ°á»£c ra máº¯t cĂ¡ch Ä‘Ă¢y khĂ¡ lĂ¢u vĂ  CPU Core i9-10900K Ä‘áº§u báº£ng cá»§a Intel trong thá»i Ä‘iá»ƒm hiá»‡n táº¡i. Ryzen 9 5950X cĂ³ hiá»‡u suáº¥t vÆ°á»£t trá»™i tá»›i 29% khi so Ryzen 9 3950X. Khi sá»­ dá»¥ng Adobe Premiere Pro, V-ray, Solidworks, GCC Compile Time, CPU Ryzen 9 5950X cĂ³ hiá»‡u suáº¥t cao hÆ¡n Ă­t nháº¥t lĂ  5% vĂ  tá»‘i Ä‘a lĂªn Ä‘áº¿n 27%.');

UPDATE `ningcomputer`.`product` SET `price` = '21' WHERE (`id` = '1');

INSERT INTO `ningcomputer`.`product` (`name`, `image`, `price`, `description`, `title`, `cateID`, `configuration`, `parameter`) VALUES ('BĂ n phĂ­m Razer Blackwidow Green Switch', 'https://product.hstatic.net/1000026716/product/razer_blackwidow_a77fb116418d4186b7cb4bb170cd5cb8.jpg', '2,690,000', 'BĂ n phĂ­m cÆ¡ gaming Razer Blackwidow Ä‘Æ°á»£c thiáº¿t káº¿ vĂ  sáº£n xuáº¥t bá»Ÿi hĂ£ng Razer Inc. - má»™t cĂ´ng ty cá»§a Má»¹, Ä‘Æ°á»£c thĂ nh láº­p bá»Ÿi Min-Liang Tan, vĂ  Robert Krakoff cĂ³ trá»¥ sá»Ÿ á»Ÿ Califoria chuyĂªn cung cáº¥p cĂ¡c sáº£n pháº©m, phá»¥ kiá»‡n cháº¥t lÆ°á»£ng dĂ nh cho game thá»§. CĂ¡c sáº£n pháº©m Ä‘áº¿n tá»« Razer thÆ°á»ng Ä‘Æ°á»£c giá»›i game thá»§ Ä‘Ă¡nh giĂ¡ cao vá» máº·t cháº¥t lÆ°á»£ng láº«n giĂ¡ cáº£.', 'Razerâ„¢ Green Mechanical', '3', 'BĂ n phĂ­m Razer Blackwidow Ä‘Æ°á»£c thiáº¿t káº¿ vá»›i khung Ä‘Æ°á»£c lĂ m tá»« cháº¥t liá»‡u cháº¯c cháº¯n, bá»n bá»‰, mÆ°á»£t mĂ . CĂ¹ng vá»›i cĂ¡c keycap Ä‘Æ°á»£c lĂ m tá»« nhá»±a cao cáº¥p Ä‘áº£m báº£o tuá»•i thá» lĂ¢u dĂ i cho thiáº¿t bá»‹, khĂ´ng bá»‹ má» phĂ­m sau thá»i gian dĂ i.', 'Razer Blackwidow Ä‘Æ°á»£c thiáº¿t káº¿ theo kiá»ƒu dĂ¡ng bĂ n phĂ­m full layout Ä‘áº§y Ä‘á»§ 104 phĂ­m, cĂ³ cĂ¡c phĂ­m chá»©c nÄƒng mang Ä‘áº¿n cho ngÆ°á»i dĂ¹ng má»™t cĂ´ng cá»¥ há»— trá»£ cĂ¡c thao tĂ¡c hotkey tiá»‡n lá»£i trong cĂ¡c tá»±a game Moba, RTS, FPS thá»‹nh hĂ nh hiá»‡n nay.');
UPDATE `ningcomputer`.`product` SET `image` = 'https://gstatic.gearvn.com/2021/09/gearvn-gvn-urus-x.jpg' WHERE (`id` = '3');

