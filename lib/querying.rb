def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.id = 1 ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY length(characters.motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
    "SELECT species, COUNT(species) AS num_species FROM characters GROUP BY species ORDER BY num_species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN subgenres ON subgenres.id = authors.id  ORDER BY authors.name ASC"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM (SELECT series.title AS title, COUNT(characters.series_id) AS num_species FROM series INNER JOIN characters ON series.id = characters.series_id WHERE characters.species = 'human' GROUP BY characters.series_id ORDER BY num_species DESC LIMIT 1);"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name) FROM character_books INNER JOIN characters ON characters.id = character_books.character_id GROUP BY characters.name ORDER BY COUNT(name) DESC;"
end
