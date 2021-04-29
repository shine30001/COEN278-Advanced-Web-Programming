require_relative 'q1'
require_relative 'q2'
require_relative 'q3'
require_relative 'q4'
require_relative 'q5'

# Quiz 1
puts "\n===== Question 1 ====="

str1 = %{three, three, three}
puts count_word(str1)
puts count_word()
str2 = <<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
EOS

puts count_word(str2, "and")

# Quiz 2
puts "\n===== Question 2 ====="

students = [
    {:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789},
    {:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 456734244},
    {:firstname => "Marisa", :lastname => "lastnamemarisa",  :phonenumber => 443234567},
    {:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 456734244}
]

search_students(students, firstname: "Ken")
search_students(students, firstname: "")

# Quiz 3
puts "\n===== Question 3 ====="

obj = Compress.new("i love you but do you love me")
p obj.words, obj.seq

# Quiz 4
puts "\n===== Question 4 ====="

puts ".merge"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

puts h1.merge(h2)
puts h1.merge(h2){|key, val1, val2| val2 - val1}
puts h1

puts "\n.merge!"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

puts h1.merge!(h2){|key, val1, val2| val2 - val1}
puts h1

# Quiz 5
puts "\n===== Question 5 ====="

str = <<EOF
<%= simple_form_for @project do |f| %>
    <%= f.input :name %>
    <%= f.input :description %>
    <h3>Tasks</h3>
    <div id='tasks'>
        <%= f.simple_fields_for :tasks do |task| %>
        <%= render 'task_fields', :f => task %>
        <% end %>
        <div class='links'>
        <%= link_to_add_association 'add task', f, :tasks %>
        </div>
    </div>
    <%= f.submit 'Save' %>
<% end %>
EOF

obj = Webfilter.new(str)
puts obj.filter



