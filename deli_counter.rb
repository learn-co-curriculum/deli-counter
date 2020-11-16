# Write your code here.

def line(katz_deli)
    puts("The line is currently empty.") if katz_deli.length == 0

    array = []
    count = 1
    katz_deli.each do |customer|
        array.push("#{count}. #{customer}")
        count += 1
    end

    puts("The line is currently: #{array.join(" ")}") if katz_deli.length > 0
end


def take_a_number(katz_deli, name = "Ada")
    if katz_deli.length == 0
        katz_deli.push(name)
        puts("Welcome, #{name}. You are number 1 in line.")
    else
        katz_deli.push(name)
        puts("Welcome, #{name}. You are number #{katz_deli.length} in line.")
    end
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts("There is nobody waiting to be served!")
    else
        puts("Currently serving #{katz_deli.first}.")
        katz_deli.shift
    end

end