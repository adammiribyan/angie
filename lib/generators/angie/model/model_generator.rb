require 'rails/generators'

module Angie
  class ModelGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    desc 'Generates a model file.'

    def copy_model_file
      template 'model.coffee.erb', "app/assets/javascripts/angular/models/#{file_path}.coffee"
    end

  private

    def model_name
      file_name.classify
    end
  end
end
