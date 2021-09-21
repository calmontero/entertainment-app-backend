# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###################################
Favorite.destroy_all
Category.destroy_all
Genre.destroy_all
Rating.destroy_all
Review.destroy_all
Program.destroy_all
#Profile.destroy_all
#User.destroy_all

#User.create([{username: "User1"} , {username: "calmontero"}])
#puts "Seeding user..."
###################################

#Profile.create([{ user_id: 4 , name: "Basic" }])
#puts "Seeding profile..."
###################################

Category.create([{ name: 'Movies' } , { name: 'TV Show' }])
puts "Seeding category..."
###################################

Genre.create([{ name: 'Adventure' } , { name: 'Scifi' } , { name: "Children & Family Movies" } , { name: "Classic" } , { name: "Comedies" } , { name: "Drama" } , { name: "Romantic" } , { name: "Horror" } , { name: "Sports" } , { name: "Documentaires" }])
puts "Seeding genre..."
###################################

Rating.create([{ rating: "G: General Audiences" } , { rating: "PG: Parental Guidance Suggested" }, { rating: "PG-13: Parents Strongly Cautioned" } , { rating: "R: Restricted" }, { rating: "TV-Y: All Children" }, { rating: "TV-G: General Audience" }, { rating: "TV-PG: Parental Guidance Suggested" }, { rating: "TV-MA: Mature Audience Only" }])
puts "Seeding rating..."
###################################

