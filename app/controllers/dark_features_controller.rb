class DarkFeaturesController < ApplicationController
  before_filter :authorize
  # GET /dark_features
  # GET /dark_features.xml
  def index
    @dark_features = DarkFeature.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dark_features }
    end
  end

  # GET /dark_features/1
  # GET /dark_features/1.xml
  def show
    @dark_feature = DarkFeature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dark_feature }
    end
  end

  # GET /dark_features/new
  # GET /dark_features/new.xml
  def new
    @dark_feature = DarkFeature.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dark_feature }
    end
  end

  # GET /dark_features/1/edit
  def edit
    @dark_feature = DarkFeature.find(params[:id])
  end

  # POST /dark_features
  # POST /dark_features.xml
  def create
    @dark_feature = DarkFeature.new(params[:dark_feature])

    respond_to do |format|
      if @dark_feature.save
        format.html { redirect_to(@dark_feature, :notice => 'Dark feature was successfully created.') }
        format.xml  { render :xml => @dark_feature, :status => :created, :location => @dark_feature }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dark_feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dark_features/1
  # PUT /dark_features/1.xml
  def update
    @dark_feature = DarkFeature.find(params[:id])

    respond_to do |format|
      if @dark_feature.update_attributes(params[:dark_feature])
        format.html { redirect_to(@dark_feature, :notice => 'Dark feature was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dark_feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dark_features/1
  # DELETE /dark_features/1.xml
  def destroy
    @dark_feature = DarkFeature.find(params[:id])
    @dark_feature.destroy

    respond_to do |format|
      format.html { redirect_to(dark_features_url) }
      format.xml  { head :ok }
    end
  end
end
