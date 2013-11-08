class BookshelvesController < ApplicationController
  before_action :set_bookshelf, only: [:show, :edit, :update, :destroy]

  # GET /bookshelves
  def index
    @bookshelves = Bookshelf.all
  end

  # GET /bookshelves/1
  def show
  end

  # GET /bookshelves/new
  def new
    @bookshelf = Bookshelf.new
    3.times {
      @bookshelf.books.build      
    }
  end

  # GET /bookshelves/1/edit
  def edit
  end

  # POST /bookshelves
  def create
    @bookshelf = Bookshelf.new(bookshelf_params)

    if @bookshelf.save
      redirect_to @bookshelf, notice: 'Bookshelf was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /bookshelves/1
  def update
    if @bookshelf.update(bookshelf_params)
      redirect_to @bookshelf, notice: 'Bookshelf was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /bookshelves/1
  def destroy
    @bookshelf.destroy
    redirect_to bookshelves_url, notice: 'Bookshelf was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookshelf
      @bookshelf = Bookshelf.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookshelf_params
      params.require(:bookshelf).permit(:name, :books_attributes => [:id, :title])
    end
end
