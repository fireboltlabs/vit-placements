class Student < ActiveRecord::Base

    has_one :ssc
    has_one :inter_or_diplomo
    has_one :btech

    accepts_nested_attributes_for :ssc, :inter_or_diplomo, :btech

    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
    validates_presence_of :regd_no, :first_name,:last_name, :father_name,
        :email, :mobile, :father_mobile, :placement, :jkc, :civils, :further_studies,:emcet_rank, :photo

    validates_format_of :email, :with => EMAIL_REGEX
    validates_uniqueness_of :regd_no
    validates_length_of :mobile, :maximum => 10
    validates_length_of :father_mobile, :maximum => 10



    has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>"}, :presence => true
    validates_attachment :photo, :size => { :in => 0..10.megabytes },
                        :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff|jpg)$/ }


end
