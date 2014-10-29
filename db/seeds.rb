# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Topic.create([{name: "Ottawa memorial shooting"},
              {name: "Buffett loses $2 billion in 2 days"},
              {name: "ISIS airdrop"},
              {name: "Ex-Blackwater contractors Nusoor Square shooting"},
              {name: "J.P. Morgan Warned on China Hiring Before Probe"},
              {name: "P&G CEO Succession"},
              {name: "Cleveland Cavaliers"},
              {name: "TechCrunch Disrupt Europe"},
              {name: "Apple Iphone 6+ bending"},
              {name: "U.K. Government Keeping An Open Mind On Bitcoin"},
              {name: "Pandora Now Offers Audience Data To Musicians"},
              {name: "Xiaomi Is Moving International Users’ Data Out Of China Ahead Of Further Global Expansions"},
              {name: "American Debt"}
              # {:name: ""}
              ])

topic = Topic.find_or_initialize_by(name: "Ottawa memorial shooting")
Source.create([{title: 'The Parliament buildings in Canada were on lockdown this morning after reports of an active shooter at the Canadian War Memorial in Ottawa',
                link: 'http://www.valuewalk.com/2014/10/ottawa-war-memorial-shooting/',
                publisher: 'ValueWalk', image: "",
                topic_id: topic.id, published_date: 'October 22, 2014'},

               {title: 'Suspected shooter identified in Canada attack',
                link: 'http://www.cnn.com/2014/10/22/world/americas/canada-ottawa-shooting/index.html',
                publisher: 'CNN', image: nil, topic_id:
                topic.id, published_date: 'October 22, 2014'},

               {title: 'Masked gunman killed after Canadian soldier, Cpl. Nathan Cirillo, fatally shot at National War Memorial',
               link: 'http://news.nationalpost.com/2014/10/22/soldier-shot-outside-of-parliament-at-national-war-memorial-active-shooter-believed-to-be-on-the-loose/',
               publisher: 'National Post', image: nil, topic_id:
               topic.id, published_date: 'Oct 22, 2014'},

               {title: "Ottawa shootings: Bruce MacKinnon's cartoon is the perfect tribute to soldier Nathan Cirillo",
               link: 'http://www.independent.co.uk/news/world/americas/ottawa-shootings-bruce-mackinnons-cartoon-is-the-perfect-tribute-to-soldier-nathan-cirillo-shot-dead-at-war-memorial-9813993.html',
               publisher: 'independent uk', image: nil, topic_id: topic.id,
               published_date: 'Thursday 23 October 2014'},

               {title: 'Ottawa shooting: Nurse Margaret Lerhe tried to save Nathan Cirillo',
               link: 'http://www.cbc.ca/news/canada/ottawa/ottawa-shooting-nurse-margaret-lerhe-tried-to-save-nathan-cirillo-1.2810699',
               publisher: 'cbc', image: nil, topic_id: topic.id,
               published_date: 'Oct 24, 2014'},

               {title: 'Ottawa War Memorial Shooting: 5 Fast Facts You Need to Know',
               link: 'http://heavy.com/news/2014/10/parliament-hill-shooting-ottawa-soldier-shooting/',
                publisher: 'heavy', image: nil, topic_id: topic.id,
               published_date: 'October 22, 2014'}
              ])

topic = Topic.find_or_initialize_by(name: "Buffett loses $2 billion in 2 days")
Source.create([{title: 'Warren Buffett loses $2 billion in two days',
                link: 'http://money.cnn.com/2014/10/21/investing/warren-buffett-berkshire-lost-2-billion/',
                publisher: 'cnn', image: nil, topic_id: topic.id, published_date: 'October 21, 2014'},
               {title: 'Warren Buffett loses $2 billion in 2 days on investments',
               link: 'http://www.upi.com/Business_News/2014/10/22/Warren-Buffett-loses-2-billion-in-2-days-on-investments/3661413992678/',
                publisher: 'UPI', image: nil, topic_id: topic.id,
               published_date: 'Oct. 22, 2014'}
               ])

#  {title: , link: , time: , publisher: , image: nil, topic_id: topic.id, published_date: nil}
