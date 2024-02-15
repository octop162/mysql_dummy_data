CREATE TABLE prefecture (
  prefecture_name VARCHAR(10) NOT NULL,
  prefecture_no INT NOT NULL
);

CREATE TABLE user (
  user_uuid VARBINARY(16) NOT NULL,
  user_name VARCHAR(100),
  prefecture_no INT NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE post (
  post_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  content VARCHAR(2000),
  post_user_uuid VARBINARY(16) NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE comment (
  comment_id INT PRIMARY KEY AUTO_INCREMENT,
  post_id INT,
  content VARCHAR(2000),
  comment_user_uuid VARBINARY(16) NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO prefecture (prefecture_name, prefecture_no) VALUES
('北海道', 1),
('青森', 2),
('岩手', 3),
('宮城', 4),
('秋田', 5),
('山形', 6),
('福島', 7),
('茨城', 8),
('栃木', 9),
('群馬', 10),
('埼玉', 11),
('千葉', 12),
('東京', 13),
('神奈川', 14),
('新潟', 15),
('富山', 16),
('石川', 17),
('福井', 18),
('山梨', 19),
('長野', 20),
('岐阜', 21),
('静岡', 22),
('愛知', 23),
('三重', 24),
('滋賀', 25),
('京都', 26),
('大阪', 27),
('兵庫', 28),
('奈良', 29),
('和歌山', 30),
('鳥取', 31),
('島根', 32),
('岡山', 33),
('広島', 34),
('山口', 35),
('徳島', 36),
('香川', 37),
('愛媛', 38),
('高知', 39),
('福岡', 40),
('佐賀', 41),
('長崎', 42),
('熊本', 43),
('大分', 44),
('宮崎', 45),
('鹿児島', 46),
('沖縄', 47);