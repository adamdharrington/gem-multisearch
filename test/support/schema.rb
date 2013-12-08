ActiveRecord::Schema.define do
  self.verbose = false

  create_table :tablenames, :force => true do |t|
    t.string :col1
    t.string :col2
    t.string :col3
    t.string :col4
    t.string :col5
    t.string :col6
    t.string :col7
    t.string :col8
    t.timestamps
  end
end
