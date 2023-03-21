class CommentsController < ApplicationController
    before_action :set_project

    def create
        @project.comments.create! params.required(:comment).permit(:content, :user_name)
        redirect_to @project
    end 

    private

    def set_project
        @project = Project.find(params[:project_id])
    end 
end
