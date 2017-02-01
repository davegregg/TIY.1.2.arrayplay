#!/usr/bin/env ruby

def four_words(text)
  text.split.collect do |word|
    word if word.length == 4
  end.compact
end

def how_many_words(text,num)
  text.split.collect do |word|
    word if word.length == num
  end.compact
end

def sort_movies_by_star(movies_list)
  movies_by_star = []
  movies_list.each do |movie|
    #puts "movie: #{movie}"
    movie[:stars].each do |star|
      #puts "star: #{star}"
         movies_by_star.push({star:star,all_stars:movie[:stars],title:movie[:title],budget:movie[:budget]})
    end
  end
  movies_by_star
end

puts "\n\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#"
puts "\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n\n"

=begin
  our_class
=end
chosen_ones = []
our_class = ['Dave McKinney','David Gregg','Demetra Koras','Kalea Wolff','Kendrick Lo','Laura Moore','Phil Shaughnessy','Ben Call','Collin Schneider','Michael Stashevsky','Miguel Soria','Nancy Ingels']
our_class.each do |name|
  name = name.split.first
  chosen_ones.push(name) if name.length <= 5
end
print "Chosen ones: #{chosen_ones} \n\n"

=begin
  words_of_four
=end
words_of_four = []
sentence = "Ruby is actually kind of fun once you get used to it."
sentence.split.each do |word|
  words_of_four.push(word) if word.length == 4
end
print "Words of four letters: #{words_of_four}\n\n"

=begin
  movies
=end
movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

inexpensively_produced = []
inexpensively_produced = movies.collect do |moviehash|
  moviehash[:title] if moviehash[:budget] < 100
end.compact
print "Inexpensively-produced films: #{inexpensively_produced} \n\n"

leos_films = []
leos_films = movies.collect do |moviehash|
  moviehash[:title] if moviehash[:stars].include? "Leonardo DiCaprio"
end.compact
print "Leo's films: #{leos_films} \n\n"

=begin
  Adventure Mode
=end
serenity_prayer = 'God grant me the serenity to accept the things I cannot change; courage to change the things I can; and wisdom to know the difference.'.gsub(/\;|\./,'')
print "Running the Serenity Prayer through 'four_words' method: #{four_words(serenity_prayer)}\n\n"
print "Running the Serenity Prayer through 'how_many_words' method, selecting words of 6 length: #{how_many_words(serenity_prayer, 6)}\n\n"

total_budget = 0
movies.each { |moviehash| total_budget += moviehash[:budget].to_i }
print "Total movie budget: #{total_budget}\n\n"

puts "\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#"
puts "\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n\n"
