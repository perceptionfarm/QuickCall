class ContactactionsController < ApplicationController
  # GET /contactactions
  # GET /contactactions.json
  def index
    @contactactions = Contactaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @contactactions }
    end
  end

  # GET /contactactions/1
  # GET /contactactions/1.json
  def show
    @contactaction = Contactaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @contactaction }
    end
  end

  # GET /contactactions/new
  # GET /contactactions/new.json
  def new
    @contactaction = Contactaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @contactaction }
    end
  end

  # GET /contactactions/1/edit
  def edit
    @contactaction = Contactaction.find(params[:id])
  end

  # POST /contactactions
  # POST /contactactions.json
  def create
    @contactaction = Contactaction.new(params[:contactaction])

    respond_to do |format|
      if @contactaction.save
        format.html { redirect_to @contactaction, :notice => 'Contactaction was successfully created.' }
        format.json { render :json => @contactaction, :status => :created, :location => @contactaction }
      else
        format.html { render :action => "new" }
        format.json { render :json => @contactaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contactactions/1
  # PUT /contactactions/1.json
  def update
    @contactaction = Contactaction.find(params[:id])

    respond_to do |format|
      if @contactaction.update_attributes(params[:contactaction])
        format.html { redirect_to @contactaction, :notice => 'Contactaction was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @contactaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contactactions/1
  # DELETE /contactactions/1.json
  def destroy
    @contactaction = Contactaction.find(params[:id])
    @contactaction.destroy

    respond_to do |format|
      format.html { redirect_to contactactions_url }
      format.json { head :ok }
    end
  end
end
