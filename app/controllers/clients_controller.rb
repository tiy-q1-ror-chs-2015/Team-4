class ClientsController < ApplicationController
  def index
    @clients = Client.all
    @programs = Program.all
    @trainers = Trainer.all
  end
# def index
#   @programs = Program.all
# end

  def show
    @client = Client.find params[:id]
    @programs = @client.programs
    @programs = Program.all
    @trainers = Trainer.all
    @comment = Comment.new
  end

  def new
    @client = Client.new
    @programs = Program.all

  end

  def edit
    @client = Client.find params[:id]
    @programs = Program.all
  end

  def create
    @client = Client.create client_params
    if @client.save
      flash[:notice] = 'Client was successfully created.'
      redirect_to clients_path
    else
      flash[:error] = 'Client was NOT saved.'
      render :new
    end
  end

  def create_comment
    @client = Client.find params[:id]
    @comment = @client.comments.create comment_params
    redirect_to client_path(@client)
  end


  def update
    @client = Client.find params[:id] 
      if @client.update_attributes client_params
      redirect_to client_path(@client)
    else 
      render :new
    end
  end

  def destroy
    @client = Client.find params[:id]
    @client.delete
    redirect_to clients_path
  end

  def destroy_comment
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to @comment.commentable
  end

  def client_params
    params.require(:client).permit(
      :first_name,
      :last_name,
      :date_of_birth,
      :goals,
      program_id: []
    )
  end

  def comment_params
    params.require(:comment).permit(
      :content
      )

  end
end
