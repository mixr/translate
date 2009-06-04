module Translate
  class Routes
    def self.translation_ui(map, controller = 'translate')
      map.with_options(:controller => controller) do |t|
        t.translate_list controller
        t.translate "#{controller}/translate", :action => 'translate'
        t.translate_reload "#{controller}/reload", :action => 'reload'
      end
    end
  end
end
