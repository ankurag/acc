class SundryDebtorsController < ApplicationController
  # GET /sundry_debtors
  # GET /sundry_debtors.xml
  def index
    @sundry_debtors = SundryDebtor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sundry_debtors }
    end
  end

  # GET /sundry_debtors/1
  # GET /sundry_debtors/1.xml
  def show
    @sundry_debtor = SundryDebtor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sundry_debtor }
    end
  end

  # GET /sundry_debtors/new
  # GET /sundry_debtors/new.xml
  def new
    @sundry_debtor = SundryDebtor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sundry_debtor }
    end
  end

  # GET /sundry_debtors/1/edit
  def edit
    @sundry_debtor = SundryDebtor.find(params[:id])
  end

  # POST /sundry_debtors
  # POST /sundry_debtors.xml
  def create
    @sundry_debtor = SundryDebtor.new(params[:sundry_debtor])

    respond_to do |format|
      if @sundry_debtor.save
        flash[:notice] = 'SundryDebtor was successfully created.'
        format.html { redirect_to(@sundry_debtor) }
        format.xml  { render :xml => @sundry_debtor, :status => :created, :location => @sundry_debtor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sundry_debtor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sundry_debtors/1
  # PUT /sundry_debtors/1.xml
  def update
    @sundry_debtor = SundryDebtor.find(params[:id])

    respond_to do |format|
      if @sundry_debtor.update_attributes(params[:sundry_debtor])
        flash[:notice] = 'SundryDebtor was successfully updated.'
        format.html { redirect_to(@sundry_debtor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sundry_debtor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sundry_debtors/1
  # DELETE /sundry_debtors/1.xml
  def destroy
    @sundry_debtor = SundryDebtor.find(params[:id])
    @sundry_debtor.destroy

    respond_to do |format|
      format.html { redirect_to(sundry_debtors_url) }
      format.xml  { head :ok }
    end
  end
end
