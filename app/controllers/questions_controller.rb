class QuestionsController < ApplicationController
  def index
    
    @questions= params[:situation_id].present? ? Situation.find(params[:situation_id]).questions.page(params[:page]).per(4) : Question.all.page(params[:page]).per(4)
    

  end

  def new
 @question=Question.new

  end

  def show
    @question = Question.find(params[:id])
    @comments = @question.comment1s
      @comment = @question.comment1s.build
  
      @like = Like.new
  
      @menlikes=@question.liked_users.where(gender: "Men").count
      @womenlikes=@question.liked_users.where(gender:"Women").count
    
    end
  def create
    @question = Question.new(question_params)
    @question.user_id= current_user.id
    
    if @question.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end

  end

  
  private
  def question_params
    params.require(:question).permit(:about,:user_id,:image, {situation_ids: []},:situation)
  end

 
  before_action :authenticate_user!
end
