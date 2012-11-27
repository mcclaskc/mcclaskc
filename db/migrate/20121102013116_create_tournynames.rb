class CreateTournynames < ActiveRecord::Migration
  def up
    create_table :tournynames do |t|

      t.string :name
      t.string :steam
      t.string :email

    end
  end

  def down

  	  drop_table :tournynames
  
  end
end
