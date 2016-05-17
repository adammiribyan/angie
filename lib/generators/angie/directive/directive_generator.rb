require 'rails/generators'

module Angie
  class DirectiveGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    desc 'Generates a directive file and a blank template for it.'

    def copy_directive_coffee_file
      template 'directive.coffee.erb', "app/assets/javascripts/angular/directives/#{file_path}.coffee"
    end

    def copy_directive_template_file
      template 'directive.html.erb', "public/templates/angular/directives/#{file_path}.html"
    end

  private

    def directive_name
      file_name.classify
    end

    def template_path
      "templates/angular/directives/#{file_path}.html"
    end
  end
end
