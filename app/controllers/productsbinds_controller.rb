class ProductsbindsController < ApplicationController
  # GET /productsbinds
  # GET /productsbinds.json
  def index
    @productsbinds = Productsbind.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @productsbinds }
    end
  end

  # GET /productsbinds/1
  # GET /productsbinds/1.json
  def show
    @productsbind = Productsbind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @productsbind }
    end
  end

  # GET /productsbinds/new
  # GET /productsbinds/new.json
  def new
    @productsbind = Productsbind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @productsbind }
    end
  end

  # GET /productsbinds/1/edit
  def edit
    @productsbind = Productsbind.find(params[:id])
  end

  # POST /productsbinds
  # POST /productsbinds.json
  def create
    @productsbind = Productsbind.new(params[:productsbind])

    respond_to do |format|
      if @productsbind.save
        format.html { redirect_to @productsbind, :notice => 'Productsbind was successfully created.' }
        format.json { render :json => @productsbind, :status => :created, :location => @productsbind }
      else
        format.html { render :action => "new" }
        format.json { render :json => @productsbind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /productsbinds/1
  # PUT /productsbinds/1.json
  def update
    @productsbind = Productsbind.find(params[:id])

    respond_to do |format|
      if @productsbind.update_attributes(params[:productsbind])
        format.html { redirect_to @productsbind, :notice => 'Productsbind was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @productsbind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /productsbinds/1
  # DELETE /productsbinds/1.json
  def destroy
    @productsbind = Productsbind.find(params[:id])
    @productsbind.destroy

    respond_to do |format|
      format.html { redirect_to productsbinds_url }
      format.json { head :ok }
    end
  end
end
