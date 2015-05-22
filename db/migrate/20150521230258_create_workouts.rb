class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
    	t.string :name
    	t.string :description
    	t.integer :trainer_id
    	t.integer :athlete_id
      t.string :trainer_type
      t.string :athlete_type

    	t.belongs_to :trainer, index: true
      t.belongs_to :athlete, index: true
    	
      t.timestamps null: false
    end
  end
end
