class BooksController < ApplicationController
	before_action :set_book, only: [:show, :edit, :update, :destroy]

	def index
		@books = Book.all
	end

	def create
		@book = Book.new(book_params)

		respond_to do |format|
			if @book.save
				format.html {redirect_to @book, notice: 'Book was created' } 
			else
				format.html {render :new}
			end
		end

	end

	def new
		@book = Book.new
	end

	def update
		respond_to  do |format|
			if @book.update(book_params)
				format.html { redirect_to @book, notice: 'Updated' }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@book.destroy
		respond_to do |format|
			format.html { redirect_to books_url, notice: 'Destroyed' }


	end

	def show

	end
end

private

def set_book
	@book = Book.find(params[:id])
end

def book_params
	params.require(:book).permit(:name, :author_name, :edition, :price, :isbn_no)
end
end
