sqlite3 -version

sqlite3 LssTest.db

CREATE TABLE shohin_m (
shohin_cd char(4) NOT NULL,
shohin_nm varchar(20),
CONSTRAINT shohin_m_pkey PRIMARY KEY (shohin_cd)
);

.database
.tables
.schema

ALTER TABLE shohin_m ADD COLUMN tanka integer(8);
DROP TABLE shohin_m;

CREATE TABLE score_tbl (
grade char(1) NOT NULL,
class char(1) NOT NULL,
student_no char(2) NOT NULL,
name varchar(20) NOT NULL,
japanese integer(3),
math integer(3),
english integer(3),
CONSTRAINT score_t_pkey PRIMARY KEY (grade,class,student_no)
);

ALTER TABLE score_tbl RENAME TO score_t;
ALTER TABLE score_t ADD COLUMN sciense integer(3);
ALTER TABLE score_t ADD COLUMN society integer(3);

INSERT INTO shohin_m(shohin_cd, shohin_nm, tanka)VALUES('C001','ミニカー','980');
SELECT * FROM shohin_m;

INSERT INTO shohin_m VALUES('C001', 'ミニカー',980);
INSERT INTO shohin_m VALUES(null, 'ミニカー',980);
INSERT INTO shohin_m VALUES('C002', 'ミニカー',980);
INSERT INTO shohin_m VALUES('C003', null,null);
INSERT INTO shohin_m VALUES('C004', 'ダンプカー',760);
INSERT INTO shohin_m VALUES('C005', 'ヘリコプター',1080);

SELECT shohin_cd,shohin_nm FROM shohin_m;

UPDATE shohin_m SET tanka = 1280 WHERE shohin_cd = 'C005';
SELECT * FROM shohin_m WHERE shohin_cd = 'C005';

DELETE FROM shohin_m WHERE shohin_cd = 'C005';
SELECT * FROM shohin_m;

INSERT INTO score_t VALUES('1', 'A','01','杉山優子',100,45,55,null,null);
INSERT INTO score_t VALUES('1', 'A','02','鈴木次郎',91,95,66,33,59);
INSERT INTO score_t VALUES('1', 'A','03','北野優衣',100,88,77,null,null);
INSERT INTO score_t VALUES('1', 'A','04','梅村和歌子',85,39,88,null,null);
INSERT INTO score_t VALUES('1', 'B','05','近藤真一',100,66,77,null,null);
INSERT INTO score_t VALUES('2', 'A','01','鈴木太郎',80,90,66,72,59);
INSERT INTO score_t VALUES('2', 'A','02','山田和夫',70,50,40,100,75);
INSERT INTO score_t VALUES('2', 'A','03','佐藤花子',55,77,95,46,36);
INSERT INTO score_t VALUES('2', 'C','01','近藤ゆみ',66,45,38,68,31);
INSERT INTO score_t VALUES('2', 'C','02','ヘンリー',100,96,98,89,91);
