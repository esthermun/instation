class Post < ActiveRecord::Base
  belongs_to :user

  has_attached_file :picture, :style { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/ 
end
