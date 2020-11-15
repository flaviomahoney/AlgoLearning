# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0


puts"destroying the seeds..."
User.destroy_all
Course.destroy_all
puts"seeds destroyed. Creating new seeds..."

# USERS
viktor_photo = "https://avatars3.githubusercontent.com/u/63431873?s=460&u=1084b312c7083849885fae61cf7f4db400eecf7a&v=4"
file = URI.open(viktor_photo)
filename = File.basename(URI.parse(viktor_photo).path)
viktor_user = User.new(email: "vkaraujo00@gmail.com", password: '123456', username: "Viktor", role: "admin")
viktor_user.photo.attach(io: file, filename: filename)
viktor_user.save

flaviom_photo = "https://avatars1.githubusercontent.com/u/63248684?s=460&u=6249ee3a2d72c615eee37531629411c977c4a6d9&v=4"
file = URI.open(flaviom_photo)
filename = File.basename(URI.parse(flaviom_photo).path)
flaviom_user = User.new(email: "flaviom@gmail.com", password: '123456', username: "Flavio", role: "user")
flaviom_user.photo.attach(io: file, filename: filename)
flaviom_user.save

leo_photo = "https://avatars1.githubusercontent.com/u/63420973?s=460&u=024e91a4f5cd27b40a7505a159a29093c7f5fff0&v=4"
file = URI.open(leo_photo)
filename = File.basename(URI.parse(leo_photo).path)
leo_user = User.new(email: "leo@gmail.com", password: '123456', username: "Leo", role: "admin")
leo_user.photo.attach(io: file, filename: filename)
leo_user.save

flavio_photo = "https://avatars1.githubusercontent.com/u/63248684?s=460&u=6249ee3a2d72c615eee37531629411c977c4a6d9&v=4"
file = URI.open(flavio_photo)
filename = File.basename(URI.parse(flavio_photo).path)
flavio_user = User.new(email: "flavio@gmail.com", password: '123456', username: "Flavio", role: "admin")
flavio_user.photo.attach(io: file, filename: filename)
flavio_user.save

itamar_photo = "https://avatars1.githubusercontent.com/u/63616452?s=460&u=da68d777ce107ed6486fff6200d57aea1122b7f7&v=4"
file = URI.open(itamar_photo)
filename = File.basename(URI.parse(itamar_photo).path)
itamar_user = User.new(email: "itamar@gmail.com", password: '123456', username: "Itamar", role: "admin")
itamar_user.photo.attach(io: file, filename: filename)
itamar_user.save

# User.create!(email: "vkaraujo00@gmail.com", password: '123456', username: "Viktor", role: "admin")
# User.create!(email: "player1@gmail.com", password: 'player1', username: "Player1", role: "user")
# User.create!(email: "leo@gmail.com", password: '123456', username: "Leo", role: "admin")
# User.create!(email: "flavio@gmail.com", password: '123456', username: "Flavio", role: "admin")
# User.create!(email: "itamar@gmail.com", password: '123456', username: "Itamar", role: "admin")

# COURSES
first_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592419374/tech01_sxtg6x.png"
file = URI.open(first_photo)
filename = File.basename(URI.parse(first_photo).path)
first_course = Course.new(name: "Matching parenthesis", video: 'https://www.youtube.com/embed/1kseKf5HAaM', description: "A classic problem — Check for balanced parentheses in an expression. Two brackets are considered to be a matched pair if the an opening bracket (i.e., (, [, or { ) occurs to the left of a closing bracket (i.e., ), ], or }) of the exact same type. There are three types of matched pairs of brackets: [], {}, and (). Ex: Write a balancedParenthesis function that takes a string as input and returns a boolean — if the parentheses in the input string are ‘balanced’, then return true, else return false. For example, the program should print true for exp = “[()]{}{[()()]()}” and false for exp = “[(])”.", category: "Manipulators", difficulty: "Hard", short_description: "Matching parenthesis, also known as brace matching or parentheses matching, is a syntax that highlights matching sets of brackets.", tag_list: "Manipulators, Hard")
first_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  first_course.images.attach(io: img_file, filename: img_filename)
end
first_course.save

