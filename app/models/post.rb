class Post < ActiveRecord::Base
  attr_accessible :title, :content
  validates :title, :content, :presence => { :message => "bos olamaz"}
  validates :title, :length => { :minimum => 2, :message => "cok kisa (en az 2 karakter)"}
  validates :title, :uniqueness => { :message => "adinda baska gonderi var."}
end
