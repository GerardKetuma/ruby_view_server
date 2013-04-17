require 'erb'

x = 42
arry = ["Beef", "Corn", "Tomatoes"]
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)
template2 = ERB.new '
<ul>
<% arry.each do |el| %>
  <li><%= "I love #{el}" %></li>
<% end %>
</ul>
'
puts template2.result(binding)
