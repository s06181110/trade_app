class DeveloperController < ApplicationController


  def addition
  end

  def create_idol
    # @idol = Idol.new
    # @idol.name = params[:name]
    # @idol.group_id = params[:group_id]
    # @idol.save
   
  end

  def create_photo
    @type = Type.new
    @type.name = params[:costume]
    # @type.save
    # 写真と種類をくっつける処理
  end


  def data_show
    @idols = Idol.all
    @poses = Pose.all
    @formats = PhotoFormat.all
  end
end

=begin 
写真のフォーマット(rails consoleでやる)
  (メンバーid 始..終).each do |i|
    (1..9).each do |j|
      @photo = Photo.new
      @photo.idol_id = i
      @photo.pose_id = j
      @photo.save
    end
  end
=end