class ProgrammersController < ApplicationController
  def index
    @programmers = Programmer.all
    render :navbar
  end

  def show
    @programmer = Programmer.find(params[:id])
  end
end
