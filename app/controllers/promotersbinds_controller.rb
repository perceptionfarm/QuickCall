class PromotersbindsController < ApplicationController
  # GET /promotersbinds
  # GET /promotersbinds.json
  def index
    @promotersbinds = Promotersbind.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @promotersbinds }
    end
  end

  # GET /promotersbinds/1
  # GET /promotersbinds/1.json
  def show
    @promotersbind = Promotersbind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @promotersbind }
    end
  end

  # GET /promotersbinds/new
  # GET /promotersbinds/new.json
  def new
    @promotersbind = Promotersbind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @promotersbind }
    end
  end

  # GET /promotersbinds/1/edit
  def edit
    @promotersbind = Promotersbind.find(params[:id])
  end

  # POST /promotersbinds
  # POST /promotersbinds.json
  def create
    @promotersbind = Promotersbind.new(params[:promotersbind])

    respond_to do |format|
      if @promotersbind.save
        format.html { redirect_to @promotersbind, :notice => 'Promotersbind was successfully created.' }
        format.json { render :json => @promotersbind, :status => :created, :location => @promotersbind }
      else
        format.html { render :action => "new" }
        format.json { render :json => @promotersbind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /promotersbinds/1
  # PUT /promotersbinds/1.json
  def update
    @promotersbind = Promotersbind.find(params[:id])

    respond_to do |format|
      if @promotersbind.update_attributes(params[:promotersbind])
        format.html { redirect_to @promotersbind, :notice => 'Promotersbind was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @promotersbind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /promotersbinds/1
  # DELETE /promotersbinds/1.json
  def destroy
    @promotersbind = Promotersbind.find(params[:id])
    @promotersbind.destroy

    respond_to do |format|
      format.html { redirect_to promotersbinds_url }
      format.json { head :ok }
    end
  end
end
