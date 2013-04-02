class Photo < ActiveRecord::Base
  attr_accessible :image

  belongs_to :product
  attr_accessible :product_id

  PAPERCLIP_IMAGES_PATH_POSTFIX = 'images/attachments/:rails_env/:class_:attachment/app_:id/:style/:app_name_screenshot_:id.:extension'

  has_attached_file :image,
                    :styles => { :medium => "200x200>" ,:thumb => "100x100>", :mini_thumb => "40x40>" },
                    :default_style => :medium,
                    :path => ":rails_root/public/#{PAPERCLIP_IMAGES_PATH_POSTFIX}",
                    :url => "/#{PAPERCLIP_IMAGES_PATH_POSTFIX}"

  validates_attachment_content_type :image,
                                    :message => 'Please upload the IMAGE, not anything else',
                                    :content_type => %w(image/jpeg image/png image/gif image/pjpeg image/x-png image/bmp)
end
