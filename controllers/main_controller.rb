module DateSelect
  class MainController < Volt::ModelController
    # model :date #maybe?

    private

    def initialize
      Element.find('.volt-date-picker').datepicker()
    end

    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end