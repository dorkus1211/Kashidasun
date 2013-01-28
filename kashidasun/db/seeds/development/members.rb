# coding: utf-8

ids = ["hatayusuke", "U-1", "hase", "yuya", "yuki",
       "nono", "ryo", "corpse","X,mas1225"]

pws = ["yusukehata", "kazuhiro", "book", "book", "snow",
       "ue", "kimu", "party","santa"]

names = ["畑祐輔", "古澤裕一", "長谷川裕也", "長谷川裕也", "岡野友輝",
         "野々上雄太", "木村良子", "篠崎歩美","来栖有希"]



0.upto(8) do |idx|
  Member.create(
    member_id: ids[idx],
    pw: pws[idx],
    name: names[idx],
    admin: (idx == 0 || idx == 1 || idx == 2)
  )
end
