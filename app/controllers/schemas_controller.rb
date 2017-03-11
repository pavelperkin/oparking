class SchemasController < ApplicationController
  def show
    @schema_path = Parking.find(params[:id]).schema.url
  end
end
