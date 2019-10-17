class Store < ActiveRecord::Base
    belongs_to :user
    
    def self.search(key)
        where("store_name LIKE ?", "%#{key}%")
    end
    
    has_attached_file :photo, :styles => { :medium => "300x300", :thumb => "100x100" }, :default_url => "/images/dahong_0.png"
    validates_attachment_content_type :photo, :content_type => /^image\/(jpeg|png|gif|jpg|tiff)$/
    validates_attachment_size :photo, :in => 0..20.megabytes
    
    has_attached_file :photo2, :styles => { :medium => "300x300", :thumb => "100x100" }, :default_url => "/images/dahong_0.png"
    validates_attachment_content_type :photo2, :content_type => /^image\/(jpeg|png|gif|jpg|tiff)$/
    validates_attachment_size :photo2, :in => 0..20.megabytes
      
    has_attached_file :photo3, :styles => { :medium => "300x300", :thumb => "100x100" }, :default_url => "/images/dahong_0.png"
    validates_attachment_content_type :photo3, :content_type => /^image\/(jpeg|png|gif|jpg|tiff)$/
    validates_attachment_size :photo3, :in => 0..20.megabytes
 
 
    validates :store_name, presence: true, length: { minimum: 1, message: "상호명을 입력해주세요"}
    validates :address, presence: true, length: { minimum: 1, message: "주소를 입력해주세요"}
    validates :contact, presence: true, length: { minimum: 1, message: "연락처를 입력해주세요"}
    validates :short_content, presence: true, length: { minimum: 1, message: "한줄소개를 입력해주세요"}
    validates :detail_content, presence: true, length: { minimum: 1, message: "상세소개를 입력해주세요"}
    
    
end