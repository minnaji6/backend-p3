class Habit < ActiveRecord::Base
    has_many :todos

    def delete(id)
        self.find(id).destroy
    end
    
    def self.create_new(id, habit)
        self.create(id:id, habit:habit)
    end

   
end