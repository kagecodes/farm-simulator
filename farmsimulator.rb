require_relative 'code.rb'
# require_relative 'main.rb'

class Farmsimulator

  @@total = 0

  def menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.chomp
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '------------------------------------------------------'
    puts 'Options:'
    puts 'field   -> adds a new field'
    puts 'harvest -> harvests crops and adds to total harvested'
    puts 'status  -> displays some information about the farm'
    puts 'relax   -> provides lovely descriptions of your fields'
    puts 'exit    -> exits the program'
    puts '------------------------------------------------------'

    puts "Enter a option"
  end

  def call_option(user_selected)
    case user_selected
    when 'field' then add_field
    when 'harvest' then harvest
    when 'status' then status
    when 'relax' then relax
    when exit then exit
    end
  end

  def add_field
    puts "What kind of field is it: corn or wheat?"
    input_type = gets.chomp

    puts "How large is the field in hectares?"
    input_size = gets.chomp

    new_field = Field.new(input_type, input_size)

    puts "Added a #{input_type} field of #{input_size} hectares!"
  end

  def harvest
    Field.all.each do |each|
      puts "Harvesting #{each.amount} food from #{each.size} hectare #{each.type} field."
      @@total += each.amount
    end
  end

  def status
    Field.all.each do |each|
        puts "The #{each.type} field is #{each.size} hectares."
    end
    puts "The farm has #{@@total} harvested food so far."
  end

  def relax
    a = Field.all.sample
    puts "#{a.size} hectares of tall green stalks rustling in the breeze fill the horizon. The sun hangs low, casting an orange glow on a sea of #{a.type}"
  end

end

my_farm = Farmsimulator.new

my_farm.menu
