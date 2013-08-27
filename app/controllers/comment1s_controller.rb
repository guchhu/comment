class Comment1sController < ApplicationController
  # GET /comment1s
  # GET /comment1s.json
  def index
    @comment1s = Comment1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comment1s }
    end
  end

  # GET /comment1s/1
  # GET /comment1s/1.json
  def show
    @comment1 = Comment1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment1 }
    end
  end

  # GET /comment1s/new
  # GET /comment1s/new.json
  def new
    @comment1 = Comment1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment1 }
    end
  end

  # GET /comment1s/1/edit
  def edit
    @comment1 = Comment1.find(params[:id])
  end

  # POST /comment1s
  # POST /comment1s.json
  def create
    @comment1 = Comment1.new(params[:comment1])

    respond_to do |format|
      if @comment1.save
        format.html { redirect_to @comment1, notice: 'Comment1 was successfully created.' }
        format.json { render json: @comment1, status: :created, location: @comment1 }
      else
        format.html { render action: "new" }
        format.json { render json: @comment1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comment1s/1
  # PUT /comment1s/1.json
  def update
    @comment1 = Comment1.find(params[:id])

    respond_to do |format|
      if @comment1.update_attributes(params[:comment1])
        format.html { redirect_to @comment1, notice: 'Comment1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment1s/1
  # DELETE /comment1s/1.json
  def destroy
    @comment1 = Comment1.find(params[:id])
    @comment1.destroy

    respond_to do |format|
      format.html { redirect_to comment1s_url }
      format.json { head :no_content }
    end
  end
end
