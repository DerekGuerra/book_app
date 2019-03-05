json.array! @books.each do |book|
  json.id book.id
  json.title book.title 
  json.author book.author
  json.genre book.genre
  json.year_published book.year_published
end