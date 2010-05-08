class ZonalAreasController < ApplicationController
  # GET /zonal_areas
  # GET /zonal_areas.xml
  def index
    @zonal_areas = ZonalArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @zonal_areas }
    end
  end

  # GET /zonal_areas/1
  # GET /zonal_areas/1.xml
  def show
    @zonal_area = ZonalArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @zonal_area }
    end
  end

  # GET /zonal_areas/new
  # GET /zonal_areas/new.xml
  def new
    @zonal_area = ZonalArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @zonal_area }
    end
  end

  # GET /zonal_areas/1/edit
  def edit
    @zonal_area = ZonalArea.find(params[:id])
  end

  # POST /zonal_areas
  # POST /zonal_areas.xml
  def create
    @zonal_area = ZonalArea.new(params[:zonal_area])

    respond_to do |format|
      if @zonal_area.save
        flash[:notice] = 'ZonalArea was successfully created.'
        format.html { redirect_to(@zonal_area) }
        format.xml  { render :xml => @zonal_area, :status => :created, :location => @zonal_area }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @zonal_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zonal_areas/1
  # PUT /zonal_areas/1.xml
  def update
    @zonal_area = ZonalArea.find(params[:id])

    respond_to do |format|
      if @zonal_area.update_attributes(params[:zonal_area])
        flash[:notice] = 'ZonalArea was successfully updated.'
        format.html { redirect_to(@zonal_area) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @zonal_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zonal_areas/1
  # DELETE /zonal_areas/1.xml
  def destroy
    @zonal_area = ZonalArea.find(params[:id])
    @zonal_area.destroy

    respond_to do |format|
      format.html { redirect_to(zonal_areas_url) }
      format.xml  { head :ok }
    end
  end
end
