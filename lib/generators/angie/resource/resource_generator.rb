require 'rails/generators'

module Angie
  class ResourceGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    desc 'Generates a resource file.'

    def copy_resource_file
      template 'resource.coffee.erb', "app/assets/javascripts/angular/resources/#{file_path}_resource.coffee"
    end

  private

    def model_name
      file_name.classify
    end

    def resource_name
      "#{model_name}Resource"
    end

    def path_name
      file_name.underscore.pluralize
    end
  end
end
