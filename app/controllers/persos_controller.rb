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
    @cars = @perso.attributs.find(:all)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @perso }
    end
  end

  # GET /persos/new

  # GET /persos/new.xml
  def new
    @perso = Perso.new
    ['Profession','Age','Sexe','Nationalite','Residence','FOR','DEX','INT','Idee','CON','APP','POU','Chance','TAI','SAN','EDU','Connaissance','Ecoles','Diplomes','Bonus-Penalites',"Anthropologie","Esquiver","Piloter","Archeologie","Geologie",".",".","Arts","Grimper","..","...","Histoire","PremiersSoins","....","....","HistoireNaturelle","Psychanalyse","ArtsMartiaux","Lancer","Psychologie","Astronomie","LangueNatale","Sauter","Baratin",".....","Se Cacher"",Bibliotheque","Langues Etrangeres","Serrurerie","Biologie","......","Suivre une Piste","Bloquer (DEX X 2)",".......","Trouver Objet Cache (25)","Chimie (01)","Marchandage (05)","........","Comptabilite (10)","Mecanique (20)",".........","Conduire automobile (20)","Medecine (05)","..........","Conduire Engin lourd (01)","Monter a Cheval (05)","...........","Credit (15)","Mythe de Cthulhu","..","Criminalistique (01)","Nager (25)",".............","Deguisement (01)","Navigation (10)",".............","Discretion (15)","Occultisme (05)","...............","Dissimulation (15)","Persuasion (15)","................","Droit (05)","Pharmacologie (01)",".................","Ecouter (25)","Photographie (10)","..................","Electricite (10)","Physique (01)","..................."].each do |nom|
      @perso.attributs.build(:nom=>nom)
    end
    #2.times {@perso.attributs.build(:nom=>'test')}
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
      params[:attribut].each do  |attribut| 
        @perso.attributs.build({:nom => attribut[0],:val => attribut[1][:val] })
      end

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
