  
class AddActiveToStudents < ActiveRecord::Migration

    add_column :students, :active, :boolean, :null => false, :default => false

end