second_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592422889/tech02_wr4omy.png"
file = URI.open(second_photo)
filename = File.basename(URI.parse(second_photo).path)
second_course = Course.new(name: "Array Manipulation", video: 'https://www.youtube.com/embed/VzQ2KacyDLw', description: "Arrays are sequences of numerical data, with each element having the same underlying data type – integers, real (floating point) numbers, or complex numbers. Of course, arrays are very important for scientific data, and the majority of data you will be manipulating with Larch will be in the form of arrays. Larch depends on the numpy library for providing basic array data types and the methods for fast manipulation of array data. These arrays can be multi-dimensional, have their dimensionality change dynamically, an can be sliced (subsets of elements taken). Many built-in functions will act on the whole array, generally element-by-element, in a highly efficient way, greatly reducing the need to “loop over” elements.",category: "Manipulators", difficulty: "Easy", short_description: "A way to manipulate data using strings or numbers inside a collection.", tag_list: "Manipulators, Easy")
second_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  second_course.images.attach(io: img_file, filename: img_filename)
end
second_course.save

third_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592423025/tech03_i2ja1i.png"
file = URI.open(third_photo)
filename = File.basename(URI.parse(third_photo).path)
third_course = Course.new(name: "OOP", video: 'https://www.youtube.com/embed/xoL6WvCARJY', description: "Object-oriented programming (OOP) is a programming paradigm based on the concept of objects, which can contain data, in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods). A feature of objects is an object's procedures that can access and often modify the data fields of the object with which they are associated (objects have a notion of this or self). In OOP, computer programs are designed by making them out of objects that interact with one another.[1][2] OOP languages are diverse, but the most popular ones are class-based, meaning that objects are instances of classes, which also determine their types.", category: "Objects", difficulty: "Medium", short_description: "Object-oriented programming (OOP) refers to a type of computer programming (software design) in which programmers define the data type of a data structure.", tag_list: "Objects, Medium")
third_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  third_course.images.attach(io: img_file, filename: img_filename)
end
third_course.save

fourth_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592423197/tech04_cntsmd.png"
file = URI.open(fourth_photo)
filename = File.basename(URI.parse(fourth_photo).path)
fourth_course = Course.new(name: "Path Finding", video: 'https://www.youtube.com/embed/-L-WgKMFuhE', description: "At its core, a pathfinding method searches a graph by starting at one vertex and exploring adjacent nodes until the destination node is reached, generally with the intent of finding the cheapest route. Although graph searching methods such as a breadth-first search would find a route if given enough time, other methods, which explore the graph, would tend to reach the destination sooner. An analogy would be a person walking across a room; rather than examining every possible route in advance, the person would generally walk in the direction of the destination and only deviate from the path to avoid an obstruction, and make deviations as minor as possible", category: "Finding", difficulty: "Hard", short_description: "A pathfinding method searches a graph by starting at one vertex and exploring adjacent nodes until the destination node is reached.", tag_list: "Finding, Hard")
fourth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  fourth_course.images.attach(io: img_file, filename: img_filename)
end
fourth_course.save

