json.extract! book, :id, :nome, :autor, :editora, :pages, :isbn, :edicao, :data, :capa, :estilo, :tag, :created_at, :updated_at
json.url book_url(book, format: :json)