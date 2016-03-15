class Puppy
	#classes have state/identity
	def initialize(name,age)
		@name = name
		@age = age
	end

	def name
		@name
	end

	def age
		@age
	end


	#classes have behaviors

	def bark
		"#{name} says woof!"
	end


end

peanut = Puppy.new("Peanut","6")
penny = Puppy.new("Penny", "5")

p peanut
p penny

p peanut.bark

p peanut.name

p penny.age


class Library
	def initialize
		@books = []
	end

	def books
		@books
	end

	def add_book(title)
		@books << title
	end
end


dan_library = Library.new
p dan_library.books
dan_library.add_book("Great Expectations")
dan_library.add_book("Guliver's Travels")

p dan_library.books


dan_library.add_book("War and Peace")
dan_library.add_book("Harry Potter")

p dan_library.books