class JournalLinesController < ApplicationController
  # GET /journal_lines
  # GET /journal_lines.xml
  def index
    @journal_lines = JournalLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @journal_lines }
    end
  end

  # GET /journal_lines/1
  # GET /journal_lines/1.xml
  def show
    @journal_line = JournalLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @journal_line }
    end
  end

  # GET /journal_lines/new
  # GET /journal_lines/new.xml
  def new
    @journal_line = JournalLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @journal_line }
    end
  end

  # GET /journal_lines/1/edit
  def edit
    @journal_line = JournalLine.find(params[:id])
  end

  # POST /journal_lines
  # POST /journal_lines.xml
  def create
    @journal_line = JournalLine.new(params[:journal_line])

    respond_to do |format|
      if @journal_line.save
        flash[:notice] = 'JournalLine was successfully created.'
        format.html { redirect_to(@journal_line) }
        format.xml  { render :xml => @journal_line, :status => :created, :location => @journal_line }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @journal_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /journal_lines/1
  # PUT /journal_lines/1.xml
  def update
    @journal_line = JournalLine.find(params[:id])

    respond_to do |format|
      if @journal_line.update_attributes(params[:journal_line])
        flash[:notice] = 'JournalLine was successfully updated.'
        format.html { redirect_to(@journal_line) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @journal_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_lines/1
  # DELETE /journal_lines/1.xml
  def destroy
    @journal_line = JournalLine.find(params[:id])
    @journal_line.destroy

    respond_to do |format|
      format.html { redirect_to(journal_lines_url) }
      format.xml  { head :ok }
    end
  end
end
