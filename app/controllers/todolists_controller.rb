class TodolistsController < ApplicationController
  def new
  	@list = Book.new
  end


def create
	@list = Book.new(list_params)
	if @list.save
	 	flash[:notice] = ' Book was successfully created. '
		redirect_to book_path(@list.id)
	else
		@lists = Book.all
		flash[:notice] = 'error '
		render :index
	end
end

def index
	@lists = Book.all
	@list = Book.new
end

def edit
	@list = Book.find(params[:id])
end


def show
	@list = Book.find(params[:id])
end

def update
	@list = Book.find(params[:id])
	if @list.update(list_params)
		flash[:notice] = 'Book was successfully created. '
		redirect_to book_path(@list.id)
	else
		flash[:notice] = 'error '
		render :edit
	end
end

def destroy
	list = Book.find(params[:id])
	list.destroy
	redirect_to  books_path
end



private
	def list_params
		params.require(:book).permit(:title, :body)
	end

end