Program.create([
  {
    title: "The Color Purple",
    year: 1985,
    length: 154,
    director: "Steven Spielberg",
    cast: "Danny Glover,
    Adolph Caesar,
    Oprah Winfrey,
    Margaret Avery,
    Rae Dawn Chong,
    Whoopi Goldberg",
    description: "Whoopi Goldberg brings Alice Walker's Pulitzer Prize-winning feminist novel to life as Celie, a Southern woman who suffered abuse over decades. A project brought to a hesitant Steven Spielberg by producer Quincy Jones, the film marks Spielberg's first female lead.",
    image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/3071/3071213_so.jpg",
    imdb_url: "https://www.imdb.com/title/tt0088939/?ref_=nv_sr_srsg_0",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "The Big Bang Theory",
    year: 2007,
    length: 30,
    director: "Mark Cendrowski",
    cast: "Johnny Galecki,
    Jim Parsons,
    Kaley Cuoco,
    Simon Helberg,
    Kunal Nayyar,
    Sara Gilbert,
    Mayim Bialik,
    Melissa Rauch,
    Kevin Sussman,
    Laura Spencer",
    description: "The Big Bang Theory is an American television sitcom created by Chuck Lorre and Bill Prady, both of whom served as executive producers on the series, along with Steven Molaro. All three also served as head writers. It premiered on CBS on September 24, 2007, and concluded on May 16, 2019, having broadcast 279 episodes over 12 seasons.",
    image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/The_Big_Bang_Theory_%28Official_Title_Card%29.png/250px-The_Big_Bang_Theory_%28Official_Title_Card%29.png",
    imdb_url: "https://www.imdb.com/title/tt0898266/?ref_=nv_sr_srsg_0",
    category_id: 2,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Frida",
    year: 2002,
    length: 123,
    director: "Julie Taymor",
    cast: "Salma Hayek,
    Alfred Molina,
    Geoffrey Rush,
    Valeria Golino,
    Mía Maestro,
    Roger Rees,
    Antonio Banderas,
    Edward Norton",
    description: "Her portrait, with that thick unibrow and un-waxed upper lip, has become an iconic symbol of feminism. Julie Taymor's biopic takes us behind the canvas to reveal the artist, the activist, the revolutionary. And knowing what we do now about lead actress Selma Hayek's off-screen experience, this film proves an even greater victory.",
    image_url: "https://m.media-amazon.com/images/M/MV5BYzUxMTU0ZmEtZWE0Ni00NzJlLThhZTUtNDA1ZDZjZDUxYThiXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg",
    imdb_url: "https://www.imdb.com/title/tt0120679/?ref_=fn_al_tt_1",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Queen of Katwe",
    year: 2016,
    length: 144,
    director: "Mira Nair",
    cast: "David Oyelowo,
    Lupita Nyong'o,
    Madina Nalwanga,
    Esteri Tebandeke,
    Peter Odeke,
    Sheebah Karungi",
    description: "Disney has a way of making us feel like pawns in a game of Let's See How Hard We Can Make Them Cry. But that's not the case with Mira Nair's feel-good drama about a Uganda girl's path to chess champ, adapted from an ESPN sports essay. Moms and dads, you want your daughters to grow up to be chess champions.",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/12806084/p12806084_v_v8_ar.jpg",
    imdb_url: "https://www.imdb.com/title/tt4341582/?ref_=fn_al_tt_1",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Two and a Half Men",
    year: 2003,
    length: 30,
    director: "Chuck Lorre",
    cast: "Charlie Sheen,
    Jon Cryer,
    Angus T. Jones,
    Marin Hinkle,
    Melanie Lynskey,
    Holland Taylor,
    Conchata Ferrell,
    Jennifer Taylor[note 1],
    April Bowlby[note 2],
    Ashton Kutcher,
    Amber Tamblyn,
    Edan Alexander",
    description: "Breaking Bad is an American neo-Western crime drama television series created and produced by Vince Gilligan. The show aired on AMC from January 20, 2008, to September 29, 2013, consisting of five seasons for a total of 62 episodes.",
    image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/6/61/Breaking_Bad_title_card.png/250px-Breaking_Bad_title_card.png",
    imdb_url: "https://www.imdb.com/title/tt0903747/?ref_=nv_sr_srsg_0",
    category_id: 2,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Persepolis",
    year: 2007,
    length: 96,
    director: "Marjane Satrapi",
    description: "There's a lot at play here: Persepolis is animated like a graphic novel. It's done in black and white. It's about a girl who defies Islamic fundamentalists. It's autobiographical. And it's in French. The result: a brilliant feminist feat from Marjane Satrapi.",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/173490/p173490_v_v8_an.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Little Women",
    year: 1994,
    length: 118,
    director: "Gillian Armstrong",
    description: "Feminism isn't all \"women can do anything men can do\"—it's women can do whatever the hell they want to do. And for the protagonist sisters in Gillian Anderson's adaptation of Louisa May Alcott's novel, that means a writer, a musician, a housewife and a free spirit.",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/16296/p16296_v_v8_aj.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Breaking Bad",
    year: 2008,
    length: 30,
    director: "	Vince Gilligan",
    cast: "Bryan Cranston,
    Anna Gunn,
    Aaron Paul,
    Dean Norris,
    Betsy Brandt,
    RJ Mitte,
    Giancarlo Esposito,
    Bob Odenkirk,
    Jonathan Banks,
    Laura Fraser,
    Jesse Plemons",
    description: "Two and a Half Men is an American television sitcom that originally aired on CBS for twelve seasons from September 22, 2003, to February 19, 2015. Originally starring Charlie Sheen, Jon Cryer, and Angus T. Jones, the series was about a hedonistic jingle writer, Charlie Harper, his uptight brother, Alan, and Alan's mischievous son, Jake. After Alan divorces, he and Jake move into Charlie's beachfront Malibu house and complicate Charlie's freewheeling life.",
    image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Two_and_a_Half_Men-title.png/250px-Two_and_a_Half_Men-title.png",
    imdb_url: "https://www.imdb.com/title/tt0369179/?ref_=nv_sr_srsg_0",
    category_id: 2,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Thelma and Louise",
    year: 1991,
    length: 130,
    director: "Ridley Scott",
    description: "Susan Sarandon and Gena Davis lock arms—and fates—in this buddy road trip drama with a feminist legacy that runs deeper than the Grand Canyon. Sure, it's directed by Ridley Scott, but the screenplay about a pair of outlaws who are anything but passive comes straight from the pen of Callie Khouri.",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/517NV58X7WL._SY445_.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Alien",
    year: 1979,
    length: 117,  
    director: "Ridley Scott",
    description: "Groundbreaking for 1979 science fiction, Sigourney Weaver's Ellen Ripley is one of the genre's most iconic female characters. She's not a damsel—she's a badass final girl and the only survivor to defeat the monster that mutilated and destroyed every other member of the Nostromo crew.",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/5119C4MWJ0L.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Little Women",
    year: 2019,
    length: 135,
    director: "Greta Gerwig",
    description: "In the years after the Civil War, Jo March lives in New York and makes her living as a writer, while her sister Amy studies painting in Paris. Amy has a chance encounter with Theodore, a childhood crush who proposed to Jo but was ultimately rejected. Their oldest sibling, Meg, is married to a schoolteacher, while shy sister Beth develops a devastating illness that brings the family back together.",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/17008397/p17008397_v_v8_aa.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Mad Max: Fury Road",
    year: 2015,
    length: 140,
    director: "George Miller",
    description: "Unearthing feminism in a scorched, hell-on-wheels action flick from road warrior franchise man George Miller isn't exactly obvious. But though it's titled after a male character, he is muzzled for much of the film, lending the action to a female imperator and her feminist revolt against the horrors of sexism.",
    image_url: "https://upload.wikimedia.org/wikipedia/en/6/6e/Mad_Max_Fury_Road.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Mustang",
    year: 2015,
    length: 100,
    director: "Deniz Gamze Ergüven",
    description: "It's easy to call Deniz Gamze Ergüven's 2015 Oscar nominee a feminist film, since it's about five orphan girls who give oppression and the Turkish patriarchy the middle finger. But it's so much more than that—it's Ergüven's personal comment on what it means to be a woman in Turkey.",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/11893143/p11893143_v_v8_ab.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Girlhood",
    year: 2015,
    length: 113,
    director: "Céline Sciamma",
    description: "Céline Sciamma's Girlhood, a contemporary narrative with a classic plot that isn't too distant from anything in the Jane Austen canon, follows a French teenager's slog through gang life on a quest to self-discovery.",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/11240526/p11240526_v_v8_aa.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "Erin Brockovich",
    year: 2000,
    length: 113,
    director: "Steven Soderbergh",
    description: "Some will say Steven Soderbergh's true-life telling of that time a single mother blew the whistle on PG&E; knowingly poisoning local residents objectifies its lead with scanty costumes. We'd say that's precisely why this film makes our list: because women can wear whatever the hell they want and get sh*t done!",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/24917/p24917_v_v8_aa.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  },
  {
    title: "The Babadook",
    year: 2014,
    length: 95,
    director: "Jennifer Kent",
    description: "The portrayal of women in horror films has a ways to go. When it’s not a damsel in a soaked white tank top, it’s a virgin being tortured and exploited. Thankfully, that’s changing. In Jennifer Kent’s dark fairy tale, we have Amelia, a multidimensional character battling monsters and her own inner demons.",
    image_url: "https://www.gstatic.com/tv/thumb/v22vodart/10644326/p10644326_v_v8_ah.jpg",
    category_id: 1,
    genre_id: rand(1..10),
    rating_id: rand(1..8)
  }
])
puts "Seeding program..."
###################################

# Create 100 random reviews
100.times do

  # Create 3-7 random reviews for each Movie or TV Show
  # Uses Faker for fake data https://github.com/faker-ruby/faker
  rand(3..7).times do
    Review.create(
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5),
      program_id: rand(1..16)
    )
  end
end

puts "Seeding reviews..."
###################################

puts "✅ Done seeding!"
