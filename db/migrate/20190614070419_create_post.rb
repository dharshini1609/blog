class CreatePost < ActiveRecord::Migration[5.2]


  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end

  before_save do
    self.created_at ||= DateTime.now
  end

  protected

  def timestamp_attributes_for_create
    [:updated_at]
  end

end
