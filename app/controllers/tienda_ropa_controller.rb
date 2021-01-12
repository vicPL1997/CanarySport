class TiendaRopaController < ApplicationController
    def index
        @ropas = Ropa.all
    end
end
