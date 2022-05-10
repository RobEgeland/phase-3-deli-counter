# Write your code here.
require "pry"

def line(array)
    line_array = ["The line is currently:"]
    if array.length() == 0
        puts "The line is currently empty."
    else
        array.each_with_index do |customer, index|
            line_array << "#{index + 1}. #{customer}"
        end
        puts line_array.join(" ")
    end
end


def take_a_number(array, customer)
    array << customer
    puts "Welcome, #{customer}. You are number #{array.find_index(customer) + 1} in line."
end


def now_serving(array)
    if array.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array[0]}."
        array.shift
    end
end