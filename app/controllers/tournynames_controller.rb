
class TournynamesController < ApplicationController
  # GET /tournynames
  # GET /tournynames.json
  def index
    @tournynames = Tournyname.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tournynames }
    end
  end

  # GET /tournynames/1
  # GET /tournynames/1.json
  def show
    @tournyname = Tournyname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tournyname }
    end
  end

  # GET /tournynames/new
  # GET /tournynames/new.json
  def new
    @tournyname = Tournyname.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tournyname }
    end
  end

  # GET /tournynames/1/edit
  def edit
    @tournyname = Tournyname.find(params[:id])
  end

  # POST /tournynames
  # POST /tournynames.json
  def create
    @tournyname = Tournyname.new(params[:tournyname])

    respond_to do |format|
      if @tournyname.save
        format.html { redirect_to @tournyname, :notice => 'Tournyname was successfully created.' }
        format.json { render :json => @tournyname, :status => :created, :location => @tournyname }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tournyname.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tournynames/1
  # PUT /tournynames/1.json
  def update
    @tournyname = Tournyname.find(params[:id])

    respond_to do |format|
      if @tournyname.update_attributes(params[:tournyname])
        format.html { redirect_to @tournyname, :notice => 'Tournyname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tournyname.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tournynames/1
  # DELETE /tournynames/1.json
  def destroy
    @tournyname = Tournyname.find(params[:id])
    @tournyname.destroy

    respond_to do |format|
      format.html { redirect_to tournynames_url }
      format.json { head :no_content }
    end
  end
end
