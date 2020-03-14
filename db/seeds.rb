# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Actor.create(first_name: "Julo", last_name: "Ndiaye", image: "https://cdn.senenews.com/wp-content/uploads/2017/06/julo_dakarcine-5-281x423.jpg", biography: "Souleymane Seye Ndiaye is an actor, known for Montparnasse Bienvenüe (2017), La pirogue (2012) and Des étoiles (2014)")

a2 = Actor.create(first_name: "Katoucha", last_name: "Niane", image: "//upload.wikimedia.org/wikipedia/en/thumb/c/cf/Katoucha.jpg/200px-Katoucha.jpg", biography: "Katoucha was born on October 23, 1960 in Conakry, Guinea as Katoucha Niane. She was an actress, known for Ya bon les blancs (1988), Ramata (2009) and Élection de Miss France (1986). She died on February 2, 2008 in Paris, France.")

a3 = Actor.create(first_name: "Lupita", last_name: "Nyong'o", image: "//upload.wikimedia.org/wikipedia/commons/thumb/3/34/SXSW_2019_4_%2847282558132%29_%28cropped%29.jpg/220px-SXSW_2019_4_%2847282558132%29_%28cropped%29.jpg", biography: "Lupita Amondi Nyong'o is a Kenyan-Mexican actress. The daughter of Kenyan politician Peter Anyang' Nyong'o, Nyong'o was born in Mexico City, where her father was teaching, and was raised in Kenya from the age of one.")

a4 = Actor.create(first_name: "Will", last_name: "Smith", image: "//upload.wikimedia.org/wikipedia/commons/thumb/6/67/Will_Smith_by_Gage_Skidmore_2.jpg/220px-Will_Smith_by_Gage_Skidmore_2.jpg", biography: "Willard Carroll 'Will' Smith Jr., is an American actor and rapper. In April 2007, Newsweek called him 'the most powerful actor in Hollywood'. Smith has been nominated for five Golden Globe Awards and two Academy Awards, and has won four Grammy Awards.")

a5 = Actor.create(first_name: "Martin", last_name: "Lawrence", image: "//upload.wikimedia.org/wikipedia/commons/thumb/0/0b/MartinLawrenceHWOFJune2013.jpg/220px-MartinLawrenceHWOFJune2013.jpg", biography: "(born April 16, 1965) is an American stand-up comedian, actor, producer, talk show host, writer, and former Golden Gloves boxer. Lawrence came to fame during the 1990s, establishing a Hollywood career as a leading actor, most notably in the Fox television sitcom Martin and the films House Party, Boomerang, Bad Boys, Wild Hogs, Nothing to Lose, Blue Streak, Life, Big Momma's House, and A Thin Line Between Love and Hate")

a6 = Actor.create(first_name: "Trevor", last_name: "Noah", image: "//upload.wikimedia.org/wikipedia/commons/thumb/7/74/Trevor_Noah_2017.jpg/220px-Trevor_Noah_2017.jpg", biography: "Trevor Noah is a South African comedian, writer, producer, political commentator, actor, and television host. He is the current host of The Daily Show, an American satirical news program on Comedy Central")

a7 = Actor.create(first_name: "Leonardo", last_name: "Dicaprio", image: "//upload.wikimedia.org/wikipedia/commons/thumb/4/46/Leonardo_Dicaprio_Cannes_2019.jpg/220px-Leonardo_Dicaprio_Cannes_2019.jpg", biography: "Leonardo Wilhelm DiCaprio (/dɪˈkæprioʊ/, Italian: [diˈkaːprjo]; born November 11, 1974) is an American actor, producer, and environmentalist. He has often played unconventional parts, particularly in biopics and period films. As of 2019, his films have earned US$7.2 billion worldwide, and he has placed eight times in annual rankings of the world's highest-paid actors.")

a8 = Actor.create(first_name: "Kate ", last_name: "Winslet", image: "//upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Kate_Winslet_at_the_2017_Toronto_International_Film_Festival_%28cropped%29.jpg/220px-Kate_Winslet_at_the_2017_Toronto_International_Film_Festival_%28cropped%29.jpg", biography: "Kate Elizabeth Winslet CBE is an English actress. She is particularly known for her work in period dramas, and is often drawn to portraying angst-ridden women.") 


m1 = Movie.create(title: "Titanic", image: "https://upload.wikimedia.org/wikipedia/en/1/19/Titanic_%28Official_Film_Poster%29.png", release_year: "1997", genre: "Romance/Drama/Historical Drama")

m2 = Movie.create(title: "Black Panther", image: "//upload.wikimedia.org/wikipedia/en/0/0c/Black_Panther_film_poster.jpg", release_year: "2018", genre: "Science fiction /Action /Adventure")

m3 = Movie.create(title: "The Pirogue",image:"//upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Affiche_207_La_pirogue_Fr.jpg/220px-Affiche_207_La_pirogue_Fr.jpg", release_year: "2012", genre: "Drama/International")

m4 = Movie.create(title: "Bad Boys", image: "//upload.wikimedia.org/wikipedia/en/thumb/a/a8/Bad_Boys.jpg/220px-Bad_Boys.jpg", release_year: "1995", genre: "Comedy/Buddy/Action")

m5 = Movie.create(title: "Alladin", image: "//upload.wikimedia.org/wikipedia/en/9/9a/Aladdin_%28Official_2019_Film_Poster%29.png", release_year: "2019", genre: "Musical Fantasy")

m6 = Movie.create(title: "Revolutionary Road", image: "//upload.wikimedia.org/wikipedia/en/3/39/Revolutionary_Road_%28Official_Film_Poster%29.png",release_year:"2008", genre:"Romantic/drama")

m1.actors << [a7,a8]
m2.actors << [a3,a6]
m3.actors << [a1,a2]
m4.actors << [a4,a5]
m5.actors << [a4]
m6.actors << [a7,a8] 
