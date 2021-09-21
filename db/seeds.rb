# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###################################
#Favorite.destroy_all
#Category.destroy_all
#Genre.destroy_all
#Rating.destroy_all
#Review.destroy_all
#Program.destroy_all
#Profile.destroy_all
#User.destroy_all

#User.create([{username: "User1"} , {username: "calmontero"}])
#puts "Seeding user..."
###################################

#Profile.create([{ user_id: 4 , name: "Basic" }])
#puts "Seeding profile..."
###################################

#Category.create([{ name: 'Movies' } , { name: 'TV Show' }])
#puts "Seeding category..."
###################################

#Genre.create([{ name: 'Adventure' } , { name: 'Scifi' } , { name: "Children & Family Movies" } , { name: "Classic" } , { name: "Comedies" } , { name: "Drama" } , { name: "Romantic" } , { name: "Horror" } , { name: "Sports" } , { name: "Documentaires" }])
#puts "Seeding genre..."
###################################

#Rating.create([{ rating: "G: General Audiences" } , { rating: "PG: Parental Guidance Suggested" }, { rating: "PG-13: Parents Strongly Cautioned" } , { rating: "R: Restricted" }, { rating: "TV-Y: All Children" }, { rating: "TV-G: General Audience" }, { rating: "TV-PG: Parental Guidance Suggested" }, { rating: "TV-MA: Mature Audience Only" }])
#puts "Seeding rating..."
###################################

Program.create([
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
    genre_id: 5,
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
    genre_id: 5,
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
    genre_id: 5,
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
      program_id: rand(14..16)
    )
  end
end

puts "Seeding reviews..."
###################################

puts "✅ Done seeding!"
