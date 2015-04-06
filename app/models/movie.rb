class Movie < ActiveRecord::Base
  validates_presence_of :title, :format, :length, :release_year
  validates_uniqueness_of :title
  validates_length_of :title, :within => 1..50
  validates_inclusion_of :length, :in => 1..499
  validates_inclusion_of :release_year, :in => 1801..2099
   
  has_and_belongs_to_many :collections
end
