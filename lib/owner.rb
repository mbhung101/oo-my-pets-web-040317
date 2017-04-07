require 'pry'

class Owner

  attr_accessor :pets, :count, :fish, :name
  attr_reader :species
  @@count = 0
  @@all = []

  def initialize (species=human)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@count += 1
    @@all << self
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |pet|
      pet.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |pet,|
      pet.mood = 'happy'
    end
  end

  def feed_fish
      self.pets[:fishes].each do |pet|
        pet.mood = 'happy'
      end
    end

  def sell_pets
      self.pets.each do |pets,arr|
        arr.each do |pet|
          pet.mood ='nervous'
        end
        arr.clear
    end
    return self.pets
  end

  def list_pets
    ans = "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
  # code goes here
end
