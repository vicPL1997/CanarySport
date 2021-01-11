class ArticulosController < ApplicationController
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]

  # GET /articulos
  # GET /articulos.json
  def index
    if params[:title].blank?  
      @articulos = Articulo.all  
    else 
      @parameter = params[:title].downcase  
      @prendas = Prenda.all.where("lower(nombre) LIKE :title", title: "%#{@parameter}%")  
    end
  end

  # GET /articulos/1
  # GET /articulos/1.json
  def show
  end

  # GET /articulos/new
  def new
    @articulo = Articulo.new
  end

  # GET /articulos/1/edit
  def edit
  end

  # POST /articulos
  # POST /articulos.json
  def create
    @articulo = Articulo.new(articulo_params)
    @articulo.image.attach(articulo_params[:image])
    
    if @articulo.save
    flash[:success] = "Articulo creado correctamente."
        redirect_to @articulo
      else
        render 'new'
      end
    end  
    /respond_to do |format|
      if @articulo.save
        format.html { redirect_to @articulo, notice: 'Articulo was successfully created.' }
        format.json { render :show, status: :created, location: @articulo }
      else
        format.html { render :new }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end
  /

  # PATCH/PUT /articulos/1
  # PATCH/PUT /articulos/1.json
  def update
    @articulo.image.purge
    @articulo.image.attach(articulo_params[:image])
    respond_to do |format|
      if @articulo.update(articulo_params)
        format.html { redirect_to @articulo, notice: 'Articulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @articulo }
      else
        format.html { render :edit }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.json
  def destroy
    @articulo.destroy
    respond_to do |format|
      format.html { redirect_to articulos_url, notice: 'Articulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def articulo_params
      params.require(:articulo).permit(:nombre, :precio, :descripcion, :image)
    end
end
