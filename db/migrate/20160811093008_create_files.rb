class CreateFiles < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :filepath, default: 'http://giphy.com/gifs/reaction-shaking-ace-ventura-138L9Bpyg0Tja0'
      t.belongs_to :question, index: true

      t.timestamps(null:false)
    end
  end
end
