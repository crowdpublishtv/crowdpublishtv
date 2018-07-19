class CreateMovieroles < ActiveRecord::Migration[4.2]
  def change
    create_table :movieroles do |t|
      t.string :role
      t.string :roledesc
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
