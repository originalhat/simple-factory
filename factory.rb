require 'faker'

class Factory
  def self.create(type, params={})
    case type
    when :user
      User.new(params)
    when :merchant
      puts "a merchant!"
    else
      raise "Factory not defined."
    end
  end
end

class User
  def initialize(params={})
    @first_name = params[:first_name] || Faker::Name.first_name
    @last_name  = params[:last_name]  || Faker::Name.last_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end
end

user = Factory.create(:user, {first_name: "Devin", last_name: "Brown"})

puts user.first_name
puts user.last_name

user1 = Factory.create(:user)

puts user1.first_name
puts user1.last_name

