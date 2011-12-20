class PromotersController < ApplicationController

  require 'digest/md5'

  # GET /promoters
  # GET /promoters.json
  def index
    @promoters = Promoter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @promoters }
    end
  end

  # GET /promoters/1
  # GET /promoters/1.json
  def show
    @promoter = Promoter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @promoter }
    end
  end

  # GET /promoters/new
  # GET /promoters/new.json
  def new
    @promoter = Promoter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @promoter }
    end
  end

  # GET /promoters/1/edit
  def edit
    @promoter = Promoter.find(params[:id])
  end

  # POST /promoters
  # POST /promoters.json
  def create
    params[:promoter][:password] = Digest::MD5.hexdigest(params[:promoter][:password])
    @promoter = Promoter.new(params[:promoter])

    respond_to do |format|
      if @promoter.save
        format.html { redirect_to @promoter, :notice => 'Promoter was successfully created.' }
        format.json { render :json => @promoter, :status => :created, :location => @promoter }
      else
        format.html { render :action => "new" }
        format.json { render :json => @promoter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /promoters/1
  # PUT /promoters/1.json
  def update
    params[:promoter][:password] = Digest::MD5.hexdigest(params[:promoter][:password])	
    @promoter = Promoter.find(params[:id])

    respond_to do |format|
      if @promoter.update_attributes(params[:promoter])
        format.html { redirect_to @promoter, :notice => 'Promoter was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @promoter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /promoters/1
  # DELETE /promoters/1.json
  def destroy
    @promoter = Promoter.find(params[:id])
    @promoter.destroy

    respond_to do |format|
      format.html { redirect_to promoters_url }
      format.json { head :ok }
    end
  end
end
