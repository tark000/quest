class Api::QuestsController < ApplicationController
  
  before_action :authenticate_user!

  def index
    quests = Quest.order('created_at DESC')
    render json: {status:"SUCCESS", message: "quests loaded", data:quests}, status: :ok
  end
 
  def show
    quest =Quest.find(params[:id])
    render json: {status:"SUCCESS", message: "quest id=#{params[:id]} loaded", data:quest}, status: :ok
  end
 
  def create
    quest = Quest.new(quest_params)
    if quest.save
      render json: {status:"SUCCESS", message: "Saved quest", data:quest}, status: :ok
    else
      render json: {status:"ERROR", message: "quest not saved", data:quest.errors}, status: :unprocessable_entity
    end
  end
 
  def destroy
    quest =Quest.find(params[:id])
    if  quest.destroy
      render json: {status:"SUCCESS", message: "quest deleted", data:quest}, status: :ok
    else
      render json: {status:"ERROR", message: "quest was not deleted", data:quest.errors}, status: :not_found
    end
  end
 
  def update
    quest =Quest.find(params[:id])
    if  quest.update_attributes(quest)
      render json: {status:"SUCCESS", message: "Update quest", data:quest}, status: :ok
    else
      render json: {status:"ERROR", message: "quest was not updated", data:quest.errors}, status: :unprocessable_entity
    end
  end


  private
  def quest_params
    params.permit(:title, :description)
  end
end
