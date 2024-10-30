DROP TABLE IF EXISTS delivery CASCADE;
DROP TABLE IF EXISTS goods CASCADE;
DROP TABLE IF EXISTS inquiry CASCADE;
DROP TABLE IF EXISTS spell CASCADE;
DROP TABLE IF EXISTS purchase_history CASCADE;
DROP TABLE IF EXISTS shopping_cart CASCADE;
DROP TABLE IF EXISTS member CASCADE;

CREATE TABLE IF NOT EXISTS goods
(
    goods_code       	INT AUTO_INCREMENT PRIMARY KEY COMMENT '상품코드',
    goods_name      	VARCHAR(100) NOT NULL COMMENT '상품명',
    goods_discount   	VARCHAR(20) NOT NULL COMMENT '상품할인가',
    number_products  	INT COMMENT '상품개수',
    goods_price      	INT COMMENT '상품가격',
    category    		VARCHAR(10) NOT NULL COMMENT '카테고리'
)ENGINE=INNODB COMMENT = '상품관리';

INSERT INTO goods (goods_code , goods_name , goods_discount , number_products , goods_price , category) VALUES 
(null , 'DG 볼캡 (deep orange)', '48000' , '200' , '62000' , 'HEADWEAR'  ) ,
(null , 'TV 볼캡 (green & mesh)', '46000' , '200' , '60000' , 'HEADWEAR'  ) ,
(null , 'TV 볼캡 (blue & mesh)', '46000' , '200' , '60000' , 'HEADWEAR'  ) ,
(null , 'FV 볼캡 (camo) W ', '43000' , '200' , '57000' , 'HEADWEAR'  ) ,
(null , 'FV 볼캡 (camo) R ', '43000' , '200' , '57000' , 'HEADWEAR'  ) ,
(null , 'DV 볼캡 (beige) H ', '48000' , '200' , '62000' , 'HEADWEAR'  ) ,
(null , 'TV 볼캡 (cream & mesh) W', '46000' , '200' , '60000' , 'HEADWEAR'  ) ,
(null , 'TV 볼캡 (cream & mesh) B', '46000' , '200' , '60000' , 'HEADWEAR'  ) ,
(null , 'TV 볼캡 (blue & mesh)', '46000' , '200' , '60000' , 'HEADWEAR'  ) ,
(null , 'TV 볼캡 (camo & mesh)', '46000' , '200' , '60000' , 'HEADWEAR'  ) ,
(null , 'DV 볼캡 (black & R) H ', '48000' , '200' , '62000' , 'HEADWEAR'  ) ,
(null , 'DV 볼캡 (black & W) H ', '48000' , '200' , '62000' , 'HEADWEAR'  ) ,
(null , 'DV 볼캡 (stitch denim)', '46000' , '200' , '57000' , 'HEADWEAR'  ) ,
(null , 'LT 볼캡ver.2 (stich black & W)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'PV 볼캡 (navy)', '37000' , '200' , '57000' , 'HEADWEAR'),
(null , 'PV 볼캡 (deep gray)', '37000' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 볼캡 (stich black)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'KV 볼캡 (stich black )', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'UV 볼캡 (black & R)', '32000' , '200' , '53000' , 'HEADWEAR'),
(null , 'UV 볼캡 (black & W)', '32300' , '200' , '53000' , 'HEADWEAR'),
(null , 'TV 볼캡 (camo)', '44000' , '200' , '58000' , 'HEADWEAR'),
(null , 'TV 볼캡 (black)','44000' , '200' , '58000' , 'HEADWEAR'),
(null , 'TV 볼캡 (cream & black)', '44000' , '200' , '58000' , 'HEADWEAR'),
(null , 'LT 볼캡 (beige)', '36000' , '200' , '57000' , 'HEADWEAR'),
(null , 'LT 볼캡ver.2 (red)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 볼캡 (deep orange)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'LT 볼캡ver.2 (deep orange)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'KV 볼캡 (light denim)', '46000' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 볼캡 (light denum)', '46000' , '200' , '57000' , 'HEADWEAR'),
(null , 'RV 볼캡 (white)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'OV 볼캡 (light denim)', '품절' , '200' , '58000' , 'HEADWEAR'),
(null , 'OV 볼캡 (indigo denim)', '39000' , '200' , '39000' , 'HEADWEAR'),
(null , 'OV 볼캡 (ivory & green)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'OV 볼캡 (ivory & navy)', '44000' , '200' , '57000' , 'HEADWEAR'),
(null , 'OV 볼캡 (beige)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'OV 볼캡 (black)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 볼캡 (blue)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 볼캡 (black & R)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'S/L DG 볼캡 (blue)', '품절' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (green)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'KV 볼캡 (green)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 볼캡 (green)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'OD 오버핏 후드 집업 (gray)', '64200' , '200' , '119000' , 'OUTERWEAR'),
(null , 'OD 오버핏 후드 집업 (black & W)', '64200' , '200' , '119000' , 'OUTERWEAR'),
(null , 'OD 오버핏 후드 집업 (black & R)', '64200' , '200' , '119000' , 'OUTERWEAR'),
(null , 'RV 오버핏 후드 집업 (black)', '61200' , '200' , '117000' , 'OUTERWEAR'),
(null , 'RV 오버핏 후드 집업 (gray)', '61200' , '200' , '117000' , 'OUTERWEAR'),
(null , 'FV 볼캡 (green)', '36000' , '200' , '57000' , 'HEADWEAR'),
(null , 'PV 볼캡 (pink & R)', '37000' , '200' , '57000' , 'HEADWEAR'),
(null , 'PV 볼캡 (pink & W)', '37000' , '200' , '57000' , 'HEADWEAR'),
(null , 'PV 볼캡 (black)', '37000' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 하프 팬츠 (black)', '품절' , '200' , '48000' , 'BOTTMS'),
(null , 'OD 미니멀 조거팬츠 (black)', '46000' , '200' , '82000' , 'BOTTMS'),
(null , 'OD 미니멀 조건팬츠 (kaki)', '46000' , '200' , '82000' , 'BOTTMS'),
(null , 'OD 미니멀 조건팬츠 (gray)', '46100' , '200' , '82000' , 'BOTTMS'),
(null , 'OD 오버핏 아노락 (kaki)', '58000' , '200' , '129000' , 'outerwear'),
(null , 'OD 오버핏 아노락 (gray)', '58000' , '200' , '129000' , 'outerwear'),
(null , 'OD 오버핏 아노락 (black)', '58000' , '200' , '129000' , 'outerwear'),
(null , 'OD 오버핏 반팔티 (black)', '41000' , '200' , '47000' , 'TOPS'),
(null , 'OD 오버핏 반팔티 (white)', '41000' , '200' , '47000' , 'TOPS'),
(null , 'S/L DG 볼캡 (white)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'S/L DG 볼캡 (orange)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'OD 볼캡 (blue)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'OD 볼캡 (navy & Y)', '품절' , '200' , '62000' , 'HEADWEAR'),
(null , 'OD 볼캡 (black) H ', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'OD 볼캡 (navy & Y )', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'OD 볼캡 (navy & W )', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'OD 볼캡 (black & S )', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'OD 볼캡 (red)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'OD 볼캡 (green)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'OD 볼캡 (light gray)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 오버핏 기모 후드 (dark green)', '품절' , '200' , '109000' , 'TOPS'),
(null , 'FV 오버핏 기모 후드 (sky blue)', '품절' , '200' , '109000' , 'TOPS'),
(null , 'FV 오버핏 기모 후드 (navy)', '62100' , '200' , '109000' , 'TOPS'),
(null , 'FV 오버핏 기모 후드 (black)', '62100' , '200' , '109000' , 'TOPS'),
(null , 'LT 오버핏 기모 후드 (gray)', '품절' , '200' , '106000' , 'TOPS'),
(null , 'LT 오버핏 기모 후드 (black)', '품절' , '200' , '106000' , 'TOPS'),
(null , 'DG 볼캡 (black)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (red)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (black)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (blue)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (white)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (navy)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (orange)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 볼캡 (camo)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'S/L DG 볼캡 (black)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'S/ L DG 볼캡 (red)', '48000' , '200' , '62000' , 'HEADWEAR'),
(null , 'DG 오버핏 후드 (black)', '49000' , '200' , '89000' , 'TOPS'),
(null , 'DG 오버핏 후드 (gray)', '품절' , '200' , '89000' , 'TOPS') ,
(null , 'FV 볼캡 (navy & W)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 볼캡 (mustard)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 볼캡 (white)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 볼캡 (black & W)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'FV 볼캡 (black & R)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 오버핏맨투맨 (black)', '품절' , '200' , '79000' , 'TOPS'),
(null , 'DV 오버핏맨투맨 (Gray)', '32000' , '200' , '79000' , 'TOPS'),
(null , 'LT 볼캡 ver.2 (black & W)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'LT 볼캡 ver.2 (blue)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'LT 볼캡 ver.2 (yellow)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 볼캡(red)', '43000' , '200' , '54000' , 'HEADWEAR'),
(null , 'DV 볼캡(blue)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 볼캡(beige)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'KV 볼캡(red)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'KV 볼캡(black & R)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'KV 볼캡(orange)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'KV 볼캡(black & W)', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'FH 볼캡(black)', '품절' , '200' , '62000' , 'HEADWEAR'),
(null , 'NV 볼캡(black & R)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'NV 볼캡(blue)', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'DV 오버핏 집업 후드 (black)', '품절' , '200' , '92000' , 'OUTERWEAR'),
(null , 'DV 오버핏 집업 후드 (ivory)', '36900' , '200' , '92000' , 'OUTERWEAR'),
(null , 'DV 오버핏 집업 후드 (gray)', '36900' , '200' , '92000' , 'OUTERWEAR'),
(null , 'DV 조거팬츠 (black)', '54000' , '200' , '72000' , 'BOTTMS'),
(null , 'DV 조거팬츠 (ivory)', '54000' , '200' , '72000' , 'BOTTMS'),
(null , 'DV 조거팬츠 (gray)', '54000' , '200' , '72000' , 'BOTTMS'),
(null , 'DV 스트링 와이드 팬츠 (gray)', '품절' , '200' , '72000' , 'BOTTMS'),
(null , 'DV 스트링 와이드 팬츠 (black)', '품절' , '200' , '72000' , 'BOTTMS'),
(null , 'DV 오버핏 반팔티 (black)', '41000' , '200' , '47000' , 'TOPS'),
(null , 'DV 오버핏 반팔티 (white)', '41000' , '200' , '47000' , 'TOPS'),
(null , 'DV 오버핏 반팔티 (orange)', '품절' , '200' , '47000' , 'TOPS'),
(null , 'DV 오버핏 반팔티 (purple)', '품절' , '200' , '47000' , 'TOPS'),
(null , 'LO 레이어드 오버핏 반팔티 (black)', '품절' , '200' , '47000' , 'TOPS'),
(null , 'LO 레이어드 오버핏 반팔티 (white)', '품절' , '200' , '47000' , 'TOPS'),
(null , 'NV 박스핏 오버핏 반팔티 (black)', '품절' , '200' , '47000' , 'TOPS'),
(null , 'DV 포켓 하프 팬츠 (black)', '47000' , '200' , '53000' , 'BOTTOMS'),
(null , 'DV 포켓 하프 팬츠 (ivory)', '47000' , '200' , '53000' , 'BOTTOMS'),
(null , 'DV 포켓 하프 팬츠 (red)', '47000' , '200' , '53000' , 'BOTTOMS'),
(null , 'DV 포켓 하프 팬츠 (gray)', '42000' , '200' , '48000' , 'BOTTOMS'),
(null , 'FH 볼캡 (red)', '품절' , '200' , '62000' , 'HEADWEAR'),
(null , 'PX 볼캡 (black) S', '43000' , '200' , '57000' , 'HEADWEAR'),
(null , 'PX 볼캡 (beige) S', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'PX 볼캡 (beige) H', '품절' , '200' , '57000' , 'HEADWEAR'),
(null , 'LH 볼캡 (black) H', '36000' , '200' , '57000' , 'HEADWEAR'),
(null , 'LH 볼캡 (ivory)', '36000' , '200' , '57000' , 'HEADWEAR'),
(null , 'RV 볼캡 (black) ', '48000' , '200' , '62000' , 'HEADWEAR');

CREATE TABLE IF NOT EXISTS member
(
	member_number   			INT AUTO_INCREMENT PRIMARY KEY COMMENT'회원번호',
    member_id                   	VARCHAR(100) NOT NULL COMMENT '아이디',
    phone_number              		VARCHAR (30) NOT NULL COMMENT '전화번호',
    default_delivery_address  		VARCHAR (100) NOT NULL COMMENT '기본배송지',
    email		                	VARCHAR (100) NOT NULL COMMENT '이메일',
    member_password    				VARCHAR(100) NOT NULL COMMENT '비밀번호',
    alias    						VARCHAR(100) NOT NULL COMMENT '닉네임'
) ENGINE=INNODB COMMENT = '회원';

INSERT INTO member (member_number, member_id, phone_number, default_delivery_address, email, member_password, alias) VALUES 
(null , 'user01' , '010-1234-5678' , '경기도 하남시 미사 뭐시시시' , 'opdnjseo@naver.com' , 'rkd162316' , 'opdnjseo'),
(null , 'user02' , '010-1234-6547' , '경기도 하남시 미사아파트' , 'user02@naver.com' , 'chlrkddnjseo' , 'dnjseo');

CREATE TABLE IF NOT EXISTS inquiry
(
    inquiry_number             INT AUTO_INCREMENT COMMENT '문의번호',
    member_number             INT NOT NULL COMMENT '회원번호',
    goods_code                 INT NOT NULL COMMENT '상품코드',
    inquiry_content             VARCHAR(1001) NOT NULL COMMENT '문의하기',
    CONSTRAINT pk_inquiry_number PRIMARY KEY(inquiry_number),
    CONSTRAINT fk_member_number FOREIGN KEY (member_number) REFERENCES member(member_number) ON DELETE CASCADE,
    CONSTRAINT fk_goods_code FOREIGN KEY (goods_code) REFERENCES goods(goods_code) ON DELETE CASCADE
) ENGINE=INNODB COMMENT = '문의';

INSERT INTO inquiry (inquiry_number , member_number , goods_code , inquiry_content) VALUES 
(null , 1 , 1 , '문의희망'),
(null , 2 , 2, '문의희망');


CREATE TABLE IF NOT EXISTS orders
(
    order_number      		INT NOT NULL COMMENT '주문번호',
    final_payment     		INT NOT NULL COMMENT '최총결제 금액',
    order_date        		INT NOT NULL COMMENT '주문날짜',
    ordered_product   		VARCHAR(20) NOT NULL COMMENT '주문상품',
 PRIMARY KEY ( order_number )
)ENGINE=INNODB COMMENT = '주문서';

INSERT INTO orders (order_number , final_payment , order_date , ordered_product) VALUES 
(1 , 48000 , 20241030, 'DG 볼캡 (deep orange)' ),
(2 , 64200 , 20241030, 'OD 오버핏 후드 집업 (gray)' );


CREATE TABLE IF NOT EXISTS delivery
(
delivery_status      VARCHAR(20) NOT NULL COMMENT '배송현황',
delivery_fee         INT NOT NULL COMMENT '배송비',
order_number         INT NOT NULL COMMENT '주문번호',
delivery_member_number   	 INT NOT NULL COMMENT '회원번호',
delivery_address     VARCHAR(20) NOT NULL COMMENT '배송지',
	CONSTRAINT pk_order_number PRIMARY KEY(order_number),
    CONSTRAINT fk_order_number FOREIGN KEY (order_number) REFERENCES orders (order_number) ON DELETE CASCADE,		
	CONSTRAINT fk_delivery_member_number FOREIGN KEY (delivery_member_number) REFERENCES member (member_number) ON DELETE CASCADE
)ENGINE=INNODB COMMENT = '배송';
 
 
 INSERT INTO delivery(delivery_status , delivery_fee , order_number , delivery_member_number , delivery_address)VALUES
 ('배송중' , 3000 , 1 , 1 , '경기도 하남시 미사아파트'),
 ('배송완료' , 3000 , 1 , 1 , '경기도 하남시 미사아파트');


CREATE TABLE IF NOT EXISTS purchase_history
(
purchase_history_number				 INT AUTO_INCREMENT COMMENT '구매내역번호',
purchase_order_number         		 INT NOT NULL COMMENT '주문번호',
purchase_goods_code           		 INT NOT NULL COMMENT '상품코드',
purchase_member_number    			 INT NOT NULL COMMENT '회원번호',
	CONSTRAINT pk_purchase_history_number PRIMARY KEY (purchase_history_number),
	CONSTRAINT fk_purchase_order_number   FOREIGN KEY (purchase_order_number)  REFERENCES orders (order_number)  ON DELETE CASCADE,
	CONSTRAINT fk_purchase_goods_code	  FOREIGN KEY (purchase_goods_code)    REFERENCES goods  (goods_code)    ON DELETE CASCADE,
	CONSTRAINT fk_purchase_member_number  FOREIGN KEY (purchase_member_number) REFERENCES member (member_number) ON DELETE CASCADE
) ENGINE=INNODB COMMENT = '구매내역';	

INSERT INTO purchase_history(purchase_order_number , purchase_goods_code , purchase_member_number)VALUES
(1 , 1 , 1 );

CREATE TABLE IF NOT EXISTS shopping_cart
(
			   shopping_cart_number   	  INT AUTO_INCREMENT COMMENT '장바구니 번호',
			   member_number     INT NOT NULL COMMENT '회원번호',
			   goods_code        INT NOT NULL COMMENT '상품코드',
	CONSTRAINT pk_shopping_cart_number 	 PRIMARY KEY (shopping_cart_number),
    CONSTRAINT fk_shopping_member_number FOREIGN KEY (member_number) REFERENCES member (member_number) ON DELETE CASCADE,	
	CONSTRAINT fk_shopping_goods_code 	 FOREIGN KEY (goods_code) 	  REFERENCES goods  (goods_code) 	 ON DELETE CASCADE
) ENGINE=INNODB COMMENT = '장바구니';

INSERT INTO shopping_cart(shopping_cart_number , member_number , goods_code)VALUES
(1 , 1 , 1);
