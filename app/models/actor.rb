class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    container = []
    characters.each do |character|
      shows.each do |show|
        container << "#{character.name} - #{show.name}"
      end
    end
    container
  end


end
