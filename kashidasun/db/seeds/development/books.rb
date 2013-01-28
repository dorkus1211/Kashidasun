# coding: utf-8

titles = ["ゲームプログラマになる前に覚えておきたい技術", "Trac入門 ソフトウェア開発・プロジェクト管理活用ガイド", "10日でおぼえるXML入門教室", "スマートにプログラミング Android実践編", "「ヒットする」のゲームデザイン",
          "Titanium Mobileで開発する iPhone/Androidアプリ", "ゲームコーディング・コンプリート 一流になるためのゲームプログラミング", "なれる!SE 2週間でわかる?SE入門", "なれる!SE2 基礎から学ぶ?運用構築", "なれる!SE3 失敗しない?提案活動",
          "「見える化」のことが面白いほどわかる本", "就職合否の決め手 SPI適性検査 英語能力編 2001年版", "グラス片手にデータベース設計～販売管理システム編", "グラス片手にデータベース設計～会計システム編", "アジャイルな見積もりと計画づくり 価値あるソフトウェアを育てる概念と技法",
          "入門 UML", "入門 UML 2.0", "開発者ノートシリーズ Hibernate", "開発者ノートシリーズ Spring", "開発者ノートシリーズ JBoss",
          "アジャイルソフトウェア開発シリーズ アジャイルソフトウェア開発スクラム"]

authors = ["平山　尚", "杉本　琢磨", "山田　祥寛", "堀切　堤", "Chris Bateman",
           "北尾　雅人", "マイク・マクシャフリー", "夏海　公司", "夏海　公司", "夏海　公司",
           "正木　英昭", "小林　正彦", "梅田　弘之", "梅田　弘之", "Mike Cohn",
           "Sinan Si Alhir", "Russ Miles", "James Elliott", "Brouce A. Tate / Justin Gehtland", "Norman Richards / Sam Griffith,Jr",
           "ケン・シュエイバー / マイク・ビードル"]

isbns = ["ISBN978-4-7980-2118-8", "ISBN978-4-7741-3615-8", "ISBN4-7981-0137-0", "ISBN978-4-89797-892-5", "ISBN978-4-87311-418-7",
         "ISBN978-4-7981-2398-1", "ISBN978-4-7973-5843-8", "ISBN978-4-04-868605-1", "ISBN978-4-04-868937-3", "ISBN978-4-04-870181-5",
         "ISBN978-4-8061-2913-4", "ISBN4-638-08387-0", "ISBN4-7981-0566-X", "ISBN4-7981-0927-4", "ISBN978-4-8399-2402-7",
         "ISBN4-87311-163-3", "ISBN978-4-87311-317-3", "ISBN4-87311-215-X", "ISBN4-87311-231-1", "ISBN4-87311-268-0",
         "ISBN4-89471-589-9"]

publishers = "○×出版"

pub_dates = "1991-01-01"

pages = 100

0.upto(20) do |idx|
  Book.create(
    title:     titles[idx],
    author:    authors[idx],
    isbn:      isbns[idx],
    publisher: publishers,
    pub_date:  pub_dates,
    page:      pages
  )
end