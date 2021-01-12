class TiendaArticuloController < ApplicationController
    def index
        @articulos = Articulo.all
    end
end
