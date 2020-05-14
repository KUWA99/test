class Comment1sController < ApplicationController
    before_action :authenticate_user!
    

    def create
      question = Question.find(params[:question_id])
      @comment = question.comment1s.build(comment_params)
      @comment.user_id = current_user.id
      if @comment.save
        flash[:success] = "コメントしました"
        redirect_back(fallback_location: root_path)
      else
        flash[:success] = "コメントできませんでした"
        redirect_back(fallback_location: root_path)
      end
    end
  
    private
  
      def comment_params
        params.require(:comment1).permit(:comment,{situation_ids: []})
      end
      
end
