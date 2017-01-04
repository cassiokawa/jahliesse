# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Faker seeds books
# 
# 
User.create(fullname:'Rolling Stones', email: 'stones@example.com', password:'password', role:'cliente', point:'0')
User.create(fullname:'The Beatles', email: 'beatles@example.com', password:'password', role:'cliente', point:'0')
User.create(fullname:'Led Zepellin', email: 'admin@example.com', password:'password', role:'admin', point:'0')

Estilo.create(estilo: 'Romance')
Estilo.create(estilo: 'Cientifico')
Estilo.create(estilo: 'AutoAjuda')

30.times do |i|
	nome = Faker::Book.title
	autor = Faker::Book.author
	editora = Faker::Book.publisher
	edicao = Faker::Number.between(1, 10)
	estilo_id = Faker::Number.between(1, 3)
	isbn = Faker::Code.isbn
	pages =  Faker::Number.between(99, 1000)
	capa = Faker::Avatar.image
	data = Faker::Time.between(50.years.ago, Date.today, :all)
	Book.create!(
		nome: nome,
		autor: autor,
		editora: editora,
		edicao: edicao,
		isbn: isbn,
		estilo_id: estilo_id,
		pages: pages,
		capa: capa,
		data: data
	)
	puts "Livro cadastrado"
end	
