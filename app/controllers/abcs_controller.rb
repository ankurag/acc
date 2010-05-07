class AbcsController < ApplicationController
  
  include ExtScaffold

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render :json => { :success => false }, :status => :not_found
  end
  before_filter :find_abcs, :only => [ :index ]
  before_filter :find_abc, :only => [ :update, :destroy ]

  # GET /abcs
  # GET /abcs.ext_json
  def index
    respond_to do |format|
      format.html     # index.html.erb (no data required)
      format.ext_json { render :json => @abcs.to_ext_json(:class => Abc, :count => Abc.count(options_from_search(Abc))) }
    end
  end

  # POST /abcs
  def create
    @abc = Abc.new(params[:abc])
    render :json => @abc.to_ext_json(:success => @abc.save)
  end

  # PUT /abcs/1
  def update
    render :json => @abc.to_ext_json(:success => @abc.update_attributes(params[:abc]))
  end

  # DELETE /abcs/1
  def destroy
    @abc.destroy
    head :ok
  end
  
protected
  
  def find_abc
    @abc = Abc.find(params[:id])
  end
  
  def find_abcs
    @abcs = Abc.find(:all, pagination_state.merge(options_from_search(Abc)))
  end

end
