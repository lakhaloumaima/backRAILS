class User < ApplicationRecord
  
    # before_create :confirmation_token
    has_secure_password
    validates_presence_of :email,  :firstname, :lastname , :role 
    validates_uniqueness_of :email
    # has_many :educations
    enum role: [:freelancer, :client,:admin ]
    # has_many :experiences
  
    has_one_attached :image
  
  
    def image_url
      #Get the URL of the associated image
      image.attached? ? url_for(image) : nil
    end

  end
  