fifth_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592423550/tech05_wtyauy.png"
file = URI.open(fifth_photo)
filename = File.basename(URI.parse(fifth_photo).path)
fifth_course = Course.new(name: "Sort", video: 'https://www.youtube.com/embed/4Q72kbwyEmk', description: "In computer science, a sorting algorithm is an algorithm that puts elements of a list in a certain order. The most frequently used orders are numerical order and lexicographical order. Efficient sorting is important for optimizing the efficiency of other algorithms (such as search and merge algorithms) that require input data to be in sorted lists. Sorting is also often useful for canonicalizing data and for producing human-readable output. More formally, the output of any sorting algorithm must satisfy two conditions:
The output is in nondecreasing order (each element is no smaller than the previous element according to the desired total order);
The output is a permutation (a reordering, yet retaining all of the original elements) of the input.
Further, the input data is often stored in an array, which allows random access, rather than a list, which only allows sequential access; though many algorithms can be applied to either type of data after suitable modification.", category: "Sorting", difficulty: "Hard", short_description: "Sort is a series of instructions that takes an array as input, performs specified operations on the array, sometimes called a list, and outputs a sorted array.", tag_list: "Sorting, Hard")
fifth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  fifth_course.images.attach(io: img_file, filename: img_filename)
end
fifth_course.save

sixth_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592423579/tech06_nkck7c.png"
file = URI.open(sixth_photo)
filename = File.basename(URI.parse(sixth_photo).path)
sixth_course = Course.new(name: "String Manipulation", video: 'https://www.youtube.com/embed/gXhDAJ2TcLY', description: "String manipulation (or string handling) is the process of changing, parsing, splicing, pasting, or analyzing strings. String manipulation typically comes as a mechanism or a library feature of in most programming languages.

Typically, most programming languages provide a string data type that holds a sequence of characters. Such types often expose a set of functions and various other low-level functionality for manipulating the contained characters.", category: "Manipulators", difficulty: "Easy", short_description: "String manipulation (or string handling) is the process of changing, parsing, splicing, pasting, or analyzing strings.", tag_list: "Manipulators, Easy")
sixth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  sixth_course.images.attach(io: img_file, filename: img_filename)
end
sixth_course.save

seventh_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592427639/tech07_utw0vw.png"
file = URI.open(seventh_photo)
filename = File.basename(URI.parse(seventh_photo).path)
seventh_course = Course.new(name: "Div Manipulation", video: 'https://www.youtube.com/embed/kGA9RIFiyIE', description: "The div tag is used to specify a section within an HTML document. Anything from text to images to videos can be placed within a div. Divs are similar to tables but they are easier to use, customizable with CSS, and load faster than tables. Divs also make it easier for search engine spiders to “crawl” or examine a website – making your website easier to find via Google.


Div ID vs. Class

Beginning web designers sometimes wonder what the difference is between div id and div class. Div id should be used to identify a single element that appears only once within a document. Div class should be used to identify elements that appear more than once within a document. For example, let’s say that you have an HTML document that uses a div for the header and a div to contain each image. Since the header will only appear once you might code", category: "Manipulators", difficulty: "Easy", short_description: "Div Manipulation is a way to interact tables with each other and create a few features for example cards." , tag_list: "Manipulators, Easy")
seventh_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  seventh_course.images.attach(io: img_file, filename: img_filename)
end
seventh_course.save

eighth_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592427653/tech08_nzy17d.png"
file = URI.open(eighth_photo)
filename = File.basename(URI.parse(eighth_photo).path)
eighth_course = Course.new(name: "Div Manipulation (CSS)", video: 'https://www.youtube.com/embed/kGA9RIFiyIE', description: "The div tag is used to specify a section within an HTML document. Anything from text to images to videos can be placed within a div. Divs are similar to tables but they are easier to use, customizable with CSS, and load faster than tables. Divs also make it easier for search engine spiders to “crawl” or examine a website – making your website easier to find via Google.


Div ID vs. Class

Beginning web designers sometimes wonder what the difference is between div id and div class. Div id should be used to identify a single element that appears only once within a document. Div class should be used to identify elements that appear more than once within a document. For example, let’s say that you have an HTML document that uses a div for the header and a div to contain each image. Since the header will only appear once you might code", category: "Manipulators", difficulty: "Medium", short_description: "Div Manipulation using CSS it's a to make a table interact with each other but using CSS and the position tools to help you.", tag_list: "Manipulators, Medium")
eighth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  eighth_course.images.attach(io: img_file, filename: img_filename)
end
eighth_course.save

tenth_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1592487463/tech1_ajzybs.jpg"
file = URI.open(tenth_photo)
filename = File.basename(URI.parse(tenth_photo).path)
tenth_course = Course.new(name: "Reverse Link List", video: 'https://www.youtube.com/embed/O0By4Zq0OFc', description: "A common interview question asked at larger companies, reversing a linked list is a problem I’ve seen trip up a lot of engineers throughout my time at Outco.
Often being unable to solve this problem stems from an engineer not being familiar with what linked lists are ahead of time, or not understanding the difference between a linked list and an array. 
There are two common erroneous approaches I see that on the surface seem to work.
The first is to start from the head and the tail, and swap the elements in the list, as if you were operating on an array. This would be done with two pointers, and after a swap the front pointer would move up and the rear pointer would move back. This would continue until the two pointers meet in the middle.", category: "Manipulators", difficulty: "Medium", short_description: "Div Manipulation using CSS it's a to make a table interact with each other but using CSS and the position tools to help you.", tag_list: "Manipulators, Medium")
tenth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  tenth_course.images.attach(io: img_file, filename: img_filename)
end
tenth_course.save



eleventh_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1592487570/tech2_sydagz.jpg"
file = URI.open(eleventh_photo)
filename = File.basename(URI.parse(eleventh_photo).path)
eleventh_course = Course.new(name: "Tree traversal", video: 'https://www.youtube.com/embed/BHB0B1jFKQc', description: "In computer science, tree traversal (also known as tree search and walking the tree) is a form of graph traversal and refers to the process of visiting (checking and/or updating) each node in a tree data structure, exactly once. Such traversals are classified by the order in which the nodes are visited. The following algorithms are described for a binary tree, but they may be generalized to other trees as well.", category: "Manipulators", difficulty: "Medium", short_description: "In computer science, tree traversal  is a form of graph traversal and refers to the process of visiting each node in a tree data structure.", tag_list: "Manipulators, Medium")
eleventh_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  eleventh_course.images.attach(io: img_file, filename: img_filename)
end
eleventh_course.save



twelfth_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1592487616/tech3_ovzgsr.jpg"
file = URI.open(twelfth_photo)
filename = File.basename(URI.parse(twelfth_photo).path)
twelfth_course = Course.new(name: "Recursive function", video: 'https://www.youtube.com/embed/ggk7HbcnLG8', description: "In computer science, recursion is a method of solving a problem where the solution depends on solutions to smaller instances of the same problem. Such problems can generally be solved by iteration, but this needs to identify and index the smaller instances at programming time. At the opposite, recursion solves such recursive problems by using functions that call themselves from within their own code. The approach can be applied to many types of problems, and recursion is one of the central ideas of computer science.", category: "Manipulators", difficulty: "Medium", short_description: "A recursive function is a function that calls itself during its execution. This enables the function to repeat itself several times.", tag_list: "Manipulators, Medium")
twelfth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  twelfth_course.images.attach(io: img_file, filename: img_filename)
end
twelfth_course.save

ninth_photo = "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592427663/tech09_uu8ys5.png"
file = URI.open(ninth_photo)
filename = File.basename(URI.parse(ninth_photo).path)
ninth_course = Course.new(name: "Binary Search", video: 'https://www.youtube.com/embed/T2sFYY-fT5o', description: "In computer science, binary search, also known as half-interval search, logarithmic search, or binary chop, is a search algorithm that finds the position of a target value within a sorted array. Binary search compares the target value to the middle element of the array.", category: "Binary", difficulty: "Hard", short_description: "Binary works on sorted arrays and search begins by comparing an element in the middle of the array with the target value.", tag_list: "Binary, Hard")
ninth_course.photo.attach(io: file, filename: filename)
images_array = ["https://res.cloudinary.com/dhk8ebunw/image/upload/v1592574413/img02_dxfkhd.png", "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592574413/img01_ja2l6r.png", "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592574413/img03_ykzbko.png", "https://res.cloudinary.com/dhk8ebunw/image/upload/v1592574413/img04_nns3fz.png"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  ninth_course.images.attach(io: img_file, filename: img_filename)
end
ninth_course.save


puts"seeds created! Done!"




