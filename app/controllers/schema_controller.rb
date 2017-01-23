class SchemaController < ApplicationController
  def index
    @schema_path = params[:url]
    render template: 'schema/index'
  end
end
