class WeibosController < ApplicationController
  # GET /weibos
  # GET /weibos.json
  def index
    @weibos = Weibo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weibos }
    end
  end

  # GET /weibos/1
  # GET /weibos/1.json
  def show
    @weibo = Weibo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weibo }
    end
  end

  # GET /weibos/new
  # GET /weibos/new.json
  def new
    @weibo = Weibo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weibo }
    end
  end

  # GET /weibos/1/edit
  def edit
    @weibo = Weibo.find(params[:id])
  end

  # POST /weibos
  # POST /weibos.json
  def create
    @weibo = Weibo.new(params[:weibo])

    respond_to do |format|
      if @weibo.save
        format.html { redirect_to @weibo, notice: 'Weibo was successfully created.' }
        format.json { render json: @weibo, status: :created, location: @weibo }
      else
        format.html { render action: "new" }
        format.json { render json: @weibo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weibos/1
  # PUT /weibos/1.json
  def update
    @weibo = Weibo.find(params[:id])

    respond_to do |format|
      if @weibo.update_attributes(params[:weibo])
        format.html { redirect_to @weibo, notice: 'Weibo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weibo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weibos/1
  # DELETE /weibos/1.json
  def destroy
    @weibo = Weibo.find(params[:id])
    @weibo.destroy

    respond_to do |format|
      format.html { redirect_to weibos_url }
      format.json { head :no_content }
    end
  end
end
