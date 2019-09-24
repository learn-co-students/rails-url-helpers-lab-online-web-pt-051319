class AddActiveStatusToStudents < ActiveRecord::Migration
	def change
		change_table :students do |s|
			s.boolean :active
		end
	end
end