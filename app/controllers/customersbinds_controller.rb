class CustomersbindsController < ApplicationController
  # GET /customersbinds
  # GET /customersbinds.json
  def index
    @customersbinds = Customersbind.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @customersbinds }
    end
  end

  # GET /customersbinds/1
  # GET /customersbinds/1.json
  def show
    @customersbind = Customersbind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @customersbind }
    end
  end

  # GET /customersbinds/new
  # GET /customersbinds/new.json
  def new
    @customersbind = Customersbind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @customersbind }
    end
  end

  # GET /customersbinds/1/edit
  def edit
    @customersbind = Customersbind.find(params[:id])
  end

  # POST /customersbinds
  # POST /customersbinds.json
  def create
    @customersbind = Customersbind.new(params[:customersbind])

    respond_to do |format|
      if @customersbind.save
        format.html { redirect_to @customersbind, :notice => 'Customersbind was successfully created.' }
        format.json { render :json => @customersbind, :status => :created, :location => @customersbind }
      else
        format.html { render :action => "new" }
        format.json { render :json => @customersbind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /customersbinds/1
  # PUT /customersbinds/1.json
  def update
    @customersbind = Customersbind.find(params[:id])

    respond_to do |format|
      if @customersbind.update_attributes(params[:customersbind])
        format.html { redirect_to @customersbind, :notice => 'Customersbind was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @customersbind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /customersbinds/1
  # DELETE /customersbinds/1.json
  def destroy
    @customersbind = Customersbind.find(params[:id])
    @customersbind.destroy

    respond_to do |format|
      format.html { redirect_to customersbinds_url }
      format.json { head :ok }
    end
  end
end
