class BooksController < ApplicationController
  before_action :set_bookshelf
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  def index
    @books = @bookshelf.books.all
  end

  # GET /books/1
  def show
    
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to bookshelf_books_path(@bookshelf), notice: 'Book was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      redirect_to bookshelf_books_path(@bookshelf), notice: 'Book was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    redirect_to bookshelf_books_url(@bookshelf), notice: 'Book was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookshelf
      @bookshelf = Bookshelf.find(params[:bookshelf_id])
    end

    def set_book
      @book = @bookshelf.books.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:bookshelf_id, :title)
    end
end
