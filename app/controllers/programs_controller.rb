class ProgramsController < ApplicationController
def index
  @programs = Program.all
end

def new
  @program = Program.new
end

def create
  @program = Program.create program_params
  if @program.save
    flash[:notice] = 'Program information successsfully saved.'
    redirect_to programs_path
  else
    flash[:error] = 'Program NOT successfully saved.'
    render :new
  end
end

def show
  @program = Program.find params[:id]
end

def edit
  @program = Program.find params[:id]
end

def update
  @program = Program.find params[:id]
  if @program.update program_params
    flash[:notice] = 'Program information successfully saved.'
    redirect_to program_path(@program)
  else
    flash[:error] = 'Program NOT successfully saved.'
    render :new
  end
end

def destroy
  @program = Program.find params[:id]
  @program.delete
  flash[:notice] = 'Program successfully deleted.'
  redirect_to programs_path
end


private

def program_params
  params.require(:program).permit(
    :name,
    :description
    )
end

end
