class DeveloperController < ApplicationController


  def addition
  end

  def create_idol
    # @idol = Idol.new
    # @idol.name = params[:name]
    # @idol.group_id = params[:group_id]
    # @idol.save
   
  end

  def create_type
    @type = Type.new
    @type.name = params[:type]
    @type.group_id = params[:group_id]
    @type.pattern = params[:pattern]
    if @type.save
      # 写真と種類をくっつける処理
      @type.idol.each do |member|
        @type.pose.each do |pose|
          @photo = Photo.new
          @photo.type_id = @type.id
          @photo.idol_id = member.id
          @photo.pose_id = pose.id
          @photo.save
        end
      end
      redirect_to("/developer/date_show")
    else
      render("developer/addtion")
    end
  end

  def data_show
    @idols = Idol.all
    @poses = Pose.all
    #@photos = Photo.all
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