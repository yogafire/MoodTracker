class AddUserToLifeEvent < ActiveRecord::Migration
  def change
     add_reference :life_events, :user, index: true
  end
end
