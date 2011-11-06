class PersosController < ApplicationController
  # GET /persos
  # GET /persos.xml
  def index
    @persos = Perso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @persos }
    end
  end

  # GET /persos/1
  # GET /persos/1.xml
  def show
    @perso = Perso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @perso }
    end
  end

  # GET /persos/new
  # GET /persos/new.xml
  def new
    @perso = Perso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @perso }
    end
  end

  # GET /persos/1/edit
  def edit
    @perso = Perso.find(params[:id])
  end

  # POST /persos
  # POST /persos.xml
  def create
    @perso = Perso.new(params[:perso])

    respond_to do |format|
      if @perso.save
        format.html { redirect_to(@perso, :notice => 'Perso was successfully created.') }
        format.xml  { render :xml => @perso, :status => :created, :location => @perso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @perso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /persos/1
  # PUT /persos/1.xml
  def update
    @perso = Perso.find(params[:id])

    respond_to do |format|
      if @perso.update_attributes(params[:perso])
        format.html { redirect_to(@perso, :notice => 'Perso was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @perso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /persos/1
  # DELETE /persos/1.xml
  def destroy
    @perso = Perso.find(params[:id])
    @perso.destroy

    respond_to do |format|
      format.html { redirect_to(persos_url) }
      format.xml  { head :ok }
    end
  end
end