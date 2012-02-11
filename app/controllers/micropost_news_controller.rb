class MicropostNewsController < ApplicationController
  # GET /micropost_news
  # GET /micropost_news.json
  def index
    @micropost_news = MicropostNew.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropost_news }
    end
  end

  # GET /micropost_news/1
  # GET /micropost_news/1.json
  def show
    @micropost_news = MicropostNew.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropost_news }
    end
  end

  # GET /micropost_news/new
  # GET /micropost_news/new.json
  def new
    @micropost_news = MicropostNew.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropost_news }
    end
  end

  # GET /micropost_news/1/edit
  def edit
    @micropost_news = MicropostNew.find(params[:id])
  end

  # POST /micropost_news
  # POST /micropost_news.json
  def create
    @micropost_news = MicropostNew.new(params[:micropost_news])

    respond_to do |format|
      if @micropost_news.save
        format.html { redirect_to @micropost_news, notice: 'Micropost new was successfully created.' }
        format.json { render json: @micropost_news, status: :created, location: @micropost_news }
      else
        format.html { render action: "new" }
        format.json { render json: @micropost_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropost_news/1
  # PUT /micropost_news/1.json
  def update
    @micropost_news = MicropostNew.find(params[:id])

    respond_to do |format|
      if @micropost_news.update_attributes(params[:micropost_news])
        format.html { redirect_to @micropost_news, notice: 'Micropost new was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropost_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropost_news/1
  # DELETE /micropost_news/1.json
  def destroy
    @micropost_news = MicropostNew.find(params[:id])
    @micropost_news.destroy

    respond_to do |format|
      format.html { redirect_to micropost_news_url }
      format.json { head :no_content }
    end
  end
end
