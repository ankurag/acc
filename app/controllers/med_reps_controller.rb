class MedRepsController < ApplicationController
  # GET /med_reps
  # GET /med_reps.xml
  def index
    @med_reps = MedRep.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @med_reps }
    end
  end

  # GET /med_reps/1
  # GET /med_reps/1.xml
  def show
    @med_rep = MedRep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @med_rep }
    end
  end

  # GET /med_reps/new
  # GET /med_reps/new.xml
  def new
    @med_rep = MedRep.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @med_rep }
    end
  end

  # GET /med_reps/1/edit
  def edit
    @med_rep = MedRep.find(params[:id])
  end

  # POST /med_reps
  # POST /med_reps.xml
  def create
    @med_rep = MedRep.new(params[:med_rep])

    respond_to do |format|
      if @med_rep.save
        flash[:notice] = 'MedRep was successfully created.'
        format.html { redirect_to(@med_rep) }
        format.xml  { render :xml => @med_rep, :status => :created, :location => @med_rep }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @med_rep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /med_reps/1
  # PUT /med_reps/1.xml
  def update
    @med_rep = MedRep.find(params[:id])

    respond_to do |format|
      if @med_rep.update_attributes(params[:med_rep])
        flash[:notice] = 'MedRep was successfully updated.'
        format.html { redirect_to(@med_rep) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @med_rep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /med_reps/1
  # DELETE /med_reps/1.xml
  def destroy
    @med_rep = MedRep.find(params[:id])
    @med_rep.destroy

    respond_to do |format|
      format.html { redirect_to(med_reps_url) }
      format.xml  { head :ok }
    end
  end
end
