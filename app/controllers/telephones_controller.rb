class TelephonesController < ApplicationController
  # GET /telephones
  # GET /telephones.xml
  def index
    @telephones = Telephone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telephones }
    end
  end

  # GET /telephones/1
  # GET /telephones/1.xml
  def show
    @telephone = Telephone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telephone }
    end
  end

  # GET /telephones/new
  # GET /telephones/new.xml
  def new
    @telephone = Telephone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telephone }
    end
  end

  # GET /telephones/1/edit
  def edit
    @telephone = Telephone.find(params[:id])
  end

  # POST /telephones
  # POST /telephones.xml
  def create
    @telephone = Telephone.new(params[:telephone])

    respond_to do |format|
      if @telephone.save
        flash[:notice] = 'Telephone was successfully created.'
        format.html { redirect_to(@telephone) }
        format.xml  { render :xml => @telephone, :status => :created, :location => @telephone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telephone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telephones/1
  # PUT /telephones/1.xml
  def update
    @telephone = Telephone.find(params[:id])

    respond_to do |format|
      if @telephone.update_attributes(params[:telephone])
        flash[:notice] = 'Telephone was successfully updated.'
        format.html { redirect_to(@telephone) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telephone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telephones/1
  # DELETE /telephones/1.xml
  def destroy
    @telephone = Telephone.find(params[:id])
    @telephone.destroy

    respond_to do |format|
      format.html { redirect_to(telephones_url) }
      format.xml  { head :ok }
    end
  end
end
