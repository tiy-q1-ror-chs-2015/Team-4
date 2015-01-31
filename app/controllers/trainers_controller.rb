class TrainersController < ApplicationController

def index
  @trainers = Trainer.all
end 

def new
  @trainer = Trainer.new
  @programs = Program.all


end 

def create
  @trainer = Trainer.create trainer_params
  redirect_to trainers_path
end 

def create_comment
  @trainer = Trainer.find params[:id]
  @comment = @trainer.comments.create comment_params
  redirect_to trainer_path(@trainer)
end

def edit
  @trainer = Trainer.find params[:id]
  @programs = Program.all
end

def update
  @trainer = Trainer.find params[:id]
  @trainer.update_attributes trainer_params
  redirect_to trainer_path(@trainer)
end 

def show
  @trainer = Trainer.find params[:id]
  @programs = @trainer.programs
  @comment = Comment.new
end 
def destroy
  @trainer = Trainer.find params[:id]
  @trainer.delete
  redirect_to trainers_path
end

def destroy_comment
  @comment = Comment.find params[:id]
  @comment.destroy
  redirect_to @comment.commentable
end

private
def trainer_params
  params.require(:trainer).permit(
    :first_name,
    :last_name,
    :about_me,
    program_ids: []
    )

end

def comment_params
  params.require(:comment).permit(
    :content
    )
end

end