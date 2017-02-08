class HumanPerson < ApplicationRecord

validates_presence_of :name, :age, :hair_color, :eye_color, :gender, :alive



def info
 "person =  #{name}, #{age}, #{hair_color}, #{eye_color}, #{gender} #{alive}"
end



def self.by_name
 order(:name)
  end
end
