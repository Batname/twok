class CreateServicesTranslation < ActiveRecord::Migration
  def self.up
    Service.create_translation_table!({
                                       :name => :string,
                                       :title => :string,
                                       :content => :text
                                   }, {
                                       :migrate_data => true
                                   })
  end

  def self.down
    Post.drop_translation_table! :migrate_data => true
  end
end
