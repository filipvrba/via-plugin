require "fv"

require "via/version"
require "via/railtie"
require "via/constants"
require "via/structs"
require "via/components"
require "via/scenes"
require "via/helper"

module Via
  @root = FV::Scene.new

  def Via.render(symbol, path = nil)
    if path
      path = "#{path}/#{symbol.to_s}.via"
    else
      path = "#{symbol.to_s}.via"
    end
    
    result = nil

    if File.exist? path
      file = Scenes::FileScript.new
      file.path = path
      file.name = File.basename path
      file.data = Helper.open_file_with_data(path)

      @root.add(file, symbol)

      result = file.data.join
      file.free
    end

    return result
  end
end

ActionController::Renderers.add :via do |filename, options|
  via_render = render(filename)

  send_data(via_render, filename: "#{filename}.via",
  disposition: "attachment")
end
