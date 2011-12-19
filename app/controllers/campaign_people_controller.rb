class CampaignPeopleController < ApplicationController
  # GET /campaign_people
  # GET /campaign_people.json
  def index
    @campaign_people = CampaignPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @campaign_people }
    end
  end

  # GET /campaign_people/1
  # GET /campaign_people/1.json
  def show
    @campaign_person = CampaignPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @campaign_person }
    end
  end

  # GET /campaign_people/new
  # GET /campaign_people/new.json
  def new
    @campaign_person = CampaignPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @campaign_person }
    end
  end

  # GET /campaign_people/1/edit
  def edit
    @campaign_person = CampaignPerson.find(params[:id])
  end

  # POST /campaign_people
  # POST /campaign_people.json
  def create
    @campaign_person = CampaignPerson.new(params[:campaign_person])

    respond_to do |format|
      if @campaign_person.save
        format.html { redirect_to @campaign_person, :notice => 'Campaign person was successfully created.' }
        format.json { render :json => @campaign_person, :status => :created, :location => @campaign_person }
      else
        format.html { render :action => "new" }
        format.json { render :json => @campaign_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campaign_people/1
  # PUT /campaign_people/1.json
  def update
    @campaign_person = CampaignPerson.find(params[:id])

    respond_to do |format|
      if @campaign_person.update_attributes(params[:campaign_person])
        format.html { redirect_to @campaign_person, :notice => 'Campaign person was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @campaign_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_people/1
  # DELETE /campaign_people/1.json
  def destroy
    @campaign_person = CampaignPerson.find(params[:id])
    @campaign_person.destroy

    respond_to do |format|
      format.html { redirect_to campaign_people_url }
      format.json { head :ok }
    end
  end
end
