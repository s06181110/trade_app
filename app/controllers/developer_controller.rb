class DeveloperController < ApplicationController


  def addition

  end

  def create_idol
    @idol = Idol.new
    @idol.name = params[:name]
    @idol.group_id = params[:id]
    @idol.save
  end

  def idol_show
    @idols = Idol.all
  end
end
