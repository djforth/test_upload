class PhotoAdminsController < ApplicationController
  # GET /photo_admins
  # GET /photo_admins.xml
  def index
    @photo_admins = PhotoAdmin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @photo_admins }
    end
  end

  # GET /photo_admins/1
  # GET /photo_admins/1.xml
  def show
    @photo_admin = PhotoAdmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @photo_admin }
    end
  end

  # GET /photo_admins/new
  # GET /photo_admins/new.xml
  def new
    @photo_admin = PhotoAdmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @photo_admin }
    end
  end

  # GET /photo_admins/1/edit
  def edit
    @photo_admin = PhotoAdmin.find(params[:id])
  end

  # POST /photo_admins
  # POST /photo_admins.xml
  def create
    @photo_admin = PhotoAdmin.new(params[:photo_admin])

    respond_to do |format|
      if @photo_admin.save
        flash[:notice] = 'PhotoAdmin was successfully created.'
        format.html { redirect_to(@photo_admin) }
        format.xml  { render :xml => @photo_admin, :status => :created, :location => @photo_admin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @photo_admin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /photo_admins/1
  # PUT /photo_admins/1.xml
  def update
    @photo_admin = PhotoAdmin.find(params[:id])

    respond_to do |format|
      if @photo_admin.update_attributes(params[:photo_admin])
        flash[:notice] = 'PhotoAdmin was successfully updated.'
        format.html { redirect_to(@photo_admin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @photo_admin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_admins/1
  # DELETE /photo_admins/1.xml
  def destroy
    @photo_admin = PhotoAdmin.find(params[:id])
    @photo_admin.destroy

    respond_to do |format|
      format.html { redirect_to(photo_admins_url) }
      format.xml  { head :ok }
    end
  end
end
